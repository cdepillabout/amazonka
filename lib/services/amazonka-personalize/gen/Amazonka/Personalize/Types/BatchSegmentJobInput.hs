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
-- Module      : Amazonka.Personalize.Types.BatchSegmentJobInput
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Personalize.Types.BatchSegmentJobInput where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.Personalize.Types.S3DataConfig
import qualified Amazonka.Prelude as Prelude

-- | The input configuration of a batch segment job.
--
-- /See:/ 'newBatchSegmentJobInput' smart constructor.
data BatchSegmentJobInput = BatchSegmentJobInput'
  { s3DataSource :: S3DataConfig
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchSegmentJobInput' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 's3DataSource', 'batchSegmentJobInput_s3DataSource' - Undocumented member.
newBatchSegmentJobInput ::
  -- | 's3DataSource'
  S3DataConfig ->
  BatchSegmentJobInput
newBatchSegmentJobInput pS3DataSource_ =
  BatchSegmentJobInput'
    { s3DataSource =
        pS3DataSource_
    }

-- | Undocumented member.
batchSegmentJobInput_s3DataSource :: Lens.Lens' BatchSegmentJobInput S3DataConfig
batchSegmentJobInput_s3DataSource = Lens.lens (\BatchSegmentJobInput' {s3DataSource} -> s3DataSource) (\s@BatchSegmentJobInput' {} a -> s {s3DataSource = a} :: BatchSegmentJobInput)

instance Core.FromJSON BatchSegmentJobInput where
  parseJSON =
    Core.withObject
      "BatchSegmentJobInput"
      ( \x ->
          BatchSegmentJobInput'
            Prelude.<$> (x Core..: "s3DataSource")
      )

instance Prelude.Hashable BatchSegmentJobInput where
  hashWithSalt _salt BatchSegmentJobInput' {..} =
    _salt `Prelude.hashWithSalt` s3DataSource

instance Prelude.NFData BatchSegmentJobInput where
  rnf BatchSegmentJobInput' {..} =
    Prelude.rnf s3DataSource

instance Core.ToJSON BatchSegmentJobInput where
  toJSON BatchSegmentJobInput' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("s3DataSource" Core..= s3DataSource)]
      )
