--查询当前库中每张表占用的表空间大小
SELECT S.table_name, T.SEGMENT_NAME, T.SEGMENT_TYPE, BYTES / 1024 / 1024 MD
  FROM USER_SEGMENTS T, USER_LOBS S
 WHERE T.SEGMENT_NAME = S.segment_name
 ORDER BY MD DESC;
