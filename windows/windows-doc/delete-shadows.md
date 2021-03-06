# delete shadows



Deletes shadow copies.

## Syntax

```
delete shadows [all | volume <Volume> | oldest <Volume> | set <SetID> | id <ShadowID> | exposed {<Drive> | <MountPoint>}]
```

## Parameters

|Parameter|Description|
|---------|-----------|
|all|Deletes all shadow copies.|
|volume \<Volume>|Deletes all shadow copies of the given volume.|
|oldest \<Volume>|Deletes the oldest shadow copy of the given volume.|
|set \<SetID>|Deletes the shadow copies in the Shadow Copy Set of the given ID. You can specify an alias by using the **%** symbol if the alias exists in the current environment.|
|id \<ShadowID>|Deletes a shadow copy of the given ID. You can specify an alias by using the **%** symbol if the alias exists in the current environment.|
|exposed {\<Drive> | <MountPoint>}|Deletes the shadow copy exposed at the specified drive letter or mount point. Specify mount points as c:\mountPoint or by the drive letter such as p:.|

#### Additional references

[Command-Line Syntax Key](command-line-syntax-key.md)