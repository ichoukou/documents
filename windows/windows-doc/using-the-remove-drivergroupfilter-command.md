# Using the remove-DriverGroupFilter Command



Removes a filter rule from a driver group on a server.

## Syntax

```
WDSUTIL /Remove-DriverGroupFilter /DriverGroup:<Group Name> [/Server:<Server name>] /FilterType:<Filter Type>
```

## Parameters

|Parameter|Description|
|---------|-----------|
|/DriverGroup:\<Group Name>|Specifies the name of the driver group.|
|[/Server:\<Server name>]|Specifies the name of the server. This can be the NetBIOS name or the FQDN. If a server name is not specified, the local server is used.|
|[/FilterType:\<FilterType>]|Specifies the type of the filter to remove from the group. \<FilterType> can be one of the following:</br>**BiosVendor**</br>**BiosVersion**</br>**ChassisType**</br>**Manufacturer**</br>**Uuid**</br>**OsVersion**</br>**OsEdition**</br>**OsLanguage**|

## <a name="BKMK_examples"></a>Examples

To remove a filter, type one of the following:
```
WDSUTIL /Remove-DriverGroupFilter /DriverGroup:PrinterDrivers /FilterType:Manufacturer
```
```
WDSUTIL /Remove-DriverGroupFilter /DriverGroup:PrinterDrivers /FilterType:Manufacturer /FilterType:OSLanguage
```

#### Additional references

[Command-Line Syntax Key](command-line-syntax-key.md)