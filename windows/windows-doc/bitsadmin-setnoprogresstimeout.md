# bitsadmin setnoprogresstimeout



Sets the length of time, in seconds, that the service tries to transfer the file after a transient error occurs.

## Syntax

```
bitsadmin /SetNoProgressTimeout <Job> <TimeOutvalue>
```

## Parameters

|Parameter|Description|
|---------|-----------|
|Job|The job's display name or GUID|
|TimeOutvalue|A number represented in seconds.|

## Remarks

-   The no progress timeout interval begins when the job encounters a transient error.
-   The timeout interval stops or resets when a byte of data is successfully transferred.
-   If no progress timeout interval exceeds the *TimeOutvalue*, then the job is placed in a fatal error state.

## <a name="BKMK_examples"></a>Examples

The following example sets the no progress time out value for the job named *myDownloadJob* to 20 seconds
```
C:\>bitsadmin /SetNoProgressTimeout myDownloadJob 20
```

#### Additional references

[Command-Line Syntax Key](command-line-syntax-key.md)