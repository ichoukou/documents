# exit

>Applies To: Windows Server (Semi-Annual Channel), Windows Server 2016, Windows Server 2012 R2, Windows Server 2012

exits the Cmd.exe program (the command interpreter) or the current batch script.  
for examples of how to use this command, see [Examples](#BKMK_examples).  
## Syntax  
```  
exit [/b] [<exitCode>]  
```  
## Parameters  
|Parameter|Description|  
|-------|--------|  
|/b|exits the current batch script instead of exiting Cmd.exe. If executed from outside a batch script, exits Cmd.exe.|  
|<exitCode>|Specifies a numeric number. If **/b** is specified, the ERRORLEVEL environment variable is set to that number. If you are quitting **Cmd.exe**, the process exit code is set to that number.|  
|/?|Displays help at the command prompt.|  
## <a name="BKMK_examples"></a>Examples  
To close the command interpreter, Cmd.exe, type:  
```  
exit  
```  
## additional references  
-   [Command-Line Syntax Key](command-line-syntax-key.md)  
  
