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
-- Module      : Amazonka.AmplifyBackend.UpdateBackendConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the AWS resources required to access the Amplify Admin UI.
module Amazonka.AmplifyBackend.UpdateBackendConfig
  ( -- * Creating a Request
    UpdateBackendConfig (..),
    newUpdateBackendConfig,

    -- * Request Lenses
    updateBackendConfig_loginAuthConfig,
    updateBackendConfig_appId,

    -- * Destructuring the Response
    UpdateBackendConfigResponse (..),
    newUpdateBackendConfigResponse,

    -- * Response Lenses
    updateBackendConfigResponse_backendManagerAppId,
    updateBackendConfigResponse_loginAuthConfig,
    updateBackendConfigResponse_error,
    updateBackendConfigResponse_appId,
    updateBackendConfigResponse_httpStatus,
  )
where

import Amazonka.AmplifyBackend.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | The request body for UpdateBackendConfig.
--
-- /See:/ 'newUpdateBackendConfig' smart constructor.
data UpdateBackendConfig = UpdateBackendConfig'
  { -- | Describes the Amazon Cognito configuration for Admin UI access.
    loginAuthConfig :: Prelude.Maybe LoginAuthConfigReqObj,
    -- | The app ID.
    appId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateBackendConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'loginAuthConfig', 'updateBackendConfig_loginAuthConfig' - Describes the Amazon Cognito configuration for Admin UI access.
--
-- 'appId', 'updateBackendConfig_appId' - The app ID.
newUpdateBackendConfig ::
  -- | 'appId'
  Prelude.Text ->
  UpdateBackendConfig
newUpdateBackendConfig pAppId_ =
  UpdateBackendConfig'
    { loginAuthConfig =
        Prelude.Nothing,
      appId = pAppId_
    }

-- | Describes the Amazon Cognito configuration for Admin UI access.
updateBackendConfig_loginAuthConfig :: Lens.Lens' UpdateBackendConfig (Prelude.Maybe LoginAuthConfigReqObj)
updateBackendConfig_loginAuthConfig = Lens.lens (\UpdateBackendConfig' {loginAuthConfig} -> loginAuthConfig) (\s@UpdateBackendConfig' {} a -> s {loginAuthConfig = a} :: UpdateBackendConfig)

-- | The app ID.
updateBackendConfig_appId :: Lens.Lens' UpdateBackendConfig Prelude.Text
updateBackendConfig_appId = Lens.lens (\UpdateBackendConfig' {appId} -> appId) (\s@UpdateBackendConfig' {} a -> s {appId = a} :: UpdateBackendConfig)

instance Core.AWSRequest UpdateBackendConfig where
  type
    AWSResponse UpdateBackendConfig =
      UpdateBackendConfigResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateBackendConfigResponse'
            Prelude.<$> (x Core..?> "backendManagerAppId")
            Prelude.<*> (x Core..?> "loginAuthConfig")
            Prelude.<*> (x Core..?> "error")
            Prelude.<*> (x Core..?> "appId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateBackendConfig where
  hashWithSalt _salt UpdateBackendConfig' {..} =
    _salt `Prelude.hashWithSalt` loginAuthConfig
      `Prelude.hashWithSalt` appId

instance Prelude.NFData UpdateBackendConfig where
  rnf UpdateBackendConfig' {..} =
    Prelude.rnf loginAuthConfig
      `Prelude.seq` Prelude.rnf appId

instance Core.ToHeaders UpdateBackendConfig where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateBackendConfig where
  toJSON UpdateBackendConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("loginAuthConfig" Core..=)
              Prelude.<$> loginAuthConfig
          ]
      )

instance Core.ToPath UpdateBackendConfig where
  toPath UpdateBackendConfig' {..} =
    Prelude.mconcat
      ["/backend/", Core.toBS appId, "/config/update"]

