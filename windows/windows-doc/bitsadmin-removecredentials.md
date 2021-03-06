# bitsadmin removecredentials



Removes credentials from a job.

## Syntax

```
bitsadmin /RemoveCredentials <Job> <Target> <Scheme>
```

## Parameters

|Parameter|Description|
|---------|-----------|
|Job|The job's display name or GUID|
|Target|SERVER or PROXY|
|Scheme|One of the following:</br>-   BASIC—authentication scheme in which the user name and password are sent in clear-text to the server or proxy.</br>-   DIGEST—a challenge-response authentication scheme that uses a server-specified data string for the challenge.</br>-   NTLM—a challenge-response authentication scheme that uses the credentials of the user for authentication in a Windows network environment.</br>-   NEGOTIATE—also known as the Simple and Protected Negotiation protocol (Snego) is a challenge-response authentication scheme that negotiates with the server or proxy to determine which scheme to use for authentication. Examples are the Kerberos protocol and NTLM.</br>-   PASSPORT—a centralized authentication service provided by Microsoft that offers a single logon for member sites.|

## <a name="BKMK_examples"></a>Examples

The following example removes credentials from the job named *myDownloadJob*.
```
C:\>bitsadmin /RemoveCredentials myDownloadJob SERVER BASIC
```

#### Additional references

[Command-Line Syntax Key](command-line-syntax-key.md)