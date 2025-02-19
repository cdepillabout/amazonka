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
-- Module      : Amazonka.MediaLive.Types.H265ColorSpaceSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaLive.Types.H265ColorSpaceSettings where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MediaLive.Types.ColorSpacePassthroughSettings
import Amazonka.MediaLive.Types.Hdr10Settings
import Amazonka.MediaLive.Types.Rec601Settings
import Amazonka.MediaLive.Types.Rec709Settings
import qualified Amazonka.Prelude as Prelude

-- | H265 Color Space Settings
--
-- /See:/ 'newH265ColorSpaceSettings' smart constructor.
data H265ColorSpaceSettings = H265ColorSpaceSettings'
  { colorSpacePassthroughSettings :: Prelude.Maybe ColorSpacePassthroughSettings,
    rec601Settings :: Prelude.Maybe Rec601Settings,
    hdr10Settings :: Prelude.Maybe Hdr10Settings,
    rec709Settings :: Prelude.Maybe Rec709Settings
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'H265ColorSpaceSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'colorSpacePassthroughSettings', 'h265ColorSpaceSettings_colorSpacePassthroughSettings' - Undocumented member.
--
-- 'rec601Settings', 'h265ColorSpaceSettings_rec601Settings' - Undocumented member.
--
-- 'hdr10Settings', 'h265ColorSpaceSettings_hdr10Settings' - Undocumented member.
--
-- 'rec709Settings', 'h265ColorSpaceSettings_rec709Settings' - Undocumented member.
newH265ColorSpaceSettings ::
  H265ColorSpaceSettings
newH265ColorSpaceSettings =
  H265ColorSpaceSettings'
    { colorSpacePassthroughSettings =
        Prelude.Nothing,
      rec601Settings = Prelude.Nothing,
      hdr10Settings = Prelude.Nothing,
      rec709Settings = Prelude.Nothing
    }

-- | Undocumented member.
h265ColorSpaceSettings_colorSpacePassthroughSettings :: Lens.Lens' H265ColorSpaceSettings (Prelude.Maybe ColorSpacePassthroughSettings)
h265ColorSpaceSettings_colorSpacePassthroughSettings = Lens.lens (\H265ColorSpaceSettings' {colorSpacePassthroughSettings} -> colorSpacePassthroughSettings) (\s@H265ColorSpaceSettings' {} a -> s {colorSpacePassthroughSettings = a} :: H265ColorSpaceSettings)

-- | Undocumented member.
h265ColorSpaceSettings_rec601Settings :: Lens.Lens' H265ColorSpaceSettings (Prelude.Maybe Rec601Settings)
h265ColorSpaceSettings_rec601Settings = Lens.lens (\H265ColorSpaceSettings' {rec601Settings} -> rec601Settings) (\s@H265ColorSpaceSettings' {} a -> s {rec601Settings = a} :: H265ColorSpaceSettings)

-- | Undocumented member.
h265ColorSpaceSettings_hdr10Settings :: Lens.Lens' H265ColorSpaceSettings (Prelude.Maybe Hdr10Settings)
h265ColorSpaceSettings_hdr10Settings = Lens.lens (\H265ColorSpaceSettings' {hdr10Settings} -> hdr10Settings) (\s@H265ColorSpaceSettings' {} a -> s {hdr10Settings = a} :: H265ColorSpaceSettings)

-- | Undocumented member.
h265ColorSpaceSettings_rec709Settings :: Lens.Lens' H265ColorSpaceSettings (Prelude.Maybe Rec709Settings)
h265ColorSpaceSettings_rec709Settings = Lens.lens (\H265ColorSpaceSettings' {rec709Settings} -> rec709Settings) (\s@H265ColorSpaceSettings' {} a -> s {rec709Settings = a} :: H265ColorSpaceSettings)

instance Core.FromJSON H265ColorSpaceSettings where
  parseJSON =
    Core.withObject
      "H265ColorSpaceSettings"
      ( \x ->
          H265ColorSpaceSettings'
            Prelude.<$> (x Core..:? "colorSpacePassthroughSettings")
            Prelude.<*> (x Core..:? "rec601Settings")
            Prelude.<*> (x Core..:? "hdr10Settings")
            Prelude.<*> (x Core..:? "rec709Settings")
      )

instance Prelude.Hashable H265ColorSpaceSettings where
  hashWithSalt _salt H265ColorSpaceSettings' {..} =
    _salt
      `Prelude.hashWithSalt` colorSpacePassthroughSettings
      `Prelude.hashWithSalt` rec601Settings
      `Prelude.hashWithSalt` hdr10Settings
      `Prelude.hashWithSalt` rec709Settings

instance Prelude.NFData H265ColorSpaceSettings where
  rnf H265ColorSpaceSettings' {..} =
    Prelude.rnf colorSpacePassthroughSettings
      `Prelude.seq` Prelude.rnf rec601Settings
      `Prelude.seq` Prelude.rnf hdr10Settings
      `Prelude.seq` Prelude.rnf rec709Settings

instance Core.ToJSON H265ColorSpaceSettings where
  toJSON H265ColorSpaceSettings' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("colorSpacePassthroughSettings" Core..=)
              Prelude.<$> colorSpacePassthroughSettings,
            ("rec601Settings" Core..=)
              Prelude.<$> rec601Settings,
            ("hdr10Settings" Core..=) Prelude.<$> hdr10Settings,
            ("rec709Settings" Core..=)
              Prelude.<$> rec709Settings
          ]
      )
