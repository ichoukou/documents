# Using the get-ImageFile Command



Retrieves information about the images contained in a Windows Image (.wim) file.

## Syntax

```
WDSUTIL [Options] /Get-ImageFile /ImageFile:<wim file path> [/Detailed]
```

## Parameters

|Parameter|Description|
|---------|-----------|
|/ImageFile:\<WIM file path>|Specifies the full path and file name of the .wim file.|
|[/Detailed]|Returns all image metadata from each image. If this option is not used, the default behavior is to return only the image name, description, and file name.|

## <a name="BKMK_examples"></a>Examples

To view information about an image, type:
```
WDSUTIL /Get-ImageFile /ImageFile:"C:\temp\install.wim"
```
To view detailed information, type:
```
WDSUTIL /Verbose /Get-ImageFile /ImageFile:"\\Server\Share\My Folder \install.wim" /Detailed
```

#### Additional references

[Command-Line Syntax Key](command-line-syntax-key.md)