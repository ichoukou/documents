# mklink
Creates a symbolic link.

For examples of how to use this command, see [Examples](#BKMK_examples).

## Syntax

```
mklink [[/d] | [/h] | [/j]] <Link> <Target>
```

## Parameters

|Parameter|Description|
|---------|-----------|
|/d|Creates a directory symbolic link. By default, **mklink** creates a file symbolic link.|
|/h|Creates a hard link instead of a symbolic link.|
|/j|Creates a Directory Junction.|
|\<Link>|Specifies the name of the symbolic link that is being created.|
|\<Target>|Specifies the path (relative or absolute) that the new symbolic link refers to.|
|/?|Displays help at the command prompt.|

## <a name="BKMK_examples"></a>Examples

To create a symbolic link named MyDocs from the root directory to the \Users\User1\Documents directory, type:
```
mklink /d \MyDocs \Users\User1\Documents
```