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
-- Module      : Amazonka.MediaConvert.Types.Preset
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaConvert.Types.Preset where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MediaConvert.Types.PresetSettings
import Amazonka.MediaConvert.Types.Type
import qualified Amazonka.Prelude as Prelude

-- | A preset is a collection of preconfigured media conversion settings that
-- you want MediaConvert to apply to the output during the conversion
-- process.
--
-- /See:/ 'newPreset' smart constructor.
data Preset = Preset'
  { -- | A preset can be of two types: system or custom. System or built-in
    -- preset can\'t be modified or deleted by the user.
    type' :: Prelude.Maybe Type,
    -- | An identifier for this resource that is unique within all of AWS.
    arn :: Prelude.Maybe Prelude.Text,
    -- | An optional description you create for each preset.
    description :: Prelude.Maybe Prelude.Text,
    -- | The timestamp in epoch seconds when the preset was last updated.
    lastUpdated :: Prelude.Maybe Core.POSIX,
    -- | An optional category you create to organize your presets.
    category :: Prelude.Maybe Prelude.Text,
    -- | The timestamp in epoch seconds for preset creation.
    createdAt :: Prelude.Maybe Core.POSIX,
    -- | Settings for preset
    settings :: PresetSettings,
    -- | A name you create for each preset. Each name must be unique within your
    -- account.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Preset' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'type'', 'preset_type' - A preset can be of two types: system or custom. System or built-in
-- preset can\'t be modified or deleted by the user.
--
-- 'arn', 'preset_arn' - An identifier for this resource that is unique within all of AWS.
--
-- 'description', 'preset_description' - An optional description you create for each preset.
--
-- 'lastUpdated', 'preset_lastUpdated' - The timestamp in epoch seconds when the preset was last updated.
--
-- 'category', 'preset_category' - An optional category you create to organize your presets.
--
-- 'createdAt', 'preset_createdAt' - The timestamp in epoch seconds for preset creation.
--
-- 'settings', 'preset_settings' - Settings for preset
--
-- 'name', 'preset_name' - A name you create for each preset. Each name must be unique within your
-- account.
newPreset ::
  -- | 'settings'
  PresetSettings ->
  -- | 'name'
  Prelude.Text ->
  Preset
newPreset pSettings_ pName_ =
  Preset'
    { type' = Prelude.Nothing,
      arn = Prelude.Nothing,
      description = Prelude.Nothing,
      lastUpdated = Prelude.Nothing,
      category = Prelude.Nothing,
      createdAt = Prelude.Nothing,
      settings = pSettings_,
      name = pName_
    }

-- | A preset can be of two types: system or custom. System or built-in
-- preset can\'t be modified or deleted by the user.
preset_type :: Lens.Lens' Preset (Prelude.Maybe Type)
preset_type = Lens.lens (\Preset' {type'} -> type') (\s@Preset' {} a -> s {type' = a} :: Preset)

-- | An identifier for this resource that is unique within all of AWS.
preset_arn :: Lens.Lens' Preset (Prelude.Maybe Prelude.Text)
preset_arn = Lens.lens (\Preset' {arn} -> arn) (\s@Preset' {} a -> s {arn = a} :: Preset)

-- | An optional description you create for each preset.
preset_description :: Lens.Lens' Preset (Prelude.Maybe Prelude.Text)
preset_description = Lens.lens (\Preset' {description} -> description) (\s@Preset' {} a -> s {description = a} :: Preset)

-- | The timestamp in epoch seconds when the preset was last updated.
preset_lastUpdated :: Lens.Lens' Preset (Prelude.Maybe Prelude.UTCTime)
preset_lastUpdated = Lens.lens (\Preset' {lastUpdated} -> lastUpdated) (\s@Preset' {} a -> s {lastUpdated = a} :: Preset) Prelude.. Lens.mapping Core._Time

-- | An optional category you create to organize your presets.
preset_category :: Lens.Lens' Preset (Prelude.Maybe Prelude.Text)
preset_category = Lens.lens (\Preset' {category} -> category) (\s@Preset' {} a -> s {category = a} :: Preset)

-- | The timestamp in epoch seconds for preset creation.
preset_createdAt :: Lens.Lens' Preset (Prelude.Maybe Prelude.UTCTime)
preset_createdAt = Lens.lens (\Preset' {createdAt} -> createdAt) (\s@Preset' {} a -> s {createdAt = a} :: Preset) Prelude.. Lens.mapping Core._Time

-- | Settings for preset
preset_settings :: Lens.Lens' Preset PresetSettings
preset_settings = Lens.lens (\Preset' {settings} -> settings) (\s@Preset' {} a -> s {settings = a} :: Preset)

-- | A name you create for each preset. Each name must be unique within your
-- account.
preset_name :: Lens.Lens' Preset Prelude.Text
preset_name = Lens.lens (\Preset' {name} -> name) (\s@Preset' {} a -> s {name = a} :: Preset)

instance Core.FromJSON Preset where
  parseJSON =
    Core.withObject
      "Preset"
      ( \x ->
          Preset'
            Prelude.<$> (x Core..:? "type")
            Prelude.<*> (x Core..:? "arn")
            Prelude.<*> (x Core..:? "description")
            Prelude.<*> (x Core..:? "lastUpdated")
            Prelude.<*> (x Core..:? "category")
            Prelude.<*> (x Core..:? "createdAt")
            Prelude.<*> (x Core..: "settings")
            Prelude.<*> (x Core..: "name")
      )

instance Prelude.Hashable Preset where
  hashWithSalt _salt Preset' {..} =
    _salt `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` arn
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` lastUpdated
      `Prelude.hashWithSalt` category
      `Prelude.hashWithSalt` createdAt
      `Prelude.hashWithSalt` settings
      `Prelude.hashWithSalt` name

instance Prelude.NFData Preset where
  rnf Preset' {..} =
    Prelude.rnf type'
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf lastUpdated
      `Prelude.seq` Prelude.rnf category
      `Prelude.seq` Prelude.rnf createdAt
      `Prelude.seq` Prelude.rnf settings
      `Prelude.seq` Prelude.rnf name
