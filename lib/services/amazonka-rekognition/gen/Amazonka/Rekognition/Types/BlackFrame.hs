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
-- Module      : Amazonka.Rekognition.Types.BlackFrame
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Rekognition.Types.BlackFrame where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A filter that allows you to control the black frame detection by
-- specifying the black levels and pixel coverage of black pixels in a
-- frame. As videos can come from multiple sources, formats, and time
-- periods, they may contain different standards and varying noise levels
-- for black frames that need to be accounted for. For more information,
-- see StartSegmentDetection.
--
-- /See:/ 'newBlackFrame' smart constructor.
data BlackFrame = BlackFrame'
  { -- | The minimum percentage of pixels in a frame that need to have a
    -- luminance below the max_black_pixel_value for a frame to be considered a
    -- black frame. Luminance is calculated using the BT.709 matrix.
    --
    -- The default value is 99, which means at least 99% of all pixels in the
    -- frame are black pixels as per the @MaxPixelThreshold@ set. You can
    -- reduce this value to allow more noise on the black frame.
    minCoveragePercentage :: Prelude.Maybe Prelude.Double,
    -- | A threshold used to determine the maximum luminance value for a pixel to
    -- be considered black. In a full color range video, luminance values range
    -- from 0-255. A pixel value of 0 is pure black, and the most strict
    -- filter. The maximum black pixel value is computed as follows:
    -- max_black_pixel_value = minimum_luminance + MaxPixelThreshold
    -- *luminance_range.
    --
    -- For example, for a full range video with BlackPixelThreshold = 0.1,
    -- max_black_pixel_value is 0 + 0.1 * (255-0) = 25.5.
    --
    -- The default value of MaxPixelThreshold is 0.2, which maps to a
    -- max_black_pixel_value of 51 for a full range video. You can lower this
    -- threshold to be more strict on black levels.
    maxPixelThreshold :: Prelude.Maybe Prelude.Double
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BlackFrame' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'minCoveragePercentage', 'blackFrame_minCoveragePercentage' - The minimum percentage of pixels in a frame that need to have a
-- luminance below the max_black_pixel_value for a frame to be considered a
-- black frame. Luminance is calculated using the BT.709 matrix.
--
-- The default value is 99, which means at least 99% of all pixels in the
-- frame are black pixels as per the @MaxPixelThreshold@ set. You can
-- reduce this value to allow more noise on the black frame.
--
-- 'maxPixelThreshold', 'blackFrame_maxPixelThreshold' - A threshold used to determine the maximum luminance value for a pixel to
-- be considered black. In a full color range video, luminance values range
-- from 0-255. A pixel value of 0 is pure black, and the most strict
-- filter. The maximum black pixel value is computed as follows:
-- max_black_pixel_value = minimum_luminance + MaxPixelThreshold
-- *luminance_range.
--
-- For example, for a full range video with BlackPixelThreshold = 0.1,
-- max_black_pixel_value is 0 + 0.1 * (255-0) = 25.5.
--
-- The default value of MaxPixelThreshold is 0.2, which maps to a
-- max_black_pixel_value of 51 for a full range video. You can lower this
-- threshold to be more strict on black levels.
newBlackFrame ::
  BlackFrame
newBlackFrame =
  BlackFrame'
    { minCoveragePercentage =
        Prelude.Nothing,
      maxPixelThreshold = Prelude.Nothing
    }

-- | The minimum percentage of pixels in a frame that need to have a
-- luminance below the max_black_pixel_value for a frame to be considered a
-- black frame. Luminance is calculated using the BT.709 matrix.
--
-- The default value is 99, which means at least 99% of all pixels in the
-- frame are black pixels as per the @MaxPixelThreshold@ set. You can
-- reduce this value to allow more noise on the black frame.
blackFrame_minCoveragePercentage :: Lens.Lens' BlackFrame (Prelude.Maybe Prelude.Double)
blackFrame_minCoveragePercentage = Lens.lens (\BlackFrame' {minCoveragePercentage} -> minCoveragePercentage) (\s@BlackFrame' {} a -> s {minCoveragePercentage = a} :: BlackFrame)

-- | A threshold used to determine the maximum luminance value for a pixel to
-- be considered black. In a full color range video, luminance values range
-- from 0-255. A pixel value of 0 is pure black, and the most strict
-- filter. The maximum black pixel value is computed as follows:
-- max_black_pixel_value = minimum_luminance + MaxPixelThreshold
-- *luminance_range.
--
-- For example, for a full range video with BlackPixelThreshold = 0.1,
-- max_black_pixel_value is 0 + 0.1 * (255-0) = 25.5.
--
-- The default value of MaxPixelThreshold is 0.2, which maps to a
-- max_black_pixel_value of 51 for a full range video. You can lower this
-- threshold to be more strict on black levels.
blackFrame_maxPixelThreshold :: Lens.Lens' BlackFrame (Prelude.Maybe Prelude.Double)
blackFrame_maxPixelThreshold = Lens.lens (\BlackFrame' {maxPixelThreshold} -> maxPixelThreshold) (\s@BlackFrame' {} a -> s {maxPixelThreshold = a} :: BlackFrame)

instance Prelude.Hashable BlackFrame where
  hashWithSalt _salt BlackFrame' {..} =
    _salt `Prelude.hashWithSalt` minCoveragePercentage
      `Prelude.hashWithSalt` maxPixelThreshold

instance Prelude.NFData BlackFrame where
  rnf BlackFrame' {..} =
    Prelude.rnf minCoveragePercentage
      `Prelude.seq` Prelude.rnf maxPixelThreshold

instance Core.ToJSON BlackFrame where
  toJSON BlackFrame' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("MinCoveragePercentage" Core..=)
              Prelude.<$> minCoveragePercentage,
            ("MaxPixelThreshold" Core..=)
              Prelude.<$> maxPixelThreshold
          ]
      )
