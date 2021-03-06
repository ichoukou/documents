# ftp: recv

>Applies To: Windows Server (Semi-Annual Channel), Windows Server 2016, Windows Server 2012 R2, Windows Server 2012

Copies a remote file to the local computer using the current file transfer type.   
## Syntax  
```  
recv <remoteFile> [<LocalFile>]  
```  
### Parameters  
|Parameter|Description|  
|-------|--------|  
|<remoteFile>|Specifies the remote file to copy.|  
|[<LocalFile>]|Specifies the name to use on the local computer.|  
## Remarks  
-   The **recv** command is identical to the **get** command.  
-   if *LocalFile* is not specified, the file is given the *remoteFile* name.  
## <a name="BKMK_Examples"></a>Examples  
copy **test.txt** to the local computer using the current file transfer type.  
```  
recv test.txt  
```  
copy **test.txt** to the local computer as **test1.txt** using the current file transfer type.  
```  
recv test.txt test1.txt  
```  
## additional references  
-   [ftp: ascii](ftp-ascii.md)  
-   [ftp: binary](ftp-binary.md)  
-   [ftp: get](ftp-get.md)  
-   [Command-Line Syntax Key](command-line-syntax-key.md)  
