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
-- Module      : Amazonka.AppSync.UpdateGraphqlApi
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a @GraphqlApi@ object.
module Amazonka.AppSync.UpdateGraphqlApi
  ( -- * Creating a Request
    UpdateGraphqlApi (..),
    newUpdateGraphqlApi,

    -- * Request Lenses
    updateGraphqlApi_xrayEnabled,
    updateGraphqlApi_authenticationType,
    updateGraphqlApi_openIDConnectConfig,
    updateGraphqlApi_userPoolConfig,
    updateGraphqlApi_additionalAuthenticationProviders,
    updateGraphqlApi_lambdaAuthorizerConfig,
    updateGraphqlApi_logConfig,
    updateGraphqlApi_apiId,
    updateGraphqlApi_name,

    -- * Destructuring the Response
    UpdateGraphqlApiResponse (..),
    newUpdateGraphqlApiResponse,

    -- * Response Lenses
    updateGraphqlApiResponse_graphqlApi,
    updateGraphqlApiResponse_httpStatus,
  )
where

import Amazonka.AppSync.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateGraphqlApi' smart constructor.
data UpdateGraphqlApi = UpdateGraphqlApi'
  { -- | A flag indicating whether to use X-Ray tracing for the @GraphqlApi@.
    xrayEnabled :: Prelude.Maybe Prelude.Bool,
    -- | The new authentication type for the @GraphqlApi@ object.
    authenticationType :: Prelude.Maybe AuthenticationType,
    -- | The OpenID Connect configuration for the @GraphqlApi@ object.
    openIDConnectConfig :: Prelude.Maybe OpenIDConnectConfig,
    -- | The new Amazon Cognito user pool configuration for the @~GraphqlApi@
    -- object.
    userPoolConfig :: Prelude.Maybe UserPoolConfig,
    -- | A list of additional authentication providers for the @GraphqlApi@ API.
    additionalAuthenticationProviders :: Prelude.Maybe [AdditionalAuthenticationProvider],
    -- | Configuration for Lambda function authorization.
    lambdaAuthorizerConfig :: Prelude.Maybe LambdaAuthorizerConfig,
    -- | The Amazon CloudWatch Logs configuration for the @GraphqlApi@ object.
    logConfig :: Prelude.Maybe LogConfig,
    -- | The API ID.
    apiId :: Prelude.Text,
    -- | The new name for the @GraphqlApi@ object.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateGraphqlApi' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'xrayEnabled', 'updateGraphqlApi_xrayEnabled' - A flag indicating whether to use X-Ray tracing for the @GraphqlApi@.
--
-- 'authenticationType', 'updateGraphqlApi_authenticationType' - The new authentication type for the @GraphqlApi@ object.
--
-- 'openIDConnectConfig', 'updateGraphqlApi_openIDConnectConfig' - The OpenID Connect configuration for the @GraphqlApi@ object.
--
-- 'userPoolConfig', 'updateGraphqlApi_userPoolConfig' - The new Amazon Cognito user pool configuration for the @~GraphqlApi@
-- object.
--
-- 'additionalAuthenticationProviders', 'updateGraphqlApi_additionalAuthenticationProviders' - A list of additional authentication providers for the @GraphqlApi@ API.
--
-- 'lambdaAuthorizerConfig', 'updateGraphqlApi_lambdaAuthorizerConfig' - Configuration for Lambda function authorization.
--
-- 'logConfig', 'updateGraphqlApi_logConfig' - The Amazon CloudWatch Logs configuration for the @GraphqlApi@ object.
--
-- 'apiId', 'updateGraphqlApi_apiId' - The API ID.
--
-- 'name', 'updateGraphqlApi_name' - The new name for the @GraphqlApi@ object.
newUpdateGraphqlApi ::
  -- | 'apiId'
  Prelude.Text ->
  -- | 'name'
  Prelude.Text ->
  UpdateGraphqlApi
newUpdateGraphqlApi pApiId_ pName_ =
  UpdateGraphqlApi'
    { xrayEnabled = Prelude.Nothing,
      authenticationType = Prelude.Nothing,
      openIDConnectConfig = Prelude.Nothing,
      userPoolConfig = Prelude.Nothing,
      additionalAuthenticationProviders = Prelude.Nothing,
      lambdaAuthorizerConfig = Prelude.Nothing,
      logConfig = Prelude.Nothing,
      apiId = pApiId_,
      name = pName_
    }

-- | A flag indicating whether to use X-Ray tracing for the @GraphqlApi@.
updateGraphqlApi_xrayEnabled :: Lens.Lens' UpdateGraphqlApi (Prelude.Maybe Prelude.Bool)
updateGraphqlApi_xrayEnabled = Lens.lens (\UpdateGraphqlApi' {xrayEnabled} -> xrayEnabled) (\s@UpdateGraphqlApi' {} a -> s {xrayEnabled = a} :: UpdateGraphqlApi)

-- | The new authentication type for the @GraphqlApi@ object.
updateGraphqlApi_authenticationType :: Lens.Lens' UpdateGraphqlApi (Prelude.Maybe AuthenticationType)
updateGraphqlApi_authenticationType = Lens.lens (\UpdateGraphqlApi' {authenticationType} -> authenticationType) (\s@UpdateGraphqlApi' {} a -> s {authenticationType = a} :: UpdateGraphqlApi)

-- | The OpenID Connect configuration for the @GraphqlApi@ object.
updateGraphqlApi_openIDConnectConfig :: Lens.Lens' UpdateGraphqlApi (Prelude.Maybe OpenIDConnectConfig)
updateGraphqlApi_openIDConnectConfig = Lens.lens (\UpdateGraphqlApi' {openIDConnectConfig} -> openIDConnectConfig) (\s@UpdateGraphqlApi' {} a -> s {openIDConnectConfig = a} :: UpdateGraphqlApi)

-- | The new Amazon Cognito user pool configuration for the @~GraphqlApi@
-- object.
updateGraphqlApi_userPoolConfig :: Lens.Lens' UpdateGraphqlApi (Prelude.Maybe UserPoolConfig)
updateGraphqlApi_userPoolConfig = Lens.lens (\UpdateGraphqlApi' {userPoolConfig} -> userPoolConfig) (\s@UpdateGraphqlApi' {} a -> s {userPoolConfig = a} :: UpdateGraphqlApi)

-- | A list of additional authentication providers for the @GraphqlApi@ API.
updateGraphqlApi_additionalAuthenticationProviders :: Lens.Lens' UpdateGraphqlApi (Prelude.Maybe [AdditionalAuthenticationProvider])
updateGraphqlApi_additionalAuthenticationProviders = Lens.lens (\UpdateGraphqlApi' {additionalAuthenticationProviders} -> additionalAuthenticationProviders) (\s@UpdateGraphqlApi' {} a -> s {additionalAuthenticationProviders = a} :: UpdateGraphqlApi) Prelude.. Lens.mapping Lens.coerced

-- | Configuration for Lambda function authorization.
updateGraphqlApi_lambdaAuthorizerConfig :: Lens.Lens' UpdateGraphqlApi (Prelude.Maybe LambdaAuthorizerConfig)
updateGraphqlApi_lambdaAuthorizerConfig = Lens.lens (\UpdateGraphqlApi' {lambdaAuthorizerConfig} -> lambdaAuthorizerConfig) (\s@UpdateGraphqlApi' {} a -> s {lambdaAuthorizerConfig = a} :: UpdateGraphqlApi)

-- | The Amazon CloudWatch Logs configuration for the @GraphqlApi@ object.
updateGraphqlApi_logConfig :: Lens.Lens' UpdateGraphqlApi (Prelude.Maybe LogConfig)
updateGraphqlApi_logConfig = Lens.lens (\UpdateGraphqlApi' {logConfig} -> logConfig) (\s@UpdateGraphqlApi' {} a -> s {logConfig = a} :: UpdateGraphqlApi)

-- | The API ID.
updateGraphqlApi_apiId :: Lens.Lens' UpdateGraphqlApi Prelude.Text
updateGraphqlApi_apiId = Lens.lens (\UpdateGraphqlApi' {apiId} -> apiId) (\s@UpdateGraphqlApi' {} a -> s {apiId = a} :: UpdateGraphqlApi)

-- | The new name for the @GraphqlApi@ object.
updateGraphqlApi_name :: Lens.Lens' UpdateGraphqlApi Prelude.Text
updateGraphqlApi_name = Lens.lens (\UpdateGraphqlApi' {name} -> name) (\s@UpdateGraphqlApi' {} a -> s {name = a} :: UpdateGraphqlApi)

instance Core.AWSRequest UpdateGraphqlApi where
  type
    AWSResponse UpdateGraphqlApi =
      UpdateGraphqlApiResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateGraphqlApiResponse'
            Prelude.<$> (x Core..?> "graphqlApi")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateGraphqlApi where
  hashWithSalt _salt UpdateGraphqlApi' {..} =
    _salt `Prelude.hashWithSalt` xrayEnabled
      `Prelude.hashWithSalt` authenticationType
      `Prelude.hashWithSalt` openIDConnectConfig
      `Prelude.hashWithSalt` userPoolConfig
      `Prelude.hashWithSalt` additionalAuthenticationProviders
      `Prelude.hashWithSalt` lambdaAuthorizerConfig
      `Prelude.hashWithSalt` logConfig
      `Prelude.hashWithSalt` apiId
      `Prelude.hashWithSalt` name

instance Prelude.NFData UpdateGraphqlApi where
  rnf UpdateGraphqlApi' {..} =
    Prelude.rnf xrayEnabled
      `Prelude.seq` Prelude.rnf authenticationType
      `Prelude.seq` Prelude.rnf openIDConnectConfig
      `Prelude.seq` Prelude.rnf userPoolConfig
      `Prelude.seq` Prelude.rnf additionalAuthenticationProviders
      `Prelude.seq` Prelude.rnf lambdaAuthorizerConfig
      `Prelude.seq` Prelude.rnf logConfig
      `Prelude.seq` Prelude.rnf apiId
      `Prelude.seq` Prelude.rnf name

instance Core.ToHeaders UpdateGraphqlApi where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateGraphqlApi where
  toJSON UpdateGraphqlApi' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("xrayEnabled" Core..=) Prelude.<$> xrayEnabled,
            ("authenticationType" Core..=)
              Prelude.<$> authenticationType,
            ("openIDConnectConfig" Core..=)
              Prelude.<$> openIDConnectConfig,
            ("userPoolConfig" Core..=)
              Prelude.<$> userPoolConfig,
            ("additionalAuthenticationProviders" Core..=)
              Prelude.<$> additionalAuthenticationProviders,
            ("lambdaAuthorizerConfig" Core..=)
              Prelude.<$> lambdaAuthorizerConfig,
            ("logConfig" Core..=) Prelude.<$> logConfig,
            Prelude.Just ("name" Core..= name)
          ]
      )

