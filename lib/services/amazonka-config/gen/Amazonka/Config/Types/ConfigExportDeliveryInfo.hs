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
-- Module      : Amazonka.Config.Types.ConfigExportDeliveryInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Config.Types.ConfigExportDeliveryInfo where

import Amazonka.Config.Types.DeliveryStatus
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Provides status of the delivery of the snapshot or the configuration
-- history to the specified Amazon S3 bucket. Also provides the status of
-- notifications about the Amazon S3 delivery to the specified Amazon SNS
-- topic.
--
-- /See:/ 'newConfigExportDeliveryInfo' smart constructor.
data ConfigExportDeliveryInfo = ConfigExportDeliveryInfo'
  { -- | The error code from the last attempted delivery.
    lastErrorCode :: Prelude.Maybe Prelude.Text,
    -- | The time that the next delivery occurs.
    nextDeliveryTime :: Prelude.Maybe Core.POSIX,
    -- | Status of the last attempted delivery.
    lastStatus :: Prelude.Maybe DeliveryStatus,
    -- | The time of the last successful delivery.
    lastSuccessfulTime :: Prelude.Maybe Core.POSIX,
    -- | The error message from the last attempted delivery.
    lastErrorMessage :: Prelude.Maybe Prelude.Text,
    -- | The time of the last attempted delivery.
    lastAttemptTime :: Prelude.Maybe Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ConfigExportDeliveryInfo' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lastErrorCode', 'configExportDeliveryInfo_lastErrorCode' - The error code from the last attempted delivery.
--
-- 'nextDeliveryTime', 'configExportDeliveryInfo_nextDeliveryTime' - The time that the next delivery occurs.
--
-- 'lastStatus', 'configExportDeliveryInfo_lastStatus' - Status of the last attempted delivery.
--
-- 'lastSuccessfulTime', 'configExportDeliveryInfo_lastSuccessfulTime' - The time of the last successful delivery.
--
-- 'lastErrorMessage', 'configExportDeliveryInfo_lastErrorMessage' - The error message from the last attempted delivery.
--
-- 'lastAttemptTime', 'configExportDeliveryInfo_lastAttemptTime' - The time of the last attempted delivery.
newConfigExportDeliveryInfo ::
  ConfigExportDeliveryInfo
newConfigExportDeliveryInfo =
  ConfigExportDeliveryInfo'
    { lastErrorCode =
        Prelude.Nothing,
      nextDeliveryTime = Prelude.Nothing,
      lastStatus = Prelude.Nothing,
      lastSuccessfulTime = Prelude.Nothing,
      lastErrorMessage = Prelude.Nothing,
      lastAttemptTime = Prelude.Nothing
    }

-- | The error code from the last attempted delivery.
configExportDeliveryInfo_lastErrorCode :: Lens.Lens' ConfigExportDeliveryInfo (Prelude.Maybe Prelude.Text)
configExportDeliveryInfo_lastErrorCode = Lens.lens (\ConfigExportDeliveryInfo' {lastErrorCode} -> lastErrorCode) (\s@ConfigExportDeliveryInfo' {} a -> s {lastErrorCode = a} :: ConfigExportDeliveryInfo)

-- | The time that the next delivery occurs.
configExportDeliveryInfo_nextDeliveryTime :: Lens.Lens' ConfigExportDeliveryInfo (Prelude.Maybe Prelude.UTCTime)
configExportDeliveryInfo_nextDeliveryTime = Lens.lens (\ConfigExportDeliveryInfo' {nextDeliveryTime} -> nextDeliveryTime) (\s@ConfigExportDeliveryInfo' {} a -> s {nextDeliveryTime = a} :: ConfigExportDeliveryInfo) Prelude.. Lens.mapping Core._Time

-- | Status of the last attempted delivery.
configExportDeliveryInfo_lastStatus :: Lens.Lens' ConfigExportDeliveryInfo (Prelude.Maybe DeliveryStatus)
configExportDeliveryInfo_lastStatus = Lens.lens (\ConfigExportDeliveryInfo' {lastStatus} -> lastStatus) (\s@ConfigExportDeliveryInfo' {} a -> s {lastStatus = a} :: ConfigExportDeliveryInfo)

-- | The time of the last successful delivery.
configExportDeliveryInfo_lastSuccessfulTime :: Lens.Lens' ConfigExportDeliveryInfo (Prelude.Maybe Prelude.UTCTime)
configExportDeliveryInfo_lastSuccessfulTime = Lens.lens (\ConfigExportDeliveryInfo' {lastSuccessfulTime} -> lastSuccessfulTime) (\s@ConfigExportDeliveryInfo' {} a -> s {lastSuccessfulTime = a} :: ConfigExportDeliveryInfo) Prelude.. Lens.mapping Core._Time

-- | The error message from the last attempted delivery.
configExportDeliveryInfo_lastErrorMessage :: Lens.Lens' ConfigExportDeliveryInfo (Prelude.Maybe Prelude.Text)
configExportDeliveryInfo_lastErrorMessage = Lens.lens (\ConfigExportDeliveryInfo' {lastErrorMessage} -> lastErrorMessage) (\s@ConfigExportDeliveryInfo' {} a -> s {lastErrorMessage = a} :: ConfigExportDeliveryInfo)

-- | The time of the last attempted delivery.
configExportDeliveryInfo_lastAttemptTime :: Lens.Lens' ConfigExportDeliveryInfo (Prelude.Maybe Prelude.UTCTime)
configExportDeliveryInfo_lastAttemptTime = Lens.lens (\ConfigExportDeliveryInfo' {lastAttemptTime} -> lastAttemptTime) (\s@ConfigExportDeliveryInfo' {} a -> s {lastAttemptTime = a} :: ConfigExportDeliveryInfo) Prelude.. Lens.mapping Core._Time

instance Core.FromJSON ConfigExportDeliveryInfo where
  parseJSON =
    Core.withObject
      "ConfigExportDeliveryInfo"
      ( \x ->
          ConfigExportDeliveryInfo'
            Prelude.<$> (x Core..:? "lastErrorCode")
            Prelude.<*> (x Core..:? "nextDeliveryTime")
            Prelude.<*> (x Core..:? "lastStatus")
            Prelude.<*> (x Core..:? "lastSuccessfulTime")
            Prelude.<*> (x Core..:? "lastErrorMessage")
            Prelude.<*> (x Core..:? "lastAttemptTime")
      )

instance Prelude.Hashable ConfigExportDeliveryInfo where
  hashWithSalt _salt ConfigExportDeliveryInfo' {..} =
    _salt `Prelude.hashWithSalt` lastErrorCode
      `Prelude.hashWithSalt` nextDeliveryTime
      `Prelude.hashWithSalt` lastStatus
      `Prelude.hashWithSalt` lastSuccessfulTime
      `Prelude.hashWithSalt` lastErrorMessage
      `Prelude.hashWithSalt` lastAttemptTime

instance Prelude.NFData ConfigExportDeliveryInfo where
  rnf ConfigExportDeliveryInfo' {..} =
    Prelude.rnf lastErrorCode
      `Prelude.seq` Prelude.rnf nextDeliveryTime
      `Prelude.seq` Prelude.rnf lastStatus
      `Prelude.seq` Prelude.rnf lastSuccessfulTime
      `Prelude.seq` Prelude.rnf lastErrorMessage
      `Prelude.seq` Prelude.rnf lastAttemptTime
