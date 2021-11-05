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
-- Module      : Amazonka.EC2.Types.ElasticInferenceAcceleratorAssociation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.ElasticInferenceAcceleratorAssociation where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes the association between an instance and an elastic inference
-- accelerator.
--
-- /See:/ 'newElasticInferenceAcceleratorAssociation' smart constructor.
data ElasticInferenceAcceleratorAssociation = ElasticInferenceAcceleratorAssociation'
  { -- | The state of the elastic inference accelerator.
    elasticInferenceAcceleratorAssociationState :: Prelude.Maybe Prelude.Text,
    -- | The time at which the elastic inference accelerator is associated with
    -- an instance.
    elasticInferenceAcceleratorAssociationTime :: Prelude.Maybe Core.ISO8601,
    -- | The Amazon Resource Name (ARN) of the elastic inference accelerator.
    elasticInferenceAcceleratorArn :: Prelude.Maybe Prelude.Text,
    -- | The ID of the association.
    elasticInferenceAcceleratorAssociationId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ElasticInferenceAcceleratorAssociation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'elasticInferenceAcceleratorAssociationState', 'elasticInferenceAcceleratorAssociation_elasticInferenceAcceleratorAssociationState' - The state of the elastic inference accelerator.
--
-- 'elasticInferenceAcceleratorAssociationTime', 'elasticInferenceAcceleratorAssociation_elasticInferenceAcceleratorAssociationTime' - The time at which the elastic inference accelerator is associated with
-- an instance.
--
-- 'elasticInferenceAcceleratorArn', 'elasticInferenceAcceleratorAssociation_elasticInferenceAcceleratorArn' - The Amazon Resource Name (ARN) of the elastic inference accelerator.
--
-- 'elasticInferenceAcceleratorAssociationId', 'elasticInferenceAcceleratorAssociation_elasticInferenceAcceleratorAssociationId' - The ID of the association.
newElasticInferenceAcceleratorAssociation ::
  ElasticInferenceAcceleratorAssociation
newElasticInferenceAcceleratorAssociation =
  ElasticInferenceAcceleratorAssociation'
    { elasticInferenceAcceleratorAssociationState =
        Prelude.Nothing,
      elasticInferenceAcceleratorAssociationTime =
        Prelude.Nothing,
      elasticInferenceAcceleratorArn =
        Prelude.Nothing,
      elasticInferenceAcceleratorAssociationId =
        Prelude.Nothing
    }

-- | The state of the elastic inference accelerator.
elasticInferenceAcceleratorAssociation_elasticInferenceAcceleratorAssociationState :: Lens.Lens' ElasticInferenceAcceleratorAssociation (Prelude.Maybe Prelude.Text)
elasticInferenceAcceleratorAssociation_elasticInferenceAcceleratorAssociationState = Lens.lens (\ElasticInferenceAcceleratorAssociation' {elasticInferenceAcceleratorAssociationState} -> elasticInferenceAcceleratorAssociationState) (\s@ElasticInferenceAcceleratorAssociation' {} a -> s {elasticInferenceAcceleratorAssociationState = a} :: ElasticInferenceAcceleratorAssociation)

-- | The time at which the elastic inference accelerator is associated with
-- an instance.
elasticInferenceAcceleratorAssociation_elasticInferenceAcceleratorAssociationTime :: Lens.Lens' ElasticInferenceAcceleratorAssociation (Prelude.Maybe Prelude.UTCTime)
elasticInferenceAcceleratorAssociation_elasticInferenceAcceleratorAssociationTime = Lens.lens (\ElasticInferenceAcceleratorAssociation' {elasticInferenceAcceleratorAssociationTime} -> elasticInferenceAcceleratorAssociationTime) (\s@ElasticInferenceAcceleratorAssociation' {} a -> s {elasticInferenceAcceleratorAssociationTime = a} :: ElasticInferenceAcceleratorAssociation) Prelude.. Lens.mapping Core._Time

-- | The Amazon Resource Name (ARN) of the elastic inference accelerator.
elasticInferenceAcceleratorAssociation_elasticInferenceAcceleratorArn :: Lens.Lens' ElasticInferenceAcceleratorAssociation (Prelude.Maybe Prelude.Text)
elasticInferenceAcceleratorAssociation_elasticInferenceAcceleratorArn = Lens.lens (\ElasticInferenceAcceleratorAssociation' {elasticInferenceAcceleratorArn} -> elasticInferenceAcceleratorArn) (\s@ElasticInferenceAcceleratorAssociation' {} a -> s {elasticInferenceAcceleratorArn = a} :: ElasticInferenceAcceleratorAssociation)

-- | The ID of the association.
elasticInferenceAcceleratorAssociation_elasticInferenceAcceleratorAssociationId :: Lens.Lens' ElasticInferenceAcceleratorAssociation (Prelude.Maybe Prelude.Text)
elasticInferenceAcceleratorAssociation_elasticInferenceAcceleratorAssociationId = Lens.lens (\ElasticInferenceAcceleratorAssociation' {elasticInferenceAcceleratorAssociationId} -> elasticInferenceAcceleratorAssociationId) (\s@ElasticInferenceAcceleratorAssociation' {} a -> s {elasticInferenceAcceleratorAssociationId = a} :: ElasticInferenceAcceleratorAssociation)

instance
  Core.FromXML
    ElasticInferenceAcceleratorAssociation
  where
  parseXML x =
    ElasticInferenceAcceleratorAssociation'
      Prelude.<$> ( x
                      Core..@? "elasticInferenceAcceleratorAssociationState"
                  )
      Prelude.<*> ( x
                      Core..@? "elasticInferenceAcceleratorAssociationTime"
                  )
      Prelude.<*> (x Core..@? "elasticInferenceAcceleratorArn")
      Prelude.<*> ( x
                      Core..@? "elasticInferenceAcceleratorAssociationId"
                  )

instance
  Prelude.Hashable
    ElasticInferenceAcceleratorAssociation

instance
  Prelude.NFData
    ElasticInferenceAcceleratorAssociation
