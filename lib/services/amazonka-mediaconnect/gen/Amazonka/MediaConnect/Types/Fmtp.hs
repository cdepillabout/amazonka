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
-- Module      : Amazonka.MediaConnect.Types.Fmtp
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaConnect.Types.Fmtp where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MediaConnect.Types.Colorimetry
import Amazonka.MediaConnect.Types.Range
import Amazonka.MediaConnect.Types.ScanMode
import Amazonka.MediaConnect.Types.Tcs
import qualified Amazonka.Prelude as Prelude

-- | FMTP
--
-- /See:/ 'newFmtp' smart constructor.
data Fmtp = Fmtp'
  { -- | The frame rate for the video stream, in frames\/second. For example:
    -- 60000\/1001. If you specify a whole number, MediaConnect uses a ratio of
    -- N\/1. For example, if you specify 60, MediaConnect uses 60\/1 as the
    -- exactFramerate.
    exactFramerate :: Prelude.Maybe Prelude.Text,
    -- | The type of compression that was used to smooth the video’s appearance
    scanMode :: Prelude.Maybe ScanMode,
    -- | The format that is used for the representation of color.
    colorimetry :: Prelude.Maybe Colorimetry,
    -- | The pixel aspect ratio (PAR) of the video.
    par :: Prelude.Maybe Prelude.Text,
    -- | The encoding range of the video.
    range :: Prelude.Maybe Range,
    -- | The transfer characteristic system (TCS) that is used in the video.
    tcs :: Prelude.Maybe Tcs,
    -- | The format of the audio channel.
    channelOrder :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Fmtp' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'exactFramerate', 'fmtp_exactFramerate' - The frame rate for the video stream, in frames\/second. For example:
-- 60000\/1001. If you specify a whole number, MediaConnect uses a ratio of
-- N\/1. For example, if you specify 60, MediaConnect uses 60\/1 as the
-- exactFramerate.
--
-- 'scanMode', 'fmtp_scanMode' - The type of compression that was used to smooth the video’s appearance
--
-- 'colorimetry', 'fmtp_colorimetry' - The format that is used for the representation of color.
--
-- 'par', 'fmtp_par' - The pixel aspect ratio (PAR) of the video.
--
-- 'range', 'fmtp_range' - The encoding range of the video.
--
-- 'tcs', 'fmtp_tcs' - The transfer characteristic system (TCS) that is used in the video.
--
-- 'channelOrder', 'fmtp_channelOrder' - The format of the audio channel.
newFmtp ::
  Fmtp
newFmtp =
  Fmtp'
    { exactFramerate = Prelude.Nothing,
      scanMode = Prelude.Nothing,
      colorimetry = Prelude.Nothing,
      par = Prelude.Nothing,
      range = Prelude.Nothing,
      tcs = Prelude.Nothing,
      channelOrder = Prelude.Nothing
    }

-- | The frame rate for the video stream, in frames\/second. For example:
-- 60000\/1001. If you specify a whole number, MediaConnect uses a ratio of
-- N\/1. For example, if you specify 60, MediaConnect uses 60\/1 as the
-- exactFramerate.
fmtp_exactFramerate :: Lens.Lens' Fmtp (Prelude.Maybe Prelude.Text)
fmtp_exactFramerate = Lens.lens (\Fmtp' {exactFramerate} -> exactFramerate) (\s@Fmtp' {} a -> s {exactFramerate = a} :: Fmtp)

-- | The type of compression that was used to smooth the video’s appearance
fmtp_scanMode :: Lens.Lens' Fmtp (Prelude.Maybe ScanMode)
fmtp_scanMode = Lens.lens (\Fmtp' {scanMode} -> scanMode) (\s@Fmtp' {} a -> s {scanMode = a} :: Fmtp)

-- | The format that is used for the representation of color.
fmtp_colorimetry :: Lens.Lens' Fmtp (Prelude.Maybe Colorimetry)
fmtp_colorimetry = Lens.lens (\Fmtp' {colorimetry} -> colorimetry) (\s@Fmtp' {} a -> s {colorimetry = a} :: Fmtp)

-- | The pixel aspect ratio (PAR) of the video.
fmtp_par :: Lens.Lens' Fmtp (Prelude.Maybe Prelude.Text)
fmtp_par = Lens.lens (\Fmtp' {par} -> par) (\s@Fmtp' {} a -> s {par = a} :: Fmtp)

-- | The encoding range of the video.
fmtp_range :: Lens.Lens' Fmtp (Prelude.Maybe Range)
fmtp_range = Lens.lens (\Fmtp' {range} -> range) (\s@Fmtp' {} a -> s {range = a} :: Fmtp)

-- | The transfer characteristic system (TCS) that is used in the video.
fmtp_tcs :: Lens.Lens' Fmtp (Prelude.Maybe Tcs)
fmtp_tcs = Lens.lens (\Fmtp' {tcs} -> tcs) (\s@Fmtp' {} a -> s {tcs = a} :: Fmtp)

-- | The format of the audio channel.
fmtp_channelOrder :: Lens.Lens' Fmtp (Prelude.Maybe Prelude.Text)
fmtp_channelOrder = Lens.lens (\Fmtp' {channelOrder} -> channelOrder) (\s@Fmtp' {} a -> s {channelOrder = a} :: Fmtp)

instance Core.FromJSON Fmtp where
  parseJSON =
    Core.withObject
      "Fmtp"
      ( \x ->
          Fmtp'
            Prelude.<$> (x Core..:? "exactFramerate")
            Prelude.<*> (x Core..:? "scanMode")
            Prelude.<*> (x Core..:? "colorimetry")
            Prelude.<*> (x Core..:? "par")
            Prelude.<*> (x Core..:? "range")
            Prelude.<*> (x Core..:? "tcs")
            Prelude.<*> (x Core..:? "channelOrder")
      )

instance Prelude.Hashable Fmtp where
  hashWithSalt _salt Fmtp' {..} =
    _salt `Prelude.hashWithSalt` exactFramerate
      `Prelude.hashWithSalt` scanMode
      `Prelude.hashWithSalt` colorimetry
      `Prelude.hashWithSalt` par
      `Prelude.hashWithSalt` range
      `Prelude.hashWithSalt` tcs
      `Prelude.hashWithSalt` channelOrder

instance Prelude.NFData Fmtp where
  rnf Fmtp' {..} =
    Prelude.rnf exactFramerate
      `Prelude.seq` Prelude.rnf scanMode
      `Prelude.seq` Prelude.rnf colorimetry
      `Prelude.seq` Prelude.rnf par
      `Prelude.seq` Prelude.rnf range
      `Prelude.seq` Prelude.rnf tcs
      `Prelude.seq` Prelude.rnf channelOrder
