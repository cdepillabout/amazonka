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
-- Module      : Amazonka.Nimble.DeleteLaunchProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Permanently delete a launch profile.
module Amazonka.Nimble.DeleteLaunchProfile
  ( -- * Creating a Request
    DeleteLaunchProfile (..),
    newDeleteLaunchProfile,

    -- * Request Lenses
    deleteLaunchProfile_clientToken,
    deleteLaunchProfile_launchProfileId,
    deleteLaunchProfile_studioId,

    -- * Destructuring the Response
    DeleteLaunchProfileResponse (..),
    newDeleteLaunchProfileResponse,

    -- * Response Lenses
    deleteLaunchProfileResponse_launchProfile,
    deleteLaunchProfileResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.Nimble.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDeleteLaunchProfile' smart constructor.
data DeleteLaunchProfile = DeleteLaunchProfile'
  { -- | Unique, case-sensitive identifier that you provide to ensure the
    -- idempotency of the request. If you don’t specify a client token, the AWS
    -- SDK automatically generates a client token and uses it for the request
    -- to ensure idempotency.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | The Launch Profile ID.
    launchProfileId :: Prelude.Text,
    -- | The studio ID.
    studioId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteLaunchProfile' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientToken', 'deleteLaunchProfile_clientToken' - Unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request. If you don’t specify a client token, the AWS
-- SDK automatically generates a client token and uses it for the request
-- to ensure idempotency.
--
-- 'launchProfileId', 'deleteLaunchProfile_launchProfileId' - The Launch Profile ID.
--
-- 'studioId', 'deleteLaunchProfile_studioId' - The studio ID.
newDeleteLaunchProfile ::
  -- | 'launchProfileId'
  Prelude.Text ->
  -- | 'studioId'
  Prelude.Text ->
  DeleteLaunchProfile
newDeleteLaunchProfile pLaunchProfileId_ pStudioId_ =
  DeleteLaunchProfile'
    { clientToken = Prelude.Nothing,
      launchProfileId = pLaunchProfileId_,
      studioId = pStudioId_
    }

-- | Unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request. If you don’t specify a client token, the AWS
-- SDK automatically generates a client token and uses it for the request
-- to ensure idempotency.
deleteLaunchProfile_clientToken :: Lens.Lens' DeleteLaunchProfile (Prelude.Maybe Prelude.Text)
deleteLaunchProfile_clientToken = Lens.lens (\DeleteLaunchProfile' {clientToken} -> clientToken) (\s@DeleteLaunchProfile' {} a -> s {clientToken = a} :: DeleteLaunchProfile)

-- | The Launch Profile ID.
deleteLaunchProfile_launchProfileId :: Lens.Lens' DeleteLaunchProfile Prelude.Text
deleteLaunchProfile_launchProfileId = Lens.lens (\DeleteLaunchProfile' {launchProfileId} -> launchProfileId) (\s@DeleteLaunchProfile' {} a -> s {launchProfileId = a} :: DeleteLaunchProfile)

-- | The studio ID.
deleteLaunchProfile_studioId :: Lens.Lens' DeleteLaunchProfile Prelude.Text
deleteLaunchProfile_studioId = Lens.lens (\DeleteLaunchProfile' {studioId} -> studioId) (\s@DeleteLaunchProfile' {} a -> s {studioId = a} :: DeleteLaunchProfile)

instance Core.AWSRequest DeleteLaunchProfile where
  type
    AWSResponse DeleteLaunchProfile =
      DeleteLaunchProfileResponse
  request = Request.delete defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteLaunchProfileResponse'
            Prelude.<$> (x Core..?> "launchProfile")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteLaunchProfile where
  hashWithSalt _salt DeleteLaunchProfile' {..} =
    _salt `Prelude.hashWithSalt` clientToken
      `Prelude.hashWithSalt` launchProfileId
      `Prelude.hashWithSalt` studioId

instance Prelude.NFData DeleteLaunchProfile where
  rnf DeleteLaunchProfile' {..} =
    Prelude.rnf clientToken
      `Prelude.seq` Prelude.rnf launchProfileId
      `Prelude.seq` Prelude.rnf studioId

instance Core.ToHeaders DeleteLaunchProfile where
  toHeaders DeleteLaunchProfile' {..} =
    Prelude.mconcat
      [ "X-Amz-Client-Token" Core.=# clientToken,
        "Content-Type"
          Core.=# ("application/x-amz-json-1.1" :: Prelude.ByteString)
      ]

instance Core.ToPath DeleteLaunchProfile where
  toPath DeleteLaunchProfile' {..} =
    Prelude.mconcat
      [ "/2020-08-01/studios/",
        Core.toBS studioId,
        "/launch-profiles/",
        Core.toBS launchProfileId
      ]

instance Core.ToQuery DeleteLaunchProfile where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteLaunchProfileResponse' smart constructor.
data DeleteLaunchProfileResponse = DeleteLaunchProfileResponse'
  { -- | The launch profile.
    launchProfile :: Prelude.Maybe LaunchProfile,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteLaunchProfileResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'launchProfile', 'deleteLaunchProfileResponse_launchProfile' - The launch profile.
--
-- 'httpStatus', 'deleteLaunchProfileResponse_httpStatus' - The response's http status code.
newDeleteLaunchProfileResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteLaunchProfileResponse
newDeleteLaunchProfileResponse pHttpStatus_ =
  DeleteLaunchProfileResponse'
    { launchProfile =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The launch profile.
deleteLaunchProfileResponse_launchProfile :: Lens.Lens' DeleteLaunchProfileResponse (Prelude.Maybe LaunchProfile)
deleteLaunchProfileResponse_launchProfile = Lens.lens (\DeleteLaunchProfileResponse' {launchProfile} -> launchProfile) (\s@DeleteLaunchProfileResponse' {} a -> s {launchProfile = a} :: DeleteLaunchProfileResponse)

-- | The response's http status code.
deleteLaunchProfileResponse_httpStatus :: Lens.Lens' DeleteLaunchProfileResponse Prelude.Int
deleteLaunchProfileResponse_httpStatus = Lens.lens (\DeleteLaunchProfileResponse' {httpStatus} -> httpStatus) (\s@DeleteLaunchProfileResponse' {} a -> s {httpStatus = a} :: DeleteLaunchProfileResponse)

instance Prelude.NFData DeleteLaunchProfileResponse where
  rnf DeleteLaunchProfileResponse' {..} =
    Prelude.rnf launchProfile
      `Prelude.seq` Prelude.rnf httpStatus
