{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.EC2.DeleteSecurityGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a security group.
--
-- If you attempt to delete a security group that is associated with an
-- instance, or is referenced by another security group, the operation
-- fails with @InvalidGroup.InUse@ in EC2-Classic or @DependencyViolation@
-- in EC2-VPC.
--
-- We are retiring EC2-Classic on August 15, 2022. We recommend that you
-- migrate from EC2-Classic to a VPC. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html Migrate from EC2-Classic to a VPC>
-- in the /Amazon Elastic Compute Cloud User Guide/.
module Amazonka.EC2.DeleteSecurityGroup
  ( -- * Creating a Request
    DeleteSecurityGroup (..),
    newDeleteSecurityGroup,

    -- * Request Lenses
    deleteSecurityGroup_groupName,
    deleteSecurityGroup_dryRun,
    deleteSecurityGroup_groupId,

    -- * Destructuring the Response
    DeleteSecurityGroupResponse (..),
    newDeleteSecurityGroupResponse,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDeleteSecurityGroup' smart constructor.
data DeleteSecurityGroup = DeleteSecurityGroup'
  { -- | [EC2-Classic, default VPC] The name of the security group. You can
    -- specify either the security group name or the security group ID.
    groupName :: Prelude.Maybe Prelude.Text,
    -- | Checks whether you have the required permissions for the action, without
    -- actually making the request, and provides an error response. If you have
    -- the required permissions, the error response is @DryRunOperation@.
    -- Otherwise, it is @UnauthorizedOperation@.
    dryRun :: Prelude.Maybe Prelude.Bool,
    -- | The ID of the security group. Required for a nondefault VPC.
    groupId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteSecurityGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'groupName', 'deleteSecurityGroup_groupName' - [EC2-Classic, default VPC] The name of the security group. You can
-- specify either the security group name or the security group ID.
--
-- 'dryRun', 'deleteSecurityGroup_dryRun' - Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
--
-- 'groupId', 'deleteSecurityGroup_groupId' - The ID of the security group. Required for a nondefault VPC.
newDeleteSecurityGroup ::
  DeleteSecurityGroup
newDeleteSecurityGroup =
  DeleteSecurityGroup'
    { groupName = Prelude.Nothing,
      dryRun = Prelude.Nothing,
      groupId = Prelude.Nothing
    }

-- | [EC2-Classic, default VPC] The name of the security group. You can
-- specify either the security group name or the security group ID.
deleteSecurityGroup_groupName :: Lens.Lens' DeleteSecurityGroup (Prelude.Maybe Prelude.Text)
deleteSecurityGroup_groupName = Lens.lens (\DeleteSecurityGroup' {groupName} -> groupName) (\s@DeleteSecurityGroup' {} a -> s {groupName = a} :: DeleteSecurityGroup)

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
deleteSecurityGroup_dryRun :: Lens.Lens' DeleteSecurityGroup (Prelude.Maybe Prelude.Bool)
deleteSecurityGroup_dryRun = Lens.lens (\DeleteSecurityGroup' {dryRun} -> dryRun) (\s@DeleteSecurityGroup' {} a -> s {dryRun = a} :: DeleteSecurityGroup)

-- | The ID of the security group. Required for a nondefault VPC.
deleteSecurityGroup_groupId :: Lens.Lens' DeleteSecurityGroup (Prelude.Maybe Prelude.Text)
deleteSecurityGroup_groupId = Lens.lens (\DeleteSecurityGroup' {groupId} -> groupId) (\s@DeleteSecurityGroup' {} a -> s {groupId = a} :: DeleteSecurityGroup)

instance Core.AWSRequest DeleteSecurityGroup where
  type
    AWSResponse DeleteSecurityGroup =
      DeleteSecurityGroupResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveNull DeleteSecurityGroupResponse'

instance Prelude.Hashable DeleteSecurityGroup where
  hashWithSalt _salt DeleteSecurityGroup' {..} =
    _salt `Prelude.hashWithSalt` groupName
      `Prelude.hashWithSalt` dryRun
      `Prelude.hashWithSalt` groupId

instance Prelude.NFData DeleteSecurityGroup where
  rnf DeleteSecurityGroup' {..} =
    Prelude.rnf groupName
      `Prelude.seq` Prelude.rnf dryRun
      `Prelude.seq` Prelude.rnf groupId

instance Core.ToHeaders DeleteSecurityGroup where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DeleteSecurityGroup where
  toPath = Prelude.const "/"

instance Core.ToQuery DeleteSecurityGroup where
  toQuery DeleteSecurityGroup' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("DeleteSecurityGroup" :: Prelude.ByteString),
        "Version"
          Core.=: ("2016-11-15" :: Prelude.ByteString),
        "GroupName" Core.=: groupName,
        "DryRun" Core.=: dryRun,
        "GroupId" Core.=: groupId
      ]

-- | /See:/ 'newDeleteSecurityGroupResponse' smart constructor.
data DeleteSecurityGroupResponse = DeleteSecurityGroupResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteSecurityGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteSecurityGroupResponse ::
  DeleteSecurityGroupResponse
newDeleteSecurityGroupResponse =
  DeleteSecurityGroupResponse'

instance Prelude.NFData DeleteSecurityGroupResponse where
  rnf _ = ()
