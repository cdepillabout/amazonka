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
-- Module      : Amazonka.Glue.Types.JDBCConnectorOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Glue.Types.JDBCConnectorOptions where

import qualified Amazonka.Core as Core
import Amazonka.Glue.Types.GlueRecordType
import Amazonka.Glue.Types.JDBCDataType
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Additional connection options for the connector.
--
-- /See:/ 'newJDBCConnectorOptions' smart constructor.
data JDBCConnectorOptions = JDBCConnectorOptions'
  { -- | Specifies an ascending or descending sort order.
    jobBookmarkKeysSortOrder :: Prelude.Maybe Prelude.Text,
    -- | Custom data type mapping that builds a mapping from a JDBC data type to
    -- an Glue data type. For example, the option
    -- @\"dataTypeMapping\":{\"FLOAT\":\"STRING\"}@ maps data fields of JDBC
    -- type @FLOAT@ into the Java @String@ type by calling the
    -- @ResultSet.getString()@ method of the driver, and uses it to build the
    -- Glue record. The @ResultSet@ object is implemented by each driver, so
    -- the behavior is specific to the driver you use. Refer to the
    -- documentation for your JDBC driver to understand how the driver performs
    -- the conversions.
    dataTypeMapping :: Prelude.Maybe (Prelude.HashMap JDBCDataType GlueRecordType),
    -- | Extra condition clause to filter data from source. For example:
    --
    -- @BillingCity=\'Mountain View\'@
    --
    -- When using a query instead of a table name, you should validate that the
    -- query works with the specified @filterPredicate@.
    filterPredicate :: Prelude.Maybe Prelude.Text,
    -- | The number of partitions. This value, along with @lowerBound@
    -- (inclusive) and @upperBound@ (exclusive), form partition strides for
    -- generated @WHERE@ clause expressions that are used to split the
    -- @partitionColumn@.
    numPartitions :: Prelude.Maybe Prelude.Natural,
    -- | The minimum value of @partitionColumn@ that is used to decide partition
    -- stride.
    lowerBound :: Prelude.Maybe Prelude.Natural,
    -- | The name of the job bookmark keys on which to sort.
    jobBookmarkKeys :: Prelude.Maybe [Prelude.Text],
    -- | The maximum value of @partitionColumn@ that is used to decide partition
    -- stride.
    upperBound :: Prelude.Maybe Prelude.Natural,
    -- | The name of an integer column that is used for partitioning. This option
    -- works only when it\'s included with @lowerBound@, @upperBound@, and
    -- @numPartitions@. This option works the same way as in the Spark SQL JDBC
    -- reader.
    partitionColumn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'JDBCConnectorOptions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'jobBookmarkKeysSortOrder', 'jDBCConnectorOptions_jobBookmarkKeysSortOrder' - Specifies an ascending or descending sort order.
--
-- 'dataTypeMapping', 'jDBCConnectorOptions_dataTypeMapping' - Custom data type mapping that builds a mapping from a JDBC data type to
-- an Glue data type. For example, the option
-- @\"dataTypeMapping\":{\"FLOAT\":\"STRING\"}@ maps data fields of JDBC
-- type @FLOAT@ into the Java @String@ type by calling the
-- @ResultSet.getString()@ method of the driver, and uses it to build the
-- Glue record. The @ResultSet@ object is implemented by each driver, so
-- the behavior is specific to the driver you use. Refer to the
-- documentation for your JDBC driver to understand how the driver performs
-- the conversions.
--
-- 'filterPredicate', 'jDBCConnectorOptions_filterPredicate' - Extra condition clause to filter data from source. For example:
--
-- @BillingCity=\'Mountain View\'@
--
-- When using a query instead of a table name, you should validate that the
-- query works with the specified @filterPredicate@.
--
-- 'numPartitions', 'jDBCConnectorOptions_numPartitions' - The number of partitions. This value, along with @lowerBound@
-- (inclusive) and @upperBound@ (exclusive), form partition strides for
-- generated @WHERE@ clause expressions that are used to split the
-- @partitionColumn@.
--
-- 'lowerBound', 'jDBCConnectorOptions_lowerBound' - The minimum value of @partitionColumn@ that is used to decide partition
-- stride.
--
-- 'jobBookmarkKeys', 'jDBCConnectorOptions_jobBookmarkKeys' - The name of the job bookmark keys on which to sort.
--
-- 'upperBound', 'jDBCConnectorOptions_upperBound' - The maximum value of @partitionColumn@ that is used to decide partition
-- stride.
--
-- 'partitionColumn', 'jDBCConnectorOptions_partitionColumn' - The name of an integer column that is used for partitioning. This option
-- works only when it\'s included with @lowerBound@, @upperBound@, and
-- @numPartitions@. This option works the same way as in the Spark SQL JDBC
-- reader.
newJDBCConnectorOptions ::
  JDBCConnectorOptions
newJDBCConnectorOptions =
  JDBCConnectorOptions'
    { jobBookmarkKeysSortOrder =
        Prelude.Nothing,
      dataTypeMapping = Prelude.Nothing,
      filterPredicate = Prelude.Nothing,
      numPartitions = Prelude.Nothing,
      lowerBound = Prelude.Nothing,
      jobBookmarkKeys = Prelude.Nothing,
      upperBound = Prelude.Nothing,
      partitionColumn = Prelude.Nothing
    }

-- | Specifies an ascending or descending sort order.
jDBCConnectorOptions_jobBookmarkKeysSortOrder :: Lens.Lens' JDBCConnectorOptions (Prelude.Maybe Prelude.Text)
jDBCConnectorOptions_jobBookmarkKeysSortOrder = Lens.lens (\JDBCConnectorOptions' {jobBookmarkKeysSortOrder} -> jobBookmarkKeysSortOrder) (\s@JDBCConnectorOptions' {} a -> s {jobBookmarkKeysSortOrder = a} :: JDBCConnectorOptions)

-- | Custom data type mapping that builds a mapping from a JDBC data type to
-- an Glue data type. For example, the option
-- @\"dataTypeMapping\":{\"FLOAT\":\"STRING\"}@ maps data fields of JDBC
-- type @FLOAT@ into the Java @String@ type by calling the
-- @ResultSet.getString()@ method of the driver, and uses it to build the
-- Glue record. The @ResultSet@ object is implemented by each driver, so
-- the behavior is specific to the driver you use. Refer to the
-- documentation for your JDBC driver to understand how the driver performs
-- the conversions.
jDBCConnectorOptions_dataTypeMapping :: Lens.Lens' JDBCConnectorOptions (Prelude.Maybe (Prelude.HashMap JDBCDataType GlueRecordType))
jDBCConnectorOptions_dataTypeMapping = Lens.lens (\JDBCConnectorOptions' {dataTypeMapping} -> dataTypeMapping) (\s@JDBCConnectorOptions' {} a -> s {dataTypeMapping = a} :: JDBCConnectorOptions) Prelude.. Lens.mapping Lens.coerced

-- | Extra condition clause to filter data from source. For example:
--
-- @BillingCity=\'Mountain View\'@
--
-- When using a query instead of a table name, you should validate that the
-- query works with the specified @filterPredicate@.
jDBCConnectorOptions_filterPredicate :: Lens.Lens' JDBCConnectorOptions (Prelude.Maybe Prelude.Text)
jDBCConnectorOptions_filterPredicate = Lens.lens (\JDBCConnectorOptions' {filterPredicate} -> filterPredicate) (\s@JDBCConnectorOptions' {} a -> s {filterPredicate = a} :: JDBCConnectorOptions)

-- | The number of partitions. This value, along with @lowerBound@
-- (inclusive) and @upperBound@ (exclusive), form partition strides for
-- generated @WHERE@ clause expressions that are used to split the
-- @partitionColumn@.
jDBCConnectorOptions_numPartitions :: Lens.Lens' JDBCConnectorOptions (Prelude.Maybe Prelude.Natural)
jDBCConnectorOptions_numPartitions = Lens.lens (\JDBCConnectorOptions' {numPartitions} -> numPartitions) (\s@JDBCConnectorOptions' {} a -> s {numPartitions = a} :: JDBCConnectorOptions)

-- | The minimum value of @partitionColumn@ that is used to decide partition
-- stride.
jDBCConnectorOptions_lowerBound :: Lens.Lens' JDBCConnectorOptions (Prelude.Maybe Prelude.Natural)
jDBCConnectorOptions_lowerBound = Lens.lens (\JDBCConnectorOptions' {lowerBound} -> lowerBound) (\s@JDBCConnectorOptions' {} a -> s {lowerBound = a} :: JDBCConnectorOptions)

-- | The name of the job bookmark keys on which to sort.
jDBCConnectorOptions_jobBookmarkKeys :: Lens.Lens' JDBCConnectorOptions (Prelude.Maybe [Prelude.Text])
jDBCConnectorOptions_jobBookmarkKeys = Lens.lens (\JDBCConnectorOptions' {jobBookmarkKeys} -> jobBookmarkKeys) (\s@JDBCConnectorOptions' {} a -> s {jobBookmarkKeys = a} :: JDBCConnectorOptions) Prelude.. Lens.mapping Lens.coerced

-- | The maximum value of @partitionColumn@ that is used to decide partition
-- stride.
jDBCConnectorOptions_upperBound :: Lens.Lens' JDBCConnectorOptions (Prelude.Maybe Prelude.Natural)
jDBCConnectorOptions_upperBound = Lens.lens (\JDBCConnectorOptions' {upperBound} -> upperBound) (\s@JDBCConnectorOptions' {} a -> s {upperBound = a} :: JDBCConnectorOptions)

-- | The name of an integer column that is used for partitioning. This option
-- works only when it\'s included with @lowerBound@, @upperBound@, and
-- @numPartitions@. This option works the same way as in the Spark SQL JDBC
-- reader.
jDBCConnectorOptions_partitionColumn :: Lens.Lens' JDBCConnectorOptions (Prelude.Maybe Prelude.Text)
jDBCConnectorOptions_partitionColumn = Lens.lens (\JDBCConnectorOptions' {partitionColumn} -> partitionColumn) (\s@JDBCConnectorOptions' {} a -> s {partitionColumn = a} :: JDBCConnectorOptions)

instance Core.FromJSON JDBCConnectorOptions where
  parseJSON =
    Core.withObject
      "JDBCConnectorOptions"
      ( \x ->
          JDBCConnectorOptions'
            Prelude.<$> (x Core..:? "JobBookmarkKeysSortOrder")
            Prelude.<*> ( x Core..:? "DataTypeMapping"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "FilterPredicate")
            Prelude.<*> (x Core..:? "NumPartitions")
            Prelude.<*> (x Core..:? "LowerBound")
            Prelude.<*> ( x Core..:? "JobBookmarkKeys"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "UpperBound")
            Prelude.<*> (x Core..:? "PartitionColumn")
      )

instance Prelude.Hashable JDBCConnectorOptions where
  hashWithSalt _salt JDBCConnectorOptions' {..} =
    _salt
      `Prelude.hashWithSalt` jobBookmarkKeysSortOrder
      `Prelude.hashWithSalt` dataTypeMapping
      `Prelude.hashWithSalt` filterPredicate
      `Prelude.hashWithSalt` numPartitions
      `Prelude.hashWithSalt` lowerBound
      `Prelude.hashWithSalt` jobBookmarkKeys
      `Prelude.hashWithSalt` upperBound
      `Prelude.hashWithSalt` partitionColumn

instance Prelude.NFData JDBCConnectorOptions where
  rnf JDBCConnectorOptions' {..} =
    Prelude.rnf jobBookmarkKeysSortOrder
      `Prelude.seq` Prelude.rnf dataTypeMapping
      `Prelude.seq` Prelude.rnf filterPredicate
      `Prelude.seq` Prelude.rnf numPartitions
      `Prelude.seq` Prelude.rnf lowerBound
      `Prelude.seq` Prelude.rnf jobBookmarkKeys
      `Prelude.seq` Prelude.rnf upperBound
      `Prelude.seq` Prelude.rnf partitionColumn

instance Core.ToJSON JDBCConnectorOptions where
  toJSON JDBCConnectorOptions' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("JobBookmarkKeysSortOrder" Core..=)
              Prelude.<$> jobBookmarkKeysSortOrder,
            ("DataTypeMapping" Core..=)
              Prelude.<$> dataTypeMapping,
            ("FilterPredicate" Core..=)
              Prelude.<$> filterPredicate,
            ("NumPartitions" Core..=) Prelude.<$> numPartitions,
            ("LowerBound" Core..=) Prelude.<$> lowerBound,
            ("JobBookmarkKeys" Core..=)
              Prelude.<$> jobBookmarkKeys,
            ("UpperBound" Core..=) Prelude.<$> upperBound,
            ("PartitionColumn" Core..=)
              Prelude.<$> partitionColumn
          ]
      )
