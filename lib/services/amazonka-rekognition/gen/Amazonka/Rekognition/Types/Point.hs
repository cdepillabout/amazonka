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
-- Module      : Amazonka.Rekognition.Types.Point
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Rekognition.Types.Point where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The X and Y coordinates of a point on an image or video frame. The X and
-- Y values are ratios of the overall image size or video resolution. For
-- example, if an input image is 700x200 and the values are X=0.5 and
-- Y=0.25, then the point is at the (350,50) pixel coordinate on the image.
--
-- An array of @Point@ objects makes up a @Polygon@. A @Polygon@ is
-- returned by DetectText and by DetectCustomLabels @Polygon@ represents a
-- fine-grained polygon around a detected item. For more information, see
-- Geometry in the Amazon Rekognition Developer Guide.
--
-- /See:/ 'newPoint' smart constructor.
data Point = Point'
  { -- | The value of the X coordinate for a point on a @Polygon@.
    x :: Prelude.Maybe Prelude.Double,
    -- | The value of the Y coordinate for a point on a @Polygon@.
    y :: Prelude.Maybe Prelude.Double
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Point' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'x', 'point_x' - The value of the X coordinate for a point on a @Polygon@.
--
-- 'y', 'point_y' - The value of the Y coordinate for a point on a @Polygon@.
newPoint ::
  Point
newPoint =
  Point' {x = Prelude.Nothing, y = Prelude.Nothing}

-- | The value of the X coordinate for a point on a @Polygon@.
point_x :: Lens.Lens' Point (Prelude.Maybe Prelude.Double)
point_x = Lens.lens (\Point' {x} -> x) (\s@Point' {} a -> s {x = a} :: Point)

-- | The value of the Y coordinate for a point on a @Polygon@.
point_y :: Lens.Lens' Point (Prelude.Maybe Prelude.Double)
point_y = Lens.lens (\Point' {y} -> y) (\s@Point' {} a -> s {y = a} :: Point)

instance Core.FromJSON Point where
  parseJSON =
    Core.withObject
      "Point"
      ( \x ->
          Point'
            Prelude.<$> (x Core..:? "X") Prelude.<*> (x Core..:? "Y")
      )

instance Prelude.Hashable Point where
  hashWithSalt _salt Point' {..} =
    _salt `Prelude.hashWithSalt` x
      `Prelude.hashWithSalt` y

instance Prelude.NFData Point where
  rnf Point' {..} =
    Prelude.rnf x `Prelude.seq` Prelude.rnf y

instance Core.ToJSON Point where
  toJSON Point' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("X" Core..=) Prelude.<$> x,
            ("Y" Core..=) Prelude.<$> y
          ]
      )
