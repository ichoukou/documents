# netcfg

>Applies To: Windows Server (Semi-Annual Channel), Windows Server 2016, Windows Server 2012 R2, Windows Server 2012

Installs the Windows Preinstallation Environment (WinPE), a lightweight version of Windows used to deploy workstations.   
## Syntax  
```  
netcfg [/v] [/e] [/winpe] [/l ] /c /i  
```  
### Parameters  
|Parameter|Description|  
|-------|--------|  
|/v|Run in verbose (detailed) mode|  
|/e|Use servicing environment variables during install and uninstall|  
|/winpe|Installs TCP/IP, NetBIOS and Microsoft Client for Windows preinstallation envrionment|  
|/l|Provides the location of INF|  
|/c|Provides the class of the component to be installed; protocol, Service, or client|  
|/i|Provides the component ID|  
|/s|Provides the type of components to show<br /><br />\ta = adapters, n = net components|  
|/?|Displays help at the command prompt.|  
## <a name="BKMK_Examples"></a>Examples  
To install the protocol *example* using c:\oemdir\example.inf:  
```  
netcfg /l c:\oemdir\example.inf /c p /i example  
```  
To install the *MS_Server* service:  
```  
netcfg /c s /i MS_Server  
```  
To install TCP/IP, NetBIOS and Microsoft Client for Windows preinstallation environment  
```  
netcfg /v /winpe  
```  
To display if component *MS_IPX* is installed:  
```  
netcfg /q MS_IPX  
```  
To uninstall component *MS_IPX*:  
```  
netcfg /u MS_IPX  
```  
To show all installed net components:  
```  
netcfg /s n  
```  
To shows binding paths containing *MS_TCPIP*:  
```  
netcfg /b ms_tcpip  
```  
## additional references  
-   [Command-Line Syntax Key](command-line-syntax-key.md)  
