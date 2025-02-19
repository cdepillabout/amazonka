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
-- Module      : Amazonka.CloudWatchEvents.Types.ConnectionOAuthResponseParameters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CloudWatchEvents.Types.ConnectionOAuthResponseParameters where

import Amazonka.CloudWatchEvents.Types.ConnectionHttpParameters
import Amazonka.CloudWatchEvents.Types.ConnectionOAuthClientResponseParameters
import Amazonka.CloudWatchEvents.Types.ConnectionOAuthHttpMethod
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Contains the response parameters when OAuth is specified as the
-- authorization type.
--
-- /See:/ 'newConnectionOAuthResponseParameters' smart constructor.
data ConnectionOAuthResponseParameters = ConnectionOAuthResponseParameters'
  { -- | The URL to the HTTP endpoint that authorized the request.
    authorizationEndpoint :: Prelude.Maybe Prelude.Text,
    -- | The additional HTTP parameters used for the OAuth authorization request.
    oAuthHttpParameters :: Prelude.Maybe ConnectionHttpParameters,
    -- | A @ConnectionOAuthClientResponseParameters@ object that contains details
    -- about the client parameters returned when OAuth is specified as the
    -- authorization type.
    clientParameters :: Prelude.Maybe ConnectionOAuthClientResponseParameters,
    -- | The method used to connect to the HTTP endpoint.
    httpMethod :: Prelude.Maybe ConnectionOAuthHttpMethod
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ConnectionOAuthResponseParameters' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'authorizationEndpoint', 'connectionOAuthResponseParameters_authorizationEndpoint' - The URL to the HTTP endpoint that authorized the request.
--
-- 'oAuthHttpParameters', 'connectionOAuthResponseParameters_oAuthHttpParameters' - The additional HTTP parameters used for the OAuth authorization request.
--
-- 'clientParameters', 'connectionOAuthResponseParameters_clientParameters' - A @ConnectionOAuthClientResponseParameters@ object that contains details
-- about the client parameters returned when OAuth is specified as the
-- authorization type.
--
-- 'httpMethod', 'connectionOAuthResponseParameters_httpMethod' - The method used to connect to the HTTP endpoint.
newConnectionOAuthResponseParameters ::
  ConnectionOAuthResponseParameters
newConnectionOAuthResponseParameters =
  ConnectionOAuthResponseParameters'
    { authorizationEndpoint =
        Prelude.Nothing,
      oAuthHttpParameters = Prelude.Nothing,
      clientParameters = Prelude.Nothing,
      httpMethod = Prelude.Nothing
    }

-- | The URL to the HTTP endpoint that authorized the request.
connectionOAuthResponseParameters_authorizationEndpoint :: Lens.Lens' ConnectionOAuthResponseParameters (Prelude.Maybe Prelude.Text)
connectionOAuthResponseParameters_authorizationEndpoint = Lens.lens (\ConnectionOAuthResponseParameters' {authorizationEndpoint} -> authorizationEndpoint) (\s@ConnectionOAuthResponseParameters' {} a -> s {authorizationEndpoint = a} :: ConnectionOAuthResponseParameters)

-- | The additional HTTP parameters used for the OAuth authorization request.
connectionOAuthResponseParameters_oAuthHttpParameters :: Lens.Lens' ConnectionOAuthResponseParameters (Prelude.Maybe ConnectionHttpParameters)
connectionOAuthResponseParameters_oAuthHttpParameters = Lens.lens (\ConnectionOAuthResponseParameters' {oAuthHttpParameters} -> oAuthHttpParameters) (\s@ConnectionOAuthResponseParameters' {} a -> s {oAuthHttpParameters = a} :: ConnectionOAuthResponseParameters)

-- | A @ConnectionOAuthClientResponseParameters@ object that contains details
-- about the client parameters returned when OAuth is specified as the
-- authorization type.
connectionOAuthResponseParameters_clientParameters :: Lens.Lens' ConnectionOAuthResponseParameters (Prelude.Maybe ConnectionOAuthClientResponseParameters)
connectionOAuthResponseParameters_clientParameters = Lens.lens (\ConnectionOAuthResponseParameters' {clientParameters} -> clientParameters) (\s@ConnectionOAuthResponseParameters' {} a -> s {clientParameters = a} :: ConnectionOAuthResponseParameters)

-- | The method used to connect to the HTTP endpoint.
connectionOAuthResponseParameters_httpMethod :: Lens.Lens' ConnectionOAuthResponseParameters (Prelude.Maybe ConnectionOAuthHttpMethod)
connectionOAuthResponseParameters_httpMethod = Lens.lens (\ConnectionOAuthResponseParameters' {httpMethod} -> httpMethod) (\s@ConnectionOAuthResponseParameters' {} a -> s {httpMethod = a} :: ConnectionOAuthResponseParameters)

instance
  Core.FromJSON
    ConnectionOAuthResponseParameters
  where
  parseJSON =
    Core.withObject
      "ConnectionOAuthResponseParameters"
      ( \x ->
          ConnectionOAuthResponseParameters'
            Prelude.<$> (x Core..:? "AuthorizationEndpoint")
            Prelude.<*> (x Core..:? "OAuthHttpParameters")
            Prelude.<*> (x Core..:? "ClientParameters")
            Prelude.<*> (x Core..:? "HttpMethod")
      )

instance
  Prelude.Hashable
    ConnectionOAuthResponseParameters
  where
  hashWithSalt
    _salt
    ConnectionOAuthResponseParameters' {..} =
      _salt `Prelude.hashWithSalt` authorizationEndpoint
        `Prelude.hashWithSalt` oAuthHttpParameters
        `Prelude.hashWithSalt` clientParameters
        `Prelude.hashWithSalt` httpMethod

instance
  Prelude.NFData
    ConnectionOAuthResponseParameters
  where
  rnf ConnectionOAuthResponseParameters' {..} =
    Prelude.rnf authorizationEndpoint
      `Prelude.seq` Prelude.rnf oAuthHttpParameters
      `Prelude.seq` Prelude.rnf clientParameters
      `Prelude.seq` Prelude.rnf httpMethod
