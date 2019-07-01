title: CPU的七种寻址方式
date: 2016-01-08 22:22:22
tags:
    - asm
categories: asm
---
CPU的七种寻址方式。(2013前的笔记)这时CPU控制内存的基石。很少会跳出这个些设计方式。

# 立即寻址方式:

操作数就包含在指令中。作为指令的一部分，跟在操作码后存放在代码段。

这种操作数成为立即数。立即数可以是8位的，也可以是16位的。

例如:
```asm
    指令: MOV AX,1234H

      则: AX = 1234H
```


# 寄存器寻址方式:

操作数在CPU内部的寄存器中，指令指定寄存器号。

对于16位操作数，寄存器可以是:AX、BX、CX、DX、SI、DI、SP和BP等。

对于8位操作数，寄存器可以是AL 、AH、BL、BH、CL、CH、DL、DH。

这种寻址方式由于操作数就在寄存器中,不需要访问存储器来取得操作数

因而可以取得较高的运算数度。



# 直接寻址方式:

操作数在寄存器中，指令直接包含有操作数的有效地址(偏移地址)

注：操作数一般存放在数据段

所以操作数的地址由DS加上指令中直接给出的16位偏移得到。如果采用

段超越前缀，则操作数也可含在数据段外的其他段中。

例如:
```asm
MOV AX,[8054]

如(DS) = 2000H,

则执行结果为(AX) = 3050H

(物理地址=20000+8054=28054H)

28054H里的内容为3050H
```


在汇编语言指令中，可以用符号地址代替数值地址
```asm
如:MOV AX,VALUE

此时VALUE为存放操作数单元的符号地址。

如写成:MOV AX,[VALUE]也是可以的，两者是等效的。

如VALUE在附加段中，则应指定段超越前缀如下:

MOV AX,ES:VALUE 或 MOV AX,ES:[VALUE]
```


# 寄存器间接寻址方式:

操作数在寄存器中，操作数有效地址在SI、DI、BX、BP

这四个寄存器之一中。在一般情况下，如果有效地址在

SI、DI和BX中，则以DS段寄存器中的内容为段值。如果

有效地址在BP中，则以SS段寄存器中的内容为段值
```asm
例如:

MOV AX,[SI]

如果(DS) = 5000H (SI) = 1234H

则物理地址 =  50000 + 1234 = 51234H

51234H地址中的内容为:6789H

执行该指令后,(AX) = 6789H
```


# 寄存器相对寻址方式:

操作数在存储器中，操作数的有效地址是一个基址寄存器(BX、BP)

或变址寄存器(SI、DI)的内容加上指令中给定的8位或16位位移量之和
```asm
    BX  8位 位移量

EA(有效地址) =  BP  +

    SI  16位 位移量

    DI
```
在一般情况下，如果SI、DI、或BX中的内容作为有效地址的一部分，那么

引用的段寄存器是DS;如果BP中的内容作为有效地址的一部分，那么引用的

段寄存器是SS。



物理地址 = 16d × (DS) + (BX) + 8

           或(SI)或16位位移量

           或(DI)

物理地址 = 16d × (SS) + (BP) + 8位位移量

                       或16位位移量

在指令中给定的8位或16位位移量采用补码形式表示。在计算有效地址时，如

位移量是8位，则被带符号扩展成16位。

例如:
```asm
MOV AX,[DI+1223H]

假设，(DS) = 5000H，(DI) = 3678H

则物理地址 = 50000 + 3678 + 1233 = 5489BH

5489BH地址中的内容:55AAH
```
执行该指令后AX = 55AAH

下面指令中，源操作数采用寄存器相对寻址，引用的段寄存器是SS: MOV BX,[BP-4]

下面指令中，目的操作数采用寄存器相对寻址，引用的段寄存器是ES: MOV ES:[BX+5],AL

指令:MOV AX,[SI+3]与MOV AX,3[SI]是等价的



# 基址加变址寻址方式:

操作数在寄存器中，操作数的有效地址由:

基址寄存器之一的内容与变址寄存器之一的内容相加

   BX   SI

即: EA =    +

   BP   DI

在一般情况下，如果BP之内容作为有效地址的一部分，则以SS之内容为段值，否则已DS

为段值。

例如：
```asm
MOV AX,[BX][DI]

如:(DS)=2100H,

   (BX)=0158H,

   (DI)=10A5H

则EA=0158 + 10A5 = 11FD

物理地址=21000 + 11FD = 221FDH

221FDH地址中的内容:1234H

执行该指令后AX = 1234H
```


下面指令中，目的操作数采用基址加变址寻址，

引用的段寄存器是DS: MOV DS:[BP+SI],AL



下面指令中，源操作数采用基址加变址寻址，

引用的段寄存器ES: MOV AX,ES:[BX+SI]



这种寻址方式使用与数组或表格处理。用基址寄存器存放数组首地址，而用变地寄存器

来定位数组中的各元素，或反之。由于两个寄存器都可改变，所以能更加灵活地访问数

组或表格中的元素。

下面的两种表示方法是等价的:

MOV AX,[BX+DI]

MOV AX,[DI][BX]



# 相对基址加变址寻址方式：

操作数在存储器中，操作数的有效地址由于基址寄存器之一的内容与变址寄存器之一的

内容及指令中给定的8位或16位位移量相加得到。

         BX    SI    8位

即: EA =     +     +      位移量

   BP    DI    16位

在一般情况下，如果BP中的内容作为有效地址的一部分，则以SS段寄存器中的内容为段

值，否则以DS段寄存器中的内容为段值。

在指令中给定的8位或16位位移量采用补码形式表示。

在计算有效地址时，如果位移量是8位，那么被带符号扩展成16位。

当所得的有效地址操作FFFFH时，就取其64K的模

例如:
```asm
MOV AX,[BX+DI-2]

假设，(DS) = 5000H, (BX) = 1223H, DI = 54H, (51275) = 54H, (51276) = 76H

物理地址= 50000 + 1223 + 0054 + FFFE(-2 各位取反末位加一) = 51275H

执行该指令后 (AX) = 7654H



相对基址加变址这种寻址方式的表示方法多种多样，以下四种方法均是等价的：

MOV AX,[BX+DI+1234H], MOV AX,1234H[BX][DI]

MOV AX 1234H[BX+DI],  MOV AX,1234H[DI][BX]
```