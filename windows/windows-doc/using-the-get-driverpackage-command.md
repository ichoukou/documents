# Using the get-DriverPackage Command



Displays information about a driver package on the server.

## Syntax

```
WDSUTIL /Get-DriverPackage [/Server:<Server name>] {/DriverPackage:<Package Name> | /PackageId:<ID>} [/Show:{Drivers | Files | All}]
```

## Parameters

|Parameter|Description|
|---------|-----------|
|[/Server:\<Server name>]|Specifies the name of the server. This can be the NetBIOS name or the FQDN. If no server name is specified, the local server is used.|
|[/DriverPackage:\<Name>]|Specifies the name of the driver package to show.|
|[/PackageId:\<ID>]|Specifies the Windows Deployment Services ID of the driver package to show. You must specify the ID if the driver package cannot be uniquely identified by name.|
|[/Show: {Drivers | Files | All}]|Indicates what information to display (if specified). If **/Show** is not specified, the default is to return only the driver package metadata. **Drivers** displays all drivers in the package. **Files** displays the list of files in the package. **All** displays drivers, files, and metadata.|

## <a name="BKMK_examples"></a>Examples

To view information about a driver package, type one of the following:
```
WDSUTIL /Get-DriverPackage /PackageId:{4D36E972-E325-11CE-BFC1-08002BE10318}
```
```
WDSUTIL /Get-DriverPackage /DriverPackage:MyDriverPackage /Show:All
```

#### Additional references

[Command-Line Syntax Key](command-line-syntax-key.md)