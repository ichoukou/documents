# bitsadmin getnoprogresstimeout



Retrieves the length of time, in seconds, that the service tries to transfer the file after a transient error occurs.

## Syntax

```
bitsadmin /GetNoProgressTimeout <Job>
```

## Parameters

|Parameter|Description|
|---------|-----------|
|Job|The job's display name or GUID|

## <a name="BKMK_examples"></a>Examples

The following example retrieves the progress time out value for the job named *myDownloadJob*.
```
C:\>bitsadmin /GetNoProgressTimeout myDownloadJob
```

#### Additional references

[Command-Line Syntax Key](command-line-syntax-key.md)