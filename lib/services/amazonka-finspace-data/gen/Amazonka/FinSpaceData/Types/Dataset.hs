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
-- Module      : Amazonka.FinSpaceData.Types.Dataset
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.FinSpaceData.Types.Dataset where

import qualified Amazonka.Core as Core
import Amazonka.FinSpaceData.Types.DatasetKind
import Amazonka.FinSpaceData.Types.DatasetOwnerInfo
import Amazonka.FinSpaceData.Types.SchemaUnion
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The structure for a Dataset.
--
-- /See:/ 'newDataset' smart constructor.
data Dataset = Dataset'
  { -- | The unique resource identifier for a Dataset.
    alias :: Prelude.Maybe Prelude.Text,
    -- | Description for a Dataset.
    datasetDescription :: Prelude.Maybe Prelude.Text,
    -- | Display title for a Dataset.
    datasetTitle :: Prelude.Maybe Prelude.Text,
    -- | The format in which Dataset data is structured.
    --
    -- -   @TABULAR@ – Data is structured in a tabular format.
    --
    -- -   @NON_TABULAR@ – Data is structured in a non-tabular format.
    kind :: Prelude.Maybe DatasetKind,
    -- | The ARN identifier of the Dataset.
    datasetArn :: Prelude.Maybe Prelude.Text,
    -- | The last time that the Dataset was modified. The value is determined as
    -- epoch time in milliseconds. For example, the value for Monday, November
    -- 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
    lastModifiedTime :: Prelude.Maybe Prelude.Integer,
    -- | An identifier for a Dataset.
    datasetId :: Prelude.Maybe Prelude.Text,
    -- | The timestamp at which the Dataset was created in FinSpace. The value is
    -- determined as epoch time in milliseconds. For example, the value for
    -- Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
    createTime :: Prelude.Maybe Prelude.Integer,
    -- | Definition for a schema on a tabular Dataset.
    schemaDefinition :: Prelude.Maybe SchemaUnion,
    -- | Contact information for a Dataset owner.
    ownerInfo :: Prelude.Maybe DatasetOwnerInfo
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Dataset' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'alias', 'dataset_alias' - The unique resource identifier for a Dataset.
--
-- 'datasetDescription', 'dataset_datasetDescription' - Description for a Dataset.
--
-- 'datasetTitle', 'dataset_datasetTitle' - Display title for a Dataset.
--
-- 'kind', 'dataset_kind' - The format in which Dataset data is structured.
--
-- -   @TABULAR@ – Data is structured in a tabular format.
--
-- -   @NON_TABULAR@ – Data is structured in a non-tabular format.
--
-- 'datasetArn', 'dataset_datasetArn' - The ARN identifier of the Dataset.
--
-- 'lastModifiedTime', 'dataset_lastModifiedTime' - The last time that the Dataset was modified. The value is determined as
-- epoch time in milliseconds. For example, the value for Monday, November
-- 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
--
-- 'datasetId', 'dataset_datasetId' - An identifier for a Dataset.
--
-- 'createTime', 'dataset_createTime' - The timestamp at which the Dataset was created in FinSpace. The value is
-- determined as epoch time in milliseconds. For example, the value for
-- Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
--
-- 'schemaDefinition', 'dataset_schemaDefinition' - Definition for a schema on a tabular Dataset.
--
-- 'ownerInfo', 'dataset_ownerInfo' - Contact information for a Dataset owner.
newDataset ::
  Dataset
newDataset =
  Dataset'
    { alias = Prelude.Nothing,
      datasetDescription = Prelude.Nothing,
      datasetTitle = Prelude.Nothing,
      kind = Prelude.Nothing,
      datasetArn = Prelude.Nothing,
      lastModifiedTime = Prelude.Nothing,
      datasetId = Prelude.Nothing,
      createTime = Prelude.Nothing,
      schemaDefinition = Prelude.Nothing,
      ownerInfo = Prelude.Nothing
    }

-- | The unique resource identifier for a Dataset.
dataset_alias :: Lens.Lens' Dataset (Prelude.Maybe Prelude.Text)
dataset_alias = Lens.lens (\Dataset' {alias} -> alias) (\s@Dataset' {} a -> s {alias = a} :: Dataset)

-- | Description for a Dataset.
dataset_datasetDescription :: Lens.Lens' Dataset (Prelude.Maybe Prelude.Text)
dataset_datasetDescription = Lens.lens (\Dataset' {datasetDescription} -> datasetDescription) (\s@Dataset' {} a -> s {datasetDescription = a} :: Dataset)

-- | Display title for a Dataset.
dataset_datasetTitle :: Lens.Lens' Dataset (Prelude.Maybe Prelude.Text)
dataset_datasetTitle = Lens.lens (\Dataset' {datasetTitle} -> datasetTitle) (\s@Dataset' {} a -> s {datasetTitle = a} :: Dataset)

-- | The format in which Dataset data is structured.
--
-- -   @TABULAR@ – Data is structured in a tabular format.
--
-- -   @NON_TABULAR@ – Data is structured in a non-tabular format.
dataset_kind :: Lens.Lens' Dataset (Prelude.Maybe DatasetKind)
dataset_kind = Lens.lens (\Dataset' {kind} -> kind) (\s@Dataset' {} a -> s {kind = a} :: Dataset)

-- | The ARN identifier of the Dataset.
dataset_datasetArn :: Lens.Lens' Dataset (Prelude.Maybe Prelude.Text)
dataset_datasetArn = Lens.lens (\Dataset' {datasetArn} -> datasetArn) (\s@Dataset' {} a -> s {datasetArn = a} :: Dataset)

-- | The last time that the Dataset was modified. The value is determined as
-- epoch time in milliseconds. For example, the value for Monday, November
-- 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
dataset_lastModifiedTime :: Lens.Lens' Dataset (Prelude.Maybe Prelude.Integer)
dataset_lastModifiedTime = Lens.lens (\Dataset' {lastModifiedTime} -> lastModifiedTime) (\s@Dataset' {} a -> s {lastModifiedTime = a} :: Dataset)

-- | An identifier for a Dataset.
dataset_datasetId :: Lens.Lens' Dataset (Prelude.Maybe Prelude.Text)
dataset_datasetId = Lens.lens (\Dataset' {datasetId} -> datasetId) (\s@Dataset' {} a -> s {datasetId = a} :: Dataset)

-- | The timestamp at which the Dataset was created in FinSpace. The value is
-- determined as epoch time in milliseconds. For example, the value for
-- Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
dataset_createTime :: Lens.Lens' Dataset (Prelude.Maybe Prelude.Integer)
dataset_createTime = Lens.lens (\Dataset' {createTime} -> createTime) (\s@Dataset' {} a -> s {createTime = a} :: Dataset)

-- | Definition for a schema on a tabular Dataset.
dataset_schemaDefinition :: Lens.Lens' Dataset (Prelude.Maybe SchemaUnion)
dataset_schemaDefinition = Lens.lens (\Dataset' {schemaDefinition} -> schemaDefinition) (\s@Dataset' {} a -> s {schemaDefinition = a} :: Dataset)

-- | Contact information for a Dataset owner.
dataset_ownerInfo :: Lens.Lens' Dataset (Prelude.Maybe DatasetOwnerInfo)
dataset_ownerInfo = Lens.lens (\Dataset' {ownerInfo} -> ownerInfo) (\s@Dataset' {} a -> s {ownerInfo = a} :: Dataset)

instance Core.FromJSON Dataset where
  parseJSON =
    Core.withObject
      "Dataset"
      ( \x ->
          Dataset'
            Prelude.<$> (x Core..:? "alias")
            Prelude.<*> (x Core..:? "datasetDescription")
            Prelude.<*> (x Core..:? "datasetTitle")
            Prelude.<*> (x Core..:? "kind")
            Prelude.<*> (x Core..:? "datasetArn")
            Prelude.<*> (x Core..:? "lastModifiedTime")
            Prelude.<*> (x Core..:? "datasetId")
            Prelude.<*> (x Core..:? "createTime")
            Prelude.<*> (x Core..:? "schemaDefinition")
            Prelude.<*> (x Core..:? "ownerInfo")
      )

instance Prelude.Hashable Dataset where
  hashWithSalt _salt Dataset' {..} =
    _salt `Prelude.hashWithSalt` alias
      `Prelude.hashWithSalt` datasetDescription
      `Prelude.hashWithSalt` datasetTitle
      `Prelude.hashWithSalt` kind
      `Prelude.hashWithSalt` datasetArn
      `Prelude.hashWithSalt` lastModifiedTime
      `Prelude.hashWithSalt` datasetId
      `Prelude.hashWithSalt` createTime
      `Prelude.hashWithSalt` schemaDefinition
      `Prelude.hashWithSalt` ownerInfo

instance Prelude.NFData Dataset where
  rnf Dataset' {..} =
    Prelude.rnf alias
      `Prelude.seq` Prelude.rnf datasetDescription
      `Prelude.seq` Prelude.rnf datasetTitle
      `Prelude.seq` Prelude.rnf kind
      `Prelude.seq` Prelude.rnf datasetArn
      `Prelude.seq` Prelude.rnf lastModifiedTime
      `Prelude.seq` Prelude.rnf datasetId
      `Prelude.seq` Prelude.rnf createTime
      `Prelude.seq` Prelude.rnf schemaDefinition
      `Prelude.seq` Prelude.rnf ownerInfo
