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
-- Module      : Amazonka.MediaLive.Types.Scte20SourceSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaLive.Types.Scte20SourceSettings where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MediaLive.Types.Scte20Convert608To708
import qualified Amazonka.Prelude as Prelude

-- | Scte20 Source Settings
--
-- /See:/ 'newScte20SourceSettings' smart constructor.
data Scte20SourceSettings = Scte20SourceSettings'
  { -- | Specifies the 608\/708 channel number within the video track from which
    -- to extract captions. Unused for passthrough.
    source608ChannelNumber :: Prelude.Maybe Prelude.Natural,
    -- | If upconvert, 608 data is both passed through via the \"608
    -- compatibility bytes\" fields of the 708 wrapper as well as translated
    -- into 708. 708 data present in the source content will be discarded.
    convert608To708 :: Prelude.Maybe Scte20Convert608To708
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Scte20SourceSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'source608ChannelNumber', 'scte20SourceSettings_source608ChannelNumber' - Specifies the 608\/708 channel number within the video track from which
-- to extract captions. Unused for passthrough.
--
-- 'convert608To708', 'scte20SourceSettings_convert608To708' - If upconvert, 608 data is both passed through via the \"608
-- compatibility bytes\" fields of the 708 wrapper as well as translated
-- into 708. 708 data present in the source content will be discarded.
newScte20SourceSettings ::
  Scte20SourceSettings
newScte20SourceSettings =
  Scte20SourceSettings'
    { source608ChannelNumber =
        Prelude.Nothing,
      convert608To708 = Prelude.Nothing
    }

-- | Specifies the 608\/708 channel number within the video track from which
-- to extract captions. Unused for passthrough.
scte20SourceSettings_source608ChannelNumber :: Lens.Lens' Scte20SourceSettings (Prelude.Maybe Prelude.Natural)
scte20SourceSettings_source608ChannelNumber = Lens.lens (\Scte20SourceSettings' {source608ChannelNumber} -> source608ChannelNumber) (\s@Scte20SourceSettings' {} a -> s {source608ChannelNumber = a} :: Scte20SourceSettings)

-- | If upconvert, 608 data is both passed through via the \"608
-- compatibility bytes\" fields of the 708 wrapper as well as translated
-- into 708. 708 data present in the source content will be discarded.
scte20SourceSettings_convert608To708 :: Lens.Lens' Scte20SourceSettings (Prelude.Maybe Scte20Convert608To708)
scte20SourceSettings_convert608To708 = Lens.lens (\Scte20SourceSettings' {convert608To708} -> convert608To708) (\s@Scte20SourceSettings' {} a -> s {convert608To708 = a} :: Scte20SourceSettings)

instance Core.FromJSON Scte20SourceSettings where
  parseJSON =
    Core.withObject
      "Scte20SourceSettings"
      ( \x ->
          Scte20SourceSettings'
            Prelude.<$> (x Core..:? "source608ChannelNumber")
            Prelude.<*> (x Core..:? "convert608To708")
      )

instance Prelude.Hashable Scte20SourceSettings where
  hashWithSalt _salt Scte20SourceSettings' {..} =
    _salt `Prelude.hashWithSalt` source608ChannelNumber
      `Prelude.hashWithSalt` convert608To708

instance Prelude.NFData Scte20SourceSettings where
  rnf Scte20SourceSettings' {..} =
    Prelude.rnf source608ChannelNumber
      `Prelude.seq` Prelude.rnf convert608To708

instance Core.ToJSON Scte20SourceSettings where
  toJSON Scte20SourceSettings' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("source608ChannelNumber" Core..=)
              Prelude.<$> source608ChannelNumber,
            ("convert608To708" Core..=)
              Prelude.<$> convert608To708
          ]
      )
