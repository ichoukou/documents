# break



Disassociates a shadow copy volume from VSS and makes it accessible as a regular volume. The volume can then be accessed using a drive letter (if assigned) or volume name. If used without parameters, **break** displays help at the command prompt.

> [!NOTE]
> This command is relevant only for hardware shadow copies after import.

For examples of how to use this command, see [Examples](#BKMK_examples).

## Syntax

```
break [writable] <SetID>
```

## Parameters

|Parameter|Description|
|---------|-----------|
|[writable]|Enables read/write access on the volume.|
|\<SetID>|Specifies the ID of the shadow copy set.|

## Remarks

-   Exposed volumes, like the shadow copies they originate from, are read-only by default.
-   The alias of the shadow copy ID, which is stored as an environment variable by the **load metadata** command, can be used in the *SetID* parameter.

## <a name="BKMK_examples"></a>Examples

To make a shadow copy with the alias name Alias1 accessible as a writable volume in the operating system, type:
```
break writable %Alias1%
```

> [!NOTE]
> Access to the volume is made directly to the hardware provider without record of the volume having been a shadow copy.

#### Additional references

[Command-Line Syntax Key](command-line-syntax-key.md)