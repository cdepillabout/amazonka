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
-- Module      : Amazonka.ElasticInference.Types.ElasticInferenceAccelerator
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ElasticInference.Types.ElasticInferenceAccelerator where

import qualified Amazonka.Core as Core
import Amazonka.ElasticInference.Types.ElasticInferenceAcceleratorHealth
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The details of an Elastic Inference Accelerator.
--
-- /See:/ 'newElasticInferenceAccelerator' smart constructor.
data ElasticInferenceAccelerator = ElasticInferenceAccelerator'
  { -- | The health of the Elastic Inference Accelerator.
    acceleratorHealth :: Prelude.Maybe ElasticInferenceAcceleratorHealth,
    -- | The type of the Elastic Inference Accelerator.
    acceleratorType :: Prelude.Maybe Prelude.Text,
    -- | The availability zone where the Elastic Inference Accelerator is
    -- present.
    availabilityZone :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the resource that the Elastic Inference Accelerator is
    -- attached to.
    attachedResource :: Prelude.Maybe Prelude.Text,
    -- | The ID of the Elastic Inference Accelerator.
    acceleratorId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ElasticInferenceAccelerator' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'acceleratorHealth', 'elasticInferenceAccelerator_acceleratorHealth' - The health of the Elastic Inference Accelerator.
--
-- 'acceleratorType', 'elasticInferenceAccelerator_acceleratorType' - The type of the Elastic Inference Accelerator.
--
-- 'availabilityZone', 'elasticInferenceAccelerator_availabilityZone' - The availability zone where the Elastic Inference Accelerator is
-- present.
--
-- 'attachedResource', 'elasticInferenceAccelerator_attachedResource' - The ARN of the resource that the Elastic Inference Accelerator is
-- attached to.
--
-- 'acceleratorId', 'elasticInferenceAccelerator_acceleratorId' - The ID of the Elastic Inference Accelerator.
newElasticInferenceAccelerator ::
  ElasticInferenceAccelerator
newElasticInferenceAccelerator =
  ElasticInferenceAccelerator'
    { acceleratorHealth =
        Prelude.Nothing,
      acceleratorType = Prelude.Nothing,
      availabilityZone = Prelude.Nothing,
      attachedResource = Prelude.Nothing,
      acceleratorId = Prelude.Nothing
    }

-- | The health of the Elastic Inference Accelerator.
elasticInferenceAccelerator_acceleratorHealth :: Lens.Lens' ElasticInferenceAccelerator (Prelude.Maybe ElasticInferenceAcceleratorHealth)
elasticInferenceAccelerator_acceleratorHealth = Lens.lens (\ElasticInferenceAccelerator' {acceleratorHealth} -> acceleratorHealth) (\s@ElasticInferenceAccelerator' {} a -> s {acceleratorHealth = a} :: ElasticInferenceAccelerator)

-- | The type of the Elastic Inference Accelerator.
elasticInferenceAccelerator_acceleratorType :: Lens.Lens' ElasticInferenceAccelerator (Prelude.Maybe Prelude.Text)
elasticInferenceAccelerator_acceleratorType = Lens.lens (\ElasticInferenceAccelerator' {acceleratorType} -> acceleratorType) (\s@ElasticInferenceAccelerator' {} a -> s {acceleratorType = a} :: ElasticInferenceAccelerator)

-- | The availability zone where the Elastic Inference Accelerator is
-- present.
elasticInferenceAccelerator_availabilityZone :: Lens.Lens' ElasticInferenceAccelerator (Prelude.Maybe Prelude.Text)
elasticInferenceAccelerator_availabilityZone = Lens.lens (\ElasticInferenceAccelerator' {availabilityZone} -> availabilityZone) (\s@ElasticInferenceAccelerator' {} a -> s {availabilityZone = a} :: ElasticInferenceAccelerator)

-- | The ARN of the resource that the Elastic Inference Accelerator is
-- attached to.
elasticInferenceAccelerator_attachedResource :: Lens.Lens' ElasticInferenceAccelerator (Prelude.Maybe Prelude.Text)
elasticInferenceAccelerator_attachedResource = Lens.lens (\ElasticInferenceAccelerator' {attachedResource} -> attachedResource) (\s@ElasticInferenceAccelerator' {} a -> s {attachedResource = a} :: ElasticInferenceAccelerator)

-- | The ID of the Elastic Inference Accelerator.
elasticInferenceAccelerator_acceleratorId :: Lens.Lens' ElasticInferenceAccelerator (Prelude.Maybe Prelude.Text)
elasticInferenceAccelerator_acceleratorId = Lens.lens (\ElasticInferenceAccelerator' {acceleratorId} -> acceleratorId) (\s@ElasticInferenceAccelerator' {} a -> s {acceleratorId = a} :: ElasticInferenceAccelerator)

instance Core.FromJSON ElasticInferenceAccelerator where
  parseJSON =
    Core.withObject
      "ElasticInferenceAccelerator"
      ( \x ->
          ElasticInferenceAccelerator'
            Prelude.<$> (x Core..:? "acceleratorHealth")
            Prelude.<*> (x Core..:? "acceleratorType")
            Prelude.<*> (x Core..:? "availabilityZone")
            Prelude.<*> (x Core..:? "attachedResource")
            Prelude.<*> (x Core..:? "acceleratorId")
      )

instance Prelude.Hashable ElasticInferenceAccelerator where
  hashWithSalt _salt ElasticInferenceAccelerator' {..} =
    _salt `Prelude.hashWithSalt` acceleratorHealth
      `Prelude.hashWithSalt` acceleratorType
      `Prelude.hashWithSalt` availabilityZone
      `Prelude.hashWithSalt` attachedResource
      `Prelude.hashWithSalt` acceleratorId

instance Prelude.NFData ElasticInferenceAccelerator where
  rnf ElasticInferenceAccelerator' {..} =
    Prelude.rnf acceleratorHealth
      `Prelude.seq` Prelude.rnf acceleratorType
      `Prelude.seq` Prelude.rnf availabilityZone
      `Prelude.seq` Prelude.rnf attachedResource
      `Prelude.seq` Prelude.rnf acceleratorId
