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
-- Module      : Amazonka.AppFlow.Types.ApiKeyCredentials
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.AppFlow.Types.ApiKeyCredentials where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The API key credentials required for API key authentication.
--
-- /See:/ 'newApiKeyCredentials' smart constructor.
data ApiKeyCredentials = ApiKeyCredentials'
  { -- | The API secret key required for API key authentication.
    apiSecretKey :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The API key required for API key authentication.
    apiKey :: Core.Sensitive Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ApiKeyCredentials' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'apiSecretKey', 'apiKeyCredentials_apiSecretKey' - The API secret key required for API key authentication.
--
-- 'apiKey', 'apiKeyCredentials_apiKey' - The API key required for API key authentication.
newApiKeyCredentials ::
  -- | 'apiKey'
  Prelude.Text ->
  ApiKeyCredentials
newApiKeyCredentials pApiKey_ =
  ApiKeyCredentials'
    { apiSecretKey = Prelude.Nothing,
      apiKey = Core._Sensitive Lens.# pApiKey_
    }

-- | The API secret key required for API key authentication.
apiKeyCredentials_apiSecretKey :: Lens.Lens' ApiKeyCredentials (Prelude.Maybe Prelude.Text)
apiKeyCredentials_apiSecretKey = Lens.lens (\ApiKeyCredentials' {apiSecretKey} -> apiSecretKey) (\s@ApiKeyCredentials' {} a -> s {apiSecretKey = a} :: ApiKeyCredentials) Prelude.. Lens.mapping Core._Sensitive

-- | The API key required for API key authentication.
apiKeyCredentials_apiKey :: Lens.Lens' ApiKeyCredentials Prelude.Text
apiKeyCredentials_apiKey = Lens.lens (\ApiKeyCredentials' {apiKey} -> apiKey) (\s@ApiKeyCredentials' {} a -> s {apiKey = a} :: ApiKeyCredentials) Prelude.. Core._Sensitive

instance Prelude.Hashable ApiKeyCredentials where
  hashWithSalt _salt ApiKeyCredentials' {..} =
    _salt `Prelude.hashWithSalt` apiSecretKey
      `Prelude.hashWithSalt` apiKey

instance Prelude.NFData ApiKeyCredentials where
  rnf ApiKeyCredentials' {..} =
    Prelude.rnf apiSecretKey
      `Prelude.seq` Prelude.rnf apiKey

instance Core.ToJSON ApiKeyCredentials where
  toJSON ApiKeyCredentials' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("apiSecretKey" Core..=) Prelude.<$> apiSecretKey,
            Prelude.Just ("apiKey" Core..= apiKey)
          ]
      )
