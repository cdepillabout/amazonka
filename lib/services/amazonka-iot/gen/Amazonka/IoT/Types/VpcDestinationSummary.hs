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
-- Module      : Amazonka.IoT.Types.VpcDestinationSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IoT.Types.VpcDestinationSummary where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The summary of a virtual private cloud (VPC) destination.
--
-- /See:/ 'newVpcDestinationSummary' smart constructor.
data VpcDestinationSummary = VpcDestinationSummary'
  { -- | The ARN of a role that has permission to create and attach to elastic
    -- network interfaces (ENIs).
    roleArn :: Prelude.Maybe Prelude.Text,
    -- | The security groups of the VPC destination.
    securityGroups :: Prelude.Maybe [Prelude.Text],
    -- | The ID of the VPC.
    vpcId :: Prelude.Maybe Prelude.Text,
    -- | The subnet IDs of the VPC destination.
    subnetIds :: Prelude.Maybe [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'VpcDestinationSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'roleArn', 'vpcDestinationSummary_roleArn' - The ARN of a role that has permission to create and attach to elastic
-- network interfaces (ENIs).
--
-- 'securityGroups', 'vpcDestinationSummary_securityGroups' - The security groups of the VPC destination.
--
-- 'vpcId', 'vpcDestinationSummary_vpcId' - The ID of the VPC.
--
-- 'subnetIds', 'vpcDestinationSummary_subnetIds' - The subnet IDs of the VPC destination.
newVpcDestinationSummary ::
  VpcDestinationSummary
newVpcDestinationSummary =
  VpcDestinationSummary'
    { roleArn = Prelude.Nothing,
      securityGroups = Prelude.Nothing,
      vpcId = Prelude.Nothing,
      subnetIds = Prelude.Nothing
    }

-- | The ARN of a role that has permission to create and attach to elastic
-- network interfaces (ENIs).
vpcDestinationSummary_roleArn :: Lens.Lens' VpcDestinationSummary (Prelude.Maybe Prelude.Text)
vpcDestinationSummary_roleArn = Lens.lens (\VpcDestinationSummary' {roleArn} -> roleArn) (\s@VpcDestinationSummary' {} a -> s {roleArn = a} :: VpcDestinationSummary)

-- | The security groups of the VPC destination.
vpcDestinationSummary_securityGroups :: Lens.Lens' VpcDestinationSummary (Prelude.Maybe [Prelude.Text])
vpcDestinationSummary_securityGroups = Lens.lens (\VpcDestinationSummary' {securityGroups} -> securityGroups) (\s@VpcDestinationSummary' {} a -> s {securityGroups = a} :: VpcDestinationSummary) Prelude.. Lens.mapping Lens.coerced

-- | The ID of the VPC.
vpcDestinationSummary_vpcId :: Lens.Lens' VpcDestinationSummary (Prelude.Maybe Prelude.Text)
vpcDestinationSummary_vpcId = Lens.lens (\VpcDestinationSummary' {vpcId} -> vpcId) (\s@VpcDestinationSummary' {} a -> s {vpcId = a} :: VpcDestinationSummary)

-- | The subnet IDs of the VPC destination.
vpcDestinationSummary_subnetIds :: Lens.Lens' VpcDestinationSummary (Prelude.Maybe [Prelude.Text])
vpcDestinationSummary_subnetIds = Lens.lens (\VpcDestinationSummary' {subnetIds} -> subnetIds) (\s@VpcDestinationSummary' {} a -> s {subnetIds = a} :: VpcDestinationSummary) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON VpcDestinationSummary where
  parseJSON =
    Core.withObject
      "VpcDestinationSummary"
      ( \x ->
          VpcDestinationSummary'
            Prelude.<$> (x Core..:? "roleArn")
            Prelude.<*> (x Core..:? "securityGroups" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "vpcId")
            Prelude.<*> (x Core..:? "subnetIds" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable VpcDestinationSummary where
  hashWithSalt _salt VpcDestinationSummary' {..} =
    _salt `Prelude.hashWithSalt` roleArn
      `Prelude.hashWithSalt` securityGroups
      `Prelude.hashWithSalt` vpcId
      `Prelude.hashWithSalt` subnetIds

instance Prelude.NFData VpcDestinationSummary where
  rnf VpcDestinationSummary' {..} =
    Prelude.rnf roleArn
      `Prelude.seq` Prelude.rnf securityGroups
      `Prelude.seq` Prelude.rnf vpcId
      `Prelude.seq` Prelude.rnf subnetIds
