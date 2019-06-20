# driverquery



Enables an administrator to display a list of installed device drivers and their properties. If used without parameters, **driverquery** runs on the local computer.

For examples of how to use this command, see [Examples](#BKMK_examples).

## Syntax

```
driverquery [/s <System> [/u [<Domain>\]<Username> [/p <Password>]]] [/fo {table | list | csv}] [/nh] [/v | /si]
```

## Parameters

|Parameter|Description|
|---------|-----------|
|/s \<System>|Specifies the name or IP address of a remote computer. Do not use backslashes. The default is the local computer.|
|/u [\<Domain>\]<Username>|Runs the command with the credentials of the user account as specified by *User* or *Domain*\*User*. By default, **/s** uses the credentials of the user who is currently logged on to the computer that is issuing the command. **/u** cannot be used unless **/s** is specified.|
|/p \<Password>|Specifies the password of the user account that is specified in the **/u** parameter. **/p** cannot be used unless **/u** is specified.|
|/fo {table | list | csv}|Specifies the format to display the driver information. Valid values are **table**, **list**, and **csv**. The default format for output is **table**.|
|/nh|Omits the header row from the displayed driver information. Not valid if the **/fo** parameter is set to **list**.|
|/v|Displays verbose output. **/v** is not valid for signed drivers.|
|/si|Provides information about signed drivers.|
|/?|Displays help at the command prompt.|

## <a name="BKMK_examples"></a>Examples

To display a list of installed device drivers on the local computer, type:
```
driverquery 
```
To display the output in a comma-separated values (CSV) format, type:
```
driverquery /fo csv 
```
To hide the header row in the output, type:
```
driverquery /nh 
```
To use the **driverquery** command on a remote server named **server1** using your current credentials on the local computer, type:
```
driverquery /s server1
```
To use the **driverquery** command on a remote server named **server1** using the credentials for **user1** on the domain **maindom**, type:
```
driverquery /s server1 /u maindom\user1 /p p@ssw3d
```

#### Additional references

[Command-Line Syntax Key](command-line-syntax-key.md)