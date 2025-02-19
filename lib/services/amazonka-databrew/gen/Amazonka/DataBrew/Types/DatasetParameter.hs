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
-- Module      : Amazonka.DataBrew.Types.DatasetParameter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DataBrew.Types.DatasetParameter where

import qualified Amazonka.Core as Core
import Amazonka.DataBrew.Types.DatetimeOptions
import Amazonka.DataBrew.Types.FilterExpression
import Amazonka.DataBrew.Types.ParameterType
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Represents a dataset parameter that defines type and conditions for a
-- parameter in the Amazon S3 path of the dataset.
--
-- /See:/ 'newDatasetParameter' smart constructor.
data DatasetParameter = DatasetParameter'
  { -- | Additional parameter options such as a format and a timezone. Required
    -- for datetime parameters.
    datetimeOptions :: Prelude.Maybe DatetimeOptions,
    -- | The optional filter expression structure to apply additional matching
    -- criteria to the parameter.
    filter' :: Prelude.Maybe FilterExpression,
    -- | Optional boolean value that defines whether the captured value of this
    -- parameter should be used to create a new column in a dataset.
    createColumn :: Prelude.Maybe Prelude.Bool,
    -- | The name of the parameter that is used in the dataset\'s Amazon S3 path.
    name :: Prelude.Text,
    -- | The type of the dataset parameter, can be one of a \'String\',
    -- \'Number\' or \'Datetime\'.
    type' :: ParameterType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DatasetParameter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'datetimeOptions', 'datasetParameter_datetimeOptions' - Additional parameter options such as a format and a timezone. Required
-- for datetime parameters.
--
-- 'filter'', 'datasetParameter_filter' - The optional filter expression structure to apply additional matching
-- criteria to the parameter.
--
-- 'createColumn', 'datasetParameter_createColumn' - Optional boolean value that defines whether the captured value of this
-- parameter should be used to create a new column in a dataset.
--
-- 'name', 'datasetParameter_name' - The name of the parameter that is used in the dataset\'s Amazon S3 path.
--
-- 'type'', 'datasetParameter_type' - The type of the dataset parameter, can be one of a \'String\',
-- \'Number\' or \'Datetime\'.
newDatasetParameter ::
  -- | 'name'
  Prelude.Text ->
  -- | 'type''
  ParameterType ->
  DatasetParameter
newDatasetParameter pName_ pType_ =
  DatasetParameter'
    { datetimeOptions =
        Prelude.Nothing,
      filter' = Prelude.Nothing,
      createColumn = Prelude.Nothing,
      name = pName_,
      type' = pType_
    }

-- | Additional parameter options such as a format and a timezone. Required
-- for datetime parameters.
datasetParameter_datetimeOptions :: Lens.Lens' DatasetParameter (Prelude.Maybe DatetimeOptions)
datasetParameter_datetimeOptions = Lens.lens (\DatasetParameter' {datetimeOptions} -> datetimeOptions) (\s@DatasetParameter' {} a -> s {datetimeOptions = a} :: DatasetParameter)

-- | The optional filter expression structure to apply additional matching
-- criteria to the parameter.
datasetParameter_filter :: Lens.Lens' DatasetParameter (Prelude.Maybe FilterExpression)
datasetParameter_filter = Lens.lens (\DatasetParameter' {filter'} -> filter') (\s@DatasetParameter' {} a -> s {filter' = a} :: DatasetParameter)

-- | Optional boolean value that defines whether the captured value of this
-- parameter should be used to create a new column in a dataset.
datasetParameter_createColumn :: Lens.Lens' DatasetParameter (Prelude.Maybe Prelude.Bool)
datasetParameter_createColumn = Lens.lens (\DatasetParameter' {createColumn} -> createColumn) (\s@DatasetParameter' {} a -> s {createColumn = a} :: DatasetParameter)

-- | The name of the parameter that is used in the dataset\'s Amazon S3 path.
datasetParameter_name :: Lens.Lens' DatasetParameter Prelude.Text
datasetParameter_name = Lens.lens (\DatasetParameter' {name} -> name) (\s@DatasetParameter' {} a -> s {name = a} :: DatasetParameter)

-- | The type of the dataset parameter, can be one of a \'String\',
-- \'Number\' or \'Datetime\'.
datasetParameter_type :: Lens.Lens' DatasetParameter ParameterType
datasetParameter_type = Lens.lens (\DatasetParameter' {type'} -> type') (\s@DatasetParameter' {} a -> s {type' = a} :: DatasetParameter)

instance Core.FromJSON DatasetParameter where
  parseJSON =
    Core.withObject
      "DatasetParameter"
      ( \x ->
          DatasetParameter'
            Prelude.<$> (x Core..:? "DatetimeOptions")
            Prelude.<*> (x Core..:? "Filter")
            Prelude.<*> (x Core..:? "CreateColumn")
            Prelude.<*> (x Core..: "Name")
            Prelude.<*> (x Core..: "Type")
      )

instance Prelude.Hashable DatasetParameter where
  hashWithSalt _salt DatasetParameter' {..} =
    _salt `Prelude.hashWithSalt` datetimeOptions
      `Prelude.hashWithSalt` filter'
      `Prelude.hashWithSalt` createColumn
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` type'

instance Prelude.NFData DatasetParameter where
  rnf DatasetParameter' {..} =
    Prelude.rnf datetimeOptions
      `Prelude.seq` Prelude.rnf filter'
      `Prelude.seq` Prelude.rnf createColumn
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf type'

instance Core.ToJSON DatasetParameter where
  toJSON DatasetParameter' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("DatetimeOptions" Core..=)
              Prelude.<$> datetimeOptions,
            ("Filter" Core..=) Prelude.<$> filter',
            ("CreateColumn" Core..=) Prelude.<$> createColumn,
            Prelude.Just ("Name" Core..= name),
            Prelude.Just ("Type" Core..= type')
          ]
      )
