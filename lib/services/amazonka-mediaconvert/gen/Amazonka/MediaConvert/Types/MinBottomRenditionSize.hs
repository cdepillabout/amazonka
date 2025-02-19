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
-- Module      : Amazonka.MediaConvert.Types.MinBottomRenditionSize
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaConvert.Types.MinBottomRenditionSize where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Use Min bottom rendition size to specify a minimum size for the lowest
-- resolution in your ABR stack. * The lowest resolution in your ABR stack
-- will be equal to or greater than the value that you enter. For example:
-- If you specify 640x360 the lowest resolution in your ABR stack will be
-- equal to or greater than to 640x360. * If you specify a Min top
-- rendition size rule, the value that you specify for Min bottom rendition
-- size must be less than, or equal to, Min top rendition size.
--
-- /See:/ 'newMinBottomRenditionSize' smart constructor.
data MinBottomRenditionSize = MinBottomRenditionSize'
  { -- | Use Width to define the video resolution width, in pixels, for this
    -- rule.
    width :: Prelude.Maybe Prelude.Natural,
    -- | Use Height to define the video resolution height, in pixels, for this
    -- rule.
    height :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'MinBottomRenditionSize' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'width', 'minBottomRenditionSize_width' - Use Width to define the video resolution width, in pixels, for this
-- rule.
--
-- 'height', 'minBottomRenditionSize_height' - Use Height to define the video resolution height, in pixels, for this
-- rule.
newMinBottomRenditionSize ::
  MinBottomRenditionSize
newMinBottomRenditionSize =
  MinBottomRenditionSize'
    { width = Prelude.Nothing,
      height = Prelude.Nothing
    }

-- | Use Width to define the video resolution width, in pixels, for this
-- rule.
minBottomRenditionSize_width :: Lens.Lens' MinBottomRenditionSize (Prelude.Maybe Prelude.Natural)
minBottomRenditionSize_width = Lens.lens (\MinBottomRenditionSize' {width} -> width) (\s@MinBottomRenditionSize' {} a -> s {width = a} :: MinBottomRenditionSize)

-- | Use Height to define the video resolution height, in pixels, for this
-- rule.
minBottomRenditionSize_height :: Lens.Lens' MinBottomRenditionSize (Prelude.Maybe Prelude.Natural)
minBottomRenditionSize_height = Lens.lens (\MinBottomRenditionSize' {height} -> height) (\s@MinBottomRenditionSize' {} a -> s {height = a} :: MinBottomRenditionSize)

instance Core.FromJSON MinBottomRenditionSize where
  parseJSON =
    Core.withObject
      "MinBottomRenditionSize"
      ( \x ->
          MinBottomRenditionSize'
            Prelude.<$> (x Core..:? "width")
            Prelude.<*> (x Core..:? "height")
      )

instance Prelude.Hashable MinBottomRenditionSize where
  hashWithSalt _salt MinBottomRenditionSize' {..} =
    _salt `Prelude.hashWithSalt` width
      `Prelude.hashWithSalt` height

instance Prelude.NFData MinBottomRenditionSize where
  rnf MinBottomRenditionSize' {..} =
    Prelude.rnf width `Prelude.seq` Prelude.rnf height

instance Core.ToJSON MinBottomRenditionSize where
  toJSON MinBottomRenditionSize' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("width" Core..=) Prelude.<$> width,
            ("height" Core..=) Prelude.<$> height
          ]
      )
