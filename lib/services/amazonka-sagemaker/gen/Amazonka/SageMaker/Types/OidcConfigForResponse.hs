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
-- Module      : Amazonka.SageMaker.Types.OidcConfigForResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SageMaker.Types.OidcConfigForResponse where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Your OIDC IdP workforce configuration.
--
-- /See:/ 'newOidcConfigForResponse' smart constructor.
data OidcConfigForResponse = OidcConfigForResponse'
  { -- | The OIDC IdP issuer used to configure your private workforce.
    issuer :: Prelude.Maybe Prelude.Text,
    -- | The OIDC IdP authorization endpoint used to configure your private
    -- workforce.
    authorizationEndpoint :: Prelude.Maybe Prelude.Text,
    -- | The OIDC IdP user information endpoint used to configure your private
    -- workforce.
    userInfoEndpoint :: Prelude.Maybe Prelude.Text,
    -- | The OIDC IdP client ID used to configure your private workforce.
    clientId :: Prelude.Maybe Prelude.Text,
    -- | The OIDC IdP logout endpoint used to configure your private workforce.
    logoutEndpoint :: Prelude.Maybe Prelude.Text,
    -- | The OIDC IdP JSON Web Key Set (Jwks) URI used to configure your private
    -- workforce.
    jwksUri :: Prelude.Maybe Prelude.Text,
    -- | The OIDC IdP token endpoint used to configure your private workforce.
    tokenEndpoint :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'OidcConfigForResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'issuer', 'oidcConfigForResponse_issuer' - The OIDC IdP issuer used to configure your private workforce.
--
-- 'authorizationEndpoint', 'oidcConfigForResponse_authorizationEndpoint' - The OIDC IdP authorization endpoint used to configure your private
-- workforce.
--
-- 'userInfoEndpoint', 'oidcConfigForResponse_userInfoEndpoint' - The OIDC IdP user information endpoint used to configure your private
-- workforce.
--
-- 'clientId', 'oidcConfigForResponse_clientId' - The OIDC IdP client ID used to configure your private workforce.
--
-- 'logoutEndpoint', 'oidcConfigForResponse_logoutEndpoint' - The OIDC IdP logout endpoint used to configure your private workforce.
--
-- 'jwksUri', 'oidcConfigForResponse_jwksUri' - The OIDC IdP JSON Web Key Set (Jwks) URI used to configure your private
-- workforce.
--
-- 'tokenEndpoint', 'oidcConfigForResponse_tokenEndpoint' - The OIDC IdP token endpoint used to configure your private workforce.
newOidcConfigForResponse ::
  OidcConfigForResponse
newOidcConfigForResponse =
  OidcConfigForResponse'
    { issuer = Prelude.Nothing,
      authorizationEndpoint = Prelude.Nothing,
      userInfoEndpoint = Prelude.Nothing,
      clientId = Prelude.Nothing,
      logoutEndpoint = Prelude.Nothing,
      jwksUri = Prelude.Nothing,
      tokenEndpoint = Prelude.Nothing
    }

-- | The OIDC IdP issuer used to configure your private workforce.
oidcConfigForResponse_issuer :: Lens.Lens' OidcConfigForResponse (Prelude.Maybe Prelude.Text)
oidcConfigForResponse_issuer = Lens.lens (\OidcConfigForResponse' {issuer} -> issuer) (\s@OidcConfigForResponse' {} a -> s {issuer = a} :: OidcConfigForResponse)

-- | The OIDC IdP authorization endpoint used to configure your private
-- workforce.
oidcConfigForResponse_authorizationEndpoint :: Lens.Lens' OidcConfigForResponse (Prelude.Maybe Prelude.Text)
oidcConfigForResponse_authorizationEndpoint = Lens.lens (\OidcConfigForResponse' {authorizationEndpoint} -> authorizationEndpoint) (\s@OidcConfigForResponse' {} a -> s {authorizationEndpoint = a} :: OidcConfigForResponse)

-- | The OIDC IdP user information endpoint used to configure your private
-- workforce.
oidcConfigForResponse_userInfoEndpoint :: Lens.Lens' OidcConfigForResponse (Prelude.Maybe Prelude.Text)
oidcConfigForResponse_userInfoEndpoint = Lens.lens (\OidcConfigForResponse' {userInfoEndpoint} -> userInfoEndpoint) (\s@OidcConfigForResponse' {} a -> s {userInfoEndpoint = a} :: OidcConfigForResponse)

-- | The OIDC IdP client ID used to configure your private workforce.
oidcConfigForResponse_clientId :: Lens.Lens' OidcConfigForResponse (Prelude.Maybe Prelude.Text)
oidcConfigForResponse_clientId = Lens.lens (\OidcConfigForResponse' {clientId} -> clientId) (\s@OidcConfigForResponse' {} a -> s {clientId = a} :: OidcConfigForResponse)

-- | The OIDC IdP logout endpoint used to configure your private workforce.
oidcConfigForResponse_logoutEndpoint :: Lens.Lens' OidcConfigForResponse (Prelude.Maybe Prelude.Text)
oidcConfigForResponse_logoutEndpoint = Lens.lens (\OidcConfigForResponse' {logoutEndpoint} -> logoutEndpoint) (\s@OidcConfigForResponse' {} a -> s {logoutEndpoint = a} :: OidcConfigForResponse)

-- | The OIDC IdP JSON Web Key Set (Jwks) URI used to configure your private
-- workforce.
oidcConfigForResponse_jwksUri :: Lens.Lens' OidcConfigForResponse (Prelude.Maybe Prelude.Text)
oidcConfigForResponse_jwksUri = Lens.lens (\OidcConfigForResponse' {jwksUri} -> jwksUri) (\s@OidcConfigForResponse' {} a -> s {jwksUri = a} :: OidcConfigForResponse)

-- | The OIDC IdP token endpoint used to configure your private workforce.
oidcConfigForResponse_tokenEndpoint :: Lens.Lens' OidcConfigForResponse (Prelude.Maybe Prelude.Text)
oidcConfigForResponse_tokenEndpoint = Lens.lens (\OidcConfigForResponse' {tokenEndpoint} -> tokenEndpoint) (\s@OidcConfigForResponse' {} a -> s {tokenEndpoint = a} :: OidcConfigForResponse)

instance Core.FromJSON OidcConfigForResponse where
  parseJSON =
    Core.withObject
      "OidcConfigForResponse"
      ( \x ->
          OidcConfigForResponse'
            Prelude.<$> (x Core..:? "Issuer")
            Prelude.<*> (x Core..:? "AuthorizationEndpoint")
            Prelude.<*> (x Core..:? "UserInfoEndpoint")
            Prelude.<*> (x Core..:? "ClientId")
            Prelude.<*> (x Core..:? "LogoutEndpoint")
            Prelude.<*> (x Core..:? "JwksUri")
            Prelude.<*> (x Core..:? "TokenEndpoint")
      )

instance Prelude.Hashable OidcConfigForResponse where
  hashWithSalt _salt OidcConfigForResponse' {..} =
    _salt `Prelude.hashWithSalt` issuer
      `Prelude.hashWithSalt` authorizationEndpoint
      `Prelude.hashWithSalt` userInfoEndpoint
      `Prelude.hashWithSalt` clientId
      `Prelude.hashWithSalt` logoutEndpoint
      `Prelude.hashWithSalt` jwksUri
      `Prelude.hashWithSalt` tokenEndpoint

instance Prelude.NFData OidcConfigForResponse where
  rnf OidcConfigForResponse' {..} =
    Prelude.rnf issuer
      `Prelude.seq` Prelude.rnf authorizationEndpoint
      `Prelude.seq` Prelude.rnf userInfoEndpoint
      `Prelude.seq` Prelude.rnf clientId
      `Prelude.seq` Prelude.rnf logoutEndpoint
      `Prelude.seq` Prelude.rnf jwksUri
      `Prelude.seq` Prelude.rnf tokenEndpoint
