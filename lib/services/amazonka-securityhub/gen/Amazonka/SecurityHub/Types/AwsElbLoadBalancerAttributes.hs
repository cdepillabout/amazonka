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
-- Module      : Amazonka.SecurityHub.Types.AwsElbLoadBalancerAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SecurityHub.Types.AwsElbLoadBalancerAttributes where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.SecurityHub.Types.AwsElbLoadBalancerAccessLog
import Amazonka.SecurityHub.Types.AwsElbLoadBalancerAdditionalAttribute
import Amazonka.SecurityHub.Types.AwsElbLoadBalancerConnectionDraining
import Amazonka.SecurityHub.Types.AwsElbLoadBalancerConnectionSettings
import Amazonka.SecurityHub.Types.AwsElbLoadBalancerCrossZoneLoadBalancing

-- | Contains attributes for the load balancer.
--
-- /See:/ 'newAwsElbLoadBalancerAttributes' smart constructor.
data AwsElbLoadBalancerAttributes = AwsElbLoadBalancerAttributes'
  { -- | Connection settings for the load balancer.
    --
    -- If an idle timeout is configured, the load balancer allows connections
    -- to remain idle for the specified duration. When a connection is idle, no
    -- data is sent over the connection.
    connectionSettings :: Prelude.Maybe AwsElbLoadBalancerConnectionSettings,
    -- | Information about the connection draining configuration for the load
    -- balancer.
    --
    -- If connection draining is enabled, the load balancer allows existing
    -- requests to complete before it shifts traffic away from a deregistered
    -- or unhealthy instance.
    connectionDraining :: Prelude.Maybe AwsElbLoadBalancerConnectionDraining,
    -- | Any additional attributes for a load balancer.
    additionalAttributes :: Prelude.Maybe [AwsElbLoadBalancerAdditionalAttribute],
    -- | Information about the access log configuration for the load balancer.
    --
    -- If the access log is enabled, the load balancer captures detailed
    -- information about all requests. It delivers the information to a
    -- specified S3 bucket.
    accessLog :: Prelude.Maybe AwsElbLoadBalancerAccessLog,
    -- | Cross-zone load balancing settings for the load balancer.
    --
    -- If cross-zone load balancing is enabled, the load balancer routes the
    -- request traffic evenly across all instances regardless of the
    -- Availability Zones.
    crossZoneLoadBalancing :: Prelude.Maybe AwsElbLoadBalancerCrossZoneLoadBalancing
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsElbLoadBalancerAttributes' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'connectionSettings', 'awsElbLoadBalancerAttributes_connectionSettings' - Connection settings for the load balancer.
--
-- If an idle timeout is configured, the load balancer allows connections
-- to remain idle for the specified duration. When a connection is idle, no
-- data is sent over the connection.
--
-- 'connectionDraining', 'awsElbLoadBalancerAttributes_connectionDraining' - Information about the connection draining configuration for the load
-- balancer.
--
-- If connection draining is enabled, the load balancer allows existing
-- requests to complete before it shifts traffic away from a deregistered
-- or unhealthy instance.
--
-- 'additionalAttributes', 'awsElbLoadBalancerAttributes_additionalAttributes' - Any additional attributes for a load balancer.
--
-- 'accessLog', 'awsElbLoadBalancerAttributes_accessLog' - Information about the access log configuration for the load balancer.
--
-- If the access log is enabled, the load balancer captures detailed
-- information about all requests. It delivers the information to a
-- specified S3 bucket.
--
-- 'crossZoneLoadBalancing', 'awsElbLoadBalancerAttributes_crossZoneLoadBalancing' - Cross-zone load balancing settings for the load balancer.
--
-- If cross-zone load balancing is enabled, the load balancer routes the
-- request traffic evenly across all instances regardless of the
-- Availability Zones.
newAwsElbLoadBalancerAttributes ::
  AwsElbLoadBalancerAttributes
newAwsElbLoadBalancerAttributes =
  AwsElbLoadBalancerAttributes'
    { connectionSettings =
        Prelude.Nothing,
      connectionDraining = Prelude.Nothing,
      additionalAttributes = Prelude.Nothing,
      accessLog = Prelude.Nothing,
      crossZoneLoadBalancing = Prelude.Nothing
    }

-- | Connection settings for the load balancer.
--
-- If an idle timeout is configured, the load balancer allows connections
-- to remain idle for the specified duration. When a connection is idle, no
-- data is sent over the connection.
awsElbLoadBalancerAttributes_connectionSettings :: Lens.Lens' AwsElbLoadBalancerAttributes (Prelude.Maybe AwsElbLoadBalancerConnectionSettings)
awsElbLoadBalancerAttributes_connectionSettings = Lens.lens (\AwsElbLoadBalancerAttributes' {connectionSettings} -> connectionSettings) (\s@AwsElbLoadBalancerAttributes' {} a -> s {connectionSettings = a} :: AwsElbLoadBalancerAttributes)

-- | Information about the connection draining configuration for the load
-- balancer.
--
-- If connection draining is enabled, the load balancer allows existing
-- requests to complete before it shifts traffic away from a deregistered
-- or unhealthy instance.
awsElbLoadBalancerAttributes_connectionDraining :: Lens.Lens' AwsElbLoadBalancerAttributes (Prelude.Maybe AwsElbLoadBalancerConnectionDraining)
awsElbLoadBalancerAttributes_connectionDraining = Lens.lens (\AwsElbLoadBalancerAttributes' {connectionDraining} -> connectionDraining) (\s@AwsElbLoadBalancerAttributes' {} a -> s {connectionDraining = a} :: AwsElbLoadBalancerAttributes)

-- | Any additional attributes for a load balancer.
awsElbLoadBalancerAttributes_additionalAttributes :: Lens.Lens' AwsElbLoadBalancerAttributes (Prelude.Maybe [AwsElbLoadBalancerAdditionalAttribute])
awsElbLoadBalancerAttributes_additionalAttributes = Lens.lens (\AwsElbLoadBalancerAttributes' {additionalAttributes} -> additionalAttributes) (\s@AwsElbLoadBalancerAttributes' {} a -> s {additionalAttributes = a} :: AwsElbLoadBalancerAttributes) Prelude.. Lens.mapping Lens.coerced

-- | Information about the access log configuration for the load balancer.
--
-- If the access log is enabled, the load balancer captures detailed
-- information about all requests. It delivers the information to a
-- specified S3 bucket.
awsElbLoadBalancerAttributes_accessLog :: Lens.Lens' AwsElbLoadBalancerAttributes (Prelude.Maybe AwsElbLoadBalancerAccessLog)
awsElbLoadBalancerAttributes_accessLog = Lens.lens (\AwsElbLoadBalancerAttributes' {accessLog} -> accessLog) (\s@AwsElbLoadBalancerAttributes' {} a -> s {accessLog = a} :: AwsElbLoadBalancerAttributes)

-- | Cross-zone load balancing settings for the load balancer.
--
-- If cross-zone load balancing is enabled, the load balancer routes the
-- request traffic evenly across all instances regardless of the
-- Availability Zones.
awsElbLoadBalancerAttributes_crossZoneLoadBalancing :: Lens.Lens' AwsElbLoadBalancerAttributes (Prelude.Maybe AwsElbLoadBalancerCrossZoneLoadBalancing)
awsElbLoadBalancerAttributes_crossZoneLoadBalancing = Lens.lens (\AwsElbLoadBalancerAttributes' {crossZoneLoadBalancing} -> crossZoneLoadBalancing) (\s@AwsElbLoadBalancerAttributes' {} a -> s {crossZoneLoadBalancing = a} :: AwsElbLoadBalancerAttributes)

instance Core.FromJSON AwsElbLoadBalancerAttributes where
  parseJSON =
    Core.withObject
      "AwsElbLoadBalancerAttributes"
      ( \x ->
          AwsElbLoadBalancerAttributes'
            Prelude.<$> (x Core..:? "ConnectionSettings")
            Prelude.<*> (x Core..:? "ConnectionDraining")
            Prelude.<*> ( x Core..:? "AdditionalAttributes"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "AccessLog")
            Prelude.<*> (x Core..:? "CrossZoneLoadBalancing")
      )

instance
  Prelude.Hashable
    AwsElbLoadBalancerAttributes
  where
  hashWithSalt _salt AwsElbLoadBalancerAttributes' {..} =
    _salt `Prelude.hashWithSalt` connectionSettings
      `Prelude.hashWithSalt` connectionDraining
      `Prelude.hashWithSalt` additionalAttributes
      `Prelude.hashWithSalt` accessLog
      `Prelude.hashWithSalt` crossZoneLoadBalancing

instance Prelude.NFData AwsElbLoadBalancerAttributes where
  rnf AwsElbLoadBalancerAttributes' {..} =
    Prelude.rnf connectionSettings
      `Prelude.seq` Prelude.rnf connectionDraining
      `Prelude.seq` Prelude.rnf additionalAttributes
      `Prelude.seq` Prelude.rnf accessLog
      `Prelude.seq` Prelude.rnf crossZoneLoadBalancing

instance Core.ToJSON AwsElbLoadBalancerAttributes where
  toJSON AwsElbLoadBalancerAttributes' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ConnectionSettings" Core..=)
              Prelude.<$> connectionSettings,
            ("ConnectionDraining" Core..=)
              Prelude.<$> connectionDraining,
            ("AdditionalAttributes" Core..=)
              Prelude.<$> additionalAttributes,
            ("AccessLog" Core..=) Prelude.<$> accessLog,
            ("CrossZoneLoadBalancing" Core..=)
              Prelude.<$> crossZoneLoadBalancing
          ]
      )
