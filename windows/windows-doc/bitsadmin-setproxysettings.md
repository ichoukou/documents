# bitsadmin setproxysettings



Sets the proxy settings for the specified job.

## Syntax

```
bitsadmin /SetProxySettings <Job> <Usage> [List] [Bypass]
```

## Parameters

|Parameter|Description|
|---------|-----------|
|Job|The job's display name or GUID|
|Usage|One of the following values:</br>-   PRECONFIG—use the owner's Internet Explorer defaults.</br>-   NO_PROXY—do not use a proxy server.</br>-   OVERRIDE—use an explicit proxy list and bypass list. A proxy and proxy bypass list must follow.</br>-   AUTODETECT—automatically detect proxy settings.|
|List|Used when the *Usage* parameter is set to OVERRIDE—contains a semicolon or space delimited list of proxy servers to use.|
|Bypass|Used when the *Usage* parameter is set to OVERRIDE—contains a semicolon or space-delimited list of host names or IP addresses, or both, for which transfers are not to be routed through a proxy. This can be **\<local>** to refer to all servers on the same LAN. Values of NULL or "" may be used for an empty proxy bypass list.|

## <a name="BKMK_examples"></a>Examples

The following example sets the proxy settings for the job named *myDownloadJob*.
```
C:\>bitsadmin /SetProxySettings myDownloadJob PRECONFIG
```

#### Additional references

[Command-Line Syntax Key](command-line-syntax-key.md)