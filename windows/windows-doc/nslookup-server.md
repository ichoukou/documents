# nslookup server

>Applies To: Windows Server (Semi-Annual Channel), Windows Server 2016, Windows Server 2012 R2, Windows Server 2012

changes the default server to the specified Domain Name System (DNS) domain.
## Syntax
```
server <DNSDomain>
```
## Parameters
|Parameter|Description|
|-------|--------|
|<DNSDomain>|Required. Specifies the new DNS domain for the default server.|
|{help &#124; ?}|Displays a short summary of **nslookup** subcommands.|
## Remarks
-   The **server** command uses the current default server to look up the information about the specified DNS domain. This is in contrast to the **lserver** command, which uses the initial server.
## additional references
[Command-Line Syntax Key](command-line-syntax-key.md)
[nslookup lserver](nslookup-lserver.md)
