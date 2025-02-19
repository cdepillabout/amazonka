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
-- Module      : Amazonka.AppSync.Types.AdditionalAuthenticationProvider
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.AppSync.Types.AdditionalAuthenticationProvider where

import Amazonka.AppSync.Types.AuthenticationType
import Amazonka.AppSync.Types.CognitoUserPoolConfig
import Amazonka.AppSync.Types.LambdaAuthorizerConfig
import Amazonka.AppSync.Types.OpenIDConnectConfig
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes an additional authentication provider.
--
-- /See:/ 'newAdditionalAuthenticationProvider' smart constructor.
data AdditionalAuthenticationProvider = AdditionalAuthenticationProvider'
  { -- | The authentication type: API key, Identity and Access Management (IAM),
    -- OpenID Connect (OIDC), Amazon Cognito user pools, or Lambda.
    authenticationType :: Prelude.Maybe AuthenticationType,
    -- | The OIDC configuration.
    openIDConnectConfig :: Prelude.Maybe OpenIDConnectConfig,
    -- | The Amazon Cognito user pool configuration.
    userPoolConfig :: Prelude.Maybe CognitoUserPoolConfig,
    -- | Configuration for Lambda function authorization.
    lambdaAuthorizerConfig :: Prelude.Maybe LambdaAuthorizerConfig
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AdditionalAuthenticationProvider' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'authenticationType', 'additionalAuthenticationProvider_authenticationType' - The authentication type: API key, Identity and Access Management (IAM),
-- OpenID Connect (OIDC), Amazon Cognito user pools, or Lambda.
--
-- 'openIDConnectConfig', 'additionalAuthenticationProvider_openIDConnectConfig' - The OIDC configuration.
--
-- 'userPoolConfig', 'additionalAuthenticationProvider_userPoolConfig' - The Amazon Cognito user pool configuration.
--
-- 'lambdaAuthorizerConfig', 'additionalAuthenticationProvider_lambdaAuthorizerConfig' - Configuration for Lambda function authorization.
newAdditionalAuthenticationProvider ::
  AdditionalAuthenticationProvider
newAdditionalAuthenticationProvider =
  AdditionalAuthenticationProvider'
    { authenticationType =
        Prelude.Nothing,
      openIDConnectConfig = Prelude.Nothing,
      userPoolConfig = Prelude.Nothing,
      lambdaAuthorizerConfig = Prelude.Nothing
    }

-- | The authentication type: API key, Identity and Access Management (IAM),
-- OpenID Connect (OIDC), Amazon Cognito user pools, or Lambda.
additionalAuthenticationProvider_authenticationType :: Lens.Lens' AdditionalAuthenticationProvider (Prelude.Maybe AuthenticationType)
additionalAuthenticationProvider_authenticationType = Lens.lens (\AdditionalAuthenticationProvider' {authenticationType} -> authenticationType) (\s@AdditionalAuthenticationProvider' {} a -> s {authenticationType = a} :: AdditionalAuthenticationProvider)

-- | The OIDC configuration.
additionalAuthenticationProvider_openIDConnectConfig :: Lens.Lens' AdditionalAuthenticationProvider (Prelude.Maybe OpenIDConnectConfig)
additionalAuthenticationProvider_openIDConnectConfig = Lens.lens (\AdditionalAuthenticationProvider' {openIDConnectConfig} -> openIDConnectConfig) (\s@AdditionalAuthenticationProvider' {} a -> s {openIDConnectConfig = a} :: AdditionalAuthenticationProvider)

-- | The Amazon Cognito user pool configuration.
additionalAuthenticationProvider_userPoolConfig :: Lens.Lens' AdditionalAuthenticationProvider (Prelude.Maybe CognitoUserPoolConfig)
additionalAuthenticationProvider_userPoolConfig = Lens.lens (\AdditionalAuthenticationProvider' {userPoolConfig} -> userPoolConfig) (\s@AdditionalAuthenticationProvider' {} a -> s {userPoolConfig = a} :: AdditionalAuthenticationProvider)

-- | Configuration for Lambda function authorization.
additionalAuthenticationProvider_lambdaAuthorizerConfig :: Lens.Lens' AdditionalAuthenticationProvider (Prelude.Maybe LambdaAuthorizerConfig)
additionalAuthenticationProvider_lambdaAuthorizerConfig = Lens.lens (\AdditionalAuthenticationProvider' {lambdaAuthorizerConfig} -> lambdaAuthorizerConfig) (\s@AdditionalAuthenticationProvider' {} a -> s {lambdaAuthorizerConfig = a} :: AdditionalAuthenticationProvider)

instance
  Core.FromJSON
    AdditionalAuthenticationProvider
  where
  parseJSON =
    Core.withObject
      "AdditionalAuthenticationProvider"
      ( \x ->
          AdditionalAuthenticationProvider'
            Prelude.<$> (x Core..:? "authenticationType")
            Prelude.<*> (x Core..:? "openIDConnectConfig")
            Prelude.<*> (x Core..:? "userPoolConfig")
            Prelude.<*> (x Core..:? "lambdaAuthorizerConfig")
      )

instance
  Prelude.Hashable
    AdditionalAuthenticationProvider
  where
  hashWithSalt
    _salt
    AdditionalAuthenticationProvider' {..} =
      _salt `Prelude.hashWithSalt` authenticationType
        `Prelude.hashWithSalt` openIDConnectConfig
        `Prelude.hashWithSalt` userPoolConfig
        `Prelude.hashWithSalt` lambdaAuthorizerConfig

instance
  Prelude.NFData
    AdditionalAuthenticationProvider
  where
  rnf AdditionalAuthenticationProvider' {..} =
    Prelude.rnf authenticationType
      `Prelude.seq` Prelude.rnf openIDConnectConfig
      `Prelude.seq` Prelude.rnf userPoolConfig
      `Prelude.seq` Prelude.rnf lambdaAuthorizerConfig

instance Core.ToJSON AdditionalAuthenticationProvider where
  toJSON AdditionalAuthenticationProvider' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("authenticationType" Core..=)
              Prelude.<$> authenticationType,
            ("openIDConnectConfig" Core..=)
              Prelude.<$> openIDConnectConfig,
            ("userPoolConfig" Core..=)
              Prelude.<$> userPoolConfig,
            ("lambdaAuthorizerConfig" Core..=)
              Prelude.<$> lambdaAuthorizerConfig
          ]
      )
