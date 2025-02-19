{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.Glue.Types.Table
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Glue.Types.Table where

import qualified Amazonka.Core as Core
import Amazonka.Glue.Types.Column
import Amazonka.Glue.Types.StorageDescriptor
import Amazonka.Glue.Types.TableIdentifier
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Represents a collection of related data organized in columns and rows.
--
-- /See:/ 'newTable' smart constructor.
data Table = Table'
  { -- | A @TableIdentifier@ structure that describes a target table for resource
    -- linking.
    targetTable :: Prelude.Maybe TableIdentifier,
    -- | The last time that the table was accessed. This is usually taken from
    -- HDFS, and might not be reliable.
    lastAccessTime :: Prelude.Maybe Core.POSIX,
    -- | The name of the database where the table metadata resides. For Hive
    -- compatibility, this must be all lowercase.
    databaseName :: Prelude.Maybe Prelude.Text,
    -- | If the table is a view, the original text of the view; otherwise @null@.
    viewOriginalText :: Prelude.Maybe Prelude.Text,
    -- | The owner of the table.
    owner :: Prelude.Maybe Prelude.Text,
    -- | If the table is a view, the expanded text of the view; otherwise @null@.
    viewExpandedText :: Prelude.Maybe Prelude.Text,
    -- | A description of the table.
    description :: Prelude.Maybe Prelude.Text,
    -- | A list of columns by which the table is partitioned. Only primitive
    -- types are supported as partition keys.
    --
    -- When you create a table used by Amazon Athena, and you do not specify
    -- any @partitionKeys@, you must at least set the value of @partitionKeys@
    -- to an empty list. For example:
    --
    -- @\"PartitionKeys\": []@
    partitionKeys :: Prelude.Maybe [Column],
    -- | Indicates whether the table has been registered with Lake Formation.
    isRegisteredWithLakeFormation :: Prelude.Maybe Prelude.Bool,
    -- | The ID of the Data Catalog in which the table resides.
    catalogId :: Prelude.Maybe Prelude.Text,
    -- | The type of this table (@EXTERNAL_TABLE@, @VIRTUAL_VIEW@, etc.).
    tableType :: Prelude.Maybe Prelude.Text,
    -- | A storage descriptor containing information about the physical storage
    -- of this table.
    storageDescriptor :: Prelude.Maybe StorageDescriptor,
    -- | The last time that the table was updated.
    updateTime :: Prelude.Maybe Core.POSIX,
    -- | The time when the table definition was created in the Data Catalog.
    createTime :: Prelude.Maybe Core.POSIX,
    -- | The retention time for this table.
    retention :: Prelude.Maybe Prelude.Natural,
    -- | The person or entity who created the table.
    createdBy :: Prelude.Maybe Prelude.Text,
    -- | The last time that column statistics were computed for this table.
    lastAnalyzedTime :: Prelude.Maybe Core.POSIX,
    -- | The ID of the table version.
    versionId :: Prelude.Maybe Prelude.Text,
    -- | These key-value pairs define properties associated with the table.
    parameters :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The table name. For Hive compatibility, this must be entirely lowercase.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Table' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'targetTable', 'table_targetTable' - A @TableIdentifier@ structure that describes a target table for resource
-- linking.
--
-- 'lastAccessTime', 'table_lastAccessTime' - The last time that the table was accessed. This is usually taken from
-- HDFS, and might not be reliable.
--
-- 'databaseName', 'table_databaseName' - The name of the database where the table metadata resides. For Hive
-- compatibility, this must be all lowercase.
--
-- 'viewOriginalText', 'table_viewOriginalText' - If the table is a view, the original text of the view; otherwise @null@.
--
-- 'owner', 'table_owner' - The owner of the table.
--
-- 'viewExpandedText', 'table_viewExpandedText' - If the table is a view, the expanded text of the view; otherwise @null@.
--
-- 'description', 'table_description' - A description of the table.
--
-- 'partitionKeys', 'table_partitionKeys' - A list of columns by which the table is partitioned. Only primitive
-- types are supported as partition keys.
--
-- When you create a table used by Amazon Athena, and you do not specify
-- any @partitionKeys@, you must at least set the value of @partitionKeys@
-- to an empty list. For example:
--
-- @\"PartitionKeys\": []@
--
-- 'isRegisteredWithLakeFormation', 'table_isRegisteredWithLakeFormation' - Indicates whether the table has been registered with Lake Formation.
--
-- 'catalogId', 'table_catalogId' - The ID of the Data Catalog in which the table resides.
--
-- 'tableType', 'table_tableType' - The type of this table (@EXTERNAL_TABLE@, @VIRTUAL_VIEW@, etc.).
--
-- 'storageDescriptor', 'table_storageDescriptor' - A storage descriptor containing information about the physical storage
-- of this table.
--
-- 'updateTime', 'table_updateTime' - The last time that the table was updated.
--
-- 'createTime', 'table_createTime' - The time when the table definition was created in the Data Catalog.
--
-- 'retention', 'table_retention' - The retention time for this table.
--
-- 'createdBy', 'table_createdBy' - The person or entity who created the table.
--
-- 'lastAnalyzedTime', 'table_lastAnalyzedTime' - The last time that column statistics were computed for this table.
--
-- 'versionId', 'table_versionId' - The ID of the table version.
--
-- 'parameters', 'table_parameters' - These key-value pairs define properties associated with the table.
--
-- 'name', 'table_name' - The table name. For Hive compatibility, this must be entirely lowercase.
newTable ::
  -- | 'name'
  Prelude.Text ->
  Table
newTable pName_ =
  Table'
    { targetTable = Prelude.Nothing,
      lastAccessTime = Prelude.Nothing,
      databaseName = Prelude.Nothing,
      viewOriginalText = Prelude.Nothing,
      owner = Prelude.Nothing,
      viewExpandedText = Prelude.Nothing,
      description = Prelude.Nothing,
      partitionKeys = Prelude.Nothing,
      isRegisteredWithLakeFormation = Prelude.Nothing,
      catalogId = Prelude.Nothing,
      tableType = Prelude.Nothing,
      storageDescriptor = Prelude.Nothing,
      updateTime = Prelude.Nothing,
      createTime = Prelude.Nothing,
      retention = Prelude.Nothing,
      createdBy = Prelude.Nothing,
      lastAnalyzedTime = Prelude.Nothing,
      versionId = Prelude.Nothing,
      parameters = Prelude.Nothing,
      name = pName_
    }

-- | A @TableIdentifier@ structure that describes a target table for resource
-- linking.
table_targetTable :: Lens.Lens' Table (Prelude.Maybe TableIdentifier)
table_targetTable = Lens.lens (\Table' {targetTable} -> targetTable) (\s@Table' {} a -> s {targetTable = a} :: Table)

-- | The last time that the table was accessed. This is usually taken from
-- HDFS, and might not be reliable.
table_lastAccessTime :: Lens.Lens' Table (Prelude.Maybe Prelude.UTCTime)
table_lastAccessTime = Lens.lens (\Table' {lastAccessTime} -> lastAccessTime) (\s@Table' {} a -> s {lastAccessTime = a} :: Table) Prelude.. Lens.mapping Core._Time

-- | The name of the database where the table metadata resides. For Hive
-- compatibility, this must be all lowercase.
table_databaseName :: Lens.Lens' Table (Prelude.Maybe Prelude.Text)
table_databaseName = Lens.lens (\Table' {databaseName} -> databaseName) (\s@Table' {} a -> s {databaseName = a} :: Table)

-- | If the table is a view, the original text of the view; otherwise @null@.
table_viewOriginalText :: Lens.Lens' Table (Prelude.Maybe Prelude.Text)
table_viewOriginalText = Lens.lens (\Table' {viewOriginalText} -> viewOriginalText) (\s@Table' {} a -> s {viewOriginalText = a} :: Table)

-- | The owner of the table.
table_owner :: Lens.Lens' Table (Prelude.Maybe Prelude.Text)
table_owner = Lens.lens (\Table' {owner} -> owner) (\s@Table' {} a -> s {owner = a} :: Table)

-- | If the table is a view, the expanded text of the view; otherwise @null@.
table_viewExpandedText :: Lens.Lens' Table (Prelude.Maybe Prelude.Text)
table_viewExpandedText = Lens.lens (\Table' {viewExpandedText} -> viewExpandedText) (\s@Table' {} a -> s {viewExpandedText = a} :: Table)

-- | A description of the table.
table_description :: Lens.Lens' Table (Prelude.Maybe Prelude.Text)
table_description = Lens.lens (\Table' {description} -> description) (\s@Table' {} a -> s {description = a} :: Table)

-- | A list of columns by which the table is partitioned. Only primitive
-- types are supported as partition keys.
--
-- When you create a table used by Amazon Athena, and you do not specify
-- any @partitionKeys@, you must at least set the value of @partitionKeys@
-- to an empty list. For example:
--
-- @\"PartitionKeys\": []@
table_partitionKeys :: Lens.Lens' Table (Prelude.Maybe [Column])
table_partitionKeys = Lens.lens (\Table' {partitionKeys} -> partitionKeys) (\s@Table' {} a -> s {partitionKeys = a} :: Table) Prelude.. Lens.mapping Lens.coerced

-- | Indicates whether the table has been registered with Lake Formation.
table_isRegisteredWithLakeFormation :: Lens.Lens' Table (Prelude.Maybe Prelude.Bool)
table_isRegisteredWithLakeFormation = Lens.lens (\Table' {isRegisteredWithLakeFormation} -> isRegisteredWithLakeFormation) (\s@Table' {} a -> s {isRegisteredWithLakeFormation = a} :: Table)

-- | The ID of the Data Catalog in which the table resides.
table_catalogId :: Lens.Lens' Table (Prelude.Maybe Prelude.Text)
table_catalogId = Lens.lens (\Table' {catalogId} -> catalogId) (\s@Table' {} a -> s {catalogId = a} :: Table)

-- | The type of this table (@EXTERNAL_TABLE@, @VIRTUAL_VIEW@, etc.).
table_tableType :: Lens.Lens' Table (Prelude.Maybe Prelude.Text)
table_tableType = Lens.lens (\Table' {tableType} -> tableType) (\s@Table' {} a -> s {tableType = a} :: Table)

-- | A storage descriptor containing information about the physical storage
-- of this table.
table_storageDescriptor :: Lens.Lens' Table (Prelude.Maybe StorageDescriptor)
table_storageDescriptor = Lens.lens (\Table' {storageDescriptor} -> storageDescriptor) (\s@Table' {} a -> s {storageDescriptor = a} :: Table)

-- | The last time that the table was updated.
table_updateTime :: Lens.Lens' Table (Prelude.Maybe Prelude.UTCTime)
table_updateTime = Lens.lens (\Table' {updateTime} -> updateTime) (\s@Table' {} a -> s {updateTime = a} :: Table) Prelude.. Lens.mapping Core._Time

-- | The time when the table definition was created in the Data Catalog.
table_createTime :: Lens.Lens' Table (Prelude.Maybe Prelude.UTCTime)
table_createTime = Lens.lens (\Table' {createTime} -> createTime) (\s@Table' {} a -> s {createTime = a} :: Table) Prelude.. Lens.mapping Core._Time

-- | The retention time for this table.
table_retention :: Lens.Lens' Table (Prelude.Maybe Prelude.Natural)
table_retention = Lens.lens (\Table' {retention} -> retention) (\s@Table' {} a -> s {retention = a} :: Table)

-- | The person or entity who created the table.
table_createdBy :: Lens.Lens' Table (Prelude.Maybe Prelude.Text)
table_createdBy = Lens.lens (\Table' {createdBy} -> createdBy) (\s@Table' {} a -> s {createdBy = a} :: Table)

-- | The last time that column statistics were computed for this table.
table_lastAnalyzedTime :: Lens.Lens' Table (Prelude.Maybe Prelude.UTCTime)
table_lastAnalyzedTime = Lens.lens (\Table' {lastAnalyzedTime} -> lastAnalyzedTime) (\s@Table' {} a -> s {lastAnalyzedTime = a} :: Table) Prelude.. Lens.mapping Core._Time

-- | The ID of the table version.
table_versionId :: Lens.Lens' Table (Prelude.Maybe Prelude.Text)
table_versionId = Lens.lens (\Table' {versionId} -> versionId) (\s@Table' {} a -> s {versionId = a} :: Table)

-- | These key-value pairs define properties associated with the table.
table_parameters :: Lens.Lens' Table (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
table_parameters = Lens.lens (\Table' {parameters} -> parameters) (\s@Table' {} a -> s {parameters = a} :: Table) Prelude.. Lens.mapping Lens.coerced

-- | The table name. For Hive compatibility, this must be entirely lowercase.
table_name :: Lens.Lens' Table Prelude.Text
table_name = Lens.lens (\Table' {name} -> name) (\s@Table' {} a -> s {name = a} :: Table)

instance Core.FromJSON Table where
  parseJSON =
    Core.withObject
      "Table"
      ( \x ->
          Table'
            Prelude.<$> (x Core..:? "TargetTable")
            Prelude.<*> (x Core..:? "LastAccessTime")
            Prelude.<*> (x Core..:? "DatabaseName")
            Prelude.<*> (x Core..:? "ViewOriginalText")
            Prelude.<*> (x Core..:? "Owner")
            Prelude.<*> (x Core..:? "ViewExpandedText")
            Prelude.<*> (x Core..:? "Description")
            Prelude.<*> (x Core..:? "PartitionKeys" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "IsRegisteredWithLakeFormation")
            Prelude.<*> (x Core..:? "CatalogId")
            Prelude.<*> (x Core..:? "TableType")
            Prelude.<*> (x Core..:? "StorageDescriptor")
            Prelude.<*> (x Core..:? "UpdateTime")
            Prelude.<*> (x Core..:? "CreateTime")
            Prelude.<*> (x Core..:? "Retention")
            Prelude.<*> (x Core..:? "CreatedBy")
            Prelude.<*> (x Core..:? "LastAnalyzedTime")
            Prelude.<*> (x Core..:? "VersionId")
            Prelude.<*> (x Core..:? "Parameters" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..: "Name")
      )

instance Prelude.Hashable Table where
  hashWithSalt _salt Table' {..} =
    _salt `Prelude.hashWithSalt` targetTable
      `Prelude.hashWithSalt` lastAccessTime
      `Prelude.hashWithSalt` databaseName
      `Prelude.hashWithSalt` viewOriginalText
      `Prelude.hashWithSalt` owner
      `Prelude.hashWithSalt` viewExpandedText
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` partitionKeys
      `Prelude.hashWithSalt` isRegisteredWithLakeFormation
      `Prelude.hashWithSalt` catalogId
      `Prelude.hashWithSalt` tableType
      `Prelude.hashWithSalt` storageDescriptor
      `Prelude.hashWithSalt` updateTime
      `Prelude.hashWithSalt` createTime
      `Prelude.hashWithSalt` retention
      `Prelude.hashWithSalt` createdBy
      `Prelude.hashWithSalt` lastAnalyzedTime
      `Prelude.hashWithSalt` versionId
      `Prelude.hashWithSalt` parameters
      `Prelude.hashWithSalt` name

instance Prelude.NFData Table where
  rnf Table' {..} =
    Prelude.rnf targetTable
      `Prelude.seq` Prelude.rnf lastAccessTime
      `Prelude.seq` Prelude.rnf databaseName
      `Prelude.seq` Prelude.rnf viewOriginalText
      `Prelude.seq` Prelude.rnf owner
      `Prelude.seq` Prelude.rnf viewExpandedText
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf partitionKeys
      `Prelude.seq` Prelude.rnf isRegisteredWithLakeFormation
      `Prelude.seq` Prelude.rnf catalogId
      `Prelude.seq` Prelude.rnf tableType
      `Prelude.seq` Prelude.rnf storageDescriptor
      `Prelude.seq` Prelude.rnf updateTime
      `Prelude.seq` Prelude.rnf createTime
      `Prelude.seq` Prelude.rnf retention
      `Prelude.seq` Prelude.rnf createdBy
      `Prelude.seq` Prelude.rnf lastAnalyzedTime
      `Prelude.seq` Prelude.rnf versionId
      `Prelude.seq` Prelude.rnf parameters
      `Prelude.seq` Prelude.rnf name
