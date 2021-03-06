# Sc delete



Deletes a service subkey from the registry. If the service is running or if another process has an open handle to the service, the service is marked for deletion.

For examples of how to use this command, see [Examples](#BKMK_examples).

## Syntax

```
sc [<ServerName>] delete [<ServiceName>]
```

## Parameters

|Parameter|Description|
|---------|-----------|
|\<ServerName>|Specifies the name of the remote server on which the service is located. The name must use the Universal Naming Convention (UNC) format (for example, \\\\myserver). To run SC.exe locally, omit this parameter.|
|\<ServiceName>|Specifies the service name returned by the **getkeyname** operation.|
|?|Displays help at the command prompt.|

## Remarks

Use **Add or Remove Programs** on **Control Panel** to delete DHCP, DNS, or any other built-in operating system services. Note that **Add or Remove Programs** will not only remove the registry subkey for the service, but it will also uninstall the service and delete any shortcuts to it.

## <a name="BKMK_examples"></a>Examples

To delete the service subkey **NewServ** from the registry on the local computer, type:
```
sc delete newserv
```

#### Additional references

[Command-Line Syntax Key](command-line-syntax-key.md)