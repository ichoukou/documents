# unexpose



Unexposes a shadow copy that was exposed by using the **expose** command. The exposed shadow copy can be specified by its Shadow ID, drive letter, share, or mount point.

For examples of how to use this command, see [Examples](#BKMK_examples).

## Syntax

```
unexpose {<ShadowID> | <Drive:> | <Share> | <MountPoint>}
```

## Parameters

|Parameter|Description|
|---------|-----------|
|\<ShadowID>|Unexposes the shadow copy specified by the given Shadow ID.|
|\<Drive:>|Unexposes the shadow copy associated with the specified drive letter (for example, drive P).|
|\<Share>|Unexposes the shadow copy associated with the specified share (for example, \\\\*MachineName*\).|
|\<MountPoint>|Unexposes the shadow copy associated with the specified mount point (for example, C:\shadowcopy\).|

## Remarks

-   You can use an existing alias or an environment variable in place of *ShadowID*. Use **add** without parameters to see existing aliases.

## <a name="BKMK_examples"></a>Examples

To unexpose the shadow copy associated with Drive P, type:
```
unexpose P:
```

#### Additional references

[Command-Line Syntax Key](command-line-syntax-key.md)