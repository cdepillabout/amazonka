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
-- Module      : Amazonka.SSOAdmin.DescribePermissionSetProvisioningStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the status for the given permission set provisioning request.
module Amazonka.SSOAdmin.DescribePermissionSetProvisioningStatus
  ( -- * Creating a Request
    DescribePermissionSetProvisioningStatus (..),
    newDescribePermissionSetProvisioningStatus,

    -- * Request Lenses
    describePermissionSetProvisioningStatus_instanceArn,
    describePermissionSetProvisioningStatus_provisionPermissionSetRequestId,

    -- * Destructuring the Response
    DescribePermissionSetProvisioningStatusResponse (..),
    newDescribePermissionSetProvisioningStatusResponse,

    -- * Response Lenses
    describePermissionSetProvisioningStatusResponse_permissionSetProvisioningStatus,
    describePermissionSetProvisioningStatusResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.SSOAdmin.Types

-- | /See:/ 'newDescribePermissionSetProvisioningStatus' smart constructor.
data DescribePermissionSetProvisioningStatus = DescribePermissionSetProvisioningStatus'
  { -- | The ARN of the Amazon Web Services SSO instance under which the
    -- operation will be executed. For more information about ARNs, see
    -- </general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces>
    -- in the /Amazon Web Services General Reference/.
    instanceArn :: Prelude.Text,
    -- | The identifier that is provided by the ProvisionPermissionSet call to
    -- retrieve the current status of the provisioning workflow.
    provisionPermissionSetRequestId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribePermissionSetProvisioningStatus' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'instanceArn', 'describePermissionSetProvisioningStatus_instanceArn' - The ARN of the Amazon Web Services SSO instance under which the
-- operation will be executed. For more information about ARNs, see
-- </general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces>
-- in the /Amazon Web Services General Reference/.
--
-- 'provisionPermissionSetRequestId', 'describePermissionSetProvisioningStatus_provisionPermissionSetRequestId' - The identifier that is provided by the ProvisionPermissionSet call to
-- retrieve the current status of the provisioning workflow.
newDescribePermissionSetProvisioningStatus ::
  -- | 'instanceArn'
  Prelude.Text ->
  -- | 'provisionPermissionSetRequestId'
  Prelude.Text ->
  DescribePermissionSetProvisioningStatus
newDescribePermissionSetProvisioningStatus
  pInstanceArn_
  pProvisionPermissionSetRequestId_ =
    DescribePermissionSetProvisioningStatus'
      { instanceArn =
          pInstanceArn_,
        provisionPermissionSetRequestId =
          pProvisionPermissionSetRequestId_
      }

-- | The ARN of the Amazon Web Services SSO instance under which the
-- operation will be executed. For more information about ARNs, see
-- </general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces>
-- in the /Amazon Web Services General Reference/.
describePermissionSetProvisioningStatus_instanceArn :: Lens.Lens' DescribePermissionSetProvisioningStatus Prelude.Text
describePermissionSetProvisioningStatus_instanceArn = Lens.lens (\DescribePermissionSetProvisioningStatus' {instanceArn} -> instanceArn) (\s@DescribePermissionSetProvisioningStatus' {} a -> s {instanceArn = a} :: DescribePermissionSetProvisioningStatus)

-- | The identifier that is provided by the ProvisionPermissionSet call to
-- retrieve the current status of the provisioning workflow.
describePermissionSetProvisioningStatus_provisionPermissionSetRequestId :: Lens.Lens' DescribePermissionSetProvisioningStatus Prelude.Text
describePermissionSetProvisioningStatus_provisionPermissionSetRequestId = Lens.lens (\DescribePermissionSetProvisioningStatus' {provisionPermissionSetRequestId} -> provisionPermissionSetRequestId) (\s@DescribePermissionSetProvisioningStatus' {} a -> s {provisionPermissionSetRequestId = a} :: DescribePermissionSetProvisioningStatus)

instance
  Core.AWSRequest
    DescribePermissionSetProvisioningStatus
  where
  type
    AWSResponse
      DescribePermissionSetProvisioningStatus =
      DescribePermissionSetProvisioningStatusResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribePermissionSetProvisioningStatusResponse'
            Prelude.<$> (x Core..?> "PermissionSetProvisioningStatus")
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DescribePermissionSetProvisioningStatus
  where
  hashWithSalt
    _salt
    DescribePermissionSetProvisioningStatus' {..} =
      _salt `Prelude.hashWithSalt` instanceArn
        `Prelude.hashWithSalt` provisionPermissionSetRequestId

instance
  Prelude.NFData
    DescribePermissionSetProvisioningStatus
  where
  rnf DescribePermissionSetProvisioningStatus' {..} =
    Prelude.rnf instanceArn
      `Prelude.seq` Prelude.rnf provisionPermissionSetRequestId

instance
  Core.ToHeaders
    DescribePermissionSetProvisioningStatus
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "SWBExternalService.DescribePermissionSetProvisioningStatus" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance
  Core.ToJSON
    DescribePermissionSetProvisioningStatus
  where
  toJSON DescribePermissionSetProvisioningStatus' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("InstanceArn" Core..= instanceArn),
            Prelude.Just
              ( "ProvisionPermissionSetRequestId"
                  Core..= provisionPermissionSetRequestId
              )
          ]
      )

