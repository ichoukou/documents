# writer



Verifies that a writer or component is included or excludes a writer or component from the backup or restore procedure. If used without parameters, **writer** displays help at the command prompt.

## Syntax

```
writer verify [<Writer> | <Component>]
writer exclude [<Writer> | <Component>]
```

## Parameters

|Parameter|Description|
|---------|-----------|
|verify|Verifies that the specified writer or component is included in the backup or restore procedure. The backup or restore procedure will fail if the writer or component is not included.|
|exclude|Excludes the specified writer or component from the backup or restore procedure.|
|[\<Writer> | <Component>]|Specifies the writer or component to verify or exclude. Writers are specified by writer GUID or by the writer name, for example "System Writer."|

## <a name="BKMK_examples"></a>Examples

To verify a writer by specifying its GUID (for this example, 4dc3bdd4-ab48-4d07-adb0-3bee2926fd7f), type:
```
writer verify {4dc3bdd4-ab48-4d07-adb0-3bee2926fd7f}
```
To exclude a writer with the name “System Writer,�? type:
```
writer exclude "System Writer"
```

#### Additional references

[Command-Line Syntax Key](command-line-syntax-key.md)