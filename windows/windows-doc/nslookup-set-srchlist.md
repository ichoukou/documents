# nslookup set srchlist

>Applies To: Windows Server (Semi-Annual Channel), Windows Server 2016, Windows Server 2012 R2, Windows Server 2012

changes the default Domain Name System (DNS) domain name and search list.

## Syntax
```
Set srchlist=<DomainName>[/...]
```
## Parameters
|Parameter|Description|
|-------|--------|
|<DomainName>|Specifies new names for the default DNS domain and search list. The default domain name value is based on the host name. You can specify a maximum of six names separated by slashes (/).|
|{help &#124; ?}|Displays a short summary of **nslookup** subcommands.|
## Remarks
-   The **set srchlist**command overrides the default DNS domain name and search list of the **set domain** command. Use the **set all** command to display the list.
## <a name="BKMK_examples"></a>Examples
The following example sets the DNS domain to mfg.widgets.com and the search list to the three names:
```
set srchlist=mfg.widgets.com/mrp2.widgets.com/widgets.com
```
## additional references
[Command-Line Syntax Key](command-line-syntax-key.md)
[nslookup set domain](nslookup-set-domain.md)
[nslookup set all](nslookup-set-all.md)
