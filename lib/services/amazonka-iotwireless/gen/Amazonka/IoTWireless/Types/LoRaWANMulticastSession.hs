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
-- Module      : Amazonka.IoTWireless.Types.LoRaWANMulticastSession
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IoTWireless.Types.LoRaWANMulticastSession where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The LoRaWAN information used with the multicast session.
--
-- /See:/ 'newLoRaWANMulticastSession' smart constructor.
data LoRaWANMulticastSession = LoRaWANMulticastSession'
  { dlDr :: Prelude.Maybe Prelude.Natural,
    sessionTimeout :: Prelude.Maybe Prelude.Natural,
    sessionStartTime :: Prelude.Maybe Core.POSIX,
    dlFreq :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'LoRaWANMulticastSession' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dlDr', 'loRaWANMulticastSession_dlDr' - Undocumented member.
--
-- 'sessionTimeout', 'loRaWANMulticastSession_sessionTimeout' - Undocumented member.
--
-- 'sessionStartTime', 'loRaWANMulticastSession_sessionStartTime' - Undocumented member.
--
-- 'dlFreq', 'loRaWANMulticastSession_dlFreq' - Undocumented member.
newLoRaWANMulticastSession ::
  LoRaWANMulticastSession
newLoRaWANMulticastSession =
  LoRaWANMulticastSession'
    { dlDr = Prelude.Nothing,
      sessionTimeout = Prelude.Nothing,
      sessionStartTime = Prelude.Nothing,
      dlFreq = Prelude.Nothing
    }

-- | Undocumented member.
loRaWANMulticastSession_dlDr :: Lens.Lens' LoRaWANMulticastSession (Prelude.Maybe Prelude.Natural)
loRaWANMulticastSession_dlDr = Lens.lens (\LoRaWANMulticastSession' {dlDr} -> dlDr) (\s@LoRaWANMulticastSession' {} a -> s {dlDr = a} :: LoRaWANMulticastSession)

-- | Undocumented member.
loRaWANMulticastSession_sessionTimeout :: Lens.Lens' LoRaWANMulticastSession (Prelude.Maybe Prelude.Natural)
loRaWANMulticastSession_sessionTimeout = Lens.lens (\LoRaWANMulticastSession' {sessionTimeout} -> sessionTimeout) (\s@LoRaWANMulticastSession' {} a -> s {sessionTimeout = a} :: LoRaWANMulticastSession)

-- | Undocumented member.
loRaWANMulticastSession_sessionStartTime :: Lens.Lens' LoRaWANMulticastSession (Prelude.Maybe Prelude.UTCTime)
loRaWANMulticastSession_sessionStartTime = Lens.lens (\LoRaWANMulticastSession' {sessionStartTime} -> sessionStartTime) (\s@LoRaWANMulticastSession' {} a -> s {sessionStartTime = a} :: LoRaWANMulticastSession) Prelude.. Lens.mapping Core._Time

-- | Undocumented member.
loRaWANMulticastSession_dlFreq :: Lens.Lens' LoRaWANMulticastSession (Prelude.Maybe Prelude.Natural)
loRaWANMulticastSession_dlFreq = Lens.lens (\LoRaWANMulticastSession' {dlFreq} -> dlFreq) (\s@LoRaWANMulticastSession' {} a -> s {dlFreq = a} :: LoRaWANMulticastSession)

instance Core.FromJSON LoRaWANMulticastSession where
  parseJSON =
    Core.withObject
      "LoRaWANMulticastSession"
      ( \x ->
          LoRaWANMulticastSession'
            Prelude.<$> (x Core..:? "DlDr")
            Prelude.<*> (x Core..:? "SessionTimeout")
            Prelude.<*> (x Core..:? "SessionStartTime")
            Prelude.<*> (x Core..:? "DlFreq")
      )

instance Prelude.Hashable LoRaWANMulticastSession where
  hashWithSalt _salt LoRaWANMulticastSession' {..} =
    _salt `Prelude.hashWithSalt` dlDr
      `Prelude.hashWithSalt` sessionTimeout
      `Prelude.hashWithSalt` sessionStartTime
      `Prelude.hashWithSalt` dlFreq

instance Prelude.NFData LoRaWANMulticastSession where
  rnf LoRaWANMulticastSession' {..} =
    Prelude.rnf dlDr
      `Prelude.seq` Prelude.rnf sessionTimeout
      `Prelude.seq` Prelude.rnf sessionStartTime
      `Prelude.seq` Prelude.rnf dlFreq

instance Core.ToJSON LoRaWANMulticastSession where
  toJSON LoRaWANMulticastSession' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("DlDr" Core..=) Prelude.<$> dlDr,
            ("SessionTimeout" Core..=)
              Prelude.<$> sessionTimeout,
            ("SessionStartTime" Core..=)
              Prelude.<$> sessionStartTime,
            ("DlFreq" Core..=) Prelude.<$> dlFreq
          ]
      )
