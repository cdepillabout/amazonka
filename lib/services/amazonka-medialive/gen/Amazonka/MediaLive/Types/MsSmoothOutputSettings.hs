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
-- Module      : Amazonka.MediaLive.Types.MsSmoothOutputSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaLive.Types.MsSmoothOutputSettings where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MediaLive.Types.MsSmoothH265PackagingType
import qualified Amazonka.Prelude as Prelude

-- | Ms Smooth Output Settings
--
-- /See:/ 'newMsSmoothOutputSettings' smart constructor.
data MsSmoothOutputSettings = MsSmoothOutputSettings'
  { -- | String concatenated to the end of the destination filename. Required for
    -- multiple outputs of the same type.
    nameModifier :: Prelude.Maybe Prelude.Text,
    -- | Only applicable when this output is referencing an H.265 video
    -- description. Specifies whether MP4 segments should be packaged as HEV1
    -- or HVC1.
    h265PackagingType :: Prelude.Maybe MsSmoothH265PackagingType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'MsSmoothOutputSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nameModifier', 'msSmoothOutputSettings_nameModifier' - String concatenated to the end of the destination filename. Required for
-- multiple outputs of the same type.
--
-- 'h265PackagingType', 'msSmoothOutputSettings_h265PackagingType' - Only applicable when this output is referencing an H.265 video
-- description. Specifies whether MP4 segments should be packaged as HEV1
-- or HVC1.
newMsSmoothOutputSettings ::
  MsSmoothOutputSettings
newMsSmoothOutputSettings =
  MsSmoothOutputSettings'
    { nameModifier =
        Prelude.Nothing,
      h265PackagingType = Prelude.Nothing
    }

-- | String concatenated to the end of the destination filename. Required for
-- multiple outputs of the same type.
msSmoothOutputSettings_nameModifier :: Lens.Lens' MsSmoothOutputSettings (Prelude.Maybe Prelude.Text)
msSmoothOutputSettings_nameModifier = Lens.lens (\MsSmoothOutputSettings' {nameModifier} -> nameModifier) (\s@MsSmoothOutputSettings' {} a -> s {nameModifier = a} :: MsSmoothOutputSettings)

-- | Only applicable when this output is referencing an H.265 video
-- description. Specifies whether MP4 segments should be packaged as HEV1
-- or HVC1.
msSmoothOutputSettings_h265PackagingType :: Lens.Lens' MsSmoothOutputSettings (Prelude.Maybe MsSmoothH265PackagingType)
msSmoothOutputSettings_h265PackagingType = Lens.lens (\MsSmoothOutputSettings' {h265PackagingType} -> h265PackagingType) (\s@MsSmoothOutputSettings' {} a -> s {h265PackagingType = a} :: MsSmoothOutputSettings)

instance Core.FromJSON MsSmoothOutputSettings where
  parseJSON =
    Core.withObject
      "MsSmoothOutputSettings"
      ( \x ->
          MsSmoothOutputSettings'
            Prelude.<$> (x Core..:? "nameModifier")
            Prelude.<*> (x Core..:? "h265PackagingType")
      )

instance Prelude.Hashable MsSmoothOutputSettings where
  hashWithSalt _salt MsSmoothOutputSettings' {..} =
    _salt `Prelude.hashWithSalt` nameModifier
      `Prelude.hashWithSalt` h265PackagingType

instance Prelude.NFData MsSmoothOutputSettings where
  rnf MsSmoothOutputSettings' {..} =
    Prelude.rnf nameModifier
      `Prelude.seq` Prelude.rnf h265PackagingType

instance Core.ToJSON MsSmoothOutputSettings where
  toJSON MsSmoothOutputSettings' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("nameModifier" Core..=) Prelude.<$> nameModifier,
            ("h265PackagingType" Core..=)
              Prelude.<$> h265PackagingType
          ]
      )
