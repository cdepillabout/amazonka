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
-- Module      : Amazonka.SecurityHub.Types.AwsCloudFrontDistributionOriginCustomOriginConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SecurityHub.Types.AwsCloudFrontDistributionOriginCustomOriginConfig where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.SecurityHub.Types.AwsCloudFrontDistributionOriginSslProtocols

-- | A custom origin. A custom origin is any origin that is not an Amazon S3
-- bucket, with one exception. An Amazon S3 bucket that is
-- <https://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html configured with static website hosting>
-- is a custom origin.
--
-- /See:/ 'newAwsCloudFrontDistributionOriginCustomOriginConfig' smart constructor.
data AwsCloudFrontDistributionOriginCustomOriginConfig = AwsCloudFrontDistributionOriginCustomOriginConfig'
  { -- | The HTTPS port that CloudFront uses to connect to the origin.
    httpsPort :: Prelude.Maybe Prelude.Int,
    -- | The HTTP port that CloudFront uses to connect to the origin.
    httpPort :: Prelude.Maybe Prelude.Int,
    -- | Specifies how long, in seconds, CloudFront persists its connection to
    -- the origin.
    originKeepaliveTimeout :: Prelude.Maybe Prelude.Int,
    -- | Specifies the protocol (HTTP or HTTPS) that CloudFront uses to connect
    -- to the origin.
    originProtocolPolicy :: Prelude.Maybe Prelude.Text,
    -- | Specifies how long, in seconds, CloudFront waits for a response from the
    -- origin.
    originReadTimeout :: Prelude.Maybe Prelude.Int,
    -- | Specifies the minimum SSL\/TLS protocol that CloudFront uses when
    -- connecting to your origin over HTTPS.
    originSslProtocols :: Prelude.Maybe AwsCloudFrontDistributionOriginSslProtocols
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsCloudFrontDistributionOriginCustomOriginConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpsPort', 'awsCloudFrontDistributionOriginCustomOriginConfig_httpsPort' - The HTTPS port that CloudFront uses to connect to the origin.
--
-- 'httpPort', 'awsCloudFrontDistributionOriginCustomOriginConfig_httpPort' - The HTTP port that CloudFront uses to connect to the origin.
--
-- 'originKeepaliveTimeout', 'awsCloudFrontDistributionOriginCustomOriginConfig_originKeepaliveTimeout' - Specifies how long, in seconds, CloudFront persists its connection to
-- the origin.
--
-- 'originProtocolPolicy', 'awsCloudFrontDistributionOriginCustomOriginConfig_originProtocolPolicy' - Specifies the protocol (HTTP or HTTPS) that CloudFront uses to connect
-- to the origin.
--
-- 'originReadTimeout', 'awsCloudFrontDistributionOriginCustomOriginConfig_originReadTimeout' - Specifies how long, in seconds, CloudFront waits for a response from the
-- origin.
--
-- 'originSslProtocols', 'awsCloudFrontDistributionOriginCustomOriginConfig_originSslProtocols' - Specifies the minimum SSL\/TLS protocol that CloudFront uses when
-- connecting to your origin over HTTPS.
newAwsCloudFrontDistributionOriginCustomOriginConfig ::
  AwsCloudFrontDistributionOriginCustomOriginConfig
newAwsCloudFrontDistributionOriginCustomOriginConfig =
  AwsCloudFrontDistributionOriginCustomOriginConfig'
    { httpsPort =
        Prelude.Nothing,
      httpPort =
        Prelude.Nothing,
      originKeepaliveTimeout =
        Prelude.Nothing,
      originProtocolPolicy =
        Prelude.Nothing,
      originReadTimeout =
        Prelude.Nothing,
      originSslProtocols =
        Prelude.Nothing
    }

-- | The HTTPS port that CloudFront uses to connect to the origin.
awsCloudFrontDistributionOriginCustomOriginConfig_httpsPort :: Lens.Lens' AwsCloudFrontDistributionOriginCustomOriginConfig (Prelude.Maybe Prelude.Int)
awsCloudFrontDistributionOriginCustomOriginConfig_httpsPort = Lens.lens (\AwsCloudFrontDistributionOriginCustomOriginConfig' {httpsPort} -> httpsPort) (\s@AwsCloudFrontDistributionOriginCustomOriginConfig' {} a -> s {httpsPort = a} :: AwsCloudFrontDistributionOriginCustomOriginConfig)

-- | The HTTP port that CloudFront uses to connect to the origin.
awsCloudFrontDistributionOriginCustomOriginConfig_httpPort :: Lens.Lens' AwsCloudFrontDistributionOriginCustomOriginConfig (Prelude.Maybe Prelude.Int)
awsCloudFrontDistributionOriginCustomOriginConfig_httpPort = Lens.lens (\AwsCloudFrontDistributionOriginCustomOriginConfig' {httpPort} -> httpPort) (\s@AwsCloudFrontDistributionOriginCustomOriginConfig' {} a -> s {httpPort = a} :: AwsCloudFrontDistributionOriginCustomOriginConfig)

-- | Specifies how long, in seconds, CloudFront persists its connection to
-- the origin.
awsCloudFrontDistributionOriginCustomOriginConfig_originKeepaliveTimeout :: Lens.Lens' AwsCloudFrontDistributionOriginCustomOriginConfig (Prelude.Maybe Prelude.Int)
awsCloudFrontDistributionOriginCustomOriginConfig_originKeepaliveTimeout = Lens.lens (\AwsCloudFrontDistributionOriginCustomOriginConfig' {originKeepaliveTimeout} -> originKeepaliveTimeout) (\s@AwsCloudFrontDistributionOriginCustomOriginConfig' {} a -> s {originKeepaliveTimeout = a} :: AwsCloudFrontDistributionOriginCustomOriginConfig)

-- | Specifies the protocol (HTTP or HTTPS) that CloudFront uses to connect
-- to the origin.
awsCloudFrontDistributionOriginCustomOriginConfig_originProtocolPolicy :: Lens.Lens' AwsCloudFrontDistributionOriginCustomOriginConfig (Prelude.Maybe Prelude.Text)
awsCloudFrontDistributionOriginCustomOriginConfig_originProtocolPolicy = Lens.lens (\AwsCloudFrontDistributionOriginCustomOriginConfig' {originProtocolPolicy} -> originProtocolPolicy) (\s@AwsCloudFrontDistributionOriginCustomOriginConfig' {} a -> s {originProtocolPolicy = a} :: AwsCloudFrontDistributionOriginCustomOriginConfig)

-- | Specifies how long, in seconds, CloudFront waits for a response from the
-- origin.
awsCloudFrontDistributionOriginCustomOriginConfig_originReadTimeout :: Lens.Lens' AwsCloudFrontDistributionOriginCustomOriginConfig (Prelude.Maybe Prelude.Int)
awsCloudFrontDistributionOriginCustomOriginConfig_originReadTimeout = Lens.lens (\AwsCloudFrontDistributionOriginCustomOriginConfig' {originReadTimeout} -> originReadTimeout) (\s@AwsCloudFrontDistributionOriginCustomOriginConfig' {} a -> s {originReadTimeout = a} :: AwsCloudFrontDistributionOriginCustomOriginConfig)

-- | Specifies the minimum SSL\/TLS protocol that CloudFront uses when
-- connecting to your origin over HTTPS.
awsCloudFrontDistributionOriginCustomOriginConfig_originSslProtocols :: Lens.Lens' AwsCloudFrontDistributionOriginCustomOriginConfig (Prelude.Maybe AwsCloudFrontDistributionOriginSslProtocols)
awsCloudFrontDistributionOriginCustomOriginConfig_originSslProtocols = Lens.lens (\AwsCloudFrontDistributionOriginCustomOriginConfig' {originSslProtocols} -> originSslProtocols) (\s@AwsCloudFrontDistributionOriginCustomOriginConfig' {} a -> s {originSslProtocols = a} :: AwsCloudFrontDistributionOriginCustomOriginConfig)

instance
  Core.FromJSON
    AwsCloudFrontDistributionOriginCustomOriginConfig
  where
  parseJSON =
    Core.withObject
      "AwsCloudFrontDistributionOriginCustomOriginConfig"
      ( \x ->
          AwsCloudFrontDistributionOriginCustomOriginConfig'
            Prelude.<$> (x Core..:? "HttpsPort")
              Prelude.<*> (x Core..:? "HttpPort")
              Prelude.<*> (x Core..:? "OriginKeepaliveTimeout")
              Prelude.<*> (x Core..:? "OriginProtocolPolicy")
              Prelude.<*> (x Core..:? "OriginReadTimeout")
              Prelude.<*> (x Core..:? "OriginSslProtocols")
      )

instance
  Prelude.Hashable
    AwsCloudFrontDistributionOriginCustomOriginConfig
  where
  hashWithSalt
    _salt
    AwsCloudFrontDistributionOriginCustomOriginConfig' {..} =
      _salt `Prelude.hashWithSalt` httpsPort
        `Prelude.hashWithSalt` httpPort
        `Prelude.hashWithSalt` originKeepaliveTimeout
        `Prelude.hashWithSalt` originProtocolPolicy
        `Prelude.hashWithSalt` originReadTimeout
        `Prelude.hashWithSalt` originSslProtocols

instance
  Prelude.NFData
    AwsCloudFrontDistributionOriginCustomOriginConfig
  where
  rnf
    AwsCloudFrontDistributionOriginCustomOriginConfig' {..} =
      Prelude.rnf httpsPort
        `Prelude.seq` Prelude.rnf httpPort
        `Prelude.seq` Prelude.rnf originKeepaliveTimeout
        `Prelude.seq` Prelude.rnf originProtocolPolicy
        `Prelude.seq` Prelude.rnf originReadTimeout
        `Prelude.seq` Prelude.rnf originSslProtocols

instance
  Core.ToJSON
    AwsCloudFrontDistributionOriginCustomOriginConfig
  where
  toJSON
    AwsCloudFrontDistributionOriginCustomOriginConfig' {..} =
      Core.object
        ( Prelude.catMaybes
            [ ("HttpsPort" Core..=) Prelude.<$> httpsPort,
              ("HttpPort" Core..=) Prelude.<$> httpPort,
              ("OriginKeepaliveTimeout" Core..=)
                Prelude.<$> originKeepaliveTimeout,
              ("OriginProtocolPolicy" Core..=)
                Prelude.<$> originProtocolPolicy,
              ("OriginReadTimeout" Core..=)
                Prelude.<$> originReadTimeout,
              ("OriginSslProtocols" Core..=)
                Prelude.<$> originSslProtocols
            ]
        )
