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
-- Module      : Amazonka.Cloud9.UpdateEnvironment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes the settings of an existing Cloud9 development environment.
module Amazonka.Cloud9.UpdateEnvironment
  ( -- * Creating a Request
    UpdateEnvironment (..),
    newUpdateEnvironment,

    -- * Request Lenses
    updateEnvironment_name,
    updateEnvironment_description,
    updateEnvironment_managedCredentialsAction,
    updateEnvironment_environmentId,

    -- * Destructuring the Response
    UpdateEnvironmentResponse (..),
    newUpdateEnvironmentResponse,

    -- * Response Lenses
    updateEnvironmentResponse_httpStatus,
  )
where

import Amazonka.Cloud9.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateEnvironment' smart constructor.
data UpdateEnvironment = UpdateEnvironment'
  { -- | A replacement name for the environment.
    name :: Prelude.Maybe Prelude.Text,
    -- | Any new or replacement description for the environment.
    description :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | Allows the environment owner to turn on or turn off the Amazon Web
    -- Services managed temporary credentials for an Cloud9 environment by
    -- using one of the following values:
    --
    -- -   @ENABLE@
    --
    -- -   @DISABLE@
    --
    -- Only the environment owner can change the status of managed temporary
    -- credentials. An @AccessDeniedException@ is thrown if an attempt to turn
    -- on or turn off managed temporary credentials is made by an account
    -- that\'s not the environment owner.
    managedCredentialsAction :: Prelude.Maybe ManagedCredentialsAction,
    -- | The ID of the environment to change settings.
    environmentId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateEnvironment' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'updateEnvironment_name' - A replacement name for the environment.
--
-- 'description', 'updateEnvironment_description' - Any new or replacement description for the environment.
--
-- 'managedCredentialsAction', 'updateEnvironment_managedCredentialsAction' - Allows the environment owner to turn on or turn off the Amazon Web
-- Services managed temporary credentials for an Cloud9 environment by
-- using one of the following values:
--
-- -   @ENABLE@
--
-- -   @DISABLE@
--
-- Only the environment owner can change the status of managed temporary
-- credentials. An @AccessDeniedException@ is thrown if an attempt to turn
-- on or turn off managed temporary credentials is made by an account
-- that\'s not the environment owner.
--
-- 'environmentId', 'updateEnvironment_environmentId' - The ID of the environment to change settings.
newUpdateEnvironment ::
  -- | 'environmentId'
  Prelude.Text ->
  UpdateEnvironment
newUpdateEnvironment pEnvironmentId_ =
  UpdateEnvironment'
    { name = Prelude.Nothing,
      description = Prelude.Nothing,
      managedCredentialsAction = Prelude.Nothing,
      environmentId = pEnvironmentId_
    }

-- | A replacement name for the environment.
updateEnvironment_name :: Lens.Lens' UpdateEnvironment (Prelude.Maybe Prelude.Text)
updateEnvironment_name = Lens.lens (\UpdateEnvironment' {name} -> name) (\s@UpdateEnvironment' {} a -> s {name = a} :: UpdateEnvironment)

-- | Any new or replacement description for the environment.
updateEnvironment_description :: Lens.Lens' UpdateEnvironment (Prelude.Maybe Prelude.Text)
updateEnvironment_description = Lens.lens (\UpdateEnvironment' {description} -> description) (\s@UpdateEnvironment' {} a -> s {description = a} :: UpdateEnvironment) Prelude.. Lens.mapping Core._Sensitive

-- | Allows the environment owner to turn on or turn off the Amazon Web
-- Services managed temporary credentials for an Cloud9 environment by
-- using one of the following values:
--
-- -   @ENABLE@
--
-- -   @DISABLE@
--
-- Only the environment owner can change the status of managed temporary
-- credentials. An @AccessDeniedException@ is thrown if an attempt to turn
-- on or turn off managed temporary credentials is made by an account
-- that\'s not the environment owner.
updateEnvironment_managedCredentialsAction :: Lens.Lens' UpdateEnvironment (Prelude.Maybe ManagedCredentialsAction)
updateEnvironment_managedCredentialsAction = Lens.lens (\UpdateEnvironment' {managedCredentialsAction} -> managedCredentialsAction) (\s@UpdateEnvironment' {} a -> s {managedCredentialsAction = a} :: UpdateEnvironment)

-- | The ID of the environment to change settings.
updateEnvironment_environmentId :: Lens.Lens' UpdateEnvironment Prelude.Text
updateEnvironment_environmentId = Lens.lens (\UpdateEnvironment' {environmentId} -> environmentId) (\s@UpdateEnvironment' {} a -> s {environmentId = a} :: UpdateEnvironment)

instance Core.AWSRequest UpdateEnvironment where
  type
    AWSResponse UpdateEnvironment =
      UpdateEnvironmentResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          UpdateEnvironmentResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateEnvironment where
  hashWithSalt _salt UpdateEnvironment' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` managedCredentialsAction
      `Prelude.hashWithSalt` environmentId

instance Prelude.NFData UpdateEnvironment where
  rnf UpdateEnvironment' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf managedCredentialsAction
      `Prelude.seq` Prelude.rnf environmentId

instance Core.ToHeaders UpdateEnvironment where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSCloud9WorkspaceManagementService.UpdateEnvironment" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateEnvironment where
  toJSON UpdateEnvironment' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("name" Core..=) Prelude.<$> name,
            ("description" Core..=) Prelude.<$> description,
            ("managedCredentialsAction" Core..=)
              Prelude.<$> managedCredentialsAction,
            Prelude.Just
              ("environmentId" Core..= environmentId)
          ]
      )

instance Core.ToPath UpdateEnvironment where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateEnvironment where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateEnvironmentResponse' smart constructor.
data UpdateEnvironmentResponse = UpdateEnvironmentResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateEnvironmentResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateEnvironmentResponse_httpStatus' - The response's http status code.
newUpdateEnvironmentResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateEnvironmentResponse
newUpdateEnvironmentResponse pHttpStatus_ =
  UpdateEnvironmentResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
updateEnvironmentResponse_httpStatus :: Lens.Lens' UpdateEnvironmentResponse Prelude.Int
updateEnvironmentResponse_httpStatus = Lens.lens (\UpdateEnvironmentResponse' {httpStatus} -> httpStatus) (\s@UpdateEnvironmentResponse' {} a -> s {httpStatus = a} :: UpdateEnvironmentResponse)

instance Prelude.NFData UpdateEnvironmentResponse where
  rnf UpdateEnvironmentResponse' {..} =
    Prelude.rnf httpStatus
