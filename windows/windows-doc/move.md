# move



Moves one or more files from one directory to another directory.

For examples of how to use this command, see [Examples](#BKMK_examples).

## Syntax

```
move [{/y | /-y}] [<Source>] [<Target>]
```

## Parameters

|Parameter|Description|
|---------|-----------|
|/y|Suppresses prompting to confirm that you want to overwrite an existing destination file.|
|/-y|Causes prompting to confirm that you want to overwrite an existing destination file.|
|\<Source>|Specifies the path and name of the file or files to move. If you want to move or rename a directory, *Source* should be the current directory path and name.|
|\<Target>|Specifies the path and name to move files to. If you want to move or rename a directory, *Target* should be the desired directory path and name.|
|/?|Displays help at the command prompt.|

## Remarks

-   The **/y** command-line option might be preset in the COPYCMD environment variable. You can override this with **/-y** on the command line. The default is to prompt before overwriting files unless the **copy** command is run from within a batch script.
-   Moving encrypted files to a volume that does not support Encrypting File System (EFS) results in an error. Decrypt the files first or move the files to a volume that supports EFS.

## <a name="BKMK_examples"></a>Examples

To move all files with the .xls extension from the \Data directory to the \Second_Q\Reports directory, type:
```
move \data\*.xls \second_q\reports\ 
```

#### Additional references

[Command-Line Syntax Key](command-line-syntax-key.md)