instance Core.ToQuery UpdateBackendConfig where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateBackendConfigResponse' smart constructor.
data UpdateBackendConfigResponse = UpdateBackendConfigResponse'
  { -- | The app ID for the backend manager.
    backendManagerAppId :: Prelude.Maybe Prelude.Text,
    -- | Describes the Amazon Cognito configurations for the Admin UI auth
    -- resource to log in with.
    loginAuthConfig :: Prelude.Maybe LoginAuthConfigReqObj,
    -- | If the request fails, this error is returned.
    error :: Prelude.Maybe Prelude.Text,
    -- | The app ID.
    appId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateBackendConfigResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'backendManagerAppId', 'updateBackendConfigResponse_backendManagerAppId' - The app ID for the backend manager.
--
-- 'loginAuthConfig', 'updateBackendConfigResponse_loginAuthConfig' - Describes the Amazon Cognito configurations for the Admin UI auth
-- resource to log in with.
--
-- 'error', 'updateBackendConfigResponse_error' - If the request fails, this error is returned.
--
-- 'appId', 'updateBackendConfigResponse_appId' - The app ID.
--
-- 'httpStatus', 'updateBackendConfigResponse_httpStatus' - The response's http status code.
newUpdateBackendConfigResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateBackendConfigResponse
newUpdateBackendConfigResponse pHttpStatus_ =
  UpdateBackendConfigResponse'
    { backendManagerAppId =
        Prelude.Nothing,
      loginAuthConfig = Prelude.Nothing,
      error = Prelude.Nothing,
      appId = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The app ID for the backend manager.
updateBackendConfigResponse_backendManagerAppId :: Lens.Lens' UpdateBackendConfigResponse (Prelude.Maybe Prelude.Text)
updateBackendConfigResponse_backendManagerAppId = Lens.lens (\UpdateBackendConfigResponse' {backendManagerAppId} -> backendManagerAppId) (\s@UpdateBackendConfigResponse' {} a -> s {backendManagerAppId = a} :: UpdateBackendConfigResponse)

-- | Describes the Amazon Cognito configurations for the Admin UI auth
-- resource to log in with.
updateBackendConfigResponse_loginAuthConfig :: Lens.Lens' UpdateBackendConfigResponse (Prelude.Maybe LoginAuthConfigReqObj)
updateBackendConfigResponse_loginAuthConfig = Lens.lens (\UpdateBackendConfigResponse' {loginAuthConfig} -> loginAuthConfig) (\s@UpdateBackendConfigResponse' {} a -> s {loginAuthConfig = a} :: UpdateBackendConfigResponse)

-- | If the request fails, this error is returned.
updateBackendConfigResponse_error :: Lens.Lens' UpdateBackendConfigResponse (Prelude.Maybe Prelude.Text)
updateBackendConfigResponse_error = Lens.lens (\UpdateBackendConfigResponse' {error} -> error) (\s@UpdateBackendConfigResponse' {} a -> s {error = a} :: UpdateBackendConfigResponse)

-- | The app ID.
updateBackendConfigResponse_appId :: Lens.Lens' UpdateBackendConfigResponse (Prelude.Maybe Prelude.Text)
updateBackendConfigResponse_appId = Lens.lens (\UpdateBackendConfigResponse' {appId} -> appId) (\s@UpdateBackendConfigResponse' {} a -> s {appId = a} :: UpdateBackendConfigResponse)

-- | The response's http status code.
updateBackendConfigResponse_httpStatus :: Lens.Lens' UpdateBackendConfigResponse Prelude.Int
updateBackendConfigResponse_httpStatus = Lens.lens (\UpdateBackendConfigResponse' {httpStatus} -> httpStatus) (\s@UpdateBackendConfigResponse' {} a -> s {httpStatus = a} :: UpdateBackendConfigResponse)

instance Prelude.NFData UpdateBackendConfigResponse where
  rnf UpdateBackendConfigResponse' {..} =
    Prelude.rnf backendManagerAppId
      `Prelude.seq` Prelude.rnf loginAuthConfig
      `Prelude.seq` Prelude.rnf error
      `Prelude.seq` Prelude.rnf appId
      `Prelude.seq` Prelude.rnf httpStatus
