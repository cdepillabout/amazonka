{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.SSOOIDC.Lens
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SSOOIDC.Lens
  ( -- * Operations

    -- ** CreateToken
    createToken_code,
    createToken_redirectUri,
    createToken_scope,
    createToken_refreshToken,
    createToken_clientId,
    createToken_clientSecret,
    createToken_grantType,
    createToken_deviceCode,
    createTokenResponse_accessToken,
    createTokenResponse_expiresIn,
    createTokenResponse_idToken,
    createTokenResponse_tokenType,
    createTokenResponse_refreshToken,
    createTokenResponse_httpStatus,

    -- ** RegisterClient
    registerClient_scopes,
    registerClient_clientName,
    registerClient_clientType,
    registerClientResponse_clientSecret,
    registerClientResponse_authorizationEndpoint,
    registerClientResponse_clientId,
    registerClientResponse_clientIdIssuedAt,
    registerClientResponse_clientSecretExpiresAt,
    registerClientResponse_tokenEndpoint,
    registerClientResponse_httpStatus,

    -- ** StartDeviceAuthorization
    startDeviceAuthorization_clientId,
    startDeviceAuthorization_clientSecret,
    startDeviceAuthorization_startUrl,
    startDeviceAuthorizationResponse_deviceCode,
    startDeviceAuthorizationResponse_interval,
    startDeviceAuthorizationResponse_expiresIn,
    startDeviceAuthorizationResponse_userCode,
    startDeviceAuthorizationResponse_verificationUriComplete,
    startDeviceAuthorizationResponse_verificationUri,
    startDeviceAuthorizationResponse_httpStatus,

    -- * Types
  )
where

import Amazonka.SSOOIDC.CreateToken
import Amazonka.SSOOIDC.RegisterClient
import Amazonka.SSOOIDC.StartDeviceAuthorization
