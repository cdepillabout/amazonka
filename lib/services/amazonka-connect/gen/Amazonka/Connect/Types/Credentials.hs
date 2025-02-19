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
-- Module      : Amazonka.Connect.Types.Credentials
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Connect.Types.Credentials where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Contains credentials to use for federation.
--
-- /See:/ 'newCredentials' smart constructor.
data Credentials = Credentials'
  { -- | An access token generated for a federated user to access Amazon Connect.
    accessToken :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | A token generated with an expiration time for the session a user is
    -- logged in to Amazon Connect.
    accessTokenExpiration :: Prelude.Maybe Core.POSIX,
    -- | Renews the expiration timer for a generated token.
    refreshTokenExpiration :: Prelude.Maybe Core.POSIX,
    -- | Renews a token generated for a user to access the Amazon Connect
    -- instance.
    refreshToken :: Prelude.Maybe (Core.Sensitive Prelude.Text)
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Credentials' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'accessToken', 'credentials_accessToken' - An access token generated for a federated user to access Amazon Connect.
--
-- 'accessTokenExpiration', 'credentials_accessTokenExpiration' - A token generated with an expiration time for the session a user is
-- logged in to Amazon Connect.
--
-- 'refreshTokenExpiration', 'credentials_refreshTokenExpiration' - Renews the expiration timer for a generated token.
--
-- 'refreshToken', 'credentials_refreshToken' - Renews a token generated for a user to access the Amazon Connect
-- instance.
newCredentials ::
  Credentials
newCredentials =
  Credentials'
    { accessToken = Prelude.Nothing,
      accessTokenExpiration = Prelude.Nothing,
      refreshTokenExpiration = Prelude.Nothing,
      refreshToken = Prelude.Nothing
    }

-- | An access token generated for a federated user to access Amazon Connect.
credentials_accessToken :: Lens.Lens' Credentials (Prelude.Maybe Prelude.Text)
credentials_accessToken = Lens.lens (\Credentials' {accessToken} -> accessToken) (\s@Credentials' {} a -> s {accessToken = a} :: Credentials) Prelude.. Lens.mapping Core._Sensitive

-- | A token generated with an expiration time for the session a user is
-- logged in to Amazon Connect.
credentials_accessTokenExpiration :: Lens.Lens' Credentials (Prelude.Maybe Prelude.UTCTime)
credentials_accessTokenExpiration = Lens.lens (\Credentials' {accessTokenExpiration} -> accessTokenExpiration) (\s@Credentials' {} a -> s {accessTokenExpiration = a} :: Credentials) Prelude.. Lens.mapping Core._Time

-- | Renews the expiration timer for a generated token.
credentials_refreshTokenExpiration :: Lens.Lens' Credentials (Prelude.Maybe Prelude.UTCTime)
credentials_refreshTokenExpiration = Lens.lens (\Credentials' {refreshTokenExpiration} -> refreshTokenExpiration) (\s@Credentials' {} a -> s {refreshTokenExpiration = a} :: Credentials) Prelude.. Lens.mapping Core._Time

-- | Renews a token generated for a user to access the Amazon Connect
-- instance.
credentials_refreshToken :: Lens.Lens' Credentials (Prelude.Maybe Prelude.Text)
credentials_refreshToken = Lens.lens (\Credentials' {refreshToken} -> refreshToken) (\s@Credentials' {} a -> s {refreshToken = a} :: Credentials) Prelude.. Lens.mapping Core._Sensitive

instance Core.FromJSON Credentials where
  parseJSON =
    Core.withObject
      "Credentials"
      ( \x ->
          Credentials'
            Prelude.<$> (x Core..:? "AccessToken")
            Prelude.<*> (x Core..:? "AccessTokenExpiration")
            Prelude.<*> (x Core..:? "RefreshTokenExpiration")
            Prelude.<*> (x Core..:? "RefreshToken")
      )

instance Prelude.Hashable Credentials where
  hashWithSalt _salt Credentials' {..} =
    _salt `Prelude.hashWithSalt` accessToken
      `Prelude.hashWithSalt` accessTokenExpiration
      `Prelude.hashWithSalt` refreshTokenExpiration
      `Prelude.hashWithSalt` refreshToken

instance Prelude.NFData Credentials where
  rnf Credentials' {..} =
    Prelude.rnf accessToken
      `Prelude.seq` Prelude.rnf accessTokenExpiration
      `Prelude.seq` Prelude.rnf refreshTokenExpiration
      `Prelude.seq` Prelude.rnf refreshToken
