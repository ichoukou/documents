# telnet: unset

>Applies To: Windows Server (Semi-Annual Channel), Windows Server 2016, Windows Server 2012 R2, Windows Server 2012

Turns off previously set options.   
## Syntax  
```  
u[nset] {bsasdel | crlf | delasbs | escape | localecho | logging | ntlm} [?]  
```  
### Parameters  
|Parameter|Description|  
|-------|--------|  
|bsasdel|Sends **Backspace** as a **Backspace**.|  
|crlf|Sends the **Enter** key as a CR. Also known as line feed mode.|  
|delasbs|Sends **delete** as **delete**.|  
|escape|removes the escape character setting.|  
|localecho|Turns off localecho.|  
|logging|Turns off logging.|  
|ntlm|Turns off NTLM authentication.|  
|?|Displays help for this command.|  
## <a name="BKMK_Examples"></a>Examples  
Turn off logging.  
```  
u logging  
```  
## additional references  
-   [Command-Line Syntax Key](command-line-syntax-key.md)  
