# Scwcmd: rollback

> Applies To: Windows Server 2012 R2, Windows Server 2012

Applies the most recent rollback policy available, and then deletes that rollback policy.

## Syntax

```
scwcmd rollback /m:<ComputerName> [/u:<UserName>] [/pw:<Password>]
```

### Parameters

|Parameter|Description|
|---------|-----------|
|/m:\<ComputerName>|Specifies the NetBIOS name, DNS name, or IP address of a computer where the rollback operation should be performed.|
|/u:\<UserName>|Specifies an alternate user account to use when performing a remote rollback. The default is the logged on user.|
|/pw:\<Password>|Specifies an alternate user credential to use when performing a remote rollback. The default is the logged on user.|
|/?|Displays help at the command prompt.|

## Remarks

Scwcmd.exe is only available on computers running Windows Server 2008 R2, Windows Server 2008, or Windows Server 2003.

## <a name="BKMK_Examples"></a>Examples

To roll back the security policy on a computer at IP address 172.16.0.0, type:
```
scwcmd rollback /m:172.16.0.0
```

#### Additional references

-   [Command-Line Syntax Key](command-line-syntax-key.md)