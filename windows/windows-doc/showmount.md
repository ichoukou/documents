# showmount

>Applies To: Windows Server (Semi-Annual Channel), Windows Server 2016, Windows Server 2012 R2, Windows Server 2012

You can use **showmount** to display mounted directories.  
  
## Syntax  
```
showmount {-e|-a|-d} <Server>  
```

## Description  
The **showmount** command\-line utility displays information about mounted file systems exported by Server for NFS on the computer specified by *Server*. If *Server* is not provided, **showmount** displays information about the computer on which the **showmount** command is run.  
  
You must provide one of the following options:  
  
- **\-e** - Displays all file systems exported on the server.  
- **\-a** - Displays all Network File System \(NFS\) clients and the directories on the server each has mounted.  
- **\-d** - Displays all directories on the server that are currently mounted by NFS clients.  
  
## See Also  
[Services for Network File System Command Reference](services-for-network-file-system-command-reference.md)  