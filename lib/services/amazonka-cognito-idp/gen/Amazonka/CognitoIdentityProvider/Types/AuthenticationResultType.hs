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
-- Module      : Amazonka.CognitoIdentityProvider.Types.AuthenticationResultType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CognitoIdentityProvider.Types.AuthenticationResultType where

import Amazonka.CognitoIdentityProvider.Types.NewDeviceMetadataType
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The authentication result.
--
-- /See:/ 'newAuthenticationResultType' smart constructor.
data AuthenticationResultType = AuthenticationResultType'
  { -- | A valid access token that Amazon Cognito issued to the user who you want
    -- to authenticate.
    accessToken :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The expiration period of the authentication result in seconds.
    expiresIn :: Prelude.Maybe Prelude.Int,
    -- | The ID token.
    idToken :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The new device metadata from an authentication result.
    newDeviceMetadata' :: Prelude.Maybe NewDeviceMetadataType,
    -- | The token type.
    tokenType :: Prelude.Maybe Prelude.Text,
    -- | The refresh token.
    refreshToken :: Prelude.Maybe (Core.Sensitive Prelude.Text)
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AuthenticationResultType' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'accessToken', 'authenticationResultType_accessToken' - A valid access token that Amazon Cognito issued to the user who you want
-- to authenticate.
--
-- 'expiresIn', 'authenticationResultType_expiresIn' - The expiration period of the authentication result in seconds.
--
-- 'idToken', 'authenticationResultType_idToken' - The ID token.
--
-- 'newDeviceMetadata'', 'authenticationResultType_newDeviceMetadata' - The new device metadata from an authentication result.
--
-- 'tokenType', 'authenticationResultType_tokenType' - The token type.
--
-- 'refreshToken', 'authenticationResultType_refreshToken' - The refresh token.
newAuthenticationResultType ::
  AuthenticationResultType
newAuthenticationResultType =
  AuthenticationResultType'
    { accessToken =
        Prelude.Nothing,
      expiresIn = Prelude.Nothing,
      idToken = Prelude.Nothing,
      newDeviceMetadata' = Prelude.Nothing,
      tokenType = Prelude.Nothing,
      refreshToken = Prelude.Nothing
    }

-- | A valid access token that Amazon Cognito issued to the user who you want
-- to authenticate.
authenticationResultType_accessToken :: Lens.Lens' AuthenticationResultType (Prelude.Maybe Prelude.Text)
authenticationResultType_accessToken = Lens.lens (\AuthenticationResultType' {accessToken} -> accessToken) (\s@AuthenticationResultType' {} a -> s {accessToken = a} :: AuthenticationResultType) Prelude.. Lens.mapping Core._Sensitive

-- | The expiration period of the authentication result in seconds.
authenticationResultType_expiresIn :: Lens.Lens' AuthenticationResultType (Prelude.Maybe Prelude.Int)
authenticationResultType_expiresIn = Lens.lens (\AuthenticationResultType' {expiresIn} -> expiresIn) (\s@AuthenticationResultType' {} a -> s {expiresIn = a} :: AuthenticationResultType)

-- | The ID token.
authenticationResultType_idToken :: Lens.Lens' AuthenticationResultType (Prelude.Maybe Prelude.Text)
authenticationResultType_idToken = Lens.lens (\AuthenticationResultType' {idToken} -> idToken) (\s@AuthenticationResultType' {} a -> s {idToken = a} :: AuthenticationResultType) Prelude.. Lens.mapping Core._Sensitive

-- | The new device metadata from an authentication result.
authenticationResultType_newDeviceMetadata :: Lens.Lens' AuthenticationResultType (Prelude.Maybe NewDeviceMetadataType)
authenticationResultType_newDeviceMetadata = Lens.lens (\AuthenticationResultType' {newDeviceMetadata'} -> newDeviceMetadata') (\s@AuthenticationResultType' {} a -> s {newDeviceMetadata' = a} :: AuthenticationResultType)

-- | The token type.
authenticationResultType_tokenType :: Lens.Lens' AuthenticationResultType (Prelude.Maybe Prelude.Text)
authenticationResultType_tokenType = Lens.lens (\AuthenticationResultType' {tokenType} -> tokenType) (\s@AuthenticationResultType' {} a -> s {tokenType = a} :: AuthenticationResultType)

-- | The refresh token.
authenticationResultType_refreshToken :: Lens.Lens' AuthenticationResultType (Prelude.Maybe Prelude.Text)
authenticationResultType_refreshToken = Lens.lens (\AuthenticationResultType' {refreshToken} -> refreshToken) (\s@AuthenticationResultType' {} a -> s {refreshToken = a} :: AuthenticationResultType) Prelude.. Lens.mapping Core._Sensitive

instance Core.FromJSON AuthenticationResultType where
  parseJSON =
    Core.withObject
      "AuthenticationResultType"
      ( \x ->
          AuthenticationResultType'
            Prelude.<$> (x Core..:? "AccessToken")
            Prelude.<*> (x Core..:? "ExpiresIn")
            Prelude.<*> (x Core..:? "IdToken")
            Prelude.<*> (x Core..:? "NewDeviceMetadata")
            Prelude.<*> (x Core..:? "TokenType")
            Prelude.<*> (x Core..:? "RefreshToken")
      )

instance Prelude.Hashable AuthenticationResultType where
  hashWithSalt _salt AuthenticationResultType' {..} =
    _salt `Prelude.hashWithSalt` accessToken
      `Prelude.hashWithSalt` expiresIn
      `Prelude.hashWithSalt` idToken
      `Prelude.hashWithSalt` newDeviceMetadata'
      `Prelude.hashWithSalt` tokenType
      `Prelude.hashWithSalt` refreshToken

instance Prelude.NFData AuthenticationResultType where
  rnf AuthenticationResultType' {..} =
    Prelude.rnf accessToken
      `Prelude.seq` Prelude.rnf expiresIn
      `Prelude.seq` Prelude.rnf idToken
      `Prelude.seq` Prelude.rnf newDeviceMetadata'
      `Prelude.seq` Prelude.rnf tokenType
      `Prelude.seq` Prelude.rnf refreshToken