instance
  Core.ToPath
    DescribePermissionSetProvisioningStatus
  where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    DescribePermissionSetProvisioningStatus
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribePermissionSetProvisioningStatusResponse' smart constructor.
data DescribePermissionSetProvisioningStatusResponse = DescribePermissionSetProvisioningStatusResponse'
  { -- | The status object for the permission set provisioning operation.
    permissionSetProvisioningStatus :: Prelude.Maybe PermissionSetProvisioningStatus,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribePermissionSetProvisioningStatusResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'permissionSetProvisioningStatus', 'describePermissionSetProvisioningStatusResponse_permissionSetProvisioningStatus' - The status object for the permission set provisioning operation.
--
-- 'httpStatus', 'describePermissionSetProvisioningStatusResponse_httpStatus' - The response's http status code.
newDescribePermissionSetProvisioningStatusResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribePermissionSetProvisioningStatusResponse
newDescribePermissionSetProvisioningStatusResponse
  pHttpStatus_ =
    DescribePermissionSetProvisioningStatusResponse'
      { permissionSetProvisioningStatus =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The status object for the permission set provisioning operation.
describePermissionSetProvisioningStatusResponse_permissionSetProvisioningStatus :: Lens.Lens' DescribePermissionSetProvisioningStatusResponse (Prelude.Maybe PermissionSetProvisioningStatus)
describePermissionSetProvisioningStatusResponse_permissionSetProvisioningStatus = Lens.lens (\DescribePermissionSetProvisioningStatusResponse' {permissionSetProvisioningStatus} -> permissionSetProvisioningStatus) (\s@DescribePermissionSetProvisioningStatusResponse' {} a -> s {permissionSetProvisioningStatus = a} :: DescribePermissionSetProvisioningStatusResponse)

-- | The response's http status code.
describePermissionSetProvisioningStatusResponse_httpStatus :: Lens.Lens' DescribePermissionSetProvisioningStatusResponse Prelude.Int
describePermissionSetProvisioningStatusResponse_httpStatus = Lens.lens (\DescribePermissionSetProvisioningStatusResponse' {httpStatus} -> httpStatus) (\s@DescribePermissionSetProvisioningStatusResponse' {} a -> s {httpStatus = a} :: DescribePermissionSetProvisioningStatusResponse)

instance
  Prelude.NFData
    DescribePermissionSetProvisioningStatusResponse
  where
  rnf
    DescribePermissionSetProvisioningStatusResponse' {..} =
      Prelude.rnf permissionSetProvisioningStatus
        `Prelude.seq` Prelude.rnf httpStatus
