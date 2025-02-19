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
-- Module      : Amazonka.Nimble.DeleteLaunchProfileMember
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a user from launch profile membership.
module Amazonka.Nimble.DeleteLaunchProfileMember
  ( -- * Creating a Request
    DeleteLaunchProfileMember (..),
    newDeleteLaunchProfileMember,

    -- * Request Lenses
    deleteLaunchProfileMember_clientToken,
    deleteLaunchProfileMember_launchProfileId,
    deleteLaunchProfileMember_principalId,
    deleteLaunchProfileMember_studioId,

    -- * Destructuring the Response
    DeleteLaunchProfileMemberResponse (..),
    newDeleteLaunchProfileMemberResponse,

    -- * Response Lenses
    deleteLaunchProfileMemberResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.Nimble.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDeleteLaunchProfileMember' smart constructor.
data DeleteLaunchProfileMember = DeleteLaunchProfileMember'
  { -- | Unique, case-sensitive identifier that you provide to ensure the
    -- idempotency of the request. If you don’t specify a client token, the AWS
    -- SDK automatically generates a client token and uses it for the request
    -- to ensure idempotency.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | The Launch Profile ID.
    launchProfileId :: Prelude.Text,
    -- | The principal ID. This currently supports a Amazon Web Services SSO
    -- UserId.
    principalId :: Prelude.Text,
    -- | The studio ID.
    studioId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteLaunchProfileMember' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientToken', 'deleteLaunchProfileMember_clientToken' - Unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request. If you don’t specify a client token, the AWS
-- SDK automatically generates a client token and uses it for the request
-- to ensure idempotency.
--
-- 'launchProfileId', 'deleteLaunchProfileMember_launchProfileId' - The Launch Profile ID.
--
-- 'principalId', 'deleteLaunchProfileMember_principalId' - The principal ID. This currently supports a Amazon Web Services SSO
-- UserId.
--
-- 'studioId', 'deleteLaunchProfileMember_studioId' - The studio ID.
newDeleteLaunchProfileMember ::
  -- | 'launchProfileId'
  Prelude.Text ->
  -- | 'principalId'
  Prelude.Text ->
  -- | 'studioId'
  Prelude.Text ->
  DeleteLaunchProfileMember
newDeleteLaunchProfileMember
  pLaunchProfileId_
  pPrincipalId_
  pStudioId_ =
    DeleteLaunchProfileMember'
      { clientToken =
          Prelude.Nothing,
        launchProfileId = pLaunchProfileId_,
        principalId = pPrincipalId_,
        studioId = pStudioId_
      }

-- | Unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request. If you don’t specify a client token, the AWS
-- SDK automatically generates a client token and uses it for the request
-- to ensure idempotency.
deleteLaunchProfileMember_clientToken :: Lens.Lens' DeleteLaunchProfileMember (Prelude.Maybe Prelude.Text)
deleteLaunchProfileMember_clientToken = Lens.lens (\DeleteLaunchProfileMember' {clientToken} -> clientToken) (\s@DeleteLaunchProfileMember' {} a -> s {clientToken = a} :: DeleteLaunchProfileMember)

-- | The Launch Profile ID.
deleteLaunchProfileMember_launchProfileId :: Lens.Lens' DeleteLaunchProfileMember Prelude.Text
deleteLaunchProfileMember_launchProfileId = Lens.lens (\DeleteLaunchProfileMember' {launchProfileId} -> launchProfileId) (\s@DeleteLaunchProfileMember' {} a -> s {launchProfileId = a} :: DeleteLaunchProfileMember)

-- | The principal ID. This currently supports a Amazon Web Services SSO
-- UserId.
deleteLaunchProfileMember_principalId :: Lens.Lens' DeleteLaunchProfileMember Prelude.Text
deleteLaunchProfileMember_principalId = Lens.lens (\DeleteLaunchProfileMember' {principalId} -> principalId) (\s@DeleteLaunchProfileMember' {} a -> s {principalId = a} :: DeleteLaunchProfileMember)

-- | The studio ID.
deleteLaunchProfileMember_studioId :: Lens.Lens' DeleteLaunchProfileMember Prelude.Text
deleteLaunchProfileMember_studioId = Lens.lens (\DeleteLaunchProfileMember' {studioId} -> studioId) (\s@DeleteLaunchProfileMember' {} a -> s {studioId = a} :: DeleteLaunchProfileMember)

instance Core.AWSRequest DeleteLaunchProfileMember where
  type
    AWSResponse DeleteLaunchProfileMember =
      DeleteLaunchProfileMemberResponse
  request = Request.delete defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteLaunchProfileMemberResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteLaunchProfileMember where
  hashWithSalt _salt DeleteLaunchProfileMember' {..} =
    _salt `Prelude.hashWithSalt` clientToken
      `Prelude.hashWithSalt` launchProfileId
      `Prelude.hashWithSalt` principalId
      `Prelude.hashWithSalt` studioId

instance Prelude.NFData DeleteLaunchProfileMember where
  rnf DeleteLaunchProfileMember' {..} =
    Prelude.rnf clientToken
      `Prelude.seq` Prelude.rnf launchProfileId
      `Prelude.seq` Prelude.rnf principalId
      `Prelude.seq` Prelude.rnf studioId

instance Core.ToHeaders DeleteLaunchProfileMember where
  toHeaders DeleteLaunchProfileMember' {..} =
    Prelude.mconcat
      [ "X-Amz-Client-Token" Core.=# clientToken,
        "Content-Type"
          Core.=# ("application/x-amz-json-1.1" :: Prelude.ByteString)
      ]

instance Core.ToPath DeleteLaunchProfileMember where
  toPath DeleteLaunchProfileMember' {..} =
    Prelude.mconcat
      [ "/2020-08-01/studios/",
        Core.toBS studioId,
        "/launch-profiles/",
        Core.toBS launchProfileId,
        "/membership/",
        Core.toBS principalId
      ]

instance Core.ToQuery DeleteLaunchProfileMember where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteLaunchProfileMemberResponse' smart constructor.
data DeleteLaunchProfileMemberResponse = DeleteLaunchProfileMemberResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteLaunchProfileMemberResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteLaunchProfileMemberResponse_httpStatus' - The response's http status code.
newDeleteLaunchProfileMemberResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteLaunchProfileMemberResponse
newDeleteLaunchProfileMemberResponse pHttpStatus_ =
  DeleteLaunchProfileMemberResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
deleteLaunchProfileMemberResponse_httpStatus :: Lens.Lens' DeleteLaunchProfileMemberResponse Prelude.Int
deleteLaunchProfileMemberResponse_httpStatus = Lens.lens (\DeleteLaunchProfileMemberResponse' {httpStatus} -> httpStatus) (\s@DeleteLaunchProfileMemberResponse' {} a -> s {httpStatus = a} :: DeleteLaunchProfileMemberResponse)

instance
  Prelude.NFData
    DeleteLaunchProfileMemberResponse
  where
  rnf DeleteLaunchProfileMemberResponse' {..} =
    Prelude.rnf httpStatus
