# Merge vdisk

>Applies To: Windows Server (Semi-Annual Channel), Windows Server 2016, Windows Server 2012 R2, Windows Server 2012

Merges a differencing virtual hard disk (VHD) with its corresponding parent VHD. The parent VHD will be modified to include the modifications from the differencing VHD.
> [!NOTE]
> This command is only applicable to Windows 7 and Windows Server 2008 R2.
## Syntax
```
merge vdisk depth=<n>
```
### Parameters
|Parameter|Description|
|-------|--------|
|depth=<n>|Indicates the number of parent VHD files to merge together. For example, **depth=1** indicates that the differencing VHD will be merged with one level of the differencing chain.|
## Remarks
-   A VHD must be selected and detached for this operation to succeed. Use the **select vdisk** command to select a VHD and shift the focus to it.
-   This parameter modifies the parent VHD. As a result, other differencing VHDs that are dependent on the parent will no longer be valid.
## <a name="BKMK_Examples"></a>Examples
To merge a differencing VHD with its parent VHD, type:
```
merge vdisk depth=1
```
## additional references
-   [Command-Line Syntax Key](command-line-syntax-key.md)
-   [attach vdisk](attach-vdisk.md)
-   [compact vdisk](compact-vdisk.md)

-   [detail vdisk](detail-vdisk.md)
-   [Detach vdisk](detach-vdisk.md)
-   [expand vdisk](expand-vdisk.md)
-   [select vdisk](select-vdisk.md)
-   [list_1](list_1.md)
