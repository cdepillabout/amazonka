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
-- Module      : Amazonka.GuardDuty.Types.ScanResultDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.GuardDuty.Types.ScanResultDetails where

import qualified Amazonka.Core as Core
import Amazonka.GuardDuty.Types.ScanResult
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Represents the result of the scan.
--
-- /See:/ 'newScanResultDetails' smart constructor.
data ScanResultDetails = ScanResultDetails'
  { -- | An enum value representing possible scan results.
    scanResult :: Prelude.Maybe ScanResult
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ScanResultDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'scanResult', 'scanResultDetails_scanResult' - An enum value representing possible scan results.
newScanResultDetails ::
  ScanResultDetails
newScanResultDetails =
  ScanResultDetails' {scanResult = Prelude.Nothing}

-- | An enum value representing possible scan results.
scanResultDetails_scanResult :: Lens.Lens' ScanResultDetails (Prelude.Maybe ScanResult)
scanResultDetails_scanResult = Lens.lens (\ScanResultDetails' {scanResult} -> scanResult) (\s@ScanResultDetails' {} a -> s {scanResult = a} :: ScanResultDetails)

instance Core.FromJSON ScanResultDetails where
  parseJSON =
    Core.withObject
      "ScanResultDetails"
      ( \x ->
          ScanResultDetails'
            Prelude.<$> (x Core..:? "scanResult")
      )

instance Prelude.Hashable ScanResultDetails where
  hashWithSalt _salt ScanResultDetails' {..} =
    _salt `Prelude.hashWithSalt` scanResult

instance Prelude.NFData ScanResultDetails where
  rnf ScanResultDetails' {..} = Prelude.rnf scanResult
