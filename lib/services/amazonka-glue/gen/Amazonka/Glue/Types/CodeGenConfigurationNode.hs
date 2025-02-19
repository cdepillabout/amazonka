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
-- Module      : Amazonka.Glue.Types.CodeGenConfigurationNode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Glue.Types.CodeGenConfigurationNode where

import qualified Amazonka.Core as Core
import Amazonka.Glue.Types.Aggregate
import Amazonka.Glue.Types.ApplyMapping
import Amazonka.Glue.Types.AthenaConnectorSource
import Amazonka.Glue.Types.BasicCatalogTarget
import Amazonka.Glue.Types.CatalogKafkaSource
import Amazonka.Glue.Types.CatalogKinesisSource
import Amazonka.Glue.Types.CatalogSource
import Amazonka.Glue.Types.CustomCode
import Amazonka.Glue.Types.DirectKafkaSource
import Amazonka.Glue.Types.DirectKinesisSource
import Amazonka.Glue.Types.DropDuplicates
import Amazonka.Glue.Types.DropFields
import Amazonka.Glue.Types.DropNullFields
import Amazonka.Glue.Types.DynamoDBCatalogSource
import Amazonka.Glue.Types.FillMissingValues
import Amazonka.Glue.Types.Filter
import Amazonka.Glue.Types.GovernedCatalogSource
import Amazonka.Glue.Types.GovernedCatalogTarget
import Amazonka.Glue.Types.JDBCConnectorSource
import Amazonka.Glue.Types.JDBCConnectorTarget
import Amazonka.Glue.Types.Join
import Amazonka.Glue.Types.Merge
import Amazonka.Glue.Types.MicrosoftSQLServerCatalogSource
import Amazonka.Glue.Types.MicrosoftSQLServerCatalogTarget
import Amazonka.Glue.Types.MySQLCatalogSource
import Amazonka.Glue.Types.MySQLCatalogTarget
import Amazonka.Glue.Types.OracleSQLCatalogSource
import Amazonka.Glue.Types.OracleSQLCatalogTarget
import Amazonka.Glue.Types.PIIDetection
import Amazonka.Glue.Types.PostgreSQLCatalogSource
import Amazonka.Glue.Types.PostgreSQLCatalogTarget
import Amazonka.Glue.Types.RedshiftSource
import Amazonka.Glue.Types.RedshiftTarget
import Amazonka.Glue.Types.RelationalCatalogSource
import Amazonka.Glue.Types.RenameField
import Amazonka.Glue.Types.S3CatalogSource
import Amazonka.Glue.Types.S3CatalogTarget
import Amazonka.Glue.Types.S3CsvSource
import Amazonka.Glue.Types.S3DirectTarget
import Amazonka.Glue.Types.S3GlueParquetTarget
import Amazonka.Glue.Types.S3JsonSource
import Amazonka.Glue.Types.S3ParquetSource
import Amazonka.Glue.Types.SelectFields
import Amazonka.Glue.Types.SelectFromCollection
import Amazonka.Glue.Types.SparkConnectorSource
import Amazonka.Glue.Types.SparkConnectorTarget
import Amazonka.Glue.Types.SparkSQL
import Amazonka.Glue.Types.Spigot
import Amazonka.Glue.Types.SplitFields
import Amazonka.Glue.Types.Union
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | @CodeGenConfigurationNode@ enumerates all valid Node types. One and only
-- one of its member variables can be populated.
--
-- /See:/ 'newCodeGenConfigurationNode' smart constructor.
data CodeGenConfigurationNode = CodeGenConfigurationNode'
  { -- | Specifies a transform that chooses the data property keys that you want
    -- to keep.
    selectFields :: Prelude.Maybe SelectFields,
    -- | Specifies an Amazon S3 data store in the Glue Data Catalog.
    s3CatalogSource :: Prelude.Maybe S3CatalogSource,
    -- | Specifies a transform that merges a @DynamicFrame@ with a staging
    -- @DynamicFrame@ based on the specified primary keys to identify records.
    -- Duplicate records (records with the same primary keys) are not
    -- de-duplicated.
    merge :: Prelude.Maybe Merge,
    -- | Specifies a transform that removes rows of repeating data from a data
    -- set.
    dropDuplicates :: Prelude.Maybe DropDuplicates,
    -- | Specifies a target that uses Oracle SQL.
    oracleSQLCatalogTarget :: Prelude.Maybe OracleSQLCatalogTarget,
    -- | Specifies a transform that maps data property keys in the data source to
    -- data property keys in the data target. You can rename keys, modify the
    -- data types for keys, and choose which keys to drop from the dataset.
    applyMapping :: Prelude.Maybe ApplyMapping,
    -- | Specifies a target that uses Postgres SQL.
    postgreSQLCatalogTarget :: Prelude.Maybe PostgreSQLCatalogTarget,
    -- | Specifies a JSON data store stored in Amazon S3.
    s3JsonSource :: Prelude.Maybe S3JsonSource,
    -- | Specifies a connector to an Amazon Athena data source.
    athenaConnectorSource :: Prelude.Maybe AthenaConnectorSource,
    -- | Specifies a connector to a JDBC data source.
    jDBCConnectorSource :: Prelude.Maybe JDBCConnectorSource,
    -- | Specifies a transform that writes samples of the data to an Amazon S3
    -- bucket.
    spigot :: Prelude.Maybe Spigot,
    -- | Specifies a target that uses Microsoft SQL.
    microsoftSQLServerCatalogTarget :: Prelude.Maybe MicrosoftSQLServerCatalogTarget,
    -- | Specifies an Amazon Redshift data store.
    redshiftSource :: Prelude.Maybe RedshiftSource,
    -- | Specifies a target that uses an Apache Spark connector.
    sparkConnectorTarget :: Prelude.Maybe SparkConnectorTarget,
    -- | Specifies a transform that groups rows by chosen fields and computes the
    -- aggregated value by specified function.
    aggregate :: Prelude.Maybe Aggregate,
    -- | Specifies an Apache Parquet data store stored in Amazon S3.
    s3ParquetSource :: Prelude.Maybe S3ParquetSource,
    -- | Specifies a transform that renames a single data property key.
    renameField :: Prelude.Maybe RenameField,
    -- | Specifies a transform that identifies, removes or masks PII data.
    pIIDetection :: Prelude.Maybe PIIDetection,
    -- | Specifies a transform that locates records in the dataset that have
    -- missing values and adds a new field with a value determined by
    -- imputation. The input data set is used to train the machine learning
    -- model that determines what the missing value should be.
    fillMissingValues :: Prelude.Maybe FillMissingValues,
    -- | Specifies a direct Amazon Kinesis data source.
    directKinesisSource :: Prelude.Maybe DirectKinesisSource,
    -- | Specifies a connector to an Apache Spark data source.
    sparkConnectorSource :: Prelude.Maybe SparkConnectorSource,
    -- | Specifies an Apache Kafka data store.
    directKafkaSource :: Prelude.Maybe DirectKafkaSource,
    -- | Specifies a command-separated value (CSV) data store stored in Amazon
    -- S3.
    s3CsvSource :: Prelude.Maybe S3CsvSource,
    -- | Specifies a data target that writes to Amazon S3.
    s3DirectTarget :: Prelude.Maybe S3DirectTarget,
    -- | Specifies a data target that writes to a goverened catalog.
    governedCatalogTarget :: Prelude.Maybe GovernedCatalogTarget,
    -- | Specifies a transform that combines the rows from two or more datasets
    -- into a single result.
    union :: Prelude.Maybe Union,
    relationalCatalogSource :: Prelude.Maybe RelationalCatalogSource,
    -- | Specifies a PostgresSQL data source in the Glue Data Catalog.
    postgreSQLCatalogSource :: Prelude.Maybe PostgreSQLCatalogSource,
    -- | Specifies a MySQL data source in the Glue Data Catalog.
    mySQLCatalogSource :: Prelude.Maybe MySQLCatalogSource,
    -- | Specifies a transform that splits a dataset into two, based on a filter
    -- condition.
    filter' :: Prelude.Maybe Filter,
    -- | Specifies a data source in a goverened Data Catalog.
    governedCatalogSource :: Prelude.Maybe GovernedCatalogSource,
    -- | Specifies a target that uses Amazon Redshift.
    redshiftTarget :: Prelude.Maybe RedshiftTarget,
    -- | Specifies a data target that writes to Amazon S3 in Apache Parquet
    -- columnar storage.
    jDBCConnectorTarget :: Prelude.Maybe JDBCConnectorTarget,
    -- | Specifies a transform that chooses one @DynamicFrame@ from a collection
    -- of @DynamicFrames@. The output is the selected @DynamicFrame@
    selectFromCollection :: Prelude.Maybe SelectFromCollection,
    -- | Specifies a Microsoft SQL server data source in the Glue Data Catalog.
    microsoftSQLServerCatalogSource :: Prelude.Maybe MicrosoftSQLServerCatalogSource,
    -- | Specifies a target that uses MySQL.
    mySQLCatalogTarget :: Prelude.Maybe MySQLCatalogTarget,
    -- | Specifies a Kinesis data source in the Glue Data Catalog.
    catalogKinesisSource :: Prelude.Maybe CatalogKinesisSource,
    -- | Specifies an Oracle data source in the Glue Data Catalog.
    oracleSQLCatalogSource :: Prelude.Maybe OracleSQLCatalogSource,
    -- | Specifies a data target that writes to Amazon S3 in Apache Parquet
    -- columnar storage.
    s3GlueParquetTarget :: Prelude.Maybe S3GlueParquetTarget,
    -- | Specifies a transform where you enter a SQL query using Spark SQL syntax
    -- to transform the data. The output is a single @DynamicFrame@.
    sparkSQL :: Prelude.Maybe SparkSQL,
    -- | Specifies a transform that removes columns from the dataset if all
    -- values in the column are \'null\'. By default, Glue Studio will
    -- recognize null objects, but some values such as empty strings, strings
    -- that are \"null\", -1 integers or other placeholders such as zeros, are
    -- not automatically recognized as nulls.
    dropNullFields :: Prelude.Maybe DropNullFields,
    -- | Specifies a data store in the Glue Data Catalog.
    catalogSource :: Prelude.Maybe CatalogSource,
    -- | Specifies a transform that joins two datasets into one dataset using a
    -- comparison phrase on the specified data property keys. You can use
    -- inner, outer, left, right, left semi, and left anti joins.
    join :: Prelude.Maybe Join,
    dynamoDBCatalogSource :: Prelude.Maybe DynamoDBCatalogSource,
    -- | Specifies a transform that uses custom code you provide to perform the
    -- data transformation. The output is a collection of DynamicFrames.
    customCode :: Prelude.Maybe CustomCode,
    -- | Specifies a target that uses a Glue Data Catalog table.
    catalogTarget :: Prelude.Maybe BasicCatalogTarget,
    -- | Specifies a transform that splits data property keys into two
    -- @DynamicFrames@. The output is a collection of @DynamicFrames@: one with
    -- selected data property keys, and one with the remaining data property
    -- keys.
    splitFields :: Prelude.Maybe SplitFields,
    -- | Specifies an Apache Kafka data store in the Data Catalog.
    catalogKafkaSource :: Prelude.Maybe CatalogKafkaSource,
    -- | Specifies a transform that chooses the data property keys that you want
    -- to drop.
    dropFields :: Prelude.Maybe DropFields,
    -- | Specifies a data target that writes to Amazon S3 using the Glue Data
    -- Catalog.
    s3CatalogTarget :: Prelude.Maybe S3CatalogTarget
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CodeGenConfigurationNode' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'selectFields', 'codeGenConfigurationNode_selectFields' - Specifies a transform that chooses the data property keys that you want
-- to keep.
--
-- 's3CatalogSource', 'codeGenConfigurationNode_s3CatalogSource' - Specifies an Amazon S3 data store in the Glue Data Catalog.
--
-- 'merge', 'codeGenConfigurationNode_merge' - Specifies a transform that merges a @DynamicFrame@ with a staging
-- @DynamicFrame@ based on the specified primary keys to identify records.
-- Duplicate records (records with the same primary keys) are not
-- de-duplicated.
--
-- 'dropDuplicates', 'codeGenConfigurationNode_dropDuplicates' - Specifies a transform that removes rows of repeating data from a data
-- set.
--
-- 'oracleSQLCatalogTarget', 'codeGenConfigurationNode_oracleSQLCatalogTarget' - Specifies a target that uses Oracle SQL.
--
-- 'applyMapping', 'codeGenConfigurationNode_applyMapping' - Specifies a transform that maps data property keys in the data source to
-- data property keys in the data target. You can rename keys, modify the
-- data types for keys, and choose which keys to drop from the dataset.
--
-- 'postgreSQLCatalogTarget', 'codeGenConfigurationNode_postgreSQLCatalogTarget' - Specifies a target that uses Postgres SQL.
--
-- 's3JsonSource', 'codeGenConfigurationNode_s3JsonSource' - Specifies a JSON data store stored in Amazon S3.
--
-- 'athenaConnectorSource', 'codeGenConfigurationNode_athenaConnectorSource' - Specifies a connector to an Amazon Athena data source.
--
-- 'jDBCConnectorSource', 'codeGenConfigurationNode_jDBCConnectorSource' - Specifies a connector to a JDBC data source.
--
-- 'spigot', 'codeGenConfigurationNode_spigot' - Specifies a transform that writes samples of the data to an Amazon S3
-- bucket.
--
-- 'microsoftSQLServerCatalogTarget', 'codeGenConfigurationNode_microsoftSQLServerCatalogTarget' - Specifies a target that uses Microsoft SQL.
--
-- 'redshiftSource', 'codeGenConfigurationNode_redshiftSource' - Specifies an Amazon Redshift data store.
--
-- 'sparkConnectorTarget', 'codeGenConfigurationNode_sparkConnectorTarget' - Specifies a target that uses an Apache Spark connector.
--
-- 'aggregate', 'codeGenConfigurationNode_aggregate' - Specifies a transform that groups rows by chosen fields and computes the
-- aggregated value by specified function.
--
-- 's3ParquetSource', 'codeGenConfigurationNode_s3ParquetSource' - Specifies an Apache Parquet data store stored in Amazon S3.
--
-- 'renameField', 'codeGenConfigurationNode_renameField' - Specifies a transform that renames a single data property key.
--
-- 'pIIDetection', 'codeGenConfigurationNode_pIIDetection' - Specifies a transform that identifies, removes or masks PII data.
--
-- 'fillMissingValues', 'codeGenConfigurationNode_fillMissingValues' - Specifies a transform that locates records in the dataset that have
-- missing values and adds a new field with a value determined by
-- imputation. The input data set is used to train the machine learning
-- model that determines what the missing value should be.
--
-- 'directKinesisSource', 'codeGenConfigurationNode_directKinesisSource' - Specifies a direct Amazon Kinesis data source.
--
-- 'sparkConnectorSource', 'codeGenConfigurationNode_sparkConnectorSource' - Specifies a connector to an Apache Spark data source.
--
-- 'directKafkaSource', 'codeGenConfigurationNode_directKafkaSource' - Specifies an Apache Kafka data store.
--
-- 's3CsvSource', 'codeGenConfigurationNode_s3CsvSource' - Specifies a command-separated value (CSV) data store stored in Amazon
-- S3.
--
-- 's3DirectTarget', 'codeGenConfigurationNode_s3DirectTarget' - Specifies a data target that writes to Amazon S3.
--
-- 'governedCatalogTarget', 'codeGenConfigurationNode_governedCatalogTarget' - Specifies a data target that writes to a goverened catalog.
--
-- 'union', 'codeGenConfigurationNode_union' - Specifies a transform that combines the rows from two or more datasets
-- into a single result.
--
-- 'relationalCatalogSource', 'codeGenConfigurationNode_relationalCatalogSource' - Undocumented member.
--
-- 'postgreSQLCatalogSource', 'codeGenConfigurationNode_postgreSQLCatalogSource' - Specifies a PostgresSQL data source in the Glue Data Catalog.
--
-- 'mySQLCatalogSource', 'codeGenConfigurationNode_mySQLCatalogSource' - Specifies a MySQL data source in the Glue Data Catalog.
--
-- 'filter'', 'codeGenConfigurationNode_filter' - Specifies a transform that splits a dataset into two, based on a filter
-- condition.
--
-- 'governedCatalogSource', 'codeGenConfigurationNode_governedCatalogSource' - Specifies a data source in a goverened Data Catalog.
--
-- 'redshiftTarget', 'codeGenConfigurationNode_redshiftTarget' - Specifies a target that uses Amazon Redshift.
--
-- 'jDBCConnectorTarget', 'codeGenConfigurationNode_jDBCConnectorTarget' - Specifies a data target that writes to Amazon S3 in Apache Parquet
-- columnar storage.
--
-- 'selectFromCollection', 'codeGenConfigurationNode_selectFromCollection' - Specifies a transform that chooses one @DynamicFrame@ from a collection
-- of @DynamicFrames@. The output is the selected @DynamicFrame@
--
-- 'microsoftSQLServerCatalogSource', 'codeGenConfigurationNode_microsoftSQLServerCatalogSource' - Specifies a Microsoft SQL server data source in the Glue Data Catalog.
--
-- 'mySQLCatalogTarget', 'codeGenConfigurationNode_mySQLCatalogTarget' - Specifies a target that uses MySQL.
--
-- 'catalogKinesisSource', 'codeGenConfigurationNode_catalogKinesisSource' - Specifies a Kinesis data source in the Glue Data Catalog.
--
-- 'oracleSQLCatalogSource', 'codeGenConfigurationNode_oracleSQLCatalogSource' - Specifies an Oracle data source in the Glue Data Catalog.
--
-- 's3GlueParquetTarget', 'codeGenConfigurationNode_s3GlueParquetTarget' - Specifies a data target that writes to Amazon S3 in Apache Parquet
-- columnar storage.
--
-- 'sparkSQL', 'codeGenConfigurationNode_sparkSQL' - Specifies a transform where you enter a SQL query using Spark SQL syntax
-- to transform the data. The output is a single @DynamicFrame@.
--
-- 'dropNullFields', 'codeGenConfigurationNode_dropNullFields' - Specifies a transform that removes columns from the dataset if all
-- values in the column are \'null\'. By default, Glue Studio will
-- recognize null objects, but some values such as empty strings, strings
-- that are \"null\", -1 integers or other placeholders such as zeros, are
-- not automatically recognized as nulls.
--
-- 'catalogSource', 'codeGenConfigurationNode_catalogSource' - Specifies a data store in the Glue Data Catalog.
--
-- 'join', 'codeGenConfigurationNode_join' - Specifies a transform that joins two datasets into one dataset using a
-- comparison phrase on the specified data property keys. You can use
-- inner, outer, left, right, left semi, and left anti joins.
--
-- 'dynamoDBCatalogSource', 'codeGenConfigurationNode_dynamoDBCatalogSource' - Undocumented member.
--
-- 'customCode', 'codeGenConfigurationNode_customCode' - Specifies a transform that uses custom code you provide to perform the
-- data transformation. The output is a collection of DynamicFrames.
--
-- 'catalogTarget', 'codeGenConfigurationNode_catalogTarget' - Specifies a target that uses a Glue Data Catalog table.
--
-- 'splitFields', 'codeGenConfigurationNode_splitFields' - Specifies a transform that splits data property keys into two
-- @DynamicFrames@. The output is a collection of @DynamicFrames@: one with
-- selected data property keys, and one with the remaining data property
-- keys.
--
-- 'catalogKafkaSource', 'codeGenConfigurationNode_catalogKafkaSource' - Specifies an Apache Kafka data store in the Data Catalog.
--
-- 'dropFields', 'codeGenConfigurationNode_dropFields' - Specifies a transform that chooses the data property keys that you want
-- to drop.
--
-- 's3CatalogTarget', 'codeGenConfigurationNode_s3CatalogTarget' - Specifies a data target that writes to Amazon S3 using the Glue Data
-- Catalog.
newCodeGenConfigurationNode ::
  CodeGenConfigurationNode
newCodeGenConfigurationNode =
  CodeGenConfigurationNode'
    { selectFields =
        Prelude.Nothing,
      s3CatalogSource = Prelude.Nothing,
      merge = Prelude.Nothing,
      dropDuplicates = Prelude.Nothing,
      oracleSQLCatalogTarget = Prelude.Nothing,
      applyMapping = Prelude.Nothing,
      postgreSQLCatalogTarget = Prelude.Nothing,
      s3JsonSource = Prelude.Nothing,
      athenaConnectorSource = Prelude.Nothing,
      jDBCConnectorSource = Prelude.Nothing,
      spigot = Prelude.Nothing,
      microsoftSQLServerCatalogTarget = Prelude.Nothing,
      redshiftSource = Prelude.Nothing,
      sparkConnectorTarget = Prelude.Nothing,
      aggregate = Prelude.Nothing,
      s3ParquetSource = Prelude.Nothing,
      renameField = Prelude.Nothing,
      pIIDetection = Prelude.Nothing,
      fillMissingValues = Prelude.Nothing,
      directKinesisSource = Prelude.Nothing,
      sparkConnectorSource = Prelude.Nothing,
      directKafkaSource = Prelude.Nothing,
      s3CsvSource = Prelude.Nothing,
      s3DirectTarget = Prelude.Nothing,
      governedCatalogTarget = Prelude.Nothing,
      union = Prelude.Nothing,
      relationalCatalogSource = Prelude.Nothing,
      postgreSQLCatalogSource = Prelude.Nothing,
      mySQLCatalogSource = Prelude.Nothing,
      filter' = Prelude.Nothing,
      governedCatalogSource = Prelude.Nothing,
      redshiftTarget = Prelude.Nothing,
      jDBCConnectorTarget = Prelude.Nothing,
      selectFromCollection = Prelude.Nothing,
      microsoftSQLServerCatalogSource = Prelude.Nothing,
      mySQLCatalogTarget = Prelude.Nothing,
      catalogKinesisSource = Prelude.Nothing,
      oracleSQLCatalogSource = Prelude.Nothing,
      s3GlueParquetTarget = Prelude.Nothing,
      sparkSQL = Prelude.Nothing,
      dropNullFields = Prelude.Nothing,
      catalogSource = Prelude.Nothing,
      join = Prelude.Nothing,
      dynamoDBCatalogSource = Prelude.Nothing,
      customCode = Prelude.Nothing,
      catalogTarget = Prelude.Nothing,
      splitFields = Prelude.Nothing,
      catalogKafkaSource = Prelude.Nothing,
      dropFields = Prelude.Nothing,
      s3CatalogTarget = Prelude.Nothing
    }

-- | Specifies a transform that chooses the data property keys that you want
-- to keep.
codeGenConfigurationNode_selectFields :: Lens.Lens' CodeGenConfigurationNode (Prelude.Maybe SelectFields)
codeGenConfigurationNode_selectFields = Lens.lens (\CodeGenConfigurationNode' {selectFields} -> selectFields) (\s@CodeGenConfigurationNode' {} a -> s {selectFields = a} :: CodeGenConfigurationNode)

-- | Specifies an Amazon S3 data store in the Glue Data Catalog.
codeGenConfigurationNode_s3CatalogSource :: Lens.Lens' CodeGenConfigurationNode (Prelude.Maybe S3CatalogSource)
codeGenConfigurationNode_s3CatalogSource = Lens.lens (\CodeGenConfigurationNode' {s3CatalogSource} -> s3CatalogSource) (\s@CodeGenConfigurationNode' {} a -> s {s3CatalogSource = a} :: CodeGenConfigurationNode)

-- | Specifies a transform that merges a @DynamicFrame@ with a staging
-- @DynamicFrame@ based on the specified primary keys to identify records.
-- Duplicate records (records with the same primary keys) are not
-- de-duplicated.
codeGenConfigurationNode_merge :: Lens.Lens' CodeGenConfigurationNode (Prelude.Maybe Merge)
codeGenConfigurationNode_merge = Lens.lens (\CodeGenConfigurationNode' {merge} -> merge) (\s@CodeGenConfigurationNode' {} a -> s {merge = a} :: CodeGenConfigurationNode)

-- | Specifies a transform that removes rows of repeating data from a data
-- set.
codeGenConfigurationNode_dropDuplicates :: Lens.Lens' CodeGenConfigurationNode (Prelude.Maybe DropDuplicates)
codeGenConfigurationNode_dropDuplicates = Lens.lens (\CodeGenConfigurationNode' {dropDuplicates} -> dropDuplicates) (\s@CodeGenConfigurationNode' {} a -> s {dropDuplicates = a} :: CodeGenConfigurationNode)

-- | Specifies a target that uses Oracle SQL.
codeGenConfigurationNode_oracleSQLCatalogTarget :: Lens.Lens' CodeGenConfigurationNode (Prelude.Maybe OracleSQLCatalogTarget)
codeGenConfigurationNode_oracleSQLCatalogTarget = Lens.lens (\CodeGenConfigurationNode' {oracleSQLCatalogTarget} -> oracleSQLCatalogTarget) (\s@CodeGenConfigurationNode' {} a -> s {oracleSQLCatalogTarget = a} :: CodeGenConfigurationNode)

-- | Specifies a transform that maps data property keys in the data source to
-- data property keys in the data target. You can rename keys, modify the
-- data types for keys, and choose which keys to drop from the dataset.
codeGenConfigurationNode_applyMapping :: Lens.Lens' CodeGenConfigurationNode (Prelude.Maybe ApplyMapping)
codeGenConfigurationNode_applyMapping = Lens.lens (\CodeGenConfigurationNode' {applyMapping} -> applyMapping) (\s@CodeGenConfigurationNode' {} a -> s {applyMapping = a} :: CodeGenConfigurationNode)

-- | Specifies a target that uses Postgres SQL.
codeGenConfigurationNode_postgreSQLCatalogTarget :: Lens.Lens' CodeGenConfigurationNode (Prelude.Maybe PostgreSQLCatalogTarget)
codeGenConfigurationNode_postgreSQLCatalogTarget = Lens.lens (\CodeGenConfigurationNode' {postgreSQLCatalogTarget} -> postgreSQLCatalogTarget) (\s@CodeGenConfigurationNode' {} a -> s {postgreSQLCatalogTarget = a} :: CodeGenConfigurationNode)

-- | Specifies a JSON data store stored in Amazon S3.
codeGenConfigurationNode_s3JsonSource :: Lens.Lens' CodeGenConfigurationNode (Prelude.Maybe S3JsonSource)
codeGenConfigurationNode_s3JsonSource = Lens.lens (\CodeGenConfigurationNode' {s3JsonSource} -> s3JsonSource) (\s@CodeGenConfigurationNode' {} a -> s {s3JsonSource = a} :: CodeGenConfigurationNode)

-- | Specifies a connector to an Amazon Athena data source.
codeGenConfigurationNode_athenaConnectorSource :: Lens.Lens' CodeGenConfigurationNode (Prelude.Maybe AthenaConnectorSource)
codeGenConfigurationNode_athenaConnectorSource = Lens.lens (\CodeGenConfigurationNode' {athenaConnectorSource} -> athenaConnectorSource) (\s@CodeGenConfigurationNode' {} a -> s {athenaConnectorSource = a} :: CodeGenConfigurationNode)

-- | Specifies a connector to a JDBC data source.
codeGenConfigurationNode_jDBCConnectorSource :: Lens.Lens' CodeGenConfigurationNode (Prelude.Maybe JDBCConnectorSource)
codeGenConfigurationNode_jDBCConnectorSource = Lens.lens (\CodeGenConfigurationNode' {jDBCConnectorSource} -> jDBCConnectorSource) (\s@CodeGenConfigurationNode' {} a -> s {jDBCConnectorSource = a} :: CodeGenConfigurationNode)

-- | Specifies a transform that writes samples of the data to an Amazon S3
-- bucket.
codeGenConfigurationNode_spigot :: Lens.Lens' CodeGenConfigurationNode (Prelude.Maybe Spigot)
codeGenConfigurationNode_spigot = Lens.lens (\CodeGenConfigurationNode' {spigot} -> spigot) (\s@CodeGenConfigurationNode' {} a -> s {spigot = a} :: CodeGenConfigurationNode)

-- | Specifies a target that uses Microsoft SQL.
codeGenConfigurationNode_microsoftSQLServerCatalogTarget :: Lens.Lens' CodeGenConfigurationNode (Prelude.Maybe MicrosoftSQLServerCatalogTarget)
codeGenConfigurationNode_microsoftSQLServerCatalogTarget = Lens.lens (\CodeGenConfigurationNode' {microsoftSQLServerCatalogTarget} -> microsoftSQLServerCatalogTarget) (\s@CodeGenConfigurationNode' {} a -> s {microsoftSQLServerCatalogTarget = a} :: CodeGenConfigurationNode)

-- | Specifies an Amazon Redshift data store.
codeGenConfigurationNode_redshiftSource :: Lens.Lens' CodeGenConfigurationNode (Prelude.Maybe RedshiftSource)
codeGenConfigurationNode_redshiftSource = Lens.lens (\CodeGenConfigurationNode' {redshiftSource} -> redshiftSource) (\s@CodeGenConfigurationNode' {} a -> s {redshiftSource = a} :: CodeGenConfigurationNode)

-- | Specifies a target that uses an Apache Spark connector.
codeGenConfigurationNode_sparkConnectorTarget :: Lens.Lens' CodeGenConfigurationNode (Prelude.Maybe SparkConnectorTarget)
codeGenConfigurationNode_sparkConnectorTarget = Lens.lens (\CodeGenConfigurationNode' {sparkConnectorTarget} -> sparkConnectorTarget) (\s@CodeGenConfigurationNode' {} a -> s {sparkConnectorTarget = a} :: CodeGenConfigurationNode)

-- | Specifies a transform that groups rows by chosen fields and computes the
-- aggregated value by specified function.
codeGenConfigurationNode_aggregate :: Lens.Lens' CodeGenConfigurationNode (Prelude.Maybe Aggregate)
codeGenConfigurationNode_aggregate = Lens.lens (\CodeGenConfigurationNode' {aggregate} -> aggregate) (\s@CodeGenConfigurationNode' {} a -> s {aggregate = a} :: CodeGenConfigurationNode)

-- | Specifies an Apache Parquet data store stored in Amazon S3.
codeGenConfigurationNode_s3ParquetSource :: Lens.Lens' CodeGenConfigurationNode (Prelude.Maybe S3ParquetSource)
codeGenConfigurationNode_s3ParquetSource = Lens.lens (\CodeGenConfigurationNode' {s3ParquetSource} -> s3ParquetSource) (\s@CodeGenConfigurationNode' {} a -> s {s3ParquetSource = a} :: CodeGenConfigurationNode)

-- | Specifies a transform that renames a single data property key.
codeGenConfigurationNode_renameField :: Lens.Lens' CodeGenConfigurationNode (Prelude.Maybe RenameField)
codeGenConfigurationNode_renameField = Lens.lens (\CodeGenConfigurationNode' {renameField} -> renameField) (\s@CodeGenConfigurationNode' {} a -> s {renameField = a} :: CodeGenConfigurationNode)

-- | Specifies a transform that identifies, removes or masks PII data.
codeGenConfigurationNode_pIIDetection :: Lens.Lens' CodeGenConfigurationNode (Prelude.Maybe PIIDetection)
codeGenConfigurationNode_pIIDetection = Lens.lens (\CodeGenConfigurationNode' {pIIDetection} -> pIIDetection) (\s@CodeGenConfigurationNode' {} a -> s {pIIDetection = a} :: CodeGenConfigurationNode)

-- | Specifies a transform that locates records in the dataset that have
-- missing values and adds a new field with a value determined by
-- imputation. The input data set is used to train the machine learning
-- model that determines what the missing value should be.
codeGenConfigurationNode_fillMissingValues :: Lens.Lens' CodeGenConfigurationNode (Prelude.Maybe FillMissingValues)
codeGenConfigurationNode_fillMissingValues = Lens.lens (\CodeGenConfigurationNode' {fillMissingValues} -> fillMissingValues) (\s@CodeGenConfigurationNode' {} a -> s {fillMissingValues = a} :: CodeGenConfigurationNode)

-- | Specifies a direct Amazon Kinesis data source.
codeGenConfigurationNode_directKinesisSource :: Lens.Lens' CodeGenConfigurationNode (Prelude.Maybe DirectKinesisSource)
codeGenConfigurationNode_directKinesisSource = Lens.lens (\CodeGenConfigurationNode' {directKinesisSource} -> directKinesisSource) (\s@CodeGenConfigurationNode' {} a -> s {directKinesisSource = a} :: CodeGenConfigurationNode)

-- | Specifies a connector to an Apache Spark data source.
codeGenConfigurationNode_sparkConnectorSource :: Lens.Lens' CodeGenConfigurationNode (Prelude.Maybe SparkConnectorSource)
codeGenConfigurationNode_sparkConnectorSource = Lens.lens (\CodeGenConfigurationNode' {sparkConnectorSource} -> sparkConnectorSource) (\s@CodeGenConfigurationNode' {} a -> s {sparkConnectorSource = a} :: CodeGenConfigurationNode)

-- | Specifies an Apache Kafka data store.
codeGenConfigurationNode_directKafkaSource :: Lens.Lens' CodeGenConfigurationNode (Prelude.Maybe DirectKafkaSource)
codeGenConfigurationNode_directKafkaSource = Lens.lens (\CodeGenConfigurationNode' {directKafkaSource} -> directKafkaSource) (\s@CodeGenConfigurationNode' {} a -> s {directKafkaSource = a} :: CodeGenConfigurationNode)

-- | Specifies a command-separated value (CSV) data store stored in Amazon
-- S3.
codeGenConfigurationNode_s3CsvSource :: Lens.Lens' CodeGenConfigurationNode (Prelude.Maybe S3CsvSource)
codeGenConfigurationNode_s3CsvSource = Lens.lens (\CodeGenConfigurationNode' {s3CsvSource} -> s3CsvSource) (\s@CodeGenConfigurationNode' {} a -> s {s3CsvSource = a} :: CodeGenConfigurationNode)

-- | Specifies a data target that writes to Amazon S3.
codeGenConfigurationNode_s3DirectTarget :: Lens.Lens' CodeGenConfigurationNode (Prelude.Maybe S3DirectTarget)
codeGenConfigurationNode_s3DirectTarget = Lens.lens (\CodeGenConfigurationNode' {s3DirectTarget} -> s3DirectTarget) (\s@CodeGenConfigurationNode' {} a -> s {s3DirectTarget = a} :: CodeGenConfigurationNode)

-- | Specifies a data target that writes to a goverened catalog.
codeGenConfigurationNode_governedCatalogTarget :: Lens.Lens' CodeGenConfigurationNode (Prelude.Maybe GovernedCatalogTarget)
codeGenConfigurationNode_governedCatalogTarget = Lens.lens (\CodeGenConfigurationNode' {governedCatalogTarget} -> governedCatalogTarget) (\s@CodeGenConfigurationNode' {} a -> s {governedCatalogTarget = a} :: CodeGenConfigurationNode)

-- | Specifies a transform that combines the rows from two or more datasets
-- into a single result.
codeGenConfigurationNode_union :: Lens.Lens' CodeGenConfigurationNode (Prelude.Maybe Union)
codeGenConfigurationNode_union = Lens.lens (\CodeGenConfigurationNode' {union} -> union) (\s@CodeGenConfigurationNode' {} a -> s {union = a} :: CodeGenConfigurationNode)

-- | Undocumented member.
codeGenConfigurationNode_relationalCatalogSource :: Lens.Lens' CodeGenConfigurationNode (Prelude.Maybe RelationalCatalogSource)
codeGenConfigurationNode_relationalCatalogSource = Lens.lens (\CodeGenConfigurationNode' {relationalCatalogSource} -> relationalCatalogSource) (\s@CodeGenConfigurationNode' {} a -> s {relationalCatalogSource = a} :: CodeGenConfigurationNode)

-- | Specifies a PostgresSQL data source in the Glue Data Catalog.
codeGenConfigurationNode_postgreSQLCatalogSource :: Lens.Lens' CodeGenConfigurationNode (Prelude.Maybe PostgreSQLCatalogSource)
codeGenConfigurationNode_postgreSQLCatalogSource = Lens.lens (\CodeGenConfigurationNode' {postgreSQLCatalogSource} -> postgreSQLCatalogSource) (\s@CodeGenConfigurationNode' {} a -> s {postgreSQLCatalogSource = a} :: CodeGenConfigurationNode)

-- | Specifies a MySQL data source in the Glue Data Catalog.
codeGenConfigurationNode_mySQLCatalogSource :: Lens.Lens' CodeGenConfigurationNode (Prelude.Maybe MySQLCatalogSource)
codeGenConfigurationNode_mySQLCatalogSource = Lens.lens (\CodeGenConfigurationNode' {mySQLCatalogSource} -> mySQLCatalogSource) (\s@CodeGenConfigurationNode' {} a -> s {mySQLCatalogSource = a} :: CodeGenConfigurationNode)

-- | Specifies a transform that splits a dataset into two, based on a filter
-- condition.
codeGenConfigurationNode_filter :: Lens.Lens' CodeGenConfigurationNode (Prelude.Maybe Filter)
codeGenConfigurationNode_filter = Lens.lens (\CodeGenConfigurationNode' {filter'} -> filter') (\s@CodeGenConfigurationNode' {} a -> s {filter' = a} :: CodeGenConfigurationNode)

-- | Specifies a data source in a goverened Data Catalog.
codeGenConfigurationNode_governedCatalogSource :: Lens.Lens' CodeGenConfigurationNode (Prelude.Maybe GovernedCatalogSource)
codeGenConfigurationNode_governedCatalogSource = Lens.lens (\CodeGenConfigurationNode' {governedCatalogSource} -> governedCatalogSource) (\s@CodeGenConfigurationNode' {} a -> s {governedCatalogSource = a} :: CodeGenConfigurationNode)

-- | Specifies a target that uses Amazon Redshift.
codeGenConfigurationNode_redshiftTarget :: Lens.Lens' CodeGenConfigurationNode (Prelude.Maybe RedshiftTarget)
codeGenConfigurationNode_redshiftTarget = Lens.lens (\CodeGenConfigurationNode' {redshiftTarget} -> redshiftTarget) (\s@CodeGenConfigurationNode' {} a -> s {redshiftTarget = a} :: CodeGenConfigurationNode)

-- | Specifies a data target that writes to Amazon S3 in Apache Parquet
-- columnar storage.
codeGenConfigurationNode_jDBCConnectorTarget :: Lens.Lens' CodeGenConfigurationNode (Prelude.Maybe JDBCConnectorTarget)
codeGenConfigurationNode_jDBCConnectorTarget = Lens.lens (\CodeGenConfigurationNode' {jDBCConnectorTarget} -> jDBCConnectorTarget) (\s@CodeGenConfigurationNode' {} a -> s {jDBCConnectorTarget = a} :: CodeGenConfigurationNode)

-- | Specifies a transform that chooses one @DynamicFrame@ from a collection
-- of @DynamicFrames@. The output is the selected @DynamicFrame@
codeGenConfigurationNode_selectFromCollection :: Lens.Lens' CodeGenConfigurationNode (Prelude.Maybe SelectFromCollection)
codeGenConfigurationNode_selectFromCollection = Lens.lens (\CodeGenConfigurationNode' {selectFromCollection} -> selectFromCollection) (\s@CodeGenConfigurationNode' {} a -> s {selectFromCollection = a} :: CodeGenConfigurationNode)

-- | Specifies a Microsoft SQL server data source in the Glue Data Catalog.
codeGenConfigurationNode_microsoftSQLServerCatalogSource :: Lens.Lens' CodeGenConfigurationNode (Prelude.Maybe MicrosoftSQLServerCatalogSource)
codeGenConfigurationNode_microsoftSQLServerCatalogSource = Lens.lens (\CodeGenConfigurationNode' {microsoftSQLServerCatalogSource} -> microsoftSQLServerCatalogSource) (\s@CodeGenConfigurationNode' {} a -> s {microsoftSQLServerCatalogSource = a} :: CodeGenConfigurationNode)

-- | Specifies a target that uses MySQL.
codeGenConfigurationNode_mySQLCatalogTarget :: Lens.Lens' CodeGenConfigurationNode (Prelude.Maybe MySQLCatalogTarget)
codeGenConfigurationNode_mySQLCatalogTarget = Lens.lens (\CodeGenConfigurationNode' {mySQLCatalogTarget} -> mySQLCatalogTarget) (\s@CodeGenConfigurationNode' {} a -> s {mySQLCatalogTarget = a} :: CodeGenConfigurationNode)

-- | Specifies a Kinesis data source in the Glue Data Catalog.
codeGenConfigurationNode_catalogKinesisSource :: Lens.Lens' CodeGenConfigurationNode (Prelude.Maybe CatalogKinesisSource)
codeGenConfigurationNode_catalogKinesisSource = Lens.lens (\CodeGenConfigurationNode' {catalogKinesisSource} -> catalogKinesisSource) (\s@CodeGenConfigurationNode' {} a -> s {catalogKinesisSource = a} :: CodeGenConfigurationNode)

-- | Specifies an Oracle data source in the Glue Data Catalog.
codeGenConfigurationNode_oracleSQLCatalogSource :: Lens.Lens' CodeGenConfigurationNode (Prelude.Maybe OracleSQLCatalogSource)
codeGenConfigurationNode_oracleSQLCatalogSource = Lens.lens (\CodeGenConfigurationNode' {oracleSQLCatalogSource} -> oracleSQLCatalogSource) (\s@CodeGenConfigurationNode' {} a -> s {oracleSQLCatalogSource = a} :: CodeGenConfigurationNode)

-- | Specifies a data target that writes to Amazon S3 in Apache Parquet
-- columnar storage.
codeGenConfigurationNode_s3GlueParquetTarget :: Lens.Lens' CodeGenConfigurationNode (Prelude.Maybe S3GlueParquetTarget)
codeGenConfigurationNode_s3GlueParquetTarget = Lens.lens (\CodeGenConfigurationNode' {s3GlueParquetTarget} -> s3GlueParquetTarget) (\s@CodeGenConfigurationNode' {} a -> s {s3GlueParquetTarget = a} :: CodeGenConfigurationNode)

-- | Specifies a transform where you enter a SQL query using Spark SQL syntax
-- to transform the data. The output is a single @DynamicFrame@.
codeGenConfigurationNode_sparkSQL :: Lens.Lens' CodeGenConfigurationNode (Prelude.Maybe SparkSQL)
codeGenConfigurationNode_sparkSQL = Lens.lens (\CodeGenConfigurationNode' {sparkSQL} -> sparkSQL) (\s@CodeGenConfigurationNode' {} a -> s {sparkSQL = a} :: CodeGenConfigurationNode)

-- | Specifies a transform that removes columns from the dataset if all
-- values in the column are \'null\'. By default, Glue Studio will
-- recognize null objects, but some values such as empty strings, strings
-- that are \"null\", -1 integers or other placeholders such as zeros, are
-- not automatically recognized as nulls.
codeGenConfigurationNode_dropNullFields :: Lens.Lens' CodeGenConfigurationNode (Prelude.Maybe DropNullFields)
codeGenConfigurationNode_dropNullFields = Lens.lens (\CodeGenConfigurationNode' {dropNullFields} -> dropNullFields) (\s@CodeGenConfigurationNode' {} a -> s {dropNullFields = a} :: CodeGenConfigurationNode)

-- | Specifies a data store in the Glue Data Catalog.
codeGenConfigurationNode_catalogSource :: Lens.Lens' CodeGenConfigurationNode (Prelude.Maybe CatalogSource)
codeGenConfigurationNode_catalogSource = Lens.lens (\CodeGenConfigurationNode' {catalogSource} -> catalogSource) (\s@CodeGenConfigurationNode' {} a -> s {catalogSource = a} :: CodeGenConfigurationNode)

-- | Specifies a transform that joins two datasets into one dataset using a
-- comparison phrase on the specified data property keys. You can use
-- inner, outer, left, right, left semi, and left anti joins.
codeGenConfigurationNode_join :: Lens.Lens' CodeGenConfigurationNode (Prelude.Maybe Join)
codeGenConfigurationNode_join = Lens.lens (\CodeGenConfigurationNode' {join} -> join) (\s@CodeGenConfigurationNode' {} a -> s {join = a} :: CodeGenConfigurationNode)

-- | Undocumented member.
codeGenConfigurationNode_dynamoDBCatalogSource :: Lens.Lens' CodeGenConfigurationNode (Prelude.Maybe DynamoDBCatalogSource)
codeGenConfigurationNode_dynamoDBCatalogSource = Lens.lens (\CodeGenConfigurationNode' {dynamoDBCatalogSource} -> dynamoDBCatalogSource) (\s@CodeGenConfigurationNode' {} a -> s {dynamoDBCatalogSource = a} :: CodeGenConfigurationNode)

-- | Specifies a transform that uses custom code you provide to perform the
-- data transformation. The output is a collection of DynamicFrames.
codeGenConfigurationNode_customCode :: Lens.Lens' CodeGenConfigurationNode (Prelude.Maybe CustomCode)
codeGenConfigurationNode_customCode = Lens.lens (\CodeGenConfigurationNode' {customCode} -> customCode) (\s@CodeGenConfigurationNode' {} a -> s {customCode = a} :: CodeGenConfigurationNode)

-- | Specifies a target that uses a Glue Data Catalog table.
codeGenConfigurationNode_catalogTarget :: Lens.Lens' CodeGenConfigurationNode (Prelude.Maybe BasicCatalogTarget)
codeGenConfigurationNode_catalogTarget = Lens.lens (\CodeGenConfigurationNode' {catalogTarget} -> catalogTarget) (\s@CodeGenConfigurationNode' {} a -> s {catalogTarget = a} :: CodeGenConfigurationNode)

-- | Specifies a transform that splits data property keys into two
-- @DynamicFrames@. The output is a collection of @DynamicFrames@: one with
-- selected data property keys, and one with the remaining data property
-- keys.
codeGenConfigurationNode_splitFields :: Lens.Lens' CodeGenConfigurationNode (Prelude.Maybe SplitFields)
codeGenConfigurationNode_splitFields = Lens.lens (\CodeGenConfigurationNode' {splitFields} -> splitFields) (\s@CodeGenConfigurationNode' {} a -> s {splitFields = a} :: CodeGenConfigurationNode)

-- | Specifies an Apache Kafka data store in the Data Catalog.
codeGenConfigurationNode_catalogKafkaSource :: Lens.Lens' CodeGenConfigurationNode (Prelude.Maybe CatalogKafkaSource)
codeGenConfigurationNode_catalogKafkaSource = Lens.lens (\CodeGenConfigurationNode' {catalogKafkaSource} -> catalogKafkaSource) (\s@CodeGenConfigurationNode' {} a -> s {catalogKafkaSource = a} :: CodeGenConfigurationNode)

-- | Specifies a transform that chooses the data property keys that you want
-- to drop.
codeGenConfigurationNode_dropFields :: Lens.Lens' CodeGenConfigurationNode (Prelude.Maybe DropFields)
codeGenConfigurationNode_dropFields = Lens.lens (\CodeGenConfigurationNode' {dropFields} -> dropFields) (\s@CodeGenConfigurationNode' {} a -> s {dropFields = a} :: CodeGenConfigurationNode)

-- | Specifies a data target that writes to Amazon S3 using the Glue Data
-- Catalog.
codeGenConfigurationNode_s3CatalogTarget :: Lens.Lens' CodeGenConfigurationNode (Prelude.Maybe S3CatalogTarget)
codeGenConfigurationNode_s3CatalogTarget = Lens.lens (\CodeGenConfigurationNode' {s3CatalogTarget} -> s3CatalogTarget) (\s@CodeGenConfigurationNode' {} a -> s {s3CatalogTarget = a} :: CodeGenConfigurationNode)

instance Core.FromJSON CodeGenConfigurationNode where
  parseJSON =
    Core.withObject
      "CodeGenConfigurationNode"
      ( \x ->
          CodeGenConfigurationNode'
            Prelude.<$> (x Core..:? "SelectFields")
            Prelude.<*> (x Core..:? "S3CatalogSource")
            Prelude.<*> (x Core..:? "Merge")
            Prelude.<*> (x Core..:? "DropDuplicates")
            Prelude.<*> (x Core..:? "OracleSQLCatalogTarget")
            Prelude.<*> (x Core..:? "ApplyMapping")
            Prelude.<*> (x Core..:? "PostgreSQLCatalogTarget")
            Prelude.<*> (x Core..:? "S3JsonSource")
            Prelude.<*> (x Core..:? "AthenaConnectorSource")
            Prelude.<*> (x Core..:? "JDBCConnectorSource")
            Prelude.<*> (x Core..:? "Spigot")
            Prelude.<*> (x Core..:? "MicrosoftSQLServerCatalogTarget")
            Prelude.<*> (x Core..:? "RedshiftSource")
            Prelude.<*> (x Core..:? "SparkConnectorTarget")
            Prelude.<*> (x Core..:? "Aggregate")
            Prelude.<*> (x Core..:? "S3ParquetSource")
            Prelude.<*> (x Core..:? "RenameField")
            Prelude.<*> (x Core..:? "PIIDetection")
            Prelude.<*> (x Core..:? "FillMissingValues")
            Prelude.<*> (x Core..:? "DirectKinesisSource")
            Prelude.<*> (x Core..:? "SparkConnectorSource")
            Prelude.<*> (x Core..:? "DirectKafkaSource")
            Prelude.<*> (x Core..:? "S3CsvSource")
            Prelude.<*> (x Core..:? "S3DirectTarget")
            Prelude.<*> (x Core..:? "GovernedCatalogTarget")
            Prelude.<*> (x Core..:? "Union")
            Prelude.<*> (x Core..:? "RelationalCatalogSource")
            Prelude.<*> (x Core..:? "PostgreSQLCatalogSource")
            Prelude.<*> (x Core..:? "MySQLCatalogSource")
            Prelude.<*> (x Core..:? "Filter")
            Prelude.<*> (x Core..:? "GovernedCatalogSource")
            Prelude.<*> (x Core..:? "RedshiftTarget")
            Prelude.<*> (x Core..:? "JDBCConnectorTarget")
            Prelude.<*> (x Core..:? "SelectFromCollection")
            Prelude.<*> (x Core..:? "MicrosoftSQLServerCatalogSource")
            Prelude.<*> (x Core..:? "MySQLCatalogTarget")
            Prelude.<*> (x Core..:? "CatalogKinesisSource")
            Prelude.<*> (x Core..:? "OracleSQLCatalogSource")
            Prelude.<*> (x Core..:? "S3GlueParquetTarget")
            Prelude.<*> (x Core..:? "SparkSQL")
            Prelude.<*> (x Core..:? "DropNullFields")
            Prelude.<*> (x Core..:? "CatalogSource")
            Prelude.<*> (x Core..:? "Join")
            Prelude.<*> (x Core..:? "DynamoDBCatalogSource")
            Prelude.<*> (x Core..:? "CustomCode")
            Prelude.<*> (x Core..:? "CatalogTarget")
            Prelude.<*> (x Core..:? "SplitFields")
            Prelude.<*> (x Core..:? "CatalogKafkaSource")
            Prelude.<*> (x Core..:? "DropFields")
            Prelude.<*> (x Core..:? "S3CatalogTarget")
      )

instance Prelude.Hashable CodeGenConfigurationNode where
  hashWithSalt _salt CodeGenConfigurationNode' {..} =
    _salt `Prelude.hashWithSalt` selectFields
      `Prelude.hashWithSalt` s3CatalogSource
      `Prelude.hashWithSalt` merge
      `Prelude.hashWithSalt` dropDuplicates
      `Prelude.hashWithSalt` oracleSQLCatalogTarget
      `Prelude.hashWithSalt` applyMapping
      `Prelude.hashWithSalt` postgreSQLCatalogTarget
      `Prelude.hashWithSalt` s3JsonSource
      `Prelude.hashWithSalt` athenaConnectorSource
      `Prelude.hashWithSalt` jDBCConnectorSource
      `Prelude.hashWithSalt` spigot
      `Prelude.hashWithSalt` microsoftSQLServerCatalogTarget
      `Prelude.hashWithSalt` redshiftSource
      `Prelude.hashWithSalt` sparkConnectorTarget
      `Prelude.hashWithSalt` aggregate
      `Prelude.hashWithSalt` s3ParquetSource
      `Prelude.hashWithSalt` renameField
      `Prelude.hashWithSalt` pIIDetection
      `Prelude.hashWithSalt` fillMissingValues
      `Prelude.hashWithSalt` directKinesisSource
      `Prelude.hashWithSalt` sparkConnectorSource
      `Prelude.hashWithSalt` directKafkaSource
      `Prelude.hashWithSalt` s3CsvSource
      `Prelude.hashWithSalt` s3DirectTarget
      `Prelude.hashWithSalt` governedCatalogTarget
      `Prelude.hashWithSalt` union
      `Prelude.hashWithSalt` relationalCatalogSource
      `Prelude.hashWithSalt` postgreSQLCatalogSource
      `Prelude.hashWithSalt` mySQLCatalogSource
      `Prelude.hashWithSalt` filter'
      `Prelude.hashWithSalt` governedCatalogSource
      `Prelude.hashWithSalt` redshiftTarget
      `Prelude.hashWithSalt` jDBCConnectorTarget
      `Prelude.hashWithSalt` selectFromCollection
      `Prelude.hashWithSalt` microsoftSQLServerCatalogSource
      `Prelude.hashWithSalt` mySQLCatalogTarget
      `Prelude.hashWithSalt` catalogKinesisSource
      `Prelude.hashWithSalt` oracleSQLCatalogSource
      `Prelude.hashWithSalt` s3GlueParquetTarget
      `Prelude.hashWithSalt` sparkSQL
      `Prelude.hashWithSalt` dropNullFields
      `Prelude.hashWithSalt` catalogSource
      `Prelude.hashWithSalt` join
      `Prelude.hashWithSalt` dynamoDBCatalogSource
      `Prelude.hashWithSalt` customCode
      `Prelude.hashWithSalt` catalogTarget
      `Prelude.hashWithSalt` splitFields
      `Prelude.hashWithSalt` catalogKafkaSource
      `Prelude.hashWithSalt` dropFields
      `Prelude.hashWithSalt` s3CatalogTarget

instance Prelude.NFData CodeGenConfigurationNode where
  rnf CodeGenConfigurationNode' {..} =
    Prelude.rnf selectFields
      `Prelude.seq` Prelude.rnf s3CatalogSource
      `Prelude.seq` Prelude.rnf merge
      `Prelude.seq` Prelude.rnf dropDuplicates
      `Prelude.seq` Prelude.rnf oracleSQLCatalogTarget
      `Prelude.seq` Prelude.rnf applyMapping
      `Prelude.seq` Prelude.rnf postgreSQLCatalogTarget
      `Prelude.seq` Prelude.rnf s3JsonSource
      `Prelude.seq` Prelude.rnf athenaConnectorSource
      `Prelude.seq` Prelude.rnf jDBCConnectorSource
      `Prelude.seq` Prelude.rnf spigot
      `Prelude.seq` Prelude.rnf microsoftSQLServerCatalogTarget
      `Prelude.seq` Prelude.rnf redshiftSource
      `Prelude.seq` Prelude.rnf sparkConnectorTarget
      `Prelude.seq` Prelude.rnf aggregate
      `Prelude.seq` Prelude.rnf s3ParquetSource
      `Prelude.seq` Prelude.rnf renameField
      `Prelude.seq` Prelude.rnf pIIDetection
      `Prelude.seq` Prelude.rnf fillMissingValues
      `Prelude.seq` Prelude.rnf
        directKinesisSource
      `Prelude.seq` Prelude.rnf
        sparkConnectorSource
      `Prelude.seq` Prelude.rnf
        directKafkaSource
      `Prelude.seq` Prelude.rnf s3CsvSource
      `Prelude.seq` Prelude.rnf
        s3DirectTarget
      `Prelude.seq` Prelude.rnf
        governedCatalogTarget
      `Prelude.seq` Prelude.rnf union
      `Prelude.seq` Prelude.rnf
        relationalCatalogSource
      `Prelude.seq` Prelude.rnf
        postgreSQLCatalogSource
      `Prelude.seq` Prelude.rnf
        mySQLCatalogSource
      `Prelude.seq` Prelude.rnf
        filter'
      `Prelude.seq` Prelude.rnf
        governedCatalogSource
      `Prelude.seq` Prelude.rnf
        redshiftTarget
      `Prelude.seq` Prelude.rnf
        jDBCConnectorTarget
      `Prelude.seq` Prelude.rnf
        selectFromCollection
      `Prelude.seq` Prelude.rnf
        microsoftSQLServerCatalogSource
      `Prelude.seq` Prelude.rnf
        mySQLCatalogTarget
      `Prelude.seq` Prelude.rnf
        catalogKinesisSource
      `Prelude.seq` Prelude.rnf
        oracleSQLCatalogSource
      `Prelude.seq` Prelude.rnf
        s3GlueParquetTarget
      `Prelude.seq` Prelude.rnf
        sparkSQL
      `Prelude.seq` Prelude.rnf
        dropNullFields
      `Prelude.seq` Prelude.rnf
        catalogSource
      `Prelude.seq` Prelude.rnf
        join
      `Prelude.seq` Prelude.rnf
        dynamoDBCatalogSource
      `Prelude.seq` Prelude.rnf
        customCode
      `Prelude.seq` Prelude.rnf
        catalogTarget
      `Prelude.seq` Prelude.rnf
        splitFields
      `Prelude.seq` Prelude.rnf
        catalogKafkaSource
      `Prelude.seq` Prelude.rnf
        dropFields
      `Prelude.seq` Prelude.rnf
        s3CatalogTarget

instance Core.ToJSON CodeGenConfigurationNode where
  toJSON CodeGenConfigurationNode' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("SelectFields" Core..=) Prelude.<$> selectFields,
            ("S3CatalogSource" Core..=)
              Prelude.<$> s3CatalogSource,
            ("Merge" Core..=) Prelude.<$> merge,
            ("DropDuplicates" Core..=)
              Prelude.<$> dropDuplicates,
            ("OracleSQLCatalogTarget" Core..=)
              Prelude.<$> oracleSQLCatalogTarget,
            ("ApplyMapping" Core..=) Prelude.<$> applyMapping,
            ("PostgreSQLCatalogTarget" Core..=)
              Prelude.<$> postgreSQLCatalogTarget,
            ("S3JsonSource" Core..=) Prelude.<$> s3JsonSource,
            ("AthenaConnectorSource" Core..=)
              Prelude.<$> athenaConnectorSource,
            ("JDBCConnectorSource" Core..=)
              Prelude.<$> jDBCConnectorSource,
            ("Spigot" Core..=) Prelude.<$> spigot,
            ("MicrosoftSQLServerCatalogTarget" Core..=)
              Prelude.<$> microsoftSQLServerCatalogTarget,
            ("RedshiftSource" Core..=)
              Prelude.<$> redshiftSource,
            ("SparkConnectorTarget" Core..=)
              Prelude.<$> sparkConnectorTarget,
            ("Aggregate" Core..=) Prelude.<$> aggregate,
            ("S3ParquetSource" Core..=)
              Prelude.<$> s3ParquetSource,
            ("RenameField" Core..=) Prelude.<$> renameField,
            ("PIIDetection" Core..=) Prelude.<$> pIIDetection,
            ("FillMissingValues" Core..=)
              Prelude.<$> fillMissingValues,
            ("DirectKinesisSource" Core..=)
              Prelude.<$> directKinesisSource,
            ("SparkConnectorSource" Core..=)
              Prelude.<$> sparkConnectorSource,
            ("DirectKafkaSource" Core..=)
              Prelude.<$> directKafkaSource,
            ("S3CsvSource" Core..=) Prelude.<$> s3CsvSource,
            ("S3DirectTarget" Core..=)
              Prelude.<$> s3DirectTarget,
            ("GovernedCatalogTarget" Core..=)
              Prelude.<$> governedCatalogTarget,
            ("Union" Core..=) Prelude.<$> union,
            ("RelationalCatalogSource" Core..=)
              Prelude.<$> relationalCatalogSource,
            ("PostgreSQLCatalogSource" Core..=)
              Prelude.<$> postgreSQLCatalogSource,
            ("MySQLCatalogSource" Core..=)
              Prelude.<$> mySQLCatalogSource,
            ("Filter" Core..=) Prelude.<$> filter',
            ("GovernedCatalogSource" Core..=)
              Prelude.<$> governedCatalogSource,
            ("RedshiftTarget" Core..=)
              Prelude.<$> redshiftTarget,
            ("JDBCConnectorTarget" Core..=)
              Prelude.<$> jDBCConnectorTarget,
            ("SelectFromCollection" Core..=)
              Prelude.<$> selectFromCollection,
            ("MicrosoftSQLServerCatalogSource" Core..=)
              Prelude.<$> microsoftSQLServerCatalogSource,
            ("MySQLCatalogTarget" Core..=)
              Prelude.<$> mySQLCatalogTarget,
            ("CatalogKinesisSource" Core..=)
              Prelude.<$> catalogKinesisSource,
            ("OracleSQLCatalogSource" Core..=)
              Prelude.<$> oracleSQLCatalogSource,
            ("S3GlueParquetTarget" Core..=)
              Prelude.<$> s3GlueParquetTarget,
            ("SparkSQL" Core..=) Prelude.<$> sparkSQL,
            ("DropNullFields" Core..=)
              Prelude.<$> dropNullFields,
            ("CatalogSource" Core..=) Prelude.<$> catalogSource,
            ("Join" Core..=) Prelude.<$> join,
            ("DynamoDBCatalogSource" Core..=)
              Prelude.<$> dynamoDBCatalogSource,
            ("CustomCode" Core..=) Prelude.<$> customCode,
            ("CatalogTarget" Core..=) Prelude.<$> catalogTarget,
            ("SplitFields" Core..=) Prelude.<$> splitFields,
            ("CatalogKafkaSource" Core..=)
              Prelude.<$> catalogKafkaSource,
            ("DropFields" Core..=) Prelude.<$> dropFields,
            ("S3CatalogTarget" Core..=)
              Prelude.<$> s3CatalogTarget
          ]
      )
