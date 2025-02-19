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
-- Module      : Amazonka.Rekognition.Types.Label
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Rekognition.Types.Label where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.Rekognition.Types.Instance
import Amazonka.Rekognition.Types.Parent

-- | Structure containing details about the detected label, including the
-- name, detected instances, parent labels, and level of confidence.
--
-- /See:/ 'newLabel' smart constructor.
data Label = Label'
  { -- | If @Label@ represents an object, @Instances@ contains the bounding boxes
    -- for each instance of the detected object. Bounding boxes are returned
    -- for common object labels such as people, cars, furniture, apparel or
    -- pets.
    instances :: Prelude.Maybe [Instance],
    -- | The name (label) of the object or scene.
    name :: Prelude.Maybe Prelude.Text,
    -- | Level of confidence.
    confidence :: Prelude.Maybe Prelude.Double,
    -- | The parent labels for a label. The response includes all ancestor
    -- labels.
    parents :: Prelude.Maybe [Parent]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Label' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'instances', 'label_instances' - If @Label@ represents an object, @Instances@ contains the bounding boxes
-- for each instance of the detected object. Bounding boxes are returned
-- for common object labels such as people, cars, furniture, apparel or
-- pets.
--
-- 'name', 'label_name' - The name (label) of the object or scene.
--
-- 'confidence', 'label_confidence' - Level of confidence.
--
-- 'parents', 'label_parents' - The parent labels for a label. The response includes all ancestor
-- labels.
newLabel ::
  Label
newLabel =
  Label'
    { instances = Prelude.Nothing,
      name = Prelude.Nothing,
      confidence = Prelude.Nothing,
      parents = Prelude.Nothing
    }

-- | If @Label@ represents an object, @Instances@ contains the bounding boxes
-- for each instance of the detected object. Bounding boxes are returned
-- for common object labels such as people, cars, furniture, apparel or
-- pets.
label_instances :: Lens.Lens' Label (Prelude.Maybe [Instance])
label_instances = Lens.lens (\Label' {instances} -> instances) (\s@Label' {} a -> s {instances = a} :: Label) Prelude.. Lens.mapping Lens.coerced

-- | The name (label) of the object or scene.
label_name :: Lens.Lens' Label (Prelude.Maybe Prelude.Text)
label_name = Lens.lens (\Label' {name} -> name) (\s@Label' {} a -> s {name = a} :: Label)

-- | Level of confidence.
label_confidence :: Lens.Lens' Label (Prelude.Maybe Prelude.Double)
label_confidence = Lens.lens (\Label' {confidence} -> confidence) (\s@Label' {} a -> s {confidence = a} :: Label)

-- | The parent labels for a label. The response includes all ancestor
-- labels.
label_parents :: Lens.Lens' Label (Prelude.Maybe [Parent])
label_parents = Lens.lens (\Label' {parents} -> parents) (\s@Label' {} a -> s {parents = a} :: Label) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON Label where
  parseJSON =
    Core.withObject
      "Label"
      ( \x ->
          Label'
            Prelude.<$> (x Core..:? "Instances" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "Name")
            Prelude.<*> (x Core..:? "Confidence")
            Prelude.<*> (x Core..:? "Parents" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable Label where
  hashWithSalt _salt Label' {..} =
    _salt `Prelude.hashWithSalt` instances
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` confidence
      `Prelude.hashWithSalt` parents

instance Prelude.NFData Label where
  rnf Label' {..} =
    Prelude.rnf instances
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf confidence
      `Prelude.seq` Prelude.rnf parents
