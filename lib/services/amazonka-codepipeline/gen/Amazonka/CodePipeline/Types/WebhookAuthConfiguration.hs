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
-- Module      : Amazonka.CodePipeline.Types.WebhookAuthConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CodePipeline.Types.WebhookAuthConfiguration where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The authentication applied to incoming webhook trigger requests.
--
-- /See:/ 'newWebhookAuthConfiguration' smart constructor.
data WebhookAuthConfiguration = WebhookAuthConfiguration'
  { -- | The property used to configure GitHub authentication. For GITHUB_HMAC,
    -- only the @SecretToken@ property must be set.
    secretToken :: Prelude.Maybe Prelude.Text,
    -- | The property used to configure acceptance of webhooks in an IP address
    -- range. For IP, only the @AllowedIPRange@ property must be set. This
    -- property must be set to a valid CIDR range.
    allowedIPRange :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'WebhookAuthConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'secretToken', 'webhookAuthConfiguration_secretToken' - The property used to configure GitHub authentication. For GITHUB_HMAC,
-- only the @SecretToken@ property must be set.
--
-- 'allowedIPRange', 'webhookAuthConfiguration_allowedIPRange' - The property used to configure acceptance of webhooks in an IP address
-- range. For IP, only the @AllowedIPRange@ property must be set. This
-- property must be set to a valid CIDR range.
newWebhookAuthConfiguration ::
  WebhookAuthConfiguration
newWebhookAuthConfiguration =
  WebhookAuthConfiguration'
    { secretToken =
        Prelude.Nothing,
      allowedIPRange = Prelude.Nothing
    }

-- | The property used to configure GitHub authentication. For GITHUB_HMAC,
-- only the @SecretToken@ property must be set.
webhookAuthConfiguration_secretToken :: Lens.Lens' WebhookAuthConfiguration (Prelude.Maybe Prelude.Text)
webhookAuthConfiguration_secretToken = Lens.lens (\WebhookAuthConfiguration' {secretToken} -> secretToken) (\s@WebhookAuthConfiguration' {} a -> s {secretToken = a} :: WebhookAuthConfiguration)

-- | The property used to configure acceptance of webhooks in an IP address
-- range. For IP, only the @AllowedIPRange@ property must be set. This
-- property must be set to a valid CIDR range.
webhookAuthConfiguration_allowedIPRange :: Lens.Lens' WebhookAuthConfiguration (Prelude.Maybe Prelude.Text)
webhookAuthConfiguration_allowedIPRange = Lens.lens (\WebhookAuthConfiguration' {allowedIPRange} -> allowedIPRange) (\s@WebhookAuthConfiguration' {} a -> s {allowedIPRange = a} :: WebhookAuthConfiguration)

instance Core.FromJSON WebhookAuthConfiguration where
  parseJSON =
    Core.withObject
      "WebhookAuthConfiguration"
      ( \x ->
          WebhookAuthConfiguration'
            Prelude.<$> (x Core..:? "SecretToken")
            Prelude.<*> (x Core..:? "AllowedIPRange")
      )

instance Prelude.Hashable WebhookAuthConfiguration where
  hashWithSalt _salt WebhookAuthConfiguration' {..} =
    _salt `Prelude.hashWithSalt` secretToken
      `Prelude.hashWithSalt` allowedIPRange

instance Prelude.NFData WebhookAuthConfiguration where
  rnf WebhookAuthConfiguration' {..} =
    Prelude.rnf secretToken
      `Prelude.seq` Prelude.rnf allowedIPRange

instance Core.ToJSON WebhookAuthConfiguration where
  toJSON WebhookAuthConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("SecretToken" Core..=) Prelude.<$> secretToken,
            ("AllowedIPRange" Core..=)
              Prelude.<$> allowedIPRange
          ]
      )
