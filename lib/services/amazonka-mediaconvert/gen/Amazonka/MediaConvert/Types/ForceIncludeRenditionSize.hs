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
-- Module      : Amazonka.MediaConvert.Types.ForceIncludeRenditionSize
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaConvert.Types.ForceIncludeRenditionSize where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Use Force include renditions to specify one or more resolutions to
-- include your ABR stack. * (Recommended) To optimize automated ABR,
-- specify as few resolutions as possible. * (Required) The number of
-- resolutions that you specify must be equal to, or less than, the Max
-- renditions setting. * If you specify a Min top rendition size rule,
-- specify at least one resolution that is equal to, or greater than, Min
-- top rendition size. * If you specify a Min bottom rendition size rule,
-- only specify resolutions that are equal to, or greater than, Min bottom
-- rendition size. * If you specify a Force include renditions rule, do not
-- specify a separate rule for Allowed renditions. * Note: The ABR stack
-- may include other resolutions that you do not specify here, depending on
-- the Max renditions setting.
--
-- /See:/ 'newForceIncludeRenditionSize' smart constructor.
data ForceIncludeRenditionSize = ForceIncludeRenditionSize'
  { -- | Use Width to define the video resolution width, in pixels, for this
    -- rule.
    width :: Prelude.Maybe Prelude.Natural,
    -- | Use Height to define the video resolution height, in pixels, for this
    -- rule.
    height :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ForceIncludeRenditionSize' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'width', 'forceIncludeRenditionSize_width' - Use Width to define the video resolution width, in pixels, for this
-- rule.
--
-- 'height', 'forceIncludeRenditionSize_height' - Use Height to define the video resolution height, in pixels, for this
-- rule.
newForceIncludeRenditionSize ::
  ForceIncludeRenditionSize
newForceIncludeRenditionSize =
  ForceIncludeRenditionSize'
    { width = Prelude.Nothing,
      height = Prelude.Nothing
    }

-- | Use Width to define the video resolution width, in pixels, for this
-- rule.
forceIncludeRenditionSize_width :: Lens.Lens' ForceIncludeRenditionSize (Prelude.Maybe Prelude.Natural)
forceIncludeRenditionSize_width = Lens.lens (\ForceIncludeRenditionSize' {width} -> width) (\s@ForceIncludeRenditionSize' {} a -> s {width = a} :: ForceIncludeRenditionSize)

-- | Use Height to define the video resolution height, in pixels, for this
-- rule.
forceIncludeRenditionSize_height :: Lens.Lens' ForceIncludeRenditionSize (Prelude.Maybe Prelude.Natural)
forceIncludeRenditionSize_height = Lens.lens (\ForceIncludeRenditionSize' {height} -> height) (\s@ForceIncludeRenditionSize' {} a -> s {height = a} :: ForceIncludeRenditionSize)

instance Core.FromJSON ForceIncludeRenditionSize where
  parseJSON =
    Core.withObject
      "ForceIncludeRenditionSize"
      ( \x ->
          ForceIncludeRenditionSize'
            Prelude.<$> (x Core..:? "width")
            Prelude.<*> (x Core..:? "height")
      )

instance Prelude.Hashable ForceIncludeRenditionSize where
  hashWithSalt _salt ForceIncludeRenditionSize' {..} =
    _salt `Prelude.hashWithSalt` width
      `Prelude.hashWithSalt` height

instance Prelude.NFData ForceIncludeRenditionSize where
  rnf ForceIncludeRenditionSize' {..} =
    Prelude.rnf width `Prelude.seq` Prelude.rnf height

instance Core.ToJSON ForceIncludeRenditionSize where
  toJSON ForceIncludeRenditionSize' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("width" Core..=) Prelude.<$> width,
            ("height" Core..=) Prelude.<$> height
          ]
      )
