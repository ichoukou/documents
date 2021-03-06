# ksetup:addhosttorealmmap



Adds a service principal name (SPN) mapping between the stated host and the realm. For examples of how this command can be used, see [Examples](#BKMK_Examples).

## Syntax

```
ksetup /addhosttorealmmap <HostName> <RealmName>
```

### Parameters

|Parameter|Description|
|---------|-----------|
|\<HostName>|The host name is the computer name, and it can be stated as the computer's fully qualified domain name.|
|\<RealmName>|The realm name is stated as an uppercase DNS name, such as CORP.CONTOSO.COM.|

## Remarks

This command allows you to map a host or multiple hosts that are sharing the same DNS suffix to the realm.

The mapping is recorded in the registry in **HKEY_LOCAL_MACHINE\SYSTEM\CurrentContolSet\Lsa\Kerberos\HostToRealm**.

## <a name="BKMK_Examples"></a>Examples

As part of configuring the realm CONTOSO, map the host computer IPops897 to the realm:
```
ksetup /addhosttorealmmap IPops897 CONTOSO
```
Verify in the registry that the mapping is as intended.

#### Additional references

-   [Ksetup:delhosttorealmmap](ksetup-delhosttorealmmap.md)
-   [Ksetup](ksetup.md)
-   [Command-Line Syntax Key](command-line-syntax-key.md)