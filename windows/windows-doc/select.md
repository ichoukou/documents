# select



Shifts the focus to a disk, partition, volume, or virtual hard disk (VHD).

## Syntax

```
select disk
select partition
select volume
select vdisk
```

## Parameters

|Parameter|Description|
|---------|-----------|
|[Select disk](select-disk.md)|Shifts the focus to a disk.|
|[Select partition](select-partition.md)|Shifts the focus to a partition.|
|[Select volume](select-volume.md)|Shifts the focus to a volume.|
|[Select vdisk](select-vdisk.md)|Shifts the focus to a VHD.|

## Remarks

-   If a volume is selected with a corresponding partition, the partition will be automatically selected.
-   If a partition is selected with a corresponding volume, the volume will be automatically selected.

#### Additional references

[Command-Line Syntax Key](command-line-syntax-key.md)
