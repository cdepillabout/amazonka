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
-- Module      : Amazonka.MediaLive.Types.HlsOutputSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaLive.Types.HlsOutputSettings where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MediaLive.Types.HlsH265PackagingType
import Amazonka.MediaLive.Types.HlsSettings
import qualified Amazonka.Prelude as Prelude

-- | Hls Output Settings
--
-- /See:/ 'newHlsOutputSettings' smart constructor.
data HlsOutputSettings = HlsOutputSettings'
  { -- | String concatenated to the end of the destination filename. Accepts
    -- \\\"Format Identifiers\\\":#formatIdentifierParameters.
    nameModifier :: Prelude.Maybe Prelude.Text,
    -- | String concatenated to end of segment filenames.
    segmentModifier :: Prelude.Maybe Prelude.Text,
    -- | Only applicable when this output is referencing an H.265 video
    -- description. Specifies whether MP4 segments should be packaged as HEV1
    -- or HVC1.
    h265PackagingType :: Prelude.Maybe HlsH265PackagingType,
    -- | Settings regarding the underlying stream. These settings are different
    -- for audio-only outputs.
    hlsSettings :: HlsSettings
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'HlsOutputSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nameModifier', 'hlsOutputSettings_nameModifier' - String concatenated to the end of the destination filename. Accepts
-- \\\"Format Identifiers\\\":#formatIdentifierParameters.
--
-- 'segmentModifier', 'hlsOutputSettings_segmentModifier' - String concatenated to end of segment filenames.
--
-- 'h265PackagingType', 'hlsOutputSettings_h265PackagingType' - Only applicable when this output is referencing an H.265 video
-- description. Specifies whether MP4 segments should be packaged as HEV1
-- or HVC1.
--
-- 'hlsSettings', 'hlsOutputSettings_hlsSettings' - Settings regarding the underlying stream. These settings are different
-- for audio-only outputs.
newHlsOutputSettings ::
  -- | 'hlsSettings'
  HlsSettings ->
  HlsOutputSettings
newHlsOutputSettings pHlsSettings_ =
  HlsOutputSettings'
    { nameModifier = Prelude.Nothing,
      segmentModifier = Prelude.Nothing,
      h265PackagingType = Prelude.Nothing,
      hlsSettings = pHlsSettings_
    }

-- | String concatenated to the end of the destination filename. Accepts
-- \\\"Format Identifiers\\\":#formatIdentifierParameters.
hlsOutputSettings_nameModifier :: Lens.Lens' HlsOutputSettings (Prelude.Maybe Prelude.Text)
hlsOutputSettings_nameModifier = Lens.lens (\HlsOutputSettings' {nameModifier} -> nameModifier) (\s@HlsOutputSettings' {} a -> s {nameModifier = a} :: HlsOutputSettings)

-- | String concatenated to end of segment filenames.
hlsOutputSettings_segmentModifier :: Lens.Lens' HlsOutputSettings (Prelude.Maybe Prelude.Text)
hlsOutputSettings_segmentModifier = Lens.lens (\HlsOutputSettings' {segmentModifier} -> segmentModifier) (\s@HlsOutputSettings' {} a -> s {segmentModifier = a} :: HlsOutputSettings)

-- | Only applicable when this output is referencing an H.265 video
-- description. Specifies whether MP4 segments should be packaged as HEV1
-- or HVC1.
hlsOutputSettings_h265PackagingType :: Lens.Lens' HlsOutputSettings (Prelude.Maybe HlsH265PackagingType)
hlsOutputSettings_h265PackagingType = Lens.lens (\HlsOutputSettings' {h265PackagingType} -> h265PackagingType) (\s@HlsOutputSettings' {} a -> s {h265PackagingType = a} :: HlsOutputSettings)

-- | Settings regarding the underlying stream. These settings are different
-- for audio-only outputs.
hlsOutputSettings_hlsSettings :: Lens.Lens' HlsOutputSettings HlsSettings
hlsOutputSettings_hlsSettings = Lens.lens (\HlsOutputSettings' {hlsSettings} -> hlsSettings) (\s@HlsOutputSettings' {} a -> s {hlsSettings = a} :: HlsOutputSettings)

instance Core.FromJSON HlsOutputSettings where
  parseJSON =
    Core.withObject
      "HlsOutputSettings"
      ( \x ->
          HlsOutputSettings'
            Prelude.<$> (x Core..:? "nameModifier")
            Prelude.<*> (x Core..:? "segmentModifier")
            Prelude.<*> (x Core..:? "h265PackagingType")
            Prelude.<*> (x Core..: "hlsSettings")
      )

instance Prelude.Hashable HlsOutputSettings where
  hashWithSalt _salt HlsOutputSettings' {..} =
    _salt `Prelude.hashWithSalt` nameModifier
      `Prelude.hashWithSalt` segmentModifier
      `Prelude.hashWithSalt` h265PackagingType
      `Prelude.hashWithSalt` hlsSettings

instance Prelude.NFData HlsOutputSettings where
  rnf HlsOutputSettings' {..} =
    Prelude.rnf nameModifier
      `Prelude.seq` Prelude.rnf segmentModifier
      `Prelude.seq` Prelude.rnf h265PackagingType
      `Prelude.seq` Prelude.rnf hlsSettings

instance Core.ToJSON HlsOutputSettings where
  toJSON HlsOutputSettings' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("nameModifier" Core..=) Prelude.<$> nameModifier,
            ("segmentModifier" Core..=)
              Prelude.<$> segmentModifier,
            ("h265PackagingType" Core..=)
              Prelude.<$> h265PackagingType,
            Prelude.Just ("hlsSettings" Core..= hlsSettings)
          ]
      )
