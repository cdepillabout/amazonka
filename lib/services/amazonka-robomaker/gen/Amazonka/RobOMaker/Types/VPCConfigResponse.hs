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
-- Module      : Amazonka.RobOMaker.Types.VPCConfigResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.RobOMaker.Types.VPCConfigResponse where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | VPC configuration associated with your simulation job.
--
-- /See:/ 'newVPCConfigResponse' smart constructor.
data VPCConfigResponse = VPCConfigResponse'
  { -- | A list of subnet IDs associated with the simulation job.
    subnets :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | A list of security group IDs associated with the simulation job.
    securityGroups :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | The VPC ID associated with your simulation job.
    vpcId :: Prelude.Maybe Prelude.Text,
    -- | A boolean indicating if a public IP was assigned.
    assignPublicIp :: Prelude.Maybe Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'VPCConfigResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'subnets', 'vPCConfigResponse_subnets' - A list of subnet IDs associated with the simulation job.
--
-- 'securityGroups', 'vPCConfigResponse_securityGroups' - A list of security group IDs associated with the simulation job.
--
-- 'vpcId', 'vPCConfigResponse_vpcId' - The VPC ID associated with your simulation job.
--
-- 'assignPublicIp', 'vPCConfigResponse_assignPublicIp' - A boolean indicating if a public IP was assigned.
newVPCConfigResponse ::
  VPCConfigResponse
newVPCConfigResponse =
  VPCConfigResponse'
    { subnets = Prelude.Nothing,
      securityGroups = Prelude.Nothing,
      vpcId = Prelude.Nothing,
      assignPublicIp = Prelude.Nothing
    }

-- | A list of subnet IDs associated with the simulation job.
vPCConfigResponse_subnets :: Lens.Lens' VPCConfigResponse (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
vPCConfigResponse_subnets = Lens.lens (\VPCConfigResponse' {subnets} -> subnets) (\s@VPCConfigResponse' {} a -> s {subnets = a} :: VPCConfigResponse) Prelude.. Lens.mapping Lens.coerced

-- | A list of security group IDs associated with the simulation job.
vPCConfigResponse_securityGroups :: Lens.Lens' VPCConfigResponse (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
vPCConfigResponse_securityGroups = Lens.lens (\VPCConfigResponse' {securityGroups} -> securityGroups) (\s@VPCConfigResponse' {} a -> s {securityGroups = a} :: VPCConfigResponse) Prelude.. Lens.mapping Lens.coerced

-- | The VPC ID associated with your simulation job.
vPCConfigResponse_vpcId :: Lens.Lens' VPCConfigResponse (Prelude.Maybe Prelude.Text)
vPCConfigResponse_vpcId = Lens.lens (\VPCConfigResponse' {vpcId} -> vpcId) (\s@VPCConfigResponse' {} a -> s {vpcId = a} :: VPCConfigResponse)

-- | A boolean indicating if a public IP was assigned.
vPCConfigResponse_assignPublicIp :: Lens.Lens' VPCConfigResponse (Prelude.Maybe Prelude.Bool)
vPCConfigResponse_assignPublicIp = Lens.lens (\VPCConfigResponse' {assignPublicIp} -> assignPublicIp) (\s@VPCConfigResponse' {} a -> s {assignPublicIp = a} :: VPCConfigResponse)

instance Core.FromJSON VPCConfigResponse where
  parseJSON =
    Core.withObject
      "VPCConfigResponse"
      ( \x ->
          VPCConfigResponse'
            Prelude.<$> (x Core..:? "subnets")
            Prelude.<*> (x Core..:? "securityGroups")
            Prelude.<*> (x Core..:? "vpcId")
            Prelude.<*> (x Core..:? "assignPublicIp")
      )

instance Prelude.Hashable VPCConfigResponse where
  hashWithSalt _salt VPCConfigResponse' {..} =
    _salt `Prelude.hashWithSalt` subnets
      `Prelude.hashWithSalt` securityGroups
      `Prelude.hashWithSalt` vpcId
      `Prelude.hashWithSalt` assignPublicIp

instance Prelude.NFData VPCConfigResponse where
  rnf VPCConfigResponse' {..} =
    Prelude.rnf subnets
      `Prelude.seq` Prelude.rnf securityGroups
      `Prelude.seq` Prelude.rnf vpcId
      `Prelude.seq` Prelude.rnf assignPublicIp
