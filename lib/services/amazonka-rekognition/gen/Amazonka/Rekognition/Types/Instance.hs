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
-- Module      : Amazonka.Rekognition.Types.Instance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Rekognition.Types.Instance where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.Rekognition.Types.BoundingBox

-- | An instance of a label returned by Amazon Rekognition Image
-- (DetectLabels) or by Amazon Rekognition Video (GetLabelDetection).
--
-- /See:/ 'newInstance' smart constructor.
data Instance = Instance'
  { -- | The confidence that Amazon Rekognition has in the accuracy of the
    -- bounding box.
    confidence :: Prelude.Maybe Prelude.Double,
    -- | The position of the label instance on the image.
    boundingBox :: Prelude.Maybe BoundingBox
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Instance' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'confidence', 'instance_confidence' - The confidence that Amazon Rekognition has in the accuracy of the
-- bounding box.
--
-- 'boundingBox', 'instance_boundingBox' - The position of the label instance on the image.
newInstance ::
  Instance
newInstance =
  Instance'
    { confidence = Prelude.Nothing,
      boundingBox = Prelude.Nothing
    }

-- | The confidence that Amazon Rekognition has in the accuracy of the
-- bounding box.
instance_confidence :: Lens.Lens' Instance (Prelude.Maybe Prelude.Double)
instance_confidence = Lens.lens (\Instance' {confidence} -> confidence) (\s@Instance' {} a -> s {confidence = a} :: Instance)

-- | The position of the label instance on the image.
instance_boundingBox :: Lens.Lens' Instance (Prelude.Maybe BoundingBox)
instance_boundingBox = Lens.lens (\Instance' {boundingBox} -> boundingBox) (\s@Instance' {} a -> s {boundingBox = a} :: Instance)

instance Core.FromJSON Instance where
  parseJSON =
    Core.withObject
      "Instance"
      ( \x ->
          Instance'
            Prelude.<$> (x Core..:? "Confidence")
            Prelude.<*> (x Core..:? "BoundingBox")
      )

instance Prelude.Hashable Instance where
  hashWithSalt _salt Instance' {..} =
    _salt `Prelude.hashWithSalt` confidence
      `Prelude.hashWithSalt` boundingBox

instance Prelude.NFData Instance where
  rnf Instance' {..} =
    Prelude.rnf confidence
      `Prelude.seq` Prelude.rnf boundingBox
