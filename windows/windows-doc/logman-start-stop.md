# logman start | stop

>Applies To: Windows Server (Semi-Annual Channel), Windows Server 2016, Windows Server 2012 R2, Windows Server 2012

start a data collector and set the begin time to manual, or stop a data collector set and set the end time to manual.  
  
## Syntax  
```  
logman start <[-n] <name>> [options]  
logman stop <[-n] <name>> [options]  
```  
## Parameters  
|Parameter|Description|  
|-------|--------|  
|-?|Displays context-sensitive help.|  
|-s <computer name>|Perform the command on the specified remote computer.|  
|-config <value>|Specifies the settings file containing command options.|  
|[-n] <name>|Name of the target object.|  
|-ets|Send commands to Event Trace Sessions directly without saving or scheduling.|  
|-as|Perform the requested operation asynchronously.|  
## <a name="BKMK_examples"></a>Examples  
The following command starts the data collector perf_log on the remote computer server_1.  
```  
logman start perf_log -s server_1  
```  
#### additional references  
[logman](logman.md)  
