# Using the get-AllImageGroups Command

>Applies To: Windows Server (Semi-Annual Channel), Windows Server 2016, Windows Server 2012 R2, Windows Server 2012

Retrieves information about all image groups on a server and all images in those image groups.
## Syntax
```
wdsutil [Options] /Get-AllImageGroups [/Server:<Server name>] [/detailed]
```
## Parameters
|Parameter|Description|
|-------|--------|
|[/Server:<Server name>]|Specifies the name of the server. This can be either the NetBIOS name or the fully qualified domain name (FQDN). If no server name is specified, the local server will be used.|
|[/detailed]|Returns the image metadata from each image. If this parameter is not used, the default behavior is to return only the image name, description, and file name for each image.|
## <a name="BKMK_examples"></a>Examples
To view information about the image groups, type one of the following:
```
wdsutil /Get-AllImageGroups
wdsutil /verbose /Get-AllImageGroups /Server:MyWDSServer /detailed
```
#### additional references
[Command-Line Syntax Key](command-line-syntax-key.md)
[Using the add-ImageGroup Command](using-the-add-imagegroup-command.md)
[Using the get-ImageGroup Command](using-the-get-imagegroup-command.md)
[Using the remove-ImageGroup Command](using-the-remove-imagegroup-command.md)
[Subcommand: set-ImageGroup](subcommand-set-imagegroup.md)
