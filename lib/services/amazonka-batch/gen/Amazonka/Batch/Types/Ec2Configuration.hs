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
-- Module      : Amazonka.Batch.Types.Ec2Configuration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Batch.Types.Ec2Configuration where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Provides information used to select Amazon Machine Images (AMIs) for
-- instances in the compute environment. If @Ec2Configuration@ isn\'t
-- specified, the default is @ECS_AL2@
-- (<https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html#al2ami Amazon Linux 2>).
--
-- This object isn\'t applicable to jobs that are running on Fargate
-- resources.
--
-- /See:/ 'newEc2Configuration' smart constructor.
data Ec2Configuration = Ec2Configuration'
  { -- | The AMI ID used for instances launched in the compute environment that
    -- match the image type. This setting overrides the @imageId@ set in the
    -- @computeResource@ object.
    --
    -- The AMI that you choose for a compute environment must match the
    -- architecture of the instance types that you intend to use for that
    -- compute environment. For example, if your compute environment uses A1
    -- instance types, the compute resource AMI that you choose must support
    -- ARM instances. Amazon ECS vends both x86 and ARM versions of the Amazon
    -- ECS-optimized Amazon Linux 2 AMI. For more information, see
    -- <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html#ecs-optimized-ami-linux-variants.html Amazon ECS-optimized Amazon Linux 2 AMI>
    -- in the /Amazon Elastic Container Service Developer Guide/.
    imageIdOverride :: Prelude.Maybe Prelude.Text,
    -- | The image type to match with the instance type to select an AMI. If the
    -- @imageIdOverride@ parameter isn\'t specified, then a recent
    -- <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html#al2ami Amazon ECS-optimized Amazon Linux 2 AMI>
    -- (@ECS_AL2@) is used. If a new image type is specified in an update, but
    -- neither an @imageId@ nor a @imageIdOverride@ parameter is specified,
    -- then the latest Amazon ECS optimized AMI for that image type that\'s
    -- supported by Batch is used.
    --
    -- [ECS_AL2]
    --     <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html#al2ami Amazon Linux 2>−
    --     Default for all non-GPU instance families.
    --
    -- [ECS_AL2_NVIDIA]
    --     <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html#gpuami Amazon Linux 2 (GPU)>−Default
    --     for all GPU instance families (for example @P4@ and @G4@) and can be
    --     used for all non Amazon Web Services Graviton-based instance types.
    --
    -- [ECS_AL1]
    --     <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html#alami Amazon Linux>.
    --     Amazon Linux is reaching the end-of-life of standard support. For
    --     more information, see
    --     <http://aws.amazon.com/amazon-linux-ami/ Amazon Linux AMI>.
    imageType :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Ec2Configuration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'imageIdOverride', 'ec2Configuration_imageIdOverride' - The AMI ID used for instances launched in the compute environment that
-- match the image type. This setting overrides the @imageId@ set in the
-- @computeResource@ object.
--
-- The AMI that you choose for a compute environment must match the
-- architecture of the instance types that you intend to use for that
-- compute environment. For example, if your compute environment uses A1
-- instance types, the compute resource AMI that you choose must support
-- ARM instances. Amazon ECS vends both x86 and ARM versions of the Amazon
-- ECS-optimized Amazon Linux 2 AMI. For more information, see
-- <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html#ecs-optimized-ami-linux-variants.html Amazon ECS-optimized Amazon Linux 2 AMI>
-- in the /Amazon Elastic Container Service Developer Guide/.
--
-- 'imageType', 'ec2Configuration_imageType' - The image type to match with the instance type to select an AMI. If the
-- @imageIdOverride@ parameter isn\'t specified, then a recent
-- <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html#al2ami Amazon ECS-optimized Amazon Linux 2 AMI>
-- (@ECS_AL2@) is used. If a new image type is specified in an update, but
-- neither an @imageId@ nor a @imageIdOverride@ parameter is specified,
-- then the latest Amazon ECS optimized AMI for that image type that\'s
-- supported by Batch is used.
--
-- [ECS_AL2]
--     <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html#al2ami Amazon Linux 2>−
--     Default for all non-GPU instance families.
--
-- [ECS_AL2_NVIDIA]
--     <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html#gpuami Amazon Linux 2 (GPU)>−Default
--     for all GPU instance families (for example @P4@ and @G4@) and can be
--     used for all non Amazon Web Services Graviton-based instance types.
--
-- [ECS_AL1]
--     <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html#alami Amazon Linux>.
--     Amazon Linux is reaching the end-of-life of standard support. For
--     more information, see
--     <http://aws.amazon.com/amazon-linux-ami/ Amazon Linux AMI>.
newEc2Configuration ::
  -- | 'imageType'
  Prelude.Text ->
  Ec2Configuration
newEc2Configuration pImageType_ =
  Ec2Configuration'
    { imageIdOverride =
        Prelude.Nothing,
      imageType = pImageType_
    }

-- | The AMI ID used for instances launched in the compute environment that
-- match the image type. This setting overrides the @imageId@ set in the
-- @computeResource@ object.
--
-- The AMI that you choose for a compute environment must match the
-- architecture of the instance types that you intend to use for that
-- compute environment. For example, if your compute environment uses A1
-- instance types, the compute resource AMI that you choose must support
-- ARM instances. Amazon ECS vends both x86 and ARM versions of the Amazon
-- ECS-optimized Amazon Linux 2 AMI. For more information, see
-- <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html#ecs-optimized-ami-linux-variants.html Amazon ECS-optimized Amazon Linux 2 AMI>
-- in the /Amazon Elastic Container Service Developer Guide/.
ec2Configuration_imageIdOverride :: Lens.Lens' Ec2Configuration (Prelude.Maybe Prelude.Text)
ec2Configuration_imageIdOverride = Lens.lens (\Ec2Configuration' {imageIdOverride} -> imageIdOverride) (\s@Ec2Configuration' {} a -> s {imageIdOverride = a} :: Ec2Configuration)

-- | The image type to match with the instance type to select an AMI. If the
-- @imageIdOverride@ parameter isn\'t specified, then a recent
-- <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html#al2ami Amazon ECS-optimized Amazon Linux 2 AMI>
-- (@ECS_AL2@) is used. If a new image type is specified in an update, but
-- neither an @imageId@ nor a @imageIdOverride@ parameter is specified,
-- then the latest Amazon ECS optimized AMI for that image type that\'s
-- supported by Batch is used.
--
-- [ECS_AL2]
--     <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html#al2ami Amazon Linux 2>−
--     Default for all non-GPU instance families.
--
-- [ECS_AL2_NVIDIA]
--     <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html#gpuami Amazon Linux 2 (GPU)>−Default
--     for all GPU instance families (for example @P4@ and @G4@) and can be
--     used for all non Amazon Web Services Graviton-based instance types.
--
-- [ECS_AL1]
--     <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html#alami Amazon Linux>.
--     Amazon Linux is reaching the end-of-life of standard support. For
--     more information, see
--     <http://aws.amazon.com/amazon-linux-ami/ Amazon Linux AMI>.
ec2Configuration_imageType :: Lens.Lens' Ec2Configuration Prelude.Text
ec2Configuration_imageType = Lens.lens (\Ec2Configuration' {imageType} -> imageType) (\s@Ec2Configuration' {} a -> s {imageType = a} :: Ec2Configuration)

instance Core.FromJSON Ec2Configuration where
  parseJSON =
    Core.withObject
      "Ec2Configuration"
      ( \x ->
          Ec2Configuration'
            Prelude.<$> (x Core..:? "imageIdOverride")
            Prelude.<*> (x Core..: "imageType")
      )

instance Prelude.Hashable Ec2Configuration where
  hashWithSalt _salt Ec2Configuration' {..} =
    _salt `Prelude.hashWithSalt` imageIdOverride
      `Prelude.hashWithSalt` imageType

instance Prelude.NFData Ec2Configuration where
  rnf Ec2Configuration' {..} =
    Prelude.rnf imageIdOverride
      `Prelude.seq` Prelude.rnf imageType

instance Core.ToJSON Ec2Configuration where
  toJSON Ec2Configuration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("imageIdOverride" Core..=)
              Prelude.<$> imageIdOverride,
            Prelude.Just ("imageType" Core..= imageType)
          ]
      )
