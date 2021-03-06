# arp

>Applies To: Windows Server (Semi-Annual Channel), Windows Server 2016, Windows Server 2012 R2, Windows Server 2012

Displays and modifies entries in the Address Resolution Protocol (ARP) cache. The ARP cache contains one or more tables that are used to store IP addresses and their resolved Ethernet or Token Ring physical addresses. There is a separate table for each Ethernet or Token Ring network adapter installed on your computer. Used without parameters, **arp** displays help information.
显示和修改地址解析协议（ARP）缓存中的条目。 ARP缓存包含一个或多个用于存储IP地址及其已解析的以太网或令牌环物理地址的表。 计算机上安装的每个以太网或令牌环网络适配器都有一个单独的表。 如果不使用参数，** arp **会显示帮助信息。

## Syntax
```
arp [/a [<Inetaddr>] [/n <ifaceaddr>]] [/g [<Inetaddr>] [-n <ifaceaddr>]] [/d <Inetaddr> [<ifaceaddr>]] [/s <Inetaddr> <Etheraddr> [<ifaceaddr>]]
```
### Parameters
|Parameter|Description|
|-------|--------|
|/a [<Inetaddr>] [/n <ifaceaddr>]|Displays current arp cache tables for all interfaces. The /n parameter is case-sensitive.<br /><br />To display the arp cache entry for a specific IP address, use **arp /a** with the *Inetaddr* parameter, where *Inetaddr* is an IP address. If *Inetaddr* is not specified, the first applicable interface is used.<br /><br />To display the arp cache table for a specific interface, use the **/n***ifaceaddr* parameter in conjunction with the **/a** parameter where *ifaceaddr* is the IP address assigned to the interface.|
|/g [<Inetaddr>] [/n <ifaceaddr>]|Identical to **/a**.|
|[/d <Inetaddr> [<ifaceaddr>]|deletes an entry with a specific IP address, where *Inetaddr* is the IP address.<br /><br />To delete an entry in a table for a specific interface, use the *ifaceaddr* parameter where *ifaceaddr* is the IP address assigned to the interface.<br /><br />To delete all entries, use the asterisk (\*) wildcard character in place of *Inetaddr*.|
|/s <Inetaddr> <Etheraddr> [<ifaceaddr>]|adds a static entry to the arp cache that resolves the IP address *Inetaddr* to the physical address *Etheraddr*.<br /><br />To add a static arp cache entry to the table for a specific interface, use the *ifaceaddr* parameter where *ifaceaddr* is an IP address assigned to the interface.|
|/?|Displays help at the command prompt.|
## Remarks
-   The IP addresses for *Inetaddr* and *ifaceaddr* are expressed in dotted decimal notation.
-   The physical address for *Etheraddr* consists of six bytes expressed in hexadecimal notation and separated by hyphens (for example, 00-AA-00-4F-2A-9C).
-   Entries added with the **/s** parameter are static and do not time out of the arp cache. The entries are removed if the TCP/IP protocol is stopped and started. To create permanent static arp cache entries, place the appropriate **arp** commands in a batch file and use Scheduled Tasks to run the batch file at startup.
## <a name="BKMK_Examples"></a>Examples
To display the arp cache tables for all interfaces, type:
```
arp /a
```
To display the arp cache table for the interface that is assigned the IP address 10.0.0.99, type:
```
arp /a /n 10.0.0.99
```
To add a static arp cache entry that resolves the IP address 10.0.0.80 to the physical address 00-AA-00-4F-2A-9C, type:
```
arp /s 10.0.0.80 00-AA-00-4F-2A-9C 
```
## additional references
-   [Command-Line Syntax Key](command-line-syntax-key.md)
