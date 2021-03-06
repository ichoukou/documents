# ksetup:server



Allows you to specify a name for a computer running the Windows operating system so that the changes made by using **ksetup** will update the target computer. For examples of how this command can be used, see [Examples](#BKMK_Examples).

## Syntax

```
ksetup /server <ServerName>
```

### Parameters

|Parameter|Description|
|---------|-----------|
|\<ServerName>|The full computer name on which the configuration will be effective, such as IPops897.corp.contoso.com.</br>If an incomplete fully qualified domain computer name is specified, the command will fail.|

## Remarks

There is no way to remove the targeted server name; you can only change it back to the local computer name, which is the default.

The target server name is stored in the registry in **HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\LSA\Kerberos**. It is not reported by using **ksetup**.

## <a name="BKMK_Examples"></a>Examples

Make your **ksetup** configurations effective on the IPops897 computer that is connected on the Contoso domain:
```
ksetup /server IPops897.corp.contoso.com
```

#### Additional references

-   [Ksetup](ksetup.md)
-   [Command-Line Syntax Key](command-line-syntax-key.md)