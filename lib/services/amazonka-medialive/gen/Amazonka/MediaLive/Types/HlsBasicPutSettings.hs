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
-- Module      : Amazonka.MediaLive.Types.HlsBasicPutSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaLive.Types.HlsBasicPutSettings where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Hls Basic Put Settings
--
-- /See:/ 'newHlsBasicPutSettings' smart constructor.
data HlsBasicPutSettings = HlsBasicPutSettings'
  { -- | Number of retry attempts that will be made before the Live Event is put
    -- into an error state.
    numRetries :: Prelude.Maybe Prelude.Natural,
    -- | Number of seconds to wait before retrying connection to the CDN if the
    -- connection is lost.
    connectionRetryInterval :: Prelude.Maybe Prelude.Natural,
    -- | If a streaming output fails, number of seconds to wait until a restart
    -- is initiated. A value of 0 means never restart.
    restartDelay :: Prelude.Maybe Prelude.Natural,
    -- | Size in seconds of file cache for streaming outputs.
    filecacheDuration :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'HlsBasicPutSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'numRetries', 'hlsBasicPutSettings_numRetries' - Number of retry attempts that will be made before the Live Event is put
-- into an error state.
--
-- 'connectionRetryInterval', 'hlsBasicPutSettings_connectionRetryInterval' - Number of seconds to wait before retrying connection to the CDN if the
-- connection is lost.
--
-- 'restartDelay', 'hlsBasicPutSettings_restartDelay' - If a streaming output fails, number of seconds to wait until a restart
-- is initiated. A value of 0 means never restart.
--
-- 'filecacheDuration', 'hlsBasicPutSettings_filecacheDuration' - Size in seconds of file cache for streaming outputs.
newHlsBasicPutSettings ::
  HlsBasicPutSettings
newHlsBasicPutSettings =
  HlsBasicPutSettings'
    { numRetries = Prelude.Nothing,
      connectionRetryInterval = Prelude.Nothing,
      restartDelay = Prelude.Nothing,
      filecacheDuration = Prelude.Nothing
    }

-- | Number of retry attempts that will be made before the Live Event is put
-- into an error state.
hlsBasicPutSettings_numRetries :: Lens.Lens' HlsBasicPutSettings (Prelude.Maybe Prelude.Natural)
hlsBasicPutSettings_numRetries = Lens.lens (\HlsBasicPutSettings' {numRetries} -> numRetries) (\s@HlsBasicPutSettings' {} a -> s {numRetries = a} :: HlsBasicPutSettings)

-- | Number of seconds to wait before retrying connection to the CDN if the
-- connection is lost.
hlsBasicPutSettings_connectionRetryInterval :: Lens.Lens' HlsBasicPutSettings (Prelude.Maybe Prelude.Natural)
hlsBasicPutSettings_connectionRetryInterval = Lens.lens (\HlsBasicPutSettings' {connectionRetryInterval} -> connectionRetryInterval) (\s@HlsBasicPutSettings' {} a -> s {connectionRetryInterval = a} :: HlsBasicPutSettings)

-- | If a streaming output fails, number of seconds to wait until a restart
-- is initiated. A value of 0 means never restart.
hlsBasicPutSettings_restartDelay :: Lens.Lens' HlsBasicPutSettings (Prelude.Maybe Prelude.Natural)
hlsBasicPutSettings_restartDelay = Lens.lens (\HlsBasicPutSettings' {restartDelay} -> restartDelay) (\s@HlsBasicPutSettings' {} a -> s {restartDelay = a} :: HlsBasicPutSettings)

-- | Size in seconds of file cache for streaming outputs.
hlsBasicPutSettings_filecacheDuration :: Lens.Lens' HlsBasicPutSettings (Prelude.Maybe Prelude.Natural)
hlsBasicPutSettings_filecacheDuration = Lens.lens (\HlsBasicPutSettings' {filecacheDuration} -> filecacheDuration) (\s@HlsBasicPutSettings' {} a -> s {filecacheDuration = a} :: HlsBasicPutSettings)

instance Core.FromJSON HlsBasicPutSettings where
  parseJSON =
    Core.withObject
      "HlsBasicPutSettings"
      ( \x ->
          HlsBasicPutSettings'
            Prelude.<$> (x Core..:? "numRetries")
            Prelude.<*> (x Core..:? "connectionRetryInterval")
            Prelude.<*> (x Core..:? "restartDelay")
            Prelude.<*> (x Core..:? "filecacheDuration")
      )

instance Prelude.Hashable HlsBasicPutSettings where
  hashWithSalt _salt HlsBasicPutSettings' {..} =
    _salt `Prelude.hashWithSalt` numRetries
      `Prelude.hashWithSalt` connectionRetryInterval
      `Prelude.hashWithSalt` restartDelay
      `Prelude.hashWithSalt` filecacheDuration

instance Prelude.NFData HlsBasicPutSettings where
  rnf HlsBasicPutSettings' {..} =
    Prelude.rnf numRetries
      `Prelude.seq` Prelude.rnf connectionRetryInterval
      `Prelude.seq` Prelude.rnf restartDelay
      `Prelude.seq` Prelude.rnf filecacheDuration

instance Core.ToJSON HlsBasicPutSettings where
  toJSON HlsBasicPutSettings' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("numRetries" Core..=) Prelude.<$> numRetries,
            ("connectionRetryInterval" Core..=)
              Prelude.<$> connectionRetryInterval,
            ("restartDelay" Core..=) Prelude.<$> restartDelay,
            ("filecacheDuration" Core..=)
              Prelude.<$> filecacheDuration
          ]
      )
