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
-- Module      : Amazonka.Nimble.UpdateLaunchProfileMember
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update a user persona in launch profile membership.
module Amazonka.Nimble.UpdateLaunchProfileMember
  ( -- * Creating a Request
    UpdateLaunchProfileMember (..),
    newUpdateLaunchProfileMember,

    -- * Request Lenses
    updateLaunchProfileMember_clientToken,
    updateLaunchProfileMember_launchProfileId,
    updateLaunchProfileMember_persona,
    updateLaunchProfileMember_principalId,
    updateLaunchProfileMember_studioId,

    -- * Destructuring the Response
    UpdateLaunchProfileMemberResponse (..),
    newUpdateLaunchProfileMemberResponse,

    -- * Response Lenses
    updateLaunchProfileMemberResponse_member,
    updateLaunchProfileMemberResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.Nimble.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateLaunchProfileMember' smart constructor.
data UpdateLaunchProfileMember = UpdateLaunchProfileMember'
  { -- | Unique, case-sensitive identifier that you provide to ensure the
    -- idempotency of the request. If you don’t specify a client token, the AWS
    -- SDK automatically generates a client token and uses it for the request
    -- to ensure idempotency.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | The Launch Profile ID.
    launchProfileId :: Prelude.Text,
    -- | The persona.
    persona :: LaunchProfilePersona,
    -- | The principal ID. This currently supports a Amazon Web Services SSO
    -- UserId.
    principalId :: Prelude.Text,
    -- | The studio ID.
    studioId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateLaunchProfileMember' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientToken', 'updateLaunchProfileMember_clientToken' - Unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request. If you don’t specify a client token, the AWS
-- SDK automatically generates a client token and uses it for the request
-- to ensure idempotency.
--
-- 'launchProfileId', 'updateLaunchProfileMember_launchProfileId' - The Launch Profile ID.
--
-- 'persona', 'updateLaunchProfileMember_persona' - The persona.
--
-- 'principalId', 'updateLaunchProfileMember_principalId' - The principal ID. This currently supports a Amazon Web Services SSO
-- UserId.
--
-- 'studioId', 'updateLaunchProfileMember_studioId' - The studio ID.
newUpdateLaunchProfileMember ::
  -- | 'launchProfileId'
  Prelude.Text ->
  -- | 'persona'
  LaunchProfilePersona ->
  -- | 'principalId'
  Prelude.Text ->
  -- | 'studioId'
  Prelude.Text ->
  UpdateLaunchProfileMember
newUpdateLaunchProfileMember
  pLaunchProfileId_
  pPersona_
  pPrincipalId_
  pStudioId_ =
    UpdateLaunchProfileMember'
      { clientToken =
          Prelude.Nothing,
        launchProfileId = pLaunchProfileId_,
        persona = pPersona_,
        principalId = pPrincipalId_,
        studioId = pStudioId_
      }

-- | Unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request. If you don’t specify a client token, the AWS
-- SDK automatically generates a client token and uses it for the request
-- to ensure idempotency.
updateLaunchProfileMember_clientToken :: Lens.Lens' UpdateLaunchProfileMember (Prelude.Maybe Prelude.Text)
updateLaunchProfileMember_clientToken = Lens.lens (\UpdateLaunchProfileMember' {clientToken} -> clientToken) (\s@UpdateLaunchProfileMember' {} a -> s {clientToken = a} :: UpdateLaunchProfileMember)

-- | The Launch Profile ID.
updateLaunchProfileMember_launchProfileId :: Lens.Lens' UpdateLaunchProfileMember Prelude.Text
updateLaunchProfileMember_launchProfileId = Lens.lens (\UpdateLaunchProfileMember' {launchProfileId} -> launchProfileId) (\s@UpdateLaunchProfileMember' {} a -> s {launchProfileId = a} :: UpdateLaunchProfileMember)

-- | The persona.
updateLaunchProfileMember_persona :: Lens.Lens' UpdateLaunchProfileMember LaunchProfilePersona
updateLaunchProfileMember_persona = Lens.lens (\UpdateLaunchProfileMember' {persona} -> persona) (\s@UpdateLaunchProfileMember' {} a -> s {persona = a} :: UpdateLaunchProfileMember)

-- | The principal ID. This currently supports a Amazon Web Services SSO
-- UserId.
updateLaunchProfileMember_principalId :: Lens.Lens' UpdateLaunchProfileMember Prelude.Text
updateLaunchProfileMember_principalId = Lens.lens (\UpdateLaunchProfileMember' {principalId} -> principalId) (\s@UpdateLaunchProfileMember' {} a -> s {principalId = a} :: UpdateLaunchProfileMember)

-- | The studio ID.
updateLaunchProfileMember_studioId :: Lens.Lens' UpdateLaunchProfileMember Prelude.Text
updateLaunchProfileMember_studioId = Lens.lens (\UpdateLaunchProfileMember' {studioId} -> studioId) (\s@UpdateLaunchProfileMember' {} a -> s {studioId = a} :: UpdateLaunchProfileMember)

instance Core.AWSRequest UpdateLaunchProfileMember where
  type
    AWSResponse UpdateLaunchProfileMember =
      UpdateLaunchProfileMemberResponse
  request = Request.patchJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateLaunchProfileMemberResponse'
            Prelude.<$> (x Core..?> "member")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateLaunchProfileMember where
  hashWithSalt _salt UpdateLaunchProfileMember' {..} =
    _salt `Prelude.hashWithSalt` clientToken
      `Prelude.hashWithSalt` launchProfileId
      `Prelude.hashWithSalt` persona
      `Prelude.hashWithSalt` principalId
      `Prelude.hashWithSalt` studioId

instance Prelude.NFData UpdateLaunchProfileMember where
  rnf UpdateLaunchProfileMember' {..} =
    Prelude.rnf clientToken
      `Prelude.seq` Prelude.rnf launchProfileId
      `Prelude.seq` Prelude.rnf persona
      `Prelude.seq` Prelude.rnf principalId
      `Prelude.seq` Prelude.rnf studioId

instance Core.ToHeaders UpdateLaunchProfileMember where
  toHeaders UpdateLaunchProfileMember' {..} =
    Prelude.mconcat
      [ "X-Amz-Client-Token" Core.=# clientToken,
        "Content-Type"
          Core.=# ("application/x-amz-json-1.1" :: Prelude.ByteString)
      ]

instance Core.ToJSON UpdateLaunchProfileMember where
  toJSON UpdateLaunchProfileMember' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("persona" Core..= persona)]
      )

instance Core.ToPath UpdateLaunchProfileMember where
  toPath UpdateLaunchProfileMember' {..} =
    Prelude.mconcat
      [ "/2020-08-01/studios/",
        Core.toBS studioId,
        "/launch-profiles/",
        Core.toBS launchProfileId,
        "/membership/",
        Core.toBS principalId
      ]

instance Core.ToQuery UpdateLaunchProfileMember where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateLaunchProfileMemberResponse' smart constructor.
data UpdateLaunchProfileMemberResponse = UpdateLaunchProfileMemberResponse'
  { -- | The updated member.
    member :: Prelude.Maybe LaunchProfileMembership,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateLaunchProfileMemberResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'member', 'updateLaunchProfileMemberResponse_member' - The updated member.
--
-- 'httpStatus', 'updateLaunchProfileMemberResponse_httpStatus' - The response's http status code.
newUpdateLaunchProfileMemberResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateLaunchProfileMemberResponse
newUpdateLaunchProfileMemberResponse pHttpStatus_ =
  UpdateLaunchProfileMemberResponse'
    { member =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The updated member.
updateLaunchProfileMemberResponse_member :: Lens.Lens' UpdateLaunchProfileMemberResponse (Prelude.Maybe LaunchProfileMembership)
updateLaunchProfileMemberResponse_member = Lens.lens (\UpdateLaunchProfileMemberResponse' {member} -> member) (\s@UpdateLaunchProfileMemberResponse' {} a -> s {member = a} :: UpdateLaunchProfileMemberResponse)

-- | The response's http status code.
updateLaunchProfileMemberResponse_httpStatus :: Lens.Lens' UpdateLaunchProfileMemberResponse Prelude.Int
updateLaunchProfileMemberResponse_httpStatus = Lens.lens (\UpdateLaunchProfileMemberResponse' {httpStatus} -> httpStatus) (\s@UpdateLaunchProfileMemberResponse' {} a -> s {httpStatus = a} :: UpdateLaunchProfileMemberResponse)

instance
  Prelude.NFData
    UpdateLaunchProfileMemberResponse
  where
  rnf UpdateLaunchProfileMemberResponse' {..} =
    Prelude.rnf member
      `Prelude.seq` Prelude.rnf httpStatus
