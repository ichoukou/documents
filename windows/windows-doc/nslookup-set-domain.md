# nslookup set domain

>Applies To: Windows Server (Semi-Annual Channel), Windows Server 2016, Windows Server 2012 R2, Windows Server 2012

changes the default Domain Name System (DNS) domain name to the name specified.
## Syntax
```
set domain=<DomainName>
```
## Parameters
|Parameter|Description|
|-------|--------|
|<DomainName>|Specifies a new name for the default DNS domain name. The default domain name is the host name.|
|{help &#124; ?}|Displays a short summary of **nslookup** subcommands.|
## Remarks
-   The default DNS domain name is appended to a lookup request depending on the state of the **defname** and **search** options. The DNS domain search list contains the parents of the default DNS domain if it has at least two components in its name. For example, if the default DNS domain is mfg.widgets.com, the search list is named both mfg.widgets.com and widgets.com. Use the **set srchlist** command to specify a different list and the **set all** command to display the list.
## additional references
[Command-Line Syntax Key](command-line-syntax-key.md)
[nslookup set srchlist](nslookup-set-srchlist.md)
[nslookup set all](nslookup-set-all.md)
