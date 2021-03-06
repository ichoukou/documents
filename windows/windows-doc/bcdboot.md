# bcdboot



Enables you to quickly set up a system partition, or to repair the boot environment located on the system partition. The system partition is set up by copying a simple set of Boot Configuration Data (BCD) files to an existing empty partition.

For more information about BCDboot, including information on where to find BCDboot and examples of how to use this command, see the [BCDboot Command-Line Options](https://technet.microsoft.com/library/hh824874.aspx) topic.

## Syntax

```
bcdboot <source> [/l] [/s]
```

## Parameters

|Parameter|Description|
|---------|-----------|
|source|Specifies the location of the Windows directory to use as the source for copying boot environment files.|
|/l|Specifies the locale. The default locale is US English.|
|/s|Specifies the volume letter of the system partition. The default is the system partition identified by the firmware.|

## <a name="BKMK_examples"></a>Examples

For more examples of how to use this command, see the [BCDboot Command-Line Options](https://technet.microsoft.com/library/hh824874.aspx) topic.

#### Additional references

[Command-Line Syntax Key](command-line-syntax-key.md)