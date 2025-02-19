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
-- Module      : Amazonka.DataExchange.Types.Details
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DataExchange.Types.Details where

import qualified Amazonka.Core as Core
import Amazonka.DataExchange.Types.AssetSourceEntry
import Amazonka.DataExchange.Types.ImportAssetFromSignedUrlJobErrorDetails
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Information about the job error.
--
-- /See:/ 'newDetails' smart constructor.
data Details = Details'
  { -- | Information about the job error.
    importAssetsFromS3JobErrorDetails :: Prelude.Maybe [AssetSourceEntry],
    -- | Information about the job error.
    importAssetFromSignedUrlJobErrorDetails :: Prelude.Maybe ImportAssetFromSignedUrlJobErrorDetails
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Details' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'importAssetsFromS3JobErrorDetails', 'details_importAssetsFromS3JobErrorDetails' - Information about the job error.
--
-- 'importAssetFromSignedUrlJobErrorDetails', 'details_importAssetFromSignedUrlJobErrorDetails' - Information about the job error.
newDetails ::
  Details
newDetails =
  Details'
    { importAssetsFromS3JobErrorDetails =
        Prelude.Nothing,
      importAssetFromSignedUrlJobErrorDetails =
        Prelude.Nothing
    }

-- | Information about the job error.
details_importAssetsFromS3JobErrorDetails :: Lens.Lens' Details (Prelude.Maybe [AssetSourceEntry])
details_importAssetsFromS3JobErrorDetails = Lens.lens (\Details' {importAssetsFromS3JobErrorDetails} -> importAssetsFromS3JobErrorDetails) (\s@Details' {} a -> s {importAssetsFromS3JobErrorDetails = a} :: Details) Prelude.. Lens.mapping Lens.coerced

-- | Information about the job error.
details_importAssetFromSignedUrlJobErrorDetails :: Lens.Lens' Details (Prelude.Maybe ImportAssetFromSignedUrlJobErrorDetails)
details_importAssetFromSignedUrlJobErrorDetails = Lens.lens (\Details' {importAssetFromSignedUrlJobErrorDetails} -> importAssetFromSignedUrlJobErrorDetails) (\s@Details' {} a -> s {importAssetFromSignedUrlJobErrorDetails = a} :: Details)

instance Core.FromJSON Details where
  parseJSON =
    Core.withObject
      "Details"
      ( \x ->
          Details'
            Prelude.<$> ( x Core..:? "ImportAssetsFromS3JobErrorDetails"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> ( x
                            Core..:? "ImportAssetFromSignedUrlJobErrorDetails"
                        )
      )

instance Prelude.Hashable Details where
  hashWithSalt _salt Details' {..} =
    _salt
      `Prelude.hashWithSalt` importAssetsFromS3JobErrorDetails
      `Prelude.hashWithSalt` importAssetFromSignedUrlJobErrorDetails

instance Prelude.NFData Details where
  rnf Details' {..} =
    Prelude.rnf importAssetsFromS3JobErrorDetails
      `Prelude.seq` Prelude.rnf importAssetFromSignedUrlJobErrorDetails
