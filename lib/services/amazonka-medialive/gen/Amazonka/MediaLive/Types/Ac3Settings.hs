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
-- Module      : Amazonka.MediaLive.Types.Ac3Settings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaLive.Types.Ac3Settings where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MediaLive.Types.Ac3BitstreamMode
import Amazonka.MediaLive.Types.Ac3CodingMode
import Amazonka.MediaLive.Types.Ac3DrcProfile
import Amazonka.MediaLive.Types.Ac3LfeFilter
import Amazonka.MediaLive.Types.Ac3MetadataControl
import qualified Amazonka.Prelude as Prelude

-- | Ac3 Settings
--
-- /See:/ 'newAc3Settings' smart constructor.
data Ac3Settings = Ac3Settings'
  { -- | Specifies the bitstream mode (bsmod) for the emitted AC-3 stream. See
    -- ATSC A\/52-2012 for background on these values.
    bitstreamMode :: Prelude.Maybe Ac3BitstreamMode,
    -- | If set to filmStandard, adds dynamic range compression signaling to the
    -- output bitstream as defined in the Dolby Digital specification.
    drcProfile :: Prelude.Maybe Ac3DrcProfile,
    -- | Average bitrate in bits\/second. Valid bitrates depend on the coding
    -- mode.
    bitrate :: Prelude.Maybe Prelude.Double,
    -- | Sets the dialnorm for the output. If excluded and input audio is Dolby
    -- Digital, dialnorm will be passed through.
    dialnorm :: Prelude.Maybe Prelude.Natural,
    -- | Dolby Digital coding mode. Determines number of channels.
    codingMode :: Prelude.Maybe Ac3CodingMode,
    -- | When set to \"followInput\", encoder metadata will be sourced from the
    -- DD, DD+, or DolbyE decoder that supplied this audio data. If audio was
    -- not supplied from one of these streams, then the static metadata
    -- settings will be used.
    metadataControl :: Prelude.Maybe Ac3MetadataControl,
    -- | When set to enabled, applies a 120Hz lowpass filter to the LFE channel
    -- prior to encoding. Only valid in codingMode32Lfe mode.
    lfeFilter :: Prelude.Maybe Ac3LfeFilter
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Ac3Settings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'bitstreamMode', 'ac3Settings_bitstreamMode' - Specifies the bitstream mode (bsmod) for the emitted AC-3 stream. See
-- ATSC A\/52-2012 for background on these values.
--
-- 'drcProfile', 'ac3Settings_drcProfile' - If set to filmStandard, adds dynamic range compression signaling to the
-- output bitstream as defined in the Dolby Digital specification.
--
-- 'bitrate', 'ac3Settings_bitrate' - Average bitrate in bits\/second. Valid bitrates depend on the coding
-- mode.
--
-- 'dialnorm', 'ac3Settings_dialnorm' - Sets the dialnorm for the output. If excluded and input audio is Dolby
-- Digital, dialnorm will be passed through.
--
-- 'codingMode', 'ac3Settings_codingMode' - Dolby Digital coding mode. Determines number of channels.
--
-- 'metadataControl', 'ac3Settings_metadataControl' - When set to \"followInput\", encoder metadata will be sourced from the
-- DD, DD+, or DolbyE decoder that supplied this audio data. If audio was
-- not supplied from one of these streams, then the static metadata
-- settings will be used.
--
-- 'lfeFilter', 'ac3Settings_lfeFilter' - When set to enabled, applies a 120Hz lowpass filter to the LFE channel
-- prior to encoding. Only valid in codingMode32Lfe mode.
newAc3Settings ::
  Ac3Settings
newAc3Settings =
  Ac3Settings'
    { bitstreamMode = Prelude.Nothing,
      drcProfile = Prelude.Nothing,
      bitrate = Prelude.Nothing,
      dialnorm = Prelude.Nothing,
      codingMode = Prelude.Nothing,
      metadataControl = Prelude.Nothing,
      lfeFilter = Prelude.Nothing
    }

-- | Specifies the bitstream mode (bsmod) for the emitted AC-3 stream. See
-- ATSC A\/52-2012 for background on these values.
ac3Settings_bitstreamMode :: Lens.Lens' Ac3Settings (Prelude.Maybe Ac3BitstreamMode)
ac3Settings_bitstreamMode = Lens.lens (\Ac3Settings' {bitstreamMode} -> bitstreamMode) (\s@Ac3Settings' {} a -> s {bitstreamMode = a} :: Ac3Settings)

-- | If set to filmStandard, adds dynamic range compression signaling to the
-- output bitstream as defined in the Dolby Digital specification.
ac3Settings_drcProfile :: Lens.Lens' Ac3Settings (Prelude.Maybe Ac3DrcProfile)
ac3Settings_drcProfile = Lens.lens (\Ac3Settings' {drcProfile} -> drcProfile) (\s@Ac3Settings' {} a -> s {drcProfile = a} :: Ac3Settings)

-- | Average bitrate in bits\/second. Valid bitrates depend on the coding
-- mode.
ac3Settings_bitrate :: Lens.Lens' Ac3Settings (Prelude.Maybe Prelude.Double)
ac3Settings_bitrate = Lens.lens (\Ac3Settings' {bitrate} -> bitrate) (\s@Ac3Settings' {} a -> s {bitrate = a} :: Ac3Settings)

-- | Sets the dialnorm for the output. If excluded and input audio is Dolby
-- Digital, dialnorm will be passed through.
ac3Settings_dialnorm :: Lens.Lens' Ac3Settings (Prelude.Maybe Prelude.Natural)
ac3Settings_dialnorm = Lens.lens (\Ac3Settings' {dialnorm} -> dialnorm) (\s@Ac3Settings' {} a -> s {dialnorm = a} :: Ac3Settings)

-- | Dolby Digital coding mode. Determines number of channels.
ac3Settings_codingMode :: Lens.Lens' Ac3Settings (Prelude.Maybe Ac3CodingMode)
ac3Settings_codingMode = Lens.lens (\Ac3Settings' {codingMode} -> codingMode) (\s@Ac3Settings' {} a -> s {codingMode = a} :: Ac3Settings)

-- | When set to \"followInput\", encoder metadata will be sourced from the
-- DD, DD+, or DolbyE decoder that supplied this audio data. If audio was
-- not supplied from one of these streams, then the static metadata
-- settings will be used.
ac3Settings_metadataControl :: Lens.Lens' Ac3Settings (Prelude.Maybe Ac3MetadataControl)
ac3Settings_metadataControl = Lens.lens (\Ac3Settings' {metadataControl} -> metadataControl) (\s@Ac3Settings' {} a -> s {metadataControl = a} :: Ac3Settings)

-- | When set to enabled, applies a 120Hz lowpass filter to the LFE channel
-- prior to encoding. Only valid in codingMode32Lfe mode.
ac3Settings_lfeFilter :: Lens.Lens' Ac3Settings (Prelude.Maybe Ac3LfeFilter)
ac3Settings_lfeFilter = Lens.lens (\Ac3Settings' {lfeFilter} -> lfeFilter) (\s@Ac3Settings' {} a -> s {lfeFilter = a} :: Ac3Settings)

instance Core.FromJSON Ac3Settings where
  parseJSON =
    Core.withObject
      "Ac3Settings"
      ( \x ->
          Ac3Settings'
            Prelude.<$> (x Core..:? "bitstreamMode")
            Prelude.<*> (x Core..:? "drcProfile")
            Prelude.<*> (x Core..:? "bitrate")
            Prelude.<*> (x Core..:? "dialnorm")
            Prelude.<*> (x Core..:? "codingMode")
            Prelude.<*> (x Core..:? "metadataControl")
            Prelude.<*> (x Core..:? "lfeFilter")
      )

instance Prelude.Hashable Ac3Settings where
  hashWithSalt _salt Ac3Settings' {..} =
    _salt `Prelude.hashWithSalt` bitstreamMode
      `Prelude.hashWithSalt` drcProfile
      `Prelude.hashWithSalt` bitrate
      `Prelude.hashWithSalt` dialnorm
      `Prelude.hashWithSalt` codingMode
      `Prelude.hashWithSalt` metadataControl
      `Prelude.hashWithSalt` lfeFilter

instance Prelude.NFData Ac3Settings where
  rnf Ac3Settings' {..} =
    Prelude.rnf bitstreamMode
      `Prelude.seq` Prelude.rnf drcProfile
      `Prelude.seq` Prelude.rnf bitrate
      `Prelude.seq` Prelude.rnf dialnorm
      `Prelude.seq` Prelude.rnf codingMode
      `Prelude.seq` Prelude.rnf metadataControl
      `Prelude.seq` Prelude.rnf lfeFilter

instance Core.ToJSON Ac3Settings where
  toJSON Ac3Settings' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("bitstreamMode" Core..=) Prelude.<$> bitstreamMode,
            ("drcProfile" Core..=) Prelude.<$> drcProfile,
            ("bitrate" Core..=) Prelude.<$> bitrate,
            ("dialnorm" Core..=) Prelude.<$> dialnorm,
            ("codingMode" Core..=) Prelude.<$> codingMode,
            ("metadataControl" Core..=)
              Prelude.<$> metadataControl,
            ("lfeFilter" Core..=) Prelude.<$> lfeFilter
          ]
      )
