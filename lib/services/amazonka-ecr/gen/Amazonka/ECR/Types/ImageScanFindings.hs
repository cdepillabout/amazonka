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
-- Module      : Amazonka.ECR.Types.ImageScanFindings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ECR.Types.ImageScanFindings where

import qualified Amazonka.Core as Core
import Amazonka.ECR.Types.EnhancedImageScanFinding
import Amazonka.ECR.Types.FindingSeverity
import Amazonka.ECR.Types.ImageScanFinding
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The details of an image scan.
--
-- /See:/ 'newImageScanFindings' smart constructor.
data ImageScanFindings = ImageScanFindings'
  { -- | The findings from the image scan.
    findings :: Prelude.Maybe [ImageScanFinding],
    -- | Details about the enhanced scan findings from Amazon Inspector.
    enhancedFindings :: Prelude.Maybe [EnhancedImageScanFinding],
    -- | The time when the vulnerability data was last scanned.
    vulnerabilitySourceUpdatedAt :: Prelude.Maybe Core.POSIX,
    -- | The image vulnerability counts, sorted by severity.
    findingSeverityCounts :: Prelude.Maybe (Prelude.HashMap FindingSeverity Prelude.Natural),
    -- | The time of the last completed image scan.
    imageScanCompletedAt :: Prelude.Maybe Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ImageScanFindings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'findings', 'imageScanFindings_findings' - The findings from the image scan.
--
-- 'enhancedFindings', 'imageScanFindings_enhancedFindings' - Details about the enhanced scan findings from Amazon Inspector.
--
-- 'vulnerabilitySourceUpdatedAt', 'imageScanFindings_vulnerabilitySourceUpdatedAt' - The time when the vulnerability data was last scanned.
--
-- 'findingSeverityCounts', 'imageScanFindings_findingSeverityCounts' - The image vulnerability counts, sorted by severity.
--
-- 'imageScanCompletedAt', 'imageScanFindings_imageScanCompletedAt' - The time of the last completed image scan.
newImageScanFindings ::
  ImageScanFindings
newImageScanFindings =
  ImageScanFindings'
    { findings = Prelude.Nothing,
      enhancedFindings = Prelude.Nothing,
      vulnerabilitySourceUpdatedAt = Prelude.Nothing,
      findingSeverityCounts = Prelude.Nothing,
      imageScanCompletedAt = Prelude.Nothing
    }

-- | The findings from the image scan.
imageScanFindings_findings :: Lens.Lens' ImageScanFindings (Prelude.Maybe [ImageScanFinding])
imageScanFindings_findings = Lens.lens (\ImageScanFindings' {findings} -> findings) (\s@ImageScanFindings' {} a -> s {findings = a} :: ImageScanFindings) Prelude.. Lens.mapping Lens.coerced

-- | Details about the enhanced scan findings from Amazon Inspector.
imageScanFindings_enhancedFindings :: Lens.Lens' ImageScanFindings (Prelude.Maybe [EnhancedImageScanFinding])
imageScanFindings_enhancedFindings = Lens.lens (\ImageScanFindings' {enhancedFindings} -> enhancedFindings) (\s@ImageScanFindings' {} a -> s {enhancedFindings = a} :: ImageScanFindings) Prelude.. Lens.mapping Lens.coerced

-- | The time when the vulnerability data was last scanned.
imageScanFindings_vulnerabilitySourceUpdatedAt :: Lens.Lens' ImageScanFindings (Prelude.Maybe Prelude.UTCTime)
imageScanFindings_vulnerabilitySourceUpdatedAt = Lens.lens (\ImageScanFindings' {vulnerabilitySourceUpdatedAt} -> vulnerabilitySourceUpdatedAt) (\s@ImageScanFindings' {} a -> s {vulnerabilitySourceUpdatedAt = a} :: ImageScanFindings) Prelude.. Lens.mapping Core._Time

-- | The image vulnerability counts, sorted by severity.
imageScanFindings_findingSeverityCounts :: Lens.Lens' ImageScanFindings (Prelude.Maybe (Prelude.HashMap FindingSeverity Prelude.Natural))
imageScanFindings_findingSeverityCounts = Lens.lens (\ImageScanFindings' {findingSeverityCounts} -> findingSeverityCounts) (\s@ImageScanFindings' {} a -> s {findingSeverityCounts = a} :: ImageScanFindings) Prelude.. Lens.mapping Lens.coerced

-- | The time of the last completed image scan.
imageScanFindings_imageScanCompletedAt :: Lens.Lens' ImageScanFindings (Prelude.Maybe Prelude.UTCTime)
imageScanFindings_imageScanCompletedAt = Lens.lens (\ImageScanFindings' {imageScanCompletedAt} -> imageScanCompletedAt) (\s@ImageScanFindings' {} a -> s {imageScanCompletedAt = a} :: ImageScanFindings) Prelude.. Lens.mapping Core._Time

instance Core.FromJSON ImageScanFindings where
  parseJSON =
    Core.withObject
      "ImageScanFindings"
      ( \x ->
          ImageScanFindings'
            Prelude.<$> (x Core..:? "findings" Core..!= Prelude.mempty)
            Prelude.<*> ( x Core..:? "enhancedFindings"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "vulnerabilitySourceUpdatedAt")
            Prelude.<*> ( x Core..:? "findingSeverityCounts"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "imageScanCompletedAt")
      )

instance Prelude.Hashable ImageScanFindings where
  hashWithSalt _salt ImageScanFindings' {..} =
    _salt `Prelude.hashWithSalt` findings
      `Prelude.hashWithSalt` enhancedFindings
      `Prelude.hashWithSalt` vulnerabilitySourceUpdatedAt
      `Prelude.hashWithSalt` findingSeverityCounts
      `Prelude.hashWithSalt` imageScanCompletedAt

instance Prelude.NFData ImageScanFindings where
  rnf ImageScanFindings' {..} =
    Prelude.rnf findings
      `Prelude.seq` Prelude.rnf enhancedFindings
      `Prelude.seq` Prelude.rnf vulnerabilitySourceUpdatedAt
      `Prelude.seq` Prelude.rnf findingSeverityCounts
      `Prelude.seq` Prelude.rnf imageScanCompletedAt
