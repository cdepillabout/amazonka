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
-- Module      : Amazonka.CloudFront.Types.ResponseHeadersPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CloudFront.Types.ResponseHeadersPolicy where

import Amazonka.CloudFront.Types.ResponseHeadersPolicyConfig
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A response headers policy.
--
-- A response headers policy contains information about a set of HTTP
-- response headers and their values.
--
-- After you create a response headers policy, you can use its ID to attach
-- it to one or more cache behaviors in a CloudFront distribution. When
-- it’s attached to a cache behavior, CloudFront adds the headers in the
-- policy to HTTP responses that it sends for requests that match the cache
-- behavior.
--
-- For more information, see
-- <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/adding-response-headers.html Adding HTTP headers to CloudFront responses>
-- in the /Amazon CloudFront Developer Guide/.
--
-- /See:/ 'newResponseHeadersPolicy' smart constructor.
data ResponseHeadersPolicy = ResponseHeadersPolicy'
  { -- | The identifier for the response headers policy.
    id :: Prelude.Text,
    -- | The date and time when the response headers policy was last modified.
    lastModifiedTime :: Core.ISO8601,
    -- | A response headers policy configuration.
    --
    -- A response headers policy contains information about a set of HTTP
    -- response headers and their values. CloudFront adds the headers in the
    -- policy to HTTP responses that it sends for requests that match a cache
    -- behavior that’s associated with the policy.
    responseHeadersPolicyConfig :: ResponseHeadersPolicyConfig
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ResponseHeadersPolicy' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'id', 'responseHeadersPolicy_id' - The identifier for the response headers policy.
--
-- 'lastModifiedTime', 'responseHeadersPolicy_lastModifiedTime' - The date and time when the response headers policy was last modified.
--
-- 'responseHeadersPolicyConfig', 'responseHeadersPolicy_responseHeadersPolicyConfig' - A response headers policy configuration.
--
-- A response headers policy contains information about a set of HTTP
-- response headers and their values. CloudFront adds the headers in the
-- policy to HTTP responses that it sends for requests that match a cache
-- behavior that’s associated with the policy.
newResponseHeadersPolicy ::
  -- | 'id'
  Prelude.Text ->
  -- | 'lastModifiedTime'
  Prelude.UTCTime ->
  -- | 'responseHeadersPolicyConfig'
  ResponseHeadersPolicyConfig ->
  ResponseHeadersPolicy
newResponseHeadersPolicy
  pId_
  pLastModifiedTime_
  pResponseHeadersPolicyConfig_ =
    ResponseHeadersPolicy'
      { id = pId_,
        lastModifiedTime =
          Core._Time Lens.# pLastModifiedTime_,
        responseHeadersPolicyConfig =
          pResponseHeadersPolicyConfig_
      }

-- | The identifier for the response headers policy.
responseHeadersPolicy_id :: Lens.Lens' ResponseHeadersPolicy Prelude.Text
responseHeadersPolicy_id = Lens.lens (\ResponseHeadersPolicy' {id} -> id) (\s@ResponseHeadersPolicy' {} a -> s {id = a} :: ResponseHeadersPolicy)

-- | The date and time when the response headers policy was last modified.
responseHeadersPolicy_lastModifiedTime :: Lens.Lens' ResponseHeadersPolicy Prelude.UTCTime
responseHeadersPolicy_lastModifiedTime = Lens.lens (\ResponseHeadersPolicy' {lastModifiedTime} -> lastModifiedTime) (\s@ResponseHeadersPolicy' {} a -> s {lastModifiedTime = a} :: ResponseHeadersPolicy) Prelude.. Core._Time

-- | A response headers policy configuration.
--
-- A response headers policy contains information about a set of HTTP
-- response headers and their values. CloudFront adds the headers in the
-- policy to HTTP responses that it sends for requests that match a cache
-- behavior that’s associated with the policy.
responseHeadersPolicy_responseHeadersPolicyConfig :: Lens.Lens' ResponseHeadersPolicy ResponseHeadersPolicyConfig
responseHeadersPolicy_responseHeadersPolicyConfig = Lens.lens (\ResponseHeadersPolicy' {responseHeadersPolicyConfig} -> responseHeadersPolicyConfig) (\s@ResponseHeadersPolicy' {} a -> s {responseHeadersPolicyConfig = a} :: ResponseHeadersPolicy)

instance Core.FromXML ResponseHeadersPolicy where
  parseXML x =
    ResponseHeadersPolicy'
      Prelude.<$> (x Core..@ "Id")
      Prelude.<*> (x Core..@ "LastModifiedTime")
      Prelude.<*> (x Core..@ "ResponseHeadersPolicyConfig")

instance Prelude.Hashable ResponseHeadersPolicy where
  hashWithSalt _salt ResponseHeadersPolicy' {..} =
    _salt `Prelude.hashWithSalt` id
      `Prelude.hashWithSalt` lastModifiedTime
      `Prelude.hashWithSalt` responseHeadersPolicyConfig

instance Prelude.NFData ResponseHeadersPolicy where
  rnf ResponseHeadersPolicy' {..} =
    Prelude.rnf id
      `Prelude.seq` Prelude.rnf lastModifiedTime
      `Prelude.seq` Prelude.rnf responseHeadersPolicyConfig
