# ktpass

>Applies To: Windows Server (Semi-Annual Channel), Windows Server 2016, Windows Server 2012 R2, Windows Server 2012

Configures the server principal name for the host or service in active directory Domain Services (AD DS) and generates a .keytab file that contains the shared secret key of the service. The .keytab file is based on the Massachusetts Institute of Technology (MIT) implementation of the Kerberos authentication protocol. The ktpass command-line tool allows non-Windows services that support Kerberos authentication to use the interoperability features provided by the Kerberos Key Distribution Center (KDC) service. This topic applies to the operating system versions designated in the **Applies To** list at the beginning of the topic.  
  
## Syntax  
```  
ktpass  
[/out <FileName>]   
[/princ <PrincipalName>]   
[/mapuser <UserAccount>]   
[/mapop {add|set}] [{-|+}desonly] [/in <FileName>]  
[/pass {Password|*|{-|+}rndpass}]  
[/minpass]  
[/maxpass]  
[/crypto {DES-CBC-CRC|DES-CBC-MD5|RC4-HMAC-NT|AES256-SHA1|AES128-SHA1|All}]  
[/itercount]  
[/ptype {KRB5_NT_PRINCIPAL|KRB5_NT_SRV_INST|KRB5_NT_SRV_HST}]  
[/kvno <KeyversionNum>]  
[/answer {-|+}]  
[/target]  
[/rawsalt] [{-|+}dumpsalt] [{-|+}setupn] [{-|+}setpass <Password>]  [/?|/h|/help]  
```  
## Parameters  
|Parameter|Description|  
|-------|--------|  
|/out <FileName>|Specifies the name of the Kerberos version 5 .keytab file to generate. **Note:** This is the .keytab file that you transfer to a computer that is not running the Windows operating system, and then replace or merge with your existing .keytab file, /Etc/Krb5.keytab.|  
|/princ <PrincipalName>|Specifies the principal name in the form host/computer.contoso.com@CONTOSO.COM. **Warning:** This parameter is case sensitive. See [remarks](#BKMK_remarks) for more information.|  
|/mapuser <UserAccount>|Maps the name of the Kerberos principal, which is specified by the **princ** parameter, to the specified domain account.|  
|/mapop {add&#124;set}|Specifies how the mapping attribute is set.<br /><br />-   **add** adds the value of the specified local user name. This is the default.<br />-   **Set** sets the value for Data Encryption Standard (DES)-only encryption for the specified local user name.|  
|{-&#124;+}desonly|DES-only encryption is set by default.<br /><br />-   **+** Sets an account for DES-only encryption.<br />-   **-** Releases restriction on an account for DES-only encryption. **IMPORTANT:** Beginning with  Windows 7  and  Windows Server 2008 R2 , Windows does not support DES by default.|  
|/in <FileName>|Specifies the .keytab file to read from a host computer that is not running the Windows operating system.|  
|/pass {Password&#124;*&#124;{-&#124;+}rndpass}|Specifies a password for the principal user name that is specified by the **princ** parameter. Use "*" to prompt for a password.|  
|/minpass|Sets the minimum length of the random password to 15 characters.|  
|/maxpass|Sets the maximum length of the random password to 256 characters.|  
|/crypto {DES-CBC-CRC&#124;DES-CBC-MD5&#124;RC4-HMAC-NT&#124;AES256-SHA1&#124;AES128-SHA1&#124;All}|Specifies the keys that are generated in the keytab file:<br /><br />-   **DES-CBC-CRC** is used for compatibility.<br />-   **DES-CBC-MD5** adheres more closely to the MIT implementation and is used for compatibility.<br />-   **RC4-HMAC-NT** employs 128-bit encryption.<br />-   **AES256-SHA1** employs AES256-CTS-HMAC-SHA1-96 encryption.<br />-   **AES128-SHA1** employs AES128-CTS-HMAC-SHA1-96 encryption.<br />-   **All** states that all supported cryptographic types can be used. **Note:** The default settings are based on older MIT versions. Therefore, `/crypto` should always be specified.|  
|/itercount|Specifies the iteration count that is used for AES encryption. The default is that **itercount** is ignored for non-AES encryption and set at 4,096 for AES encryption.|  
|/ptype {KRB5_NT_PRINCIPAL&#124;KRB5_NT_SRV_INST&#124;KRB5_NT_SRV_HST}|Specifies the principal type.<br /><br />-   **KRB5_NT_PRINCIPAL** is the general principal type (recommended).<br />-   **KRB5_NT_SRV_INST** is the user service instance.<br />-   **KRB5_NT_SRV_HST** is the host service instance.|  
|/kvno <KeyversionNum>|Specifies the key version number. The default value is 1.|  
|/answer {-&#124;+}|Sets the background answer mode:<br /><br />**-** Answers reset password prompts automatically with NO.<br /><br />**+** Answers reset password prompts automatically with YES.|  
|/target|Sets which domain controller to use. The default is for the domain controller to be detected, based on the principal name. If the domain controller name does not resolve, a dialog box will prompt for a valid domain controller.|  
|/rawsalt|forces ktpass to use the rawsalt algorithm when generating the key. This parameter is not needed.|  
|{-&#124;+}dumpsalt|The output of this parameter shows the MIT salt algorithm that is being used to generate the key.|  
|{-&#124;+}setupn|Sets the user principal name (UPN) in addition to the service principal name (SPN). The default is to set both in the .keytab file.|  
|{-&#124;+}setpass <Password>|Sets the user's password when supplied. If rndpass is used, a random password is generated instead.|  
|/?&#124;/h&#124;/help|Displays command-line help for ktpass.|  
## <a name="BKMK_remarks"></a>remarks  
Services running on systems that are not running the Windows operating system can be configured with service instance accounts in active directory Domain Services. This allows any Kerberos client to authenticate to services that are not running the Windows operating system by using Windows KDCs.  
The /princ parameter is not evaluated by ktpass and is used as provided. There is no check to see if the parameter matches the exact case of the **userPrincipalName** attribute value when generating the Keytab file. Case sensitive Kerberos distributions using this Keytab file might have problems when there is no exact case match and could fail during pre-authentication. Check and retrieve the correct **userPrincipalName** attribute value from a LDifDE export file. For example:  
```  
ldifde /f keytab_user.ldf /d "CN=Keytab User,OU=UserAccounts,DC=contoso,DC=corp,DC=microsoft,DC=com" /p base /l samaccountname,userprincipalname  
```  
## <a name="BKMK_examples"></a>Examples  
The following example illustrates how to create a Kerberos .keytab file, machine.keytab, in the current directory for the user Sample1. (You will merge this file with the Krb5.keytab file on a host computer that is not running the Windows operating system.) The Kerberos .keytab file will be created for all supported encryption types for the general principal type.  
To generate a .keytab file for a host computer that is not running the Windows operating system, use the following steps to map the principal to the account and set the host principal password:  
1.  Use the active directory User and computers snap-in to create a user account for a service on a computer that is not running the Windows operating system. For example, create an account with the name Sample1.  
2.  Use ktpass to set up an identity mapping for the user account by typing the following at a command prompt:  
    ```  
    ktpass /princ host/Sample1.contoso.com@CONTOSO.COM /mapuser Sample1 /pass MyPas$w0rd /out Sample1.keytab /crypto all /ptype KRB5_NT_PRINCIPAL /mapop set   
    ```  
    
    > [!NOTE]  
    > You cannot map multiple service instances to the same user account.  
    
3.  Merge the .keytab file with the /Etc/Krb5.keytab file on a host computer that is not running the Windows operating system. 

#### additional references  
[Command-Line Syntax Key](command-line-syntax-key.md)  
