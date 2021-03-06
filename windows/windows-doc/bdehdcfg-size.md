# bdehdcfg: size



Specifies the size of the system partition when a new system drive is being created. For an example of how this command can be used, see [Examples](#BKMK_Examples).

## Syntax

```
bdehdcfg -target {default|unallocated|<DriveLetter> shrink} -size <SizeinMB>
```

### Parameters

|Parameter|Description|
|---------|-----------|
|\<SizeinMB>|Indicates the number of megabytes (MB) to use for the new partition.|

## Remarks

If you do not specify a size, the tool will use the default value of 300 MB. The minimum size of the system drive is 100 MB. If you will store system recovery or other system tools on the system partition, you should increase the size accordingly.

> [!NOTE]
> The **size** command cannot be combined with the **target** \<DriveLetter> **merge** command.

## <a name="BKMK_Examples"></a>Examples

The following example illustrates using the **size** command to allocate 500 MB to the default system drive.
```
bdehdcfg -target default -size 500
```

#### Additional references

-   [Command-Line Syntax Key](command-line-syntax-key.md)
-   [Bdehdcfg](bdehdcfg.md)