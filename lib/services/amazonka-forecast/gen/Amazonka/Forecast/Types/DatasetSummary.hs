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
-- Module      : Amazonka.Forecast.Types.DatasetSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Forecast.Types.DatasetSummary where

import qualified Amazonka.Core as Core
import Amazonka.Forecast.Types.DatasetType
import Amazonka.Forecast.Types.Domain
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Provides a summary of the dataset properties used in the
-- <https://docs.aws.amazon.com/forecast/latest/dg/API_ListDatasets.html ListDatasets>
-- operation. To get the complete set of properties, call the
-- <https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDataset.html DescribeDataset>
-- operation, and provide the @DatasetArn@.
--
-- /See:/ 'newDatasetSummary' smart constructor.
data DatasetSummary = DatasetSummary'
  { -- | When you create a dataset, @LastModificationTime@ is the same as
    -- @CreationTime@. While data is being imported to the dataset,
    -- @LastModificationTime@ is the current time of the @ListDatasets@ call.
    -- After a
    -- <https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDatasetImportJob.html CreateDatasetImportJob>
    -- operation has finished, @LastModificationTime@ is when the import job
    -- completed or failed.
    lastModificationTime :: Prelude.Maybe Core.POSIX,
    -- | The domain associated with the dataset.
    domain :: Prelude.Maybe Domain,
    -- | The dataset type.
    datasetType :: Prelude.Maybe DatasetType,
    -- | The name of the dataset.
    datasetName :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the dataset.
    datasetArn :: Prelude.Maybe Prelude.Text,
    -- | When the dataset was created.
    creationTime :: Prelude.Maybe Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DatasetSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lastModificationTime', 'datasetSummary_lastModificationTime' - When you create a dataset, @LastModificationTime@ is the same as
-- @CreationTime@. While data is being imported to the dataset,
-- @LastModificationTime@ is the current time of the @ListDatasets@ call.
-- After a
-- <https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDatasetImportJob.html CreateDatasetImportJob>
-- operation has finished, @LastModificationTime@ is when the import job
-- completed or failed.
--
-- 'domain', 'datasetSummary_domain' - The domain associated with the dataset.
--
-- 'datasetType', 'datasetSummary_datasetType' - The dataset type.
--
-- 'datasetName', 'datasetSummary_datasetName' - The name of the dataset.
--
-- 'datasetArn', 'datasetSummary_datasetArn' - The Amazon Resource Name (ARN) of the dataset.
--
-- 'creationTime', 'datasetSummary_creationTime' - When the dataset was created.
newDatasetSummary ::
  DatasetSummary
newDatasetSummary =
  DatasetSummary'
    { lastModificationTime =
        Prelude.Nothing,
      domain = Prelude.Nothing,
      datasetType = Prelude.Nothing,
      datasetName = Prelude.Nothing,
      datasetArn = Prelude.Nothing,
      creationTime = Prelude.Nothing
    }

-- | When you create a dataset, @LastModificationTime@ is the same as
-- @CreationTime@. While data is being imported to the dataset,
-- @LastModificationTime@ is the current time of the @ListDatasets@ call.
-- After a
-- <https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDatasetImportJob.html CreateDatasetImportJob>
-- operation has finished, @LastModificationTime@ is when the import job
-- completed or failed.
datasetSummary_lastModificationTime :: Lens.Lens' DatasetSummary (Prelude.Maybe Prelude.UTCTime)
datasetSummary_lastModificationTime = Lens.lens (\DatasetSummary' {lastModificationTime} -> lastModificationTime) (\s@DatasetSummary' {} a -> s {lastModificationTime = a} :: DatasetSummary) Prelude.. Lens.mapping Core._Time

-- | The domain associated with the dataset.
datasetSummary_domain :: Lens.Lens' DatasetSummary (Prelude.Maybe Domain)
datasetSummary_domain = Lens.lens (\DatasetSummary' {domain} -> domain) (\s@DatasetSummary' {} a -> s {domain = a} :: DatasetSummary)

-- | The dataset type.
datasetSummary_datasetType :: Lens.Lens' DatasetSummary (Prelude.Maybe DatasetType)
datasetSummary_datasetType = Lens.lens (\DatasetSummary' {datasetType} -> datasetType) (\s@DatasetSummary' {} a -> s {datasetType = a} :: DatasetSummary)

-- | The name of the dataset.
datasetSummary_datasetName :: Lens.Lens' DatasetSummary (Prelude.Maybe Prelude.Text)
datasetSummary_datasetName = Lens.lens (\DatasetSummary' {datasetName} -> datasetName) (\s@DatasetSummary' {} a -> s {datasetName = a} :: DatasetSummary)

-- | The Amazon Resource Name (ARN) of the dataset.
datasetSummary_datasetArn :: Lens.Lens' DatasetSummary (Prelude.Maybe Prelude.Text)
datasetSummary_datasetArn = Lens.lens (\DatasetSummary' {datasetArn} -> datasetArn) (\s@DatasetSummary' {} a -> s {datasetArn = a} :: DatasetSummary)

-- | When the dataset was created.
datasetSummary_creationTime :: Lens.Lens' DatasetSummary (Prelude.Maybe Prelude.UTCTime)
datasetSummary_creationTime = Lens.lens (\DatasetSummary' {creationTime} -> creationTime) (\s@DatasetSummary' {} a -> s {creationTime = a} :: DatasetSummary) Prelude.. Lens.mapping Core._Time

instance Core.FromJSON DatasetSummary where
  parseJSON =
    Core.withObject
      "DatasetSummary"
      ( \x ->
          DatasetSummary'
            Prelude.<$> (x Core..:? "LastModificationTime")
            Prelude.<*> (x Core..:? "Domain")
            Prelude.<*> (x Core..:? "DatasetType")
            Prelude.<*> (x Core..:? "DatasetName")
            Prelude.<*> (x Core..:? "DatasetArn")
            Prelude.<*> (x Core..:? "CreationTime")
      )

instance Prelude.Hashable DatasetSummary where
  hashWithSalt _salt DatasetSummary' {..} =
    _salt `Prelude.hashWithSalt` lastModificationTime
      `Prelude.hashWithSalt` domain
      `Prelude.hashWithSalt` datasetType
      `Prelude.hashWithSalt` datasetName
      `Prelude.hashWithSalt` datasetArn
      `Prelude.hashWithSalt` creationTime

instance Prelude.NFData DatasetSummary where
  rnf DatasetSummary' {..} =
    Prelude.rnf lastModificationTime
      `Prelude.seq` Prelude.rnf domain
      `Prelude.seq` Prelude.rnf datasetType
      `Prelude.seq` Prelude.rnf datasetName
      `Prelude.seq` Prelude.rnf datasetArn
      `Prelude.seq` Prelude.rnf creationTime
