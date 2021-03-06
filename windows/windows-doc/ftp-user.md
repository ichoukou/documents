# ftp: user

>Applies To: Windows Server (Semi-Annual Channel), Windows Server 2016, Windows Server 2012 R2, Windows Server 2012

Specifies a user to the remote computer.   
## Syntax  
```  
user <UserName> [<Password>] [<Account>]  
```  
### Parameters  
|Parameter|Description|  
|-------|--------|  
|<UserName>|Specifies a user name with which to log on to the remote computer.|  
|[<Password>]|Specifies the password for *UserName*. If a password is not specified but is required,  **ftp** prompts for the password.|  
|[<Account>]|Specifies an account with which to log on to the remote computer. If an *Account* is not specified but is required,  **ftp** prompts for the account.|  
## <a name="BKMK_Examples"></a>Examples  
Specify User1 with the password Password1.  
```  
user User1 Password1  
```  
## additional references  
-   [Command-Line Syntax Key](command-line-syntax-key.md)  
