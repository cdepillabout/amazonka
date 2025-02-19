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
-- Module      : Amazonka.FinSpaceData.Types.ColumnDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.FinSpaceData.Types.ColumnDefinition where

import qualified Amazonka.Core as Core
import Amazonka.FinSpaceData.Types.ColumnDataType
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The definition of a column in a tabular Dataset.
--
-- /See:/ 'newColumnDefinition' smart constructor.
data ColumnDefinition = ColumnDefinition'
  { -- | The name of a column.
    columnName :: Prelude.Maybe Prelude.Text,
    -- | Description for a column.
    columnDescription :: Prelude.Maybe Prelude.Text,
    -- | Data type of a column.
    --
    -- -   @STRING@ – A String data type.
    --
    --     @CHAR@ – A char data type.
    --
    --     @INTEGER@ – An integer data type.
    --
    --     @TINYINT@ – A tinyint data type.
    --
    --     @SMALLINT@ – A smallint data type.
    --
    --     @BIGINT@ – A bigint data type.
    --
    --     @FLOAT@ – A float data type.
    --
    --     @DOUBLE@ – A double data type.
    --
    --     @DATE@ – A date data type.
    --
    --     @DATETIME@ – A datetime data type.
    --
    --     @BOOLEAN@ – A boolean data type.
    --
    --     @BINARY@ – A binary data type.
    dataType :: Prelude.Maybe ColumnDataType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ColumnDefinition' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'columnName', 'columnDefinition_columnName' - The name of a column.
--
-- 'columnDescription', 'columnDefinition_columnDescription' - Description for a column.
--
-- 'dataType', 'columnDefinition_dataType' - Data type of a column.
--
-- -   @STRING@ – A String data type.
--
--     @CHAR@ – A char data type.
--
--     @INTEGER@ – An integer data type.
--
--     @TINYINT@ – A tinyint data type.
--
--     @SMALLINT@ – A smallint data type.
--
--     @BIGINT@ – A bigint data type.
--
--     @FLOAT@ – A float data type.
--
--     @DOUBLE@ – A double data type.
--
--     @DATE@ – A date data type.
--
--     @DATETIME@ – A datetime data type.
--
--     @BOOLEAN@ – A boolean data type.
--
--     @BINARY@ – A binary data type.
newColumnDefinition ::
  ColumnDefinition
newColumnDefinition =
  ColumnDefinition'
    { columnName = Prelude.Nothing,
      columnDescription = Prelude.Nothing,
      dataType = Prelude.Nothing
    }

-- | The name of a column.
columnDefinition_columnName :: Lens.Lens' ColumnDefinition (Prelude.Maybe Prelude.Text)
columnDefinition_columnName = Lens.lens (\ColumnDefinition' {columnName} -> columnName) (\s@ColumnDefinition' {} a -> s {columnName = a} :: ColumnDefinition)

-- | Description for a column.
columnDefinition_columnDescription :: Lens.Lens' ColumnDefinition (Prelude.Maybe Prelude.Text)
columnDefinition_columnDescription = Lens.lens (\ColumnDefinition' {columnDescription} -> columnDescription) (\s@ColumnDefinition' {} a -> s {columnDescription = a} :: ColumnDefinition)

-- | Data type of a column.
--
-- -   @STRING@ – A String data type.
--
--     @CHAR@ – A char data type.
--
--     @INTEGER@ – An integer data type.
--
--     @TINYINT@ – A tinyint data type.
--
--     @SMALLINT@ – A smallint data type.
--
--     @BIGINT@ – A bigint data type.
--
--     @FLOAT@ – A float data type.
--
--     @DOUBLE@ – A double data type.
--
--     @DATE@ – A date data type.
--
--     @DATETIME@ – A datetime data type.
--
--     @BOOLEAN@ – A boolean data type.
--
--     @BINARY@ – A binary data type.
columnDefinition_dataType :: Lens.Lens' ColumnDefinition (Prelude.Maybe ColumnDataType)
columnDefinition_dataType = Lens.lens (\ColumnDefinition' {dataType} -> dataType) (\s@ColumnDefinition' {} a -> s {dataType = a} :: ColumnDefinition)

instance Core.FromJSON ColumnDefinition where
  parseJSON =
    Core.withObject
      "ColumnDefinition"
      ( \x ->
          ColumnDefinition'
            Prelude.<$> (x Core..:? "columnName")
            Prelude.<*> (x Core..:? "columnDescription")
            Prelude.<*> (x Core..:? "dataType")
      )

instance Prelude.Hashable ColumnDefinition where
  hashWithSalt _salt ColumnDefinition' {..} =
    _salt `Prelude.hashWithSalt` columnName
      `Prelude.hashWithSalt` columnDescription
      `Prelude.hashWithSalt` dataType

instance Prelude.NFData ColumnDefinition where
  rnf ColumnDefinition' {..} =
    Prelude.rnf columnName
      `Prelude.seq` Prelude.rnf columnDescription
      `Prelude.seq` Prelude.rnf dataType

instance Core.ToJSON ColumnDefinition where
  toJSON ColumnDefinition' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("columnName" Core..=) Prelude.<$> columnName,
            ("columnDescription" Core..=)
              Prelude.<$> columnDescription,
            ("dataType" Core..=) Prelude.<$> dataType
          ]
      )
