# uniqueid



Displays or sets the GUID partition table (GPT) identifier or master boot record (MBR) signature for the disk with focus.

> [!IMPORTANT]
> This DiskPart command is not available in any edition of Windows Vista.

## Syntax

```
uniqueid disk [id={<dword> | <GUID>}] [noerr]
```

## Parameters

|Parameter|Description|
|---------|-----------|
|id={\<dword> | <GUID>}|For MBR disks, specifies a four-byte (DWORD) value in hexadecimal form for the signature.</br>For GPT disks, specifies a GUID for the identifier.|
|noerr|For scripting only. When an error is encountered, DiskPart continues to process commands as if the error did not occur. Without this parameter, an error causes DiskPart to exit with an error code.|

## Remarks

-   This command works on basic and dynamic disks.
-   A disk must be selected for this command to succeed. Use the **select disk** command to select a disk and shift the focus to it.

## <a name="BKMK_examples"></a>Examples

To display the signature of the MBR disk with focus, type:
```
uniqueid disk
```
To set the signature of the MBR disk with focus to 5f1b2c36, type:
```
uniqueid disk id=5f1b2c36
```
To set the identifier of the GPT disk with focus to baf784e7-6bbd-4cfb-aaac-e86c96e166ee, type:
```
uniqueid disk id=baf784e7-6bbd-4cfb-aaac-e86c96e166ee
```

#### Additional references

