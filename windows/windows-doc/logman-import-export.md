# logman import | export

>Applies To: Windows Server (Semi-Annual Channel), Windows Server 2016, Windows Server 2012 R2, Windows Server 2012

import a Data Collector Set from an XML file, or export a Data Collector Set to an XML file.  
  
## Syntax  
```  
logman import <[-n] <name>> <-xml <name>> [options]  
logman export <[-n] <name>> <-xml <name>> [options]  
```  
## Parameters  
|Parameter|Description|  
|-------|--------|  
|-?|Displays context-sensitive help.|  
|-s <computer name>|Perform the command on the specified remote computer.|  
|-config <value>|Specifies the settings file containing command options.|  
|[-n] <name>|Name of the target object.|  
|-xml <name>|Name of the XML file to import or export.|  
|-ets|Send commands to Event Trace Sessions directly without saving or scheduling.|  
|-[-]u <user [password]>|User to Run As. Entering a * for the password produces a prompt for the password. The password is not displayed when you type it at the password prompt.|  
|-y|Answer yes to all questions without prompting.|  
## <a name="BKMK_examples"></a>Examples  
The following command imports the XML file c:\windows\perf_log.xml from the computer server_1 as a data collector set called perf_log.  
```  
logman import perf_log -s server_1 -xml "c:\windows\perf_log.xml"  
```  
#### additional references  
[logman](logman.md)  
