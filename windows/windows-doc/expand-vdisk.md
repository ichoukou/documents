# expand vdisk

>Applies To: Windows Server (Semi-Annual Channel), Windows Server 2016, Windows Server 2012 R2, Windows Server 2012

expands a virtual hard disk (VHD) to the size that you specify.
> [!NOTE]
> This command is only applicable to Windows 7 and Windows Server 2008 R2.
## Syntax
```
expand vdisk maximum=<n>
```
## Parameters
|Parameter|Description|
|-------|--------|
|maximum=<n>|Specifies the new size for the VHD in megabytes (MB).|
## Remarks
-   A VHD must be selected and detached for this operation to succeed. Use the **select vdisk** command to select a volume and shift the focus to it.
## <a name="BKMK_Examples"></a>Examples
To expand the selected VHD to 20 GB, type:
```
expand vdisk maximum=20000
```
## additional references
-   [Command-Line Syntax Key](command-line-syntax-key.md)
-   [attach vdisk](attach-vdisk.md)
-   [compact vdisk](compact-vdisk.md)

-   [Detach vdisk](detach-vdisk.md)
-   [detail vdisk](detail-vdisk.md)
-   [Merge vdisk](merge-vdisk.md)
-   [select vdisk](select-vdisk.md)
-   [list_1](list_1.md)
