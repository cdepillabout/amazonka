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
-- Module      : Amazonka.SSOAdmin.DescribePermissionSet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the details of the permission set.
module Amazonka.SSOAdmin.DescribePermissionSet
  ( -- * Creating a Request
    DescribePermissionSet (..),
    newDescribePermissionSet,

    -- * Request Lenses
    describePermissionSet_instanceArn,
    describePermissionSet_permissionSetArn,

    -- * Destructuring the Response
    DescribePermissionSetResponse (..),
    newDescribePermissionSetResponse,

    -- * Response Lenses
    describePermissionSetResponse_permissionSet,
    describePermissionSetResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.SSOAdmin.Types

-- | /See:/ 'newDescribePermissionSet' smart constructor.
data DescribePermissionSet = DescribePermissionSet'
  { -- | The ARN of the Amazon Web Services SSO instance under which the
    -- operation will be executed. For more information about ARNs, see
    -- </general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces>
    -- in the /Amazon Web Services General Reference/.
    instanceArn :: Prelude.Text,
    -- | The ARN of the permission set.
    permissionSetArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribePermissionSet' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'instanceArn', 'describePermissionSet_instanceArn' - The ARN of the Amazon Web Services SSO instance under which the
-- operation will be executed. For more information about ARNs, see
-- </general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces>
-- in the /Amazon Web Services General Reference/.
--
-- 'permissionSetArn', 'describePermissionSet_permissionSetArn' - The ARN of the permission set.
newDescribePermissionSet ::
  -- | 'instanceArn'
  Prelude.Text ->
  -- | 'permissionSetArn'
  Prelude.Text ->
  DescribePermissionSet
newDescribePermissionSet
  pInstanceArn_
  pPermissionSetArn_ =
    DescribePermissionSet'
      { instanceArn = pInstanceArn_,
        permissionSetArn = pPermissionSetArn_
      }

-- | The ARN of the Amazon Web Services SSO instance under which the
-- operation will be executed. For more information about ARNs, see
-- </general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces>
-- in the /Amazon Web Services General Reference/.
describePermissionSet_instanceArn :: Lens.Lens' DescribePermissionSet Prelude.Text
describePermissionSet_instanceArn = Lens.lens (\DescribePermissionSet' {instanceArn} -> instanceArn) (\s@DescribePermissionSet' {} a -> s {instanceArn = a} :: DescribePermissionSet)

-- | The ARN of the permission set.
describePermissionSet_permissionSetArn :: Lens.Lens' DescribePermissionSet Prelude.Text
describePermissionSet_permissionSetArn = Lens.lens (\DescribePermissionSet' {permissionSetArn} -> permissionSetArn) (\s@DescribePermissionSet' {} a -> s {permissionSetArn = a} :: DescribePermissionSet)

instance Core.AWSRequest DescribePermissionSet where
  type
    AWSResponse DescribePermissionSet =
      DescribePermissionSetResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribePermissionSetResponse'
            Prelude.<$> (x Core..?> "PermissionSet")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribePermissionSet where
  hashWithSalt _salt DescribePermissionSet' {..} =
    _salt `Prelude.hashWithSalt` instanceArn
      `Prelude.hashWithSalt` permissionSetArn

instance Prelude.NFData DescribePermissionSet where
  rnf DescribePermissionSet' {..} =
    Prelude.rnf instanceArn
      `Prelude.seq` Prelude.rnf permissionSetArn

instance Core.ToHeaders DescribePermissionSet where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "SWBExternalService.DescribePermissionSet" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribePermissionSet where
  toJSON DescribePermissionSet' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("InstanceArn" Core..= instanceArn),
            Prelude.Just
              ("PermissionSetArn" Core..= permissionSetArn)
          ]
      )

instance Core.ToPath DescribePermissionSet where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribePermissionSet where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribePermissionSetResponse' smart constructor.
data DescribePermissionSetResponse = DescribePermissionSetResponse'
  { -- | Describes the level of access on an Amazon Web Services account.
    permissionSet :: Prelude.Maybe PermissionSet,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribePermissionSetResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'permissionSet', 'describePermissionSetResponse_permissionSet' - Describes the level of access on an Amazon Web Services account.
--
-- 'httpStatus', 'describePermissionSetResponse_httpStatus' - The response's http status code.
newDescribePermissionSetResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribePermissionSetResponse
newDescribePermissionSetResponse pHttpStatus_ =
  DescribePermissionSetResponse'
    { permissionSet =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Describes the level of access on an Amazon Web Services account.
describePermissionSetResponse_permissionSet :: Lens.Lens' DescribePermissionSetResponse (Prelude.Maybe PermissionSet)
describePermissionSetResponse_permissionSet = Lens.lens (\DescribePermissionSetResponse' {permissionSet} -> permissionSet) (\s@DescribePermissionSetResponse' {} a -> s {permissionSet = a} :: DescribePermissionSetResponse)

-- | The response's http status code.
describePermissionSetResponse_httpStatus :: Lens.Lens' DescribePermissionSetResponse Prelude.Int
describePermissionSetResponse_httpStatus = Lens.lens (\DescribePermissionSetResponse' {httpStatus} -> httpStatus) (\s@DescribePermissionSetResponse' {} a -> s {httpStatus = a} :: DescribePermissionSetResponse)

instance Prelude.NFData DescribePermissionSetResponse where
  rnf DescribePermissionSetResponse' {..} =
    Prelude.rnf permissionSet
      `Prelude.seq` Prelude.rnf httpStatus
