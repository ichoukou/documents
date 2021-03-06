# Simulate restore



Tests writer involvement in restore sessions on the computer without issuing **PreRestore** or **PostRestore** events to writers.

## Syntax

```
simulate restore
```

## Remarks

-   **Simulate restore** is used to test whether or not restore with writers can be successful.
-   Before you can use **simulate restore**, you must load a DiskShadow metadata file by using the **load metadata** command. This loads the selected writers and components for the restore.

#### Additional references

[Command-Line Syntax Key](command-line-syntax-key.md)