# ftp: remotehelp_1

>Applies To: Windows Server (Semi-Annual Channel), Windows Server 2016, Windows Server 2012 R2, Windows Server 2012

Displays help for remote commands.   
## Syntax  
```  
remotehelp [<Command>]  
```  
### Parameters  
|Parameter|Description|  
|-------|--------|  
|[<Command>]|Specifies the name of the command about which you want help. If *Command* is not specified, **ftp** displays a list of all remote commands.|  
## Remarks  
You can run remote commands using **quote** or **literal**.  
## <a name="BKMK_Examples"></a>Examples  
Display a list of remote commands.  
```  
remotehelp  
```  
Display the syntax for the **feat** remote command.  
```  
remotehelp feat  
```  
## additional references  
-   [ftp: quote](ftp-quote.md)  
-   [Command-Line Syntax Key](command-line-syntax-key.md)  