instance Core.ToPath UpdateGraphqlApi where
  toPath UpdateGraphqlApi' {..} =
    Prelude.mconcat ["/v1/apis/", Core.toBS apiId]

instance Core.ToQuery UpdateGraphqlApi where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateGraphqlApiResponse' smart constructor.
data UpdateGraphqlApiResponse = UpdateGraphqlApiResponse'
  { -- | The updated @GraphqlApi@ object.
    graphqlApi :: Prelude.Maybe GraphqlApi,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateGraphqlApiResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'graphqlApi', 'updateGraphqlApiResponse_graphqlApi' - The updated @GraphqlApi@ object.
--
-- 'httpStatus', 'updateGraphqlApiResponse_httpStatus' - The response's http status code.
newUpdateGraphqlApiResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateGraphqlApiResponse
newUpdateGraphqlApiResponse pHttpStatus_ =
  UpdateGraphqlApiResponse'
    { graphqlApi =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The updated @GraphqlApi@ object.
updateGraphqlApiResponse_graphqlApi :: Lens.Lens' UpdateGraphqlApiResponse (Prelude.Maybe GraphqlApi)
updateGraphqlApiResponse_graphqlApi = Lens.lens (\UpdateGraphqlApiResponse' {graphqlApi} -> graphqlApi) (\s@UpdateGraphqlApiResponse' {} a -> s {graphqlApi = a} :: UpdateGraphqlApiResponse)

-- | The response's http status code.
updateGraphqlApiResponse_httpStatus :: Lens.Lens' UpdateGraphqlApiResponse Prelude.Int
updateGraphqlApiResponse_httpStatus = Lens.lens (\UpdateGraphqlApiResponse' {httpStatus} -> httpStatus) (\s@UpdateGraphqlApiResponse' {} a -> s {httpStatus = a} :: UpdateGraphqlApiResponse)

instance Prelude.NFData UpdateGraphqlApiResponse where
  rnf UpdateGraphqlApiResponse' {..} =
    Prelude.rnf graphqlApi
      `Prelude.seq` Prelude.rnf httpStatus
