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
-- Module      : Amazonka.CodeBuild.Types.VpcConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CodeBuild.Types.VpcConfig where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Information about the VPC configuration that CodeBuild accesses.
--
-- /See:/ 'newVpcConfig' smart constructor.
data VpcConfig = VpcConfig'
  { -- | A list of one or more security groups IDs in your Amazon VPC.
    securityGroupIds :: Prelude.Maybe [Prelude.Text],
    -- | A list of one or more subnet IDs in your Amazon VPC.
    subnets :: Prelude.Maybe [Prelude.Text],
    -- | The ID of the Amazon VPC.
    vpcId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'VpcConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'securityGroupIds', 'vpcConfig_securityGroupIds' - A list of one or more security groups IDs in your Amazon VPC.
--
-- 'subnets', 'vpcConfig_subnets' - A list of one or more subnet IDs in your Amazon VPC.
--
-- 'vpcId', 'vpcConfig_vpcId' - The ID of the Amazon VPC.
newVpcConfig ::
  VpcConfig
newVpcConfig =
  VpcConfig'
    { securityGroupIds = Prelude.Nothing,
      subnets = Prelude.Nothing,
      vpcId = Prelude.Nothing
    }

-- | A list of one or more security groups IDs in your Amazon VPC.
vpcConfig_securityGroupIds :: Lens.Lens' VpcConfig (Prelude.Maybe [Prelude.Text])
vpcConfig_securityGroupIds = Lens.lens (\VpcConfig' {securityGroupIds} -> securityGroupIds) (\s@VpcConfig' {} a -> s {securityGroupIds = a} :: VpcConfig) Prelude.. Lens.mapping Lens.coerced

-- | A list of one or more subnet IDs in your Amazon VPC.
vpcConfig_subnets :: Lens.Lens' VpcConfig (Prelude.Maybe [Prelude.Text])
vpcConfig_subnets = Lens.lens (\VpcConfig' {subnets} -> subnets) (\s@VpcConfig' {} a -> s {subnets = a} :: VpcConfig) Prelude.. Lens.mapping Lens.coerced

-- | The ID of the Amazon VPC.
vpcConfig_vpcId :: Lens.Lens' VpcConfig (Prelude.Maybe Prelude.Text)
vpcConfig_vpcId = Lens.lens (\VpcConfig' {vpcId} -> vpcId) (\s@VpcConfig' {} a -> s {vpcId = a} :: VpcConfig)

instance Core.FromJSON VpcConfig where
  parseJSON =
    Core.withObject
      "VpcConfig"
      ( \x ->
          VpcConfig'
            Prelude.<$> ( x Core..:? "securityGroupIds"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "subnets" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "vpcId")
      )

instance Prelude.Hashable VpcConfig where
  hashWithSalt _salt VpcConfig' {..} =
    _salt `Prelude.hashWithSalt` securityGroupIds
      `Prelude.hashWithSalt` subnets
      `Prelude.hashWithSalt` vpcId

instance Prelude.NFData VpcConfig where
  rnf VpcConfig' {..} =
    Prelude.rnf securityGroupIds
      `Prelude.seq` Prelude.rnf subnets
      `Prelude.seq` Prelude.rnf vpcId

instance Core.ToJSON VpcConfig where
  toJSON VpcConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("securityGroupIds" Core..=)
              Prelude.<$> securityGroupIds,
            ("subnets" Core..=) Prelude.<$> subnets,
            ("vpcId" Core..=) Prelude.<$> vpcId
          ]
      )
