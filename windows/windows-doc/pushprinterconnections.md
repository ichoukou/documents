# pushprinterconnections



Reads Deployed Printer Connection settings from Group Policy and deploys/removes printer connections as needed.

## Syntax

```
pushprinterconnections <-log> <-?>
```

### Parameters

|Parameter|Description|
|---------|-----------|
|<-log>|Writes a per user debug log file to %temp, or writes a per machine debug log to %windir%\temp.|
|<-?>|Displays Help at the command prompt.|

## Remarks

This utility is for use in machine startup or user logon scripts, and should not be run from the command line.

#### Additional references

-   [Command-Line Syntax Key](command-line-syntax-key.md)
-   [Deploy Printers by Using Group Policy](https://go.microsoft.com/fwlink/?LinkId=230627)