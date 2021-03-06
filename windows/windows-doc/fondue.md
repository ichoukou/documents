# fondue

>Applies To: Windows Server (Semi-Annual Channel), Windows Server 2016, Windows Server 2012 R2, Windows Server 2012

Enables Windows optional features by downloading required files from Windows Update or another source specified by Group Policy. The manifest file for the feature must already be installed in your Windows image. 
## Syntax
```
fondue.exe /enable-feature:<feature_name> [/caller-name:<program_name>] [/hide-ux:{all | rebootRequest}]
```
### Parameters
|Parameter|Description|
|-------|--------|
|/enable-feature:<*feature_name*>|Specifies the name of the Windows optional feature you want to enable. You can only enable one feature per command line. To enable multiple features, use fondue.exe for each feature.|
|/caller-name:<*program_name*>|Specifies the program or process name when you call fondue.exe from a script or batch file. You can use this option to add the program name to the SQM report if there is an error.|
|/hide-ux:{all &#124; rebootRequest}|Use **all** to hide all messages to the user including progress and permission requests to access Windows Update. If permission is required, the operation will fail.<br /><br />Use **rebootRequest** to only hide user messages asking for permission to reboot the computer. Use this option if you have a script that controls reboot requests.|
## <a name="BKMK_Examples"></a>Examples
To enable Microsoft .NET Framework 3.5, type:
```
fondue.exe /enable-feature:NETFX3
```
To enable Microsoft .NET Framework 3.5, add the program name to the SQM report, and not display messages to the user, type:
```
fondue.exe /enable-feature:NETFX3 /caller-name:Admin.bat /hide-ux:all
```
## additional references
-   [Command-Line Syntax Key](command-line-syntax-key.md)
## See Also
[Microsoft .NET Framework 3.5 Deployment Considerations](https://go.microsoft.com/fwlink/?LinkId=248869)
