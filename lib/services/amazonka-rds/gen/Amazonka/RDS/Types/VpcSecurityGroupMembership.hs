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
-- Module      : Amazonka.RDS.Types.VpcSecurityGroupMembership
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.RDS.Types.VpcSecurityGroupMembership where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | This data type is used as a response element for queries on VPC security
-- group membership.
--
-- /See:/ 'newVpcSecurityGroupMembership' smart constructor.
data VpcSecurityGroupMembership = VpcSecurityGroupMembership'
  { -- | The membership status of the VPC security group.
    --
    -- Currently, the only valid status is @active@.
    status :: Prelude.Maybe Prelude.Text,
    -- | The name of the VPC security group.
    vpcSecurityGroupId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'VpcSecurityGroupMembership' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'vpcSecurityGroupMembership_status' - The membership status of the VPC security group.
--
-- Currently, the only valid status is @active@.
--
-- 'vpcSecurityGroupId', 'vpcSecurityGroupMembership_vpcSecurityGroupId' - The name of the VPC security group.
newVpcSecurityGroupMembership ::
  VpcSecurityGroupMembership
newVpcSecurityGroupMembership =
  VpcSecurityGroupMembership'
    { status =
        Prelude.Nothing,
      vpcSecurityGroupId = Prelude.Nothing
    }

-- | The membership status of the VPC security group.
--
-- Currently, the only valid status is @active@.
vpcSecurityGroupMembership_status :: Lens.Lens' VpcSecurityGroupMembership (Prelude.Maybe Prelude.Text)
vpcSecurityGroupMembership_status = Lens.lens (\VpcSecurityGroupMembership' {status} -> status) (\s@VpcSecurityGroupMembership' {} a -> s {status = a} :: VpcSecurityGroupMembership)

-- | The name of the VPC security group.
vpcSecurityGroupMembership_vpcSecurityGroupId :: Lens.Lens' VpcSecurityGroupMembership (Prelude.Maybe Prelude.Text)
vpcSecurityGroupMembership_vpcSecurityGroupId = Lens.lens (\VpcSecurityGroupMembership' {vpcSecurityGroupId} -> vpcSecurityGroupId) (\s@VpcSecurityGroupMembership' {} a -> s {vpcSecurityGroupId = a} :: VpcSecurityGroupMembership)

instance Core.FromXML VpcSecurityGroupMembership where
  parseXML x =
    VpcSecurityGroupMembership'
      Prelude.<$> (x Core..@? "Status")
      Prelude.<*> (x Core..@? "VpcSecurityGroupId")

instance Prelude.Hashable VpcSecurityGroupMembership where
  hashWithSalt _salt VpcSecurityGroupMembership' {..} =
    _salt `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` vpcSecurityGroupId

instance Prelude.NFData VpcSecurityGroupMembership where
  rnf VpcSecurityGroupMembership' {..} =
    Prelude.rnf status
      `Prelude.seq` Prelude.rnf vpcSecurityGroupId
