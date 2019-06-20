# Using the add-DriverGroupPackages Command

>Applies To: Windows Server (Semi-Annual Channel), Windows Server 2016, Windows Server 2012 R2, Windows Server 2012

for examples of how you can use this command, see [Examples](#BKMK_examples).
## Syntax
```
wdsutil /add-DriverGroupPackages /DriverGroup:<Group Name> [/Server:<Server Name>] /Filtertype:<Filter type> /Operator:{Equal | NotEqual | GreaterOrEqual | LessOrEqual | Contains} /Value:<Value> [/Value:<Value>
```
## Parameters
|Parameter|Description|
|-------|--------|
|/DriverGroup:<Group Name>|Specifies the name of the driver group.|
|/Server:<Server name>|Specifies the name of the server. This can be the NetBIOS name or the FQDN. If no server name is specified, the local server is used.|
|/Filtertype:<Filter type>|Specifies the attribute of the driver package to search for. You can specify multiple attributes in a single command. You must also specify /Operator and /Value with this option.<br /><br /><Filter type> can be one of the following:<br /><br />**PackageId**<br /><br />**PackageName**<br /><br />**PackageEnabled**<br /><br />**Packagedateadded**<br /><br />**PackageInfFilename**<br /><br />**PackageClass**<br /><br />**PackageProvider**<br /><br />**PackageArchitecture**<br /><br />**PackageLocale**<br /><br />**PackageSigned**<br /><br />**PackagedatePublished**<br /><br />**Packageversion**<br /><br />**Driverdescription**<br /><br />**DriverManufacturer**<br /><br />**DriverHardwareId**<br /><br />**DrivercompatibleId**<br /><br />**DriverExcludeId**<br /><br />**DriverGroupId**<br /><br />**DriverGroupName**|
|/Operator:{Equal &#124; NotEqual &#124; GreaterOrEqual &#124; LessOrEqual &#124; Contains}|Specifies the relationship between the attribute and the values. You can only specify **Contains** with string attributes. You can only specify **Equal**, **NotEqual**, **GreaterOrEqual** and **LessOrEqual** with date and version attributes.|
|/Value:<Value>|Specifies the client value corresponding to **/Filtertype**. You can specify multiple values for a single **/Filtertype**. The following list outlines the values that you can specify for each filter. For more information about these values, see [Driver and Package attributes](https://go.microsoft.com/fwlink/?LinkId=166895) (https://go.microsoft.com/fwlink/?LinkId=166895).<br /><br />-   PackageId - Specify a valid GUID. For example: {4d36e972-e325-11ce-bfc1-08002be10318}.<br />-   PackageName   Specify any string value.<br />-   PackageEnabled - Specify **Yes** or **No**.<br />-   Packagedateadded - Specify the date in the following format: YYYY/MM/DD<br />-   PackageInfFilename   Specify any string value.<br />-   PackageClass - Specify a valid class name or class GUID. For example: **DiskDrive**, **Net**, or {4d36e972-e325-11ce-bfc1-08002be10318}.<br />-   PackageProvider   Specify any string value.<br />-   PackageArchitecture - Specify **x86**, **x64**, or **ia64**.<br />-   PackageLoale - Specify a valid language identifier. For example: **en-US** or **es-ES**.<br />-   PackageSigned - Specify **Yes** or **No**.<br />-   PackagedatePublished - Specify the date in the following format: YYYY/MM/DD<br />-   Packageversion - Specify the version in the following format: a.b.x.y. For example: 6.1.0.0<br />-   Driverdescription   Specify any string value.<br />-   DriverManufacturer   Specify any string value.<br />-   DriverHardwareId - Specify any string value.<br />-   DrivercompatibleId - Specify any string value.<br />-   DriverExcludeId - Specify any string value.<br />-   DriverGroupId - Specify a valid GUID. For example: {4d36e972-e325-11ce-bfc1-08002be10318}.<br />-   DriverGroupName   Specify any string value.|
## <a name="BKMK_examples"></a>Examples
To add a driver package, type one of the following:
```
wdsutil /verbose /add-DriverGroupPackages /DriverGroup:printerdrivers /Filtertype:PackageClass /Operator:Equal /Value:printer /Filtertype:DriverManufacturer /Operator:NotEqual /Value:Name1 /Value:Name2
```
```
wdsutil /verbose /add-DriverGroupPackages /DriverGroup:DisplayDriversX86 /Filtertype:PackageClass /Operator:Equal /Value:Display /Filtertype:PackageArchitecture /Operator:Equal /Value:x86 /Filtertype:Packagedateadded /Operator:LessOrEqual /Value:2008/01/01
```
#### additional references
[Command-Line Syntax Key](command-line-syntax-key.md)
[Using the add-DriverGroupPackage Command](using-the-add-drivergrouppackage-command.md)
[Using the add-DriverPackage Command](using-the-add-driverpackage-command.md)
[Using the add-AllDriverPackages subcommand](using-the-add-alldriverpackages-subcommand.md)