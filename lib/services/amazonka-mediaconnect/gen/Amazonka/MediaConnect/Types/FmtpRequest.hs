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
-- Module      : Amazonka.MediaConnect.Types.FmtpRequest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaConnect.Types.FmtpRequest where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MediaConnect.Types.Colorimetry
import Amazonka.MediaConnect.Types.Range
import Amazonka.MediaConnect.Types.ScanMode
import Amazonka.MediaConnect.Types.Tcs
import qualified Amazonka.Prelude as Prelude

-- | The settings that you want to use to define the media stream.
--
-- /See:/ 'newFmtpRequest' smart constructor.
data FmtpRequest = FmtpRequest'
  { -- | The frame rate for the video stream, in frames\/second. For example:
    -- 60000\/1001. If you specify a whole number, MediaConnect uses a ratio of
    -- N\/1. For example, if you specify 60, MediaConnect uses 60\/1 as the
    -- exactFramerate.
    exactFramerate :: Prelude.Maybe Prelude.Text,
    -- | The type of compression that was used to smooth the video’s appearance.
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
-- Create a value of 'FmtpRequest' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'exactFramerate', 'fmtpRequest_exactFramerate' - The frame rate for the video stream, in frames\/second. For example:
-- 60000\/1001. If you specify a whole number, MediaConnect uses a ratio of
-- N\/1. For example, if you specify 60, MediaConnect uses 60\/1 as the
-- exactFramerate.
--
-- 'scanMode', 'fmtpRequest_scanMode' - The type of compression that was used to smooth the video’s appearance.
--
-- 'colorimetry', 'fmtpRequest_colorimetry' - The format that is used for the representation of color.
--
-- 'par', 'fmtpRequest_par' - The pixel aspect ratio (PAR) of the video.
--
-- 'range', 'fmtpRequest_range' - The encoding range of the video.
--
-- 'tcs', 'fmtpRequest_tcs' - The transfer characteristic system (TCS) that is used in the video.
--
-- 'channelOrder', 'fmtpRequest_channelOrder' - The format of the audio channel.
newFmtpRequest ::
  FmtpRequest
newFmtpRequest =
  FmtpRequest'
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
fmtpRequest_exactFramerate :: Lens.Lens' FmtpRequest (Prelude.Maybe Prelude.Text)
fmtpRequest_exactFramerate = Lens.lens (\FmtpRequest' {exactFramerate} -> exactFramerate) (\s@FmtpRequest' {} a -> s {exactFramerate = a} :: FmtpRequest)

-- | The type of compression that was used to smooth the video’s appearance.
fmtpRequest_scanMode :: Lens.Lens' FmtpRequest (Prelude.Maybe ScanMode)
fmtpRequest_scanMode = Lens.lens (\FmtpRequest' {scanMode} -> scanMode) (\s@FmtpRequest' {} a -> s {scanMode = a} :: FmtpRequest)

-- | The format that is used for the representation of color.
fmtpRequest_colorimetry :: Lens.Lens' FmtpRequest (Prelude.Maybe Colorimetry)
fmtpRequest_colorimetry = Lens.lens (\FmtpRequest' {colorimetry} -> colorimetry) (\s@FmtpRequest' {} a -> s {colorimetry = a} :: FmtpRequest)

-- | The pixel aspect ratio (PAR) of the video.
fmtpRequest_par :: Lens.Lens' FmtpRequest (Prelude.Maybe Prelude.Text)
fmtpRequest_par = Lens.lens (\FmtpRequest' {par} -> par) (\s@FmtpRequest' {} a -> s {par = a} :: FmtpRequest)

-- | The encoding range of the video.
fmtpRequest_range :: Lens.Lens' FmtpRequest (Prelude.Maybe Range)
fmtpRequest_range = Lens.lens (\FmtpRequest' {range} -> range) (\s@FmtpRequest' {} a -> s {range = a} :: FmtpRequest)

-- | The transfer characteristic system (TCS) that is used in the video.
fmtpRequest_tcs :: Lens.Lens' FmtpRequest (Prelude.Maybe Tcs)
fmtpRequest_tcs = Lens.lens (\FmtpRequest' {tcs} -> tcs) (\s@FmtpRequest' {} a -> s {tcs = a} :: FmtpRequest)

-- | The format of the audio channel.
fmtpRequest_channelOrder :: Lens.Lens' FmtpRequest (Prelude.Maybe Prelude.Text)
fmtpRequest_channelOrder = Lens.lens (\FmtpRequest' {channelOrder} -> channelOrder) (\s@FmtpRequest' {} a -> s {channelOrder = a} :: FmtpRequest)

instance Prelude.Hashable FmtpRequest where
  hashWithSalt _salt FmtpRequest' {..} =
    _salt `Prelude.hashWithSalt` exactFramerate
      `Prelude.hashWithSalt` scanMode
      `Prelude.hashWithSalt` colorimetry
      `Prelude.hashWithSalt` par
      `Prelude.hashWithSalt` range
      `Prelude.hashWithSalt` tcs
      `Prelude.hashWithSalt` channelOrder

instance Prelude.NFData FmtpRequest where
  rnf FmtpRequest' {..} =
    Prelude.rnf exactFramerate
      `Prelude.seq` Prelude.rnf scanMode
      `Prelude.seq` Prelude.rnf colorimetry
      `Prelude.seq` Prelude.rnf par
      `Prelude.seq` Prelude.rnf range
      `Prelude.seq` Prelude.rnf tcs
      `Prelude.seq` Prelude.rnf channelOrder

instance Core.ToJSON FmtpRequest where
  toJSON FmtpRequest' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("exactFramerate" Core..=)
              Prelude.<$> exactFramerate,
            ("scanMode" Core..=) Prelude.<$> scanMode,
            ("colorimetry" Core..=) Prelude.<$> colorimetry,
            ("par" Core..=) Prelude.<$> par,
            ("range" Core..=) Prelude.<$> range,
            ("tcs" Core..=) Prelude.<$> tcs,
            ("channelOrder" Core..=) Prelude.<$> channelOrder
          ]
      )
