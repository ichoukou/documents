# makecab

>Applies To: Windows Server (Semi-Annual Channel), Windows Server 2016, Windows Server 2012 R2, Windows Server 2012

Package existing files into a cabinet (.cab) file.
## Syntax
```
makecab [/v[n]] [/d var=<value> ...] [/l <dir>] <source> [<destination>]
makecab [/v[<n>]] [/d var=<value> ...] /f <directives_file> [...]
```
### Parameters
|Parameter|Description|
|-------|--------|
|<source>|File to compress.|
|<destination>|File name to give compressed file. If omitted, the last character of the source file name is replaced with an underscore (_) and used as the destination.|
|/f <directives_file>|A file with **makecab** directives (may be repeated).|
|/d var=<value>|Defines variable with specified value.|
|/l <dir>|Location to place destination (default is current directory).|
|/v[<n>]|Set debugging verbosity level (0=none,...,3=full).|
|/?|Displays help at the command prompt.|
## Remarks
-   Refer to [Microsoft Cabinet format](https://go.microsoft.com/fwlink/?LinkId=226852) on MSDN for information on directive_file.

## additional references
-   [Command-Line Syntax Key](command-line-syntax-key.md)
