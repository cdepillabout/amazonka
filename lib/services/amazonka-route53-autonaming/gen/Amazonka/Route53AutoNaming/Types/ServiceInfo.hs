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
-- Module      : Amazonka.Route53AutoNaming.Types.ServiceInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Route53AutoNaming.Types.ServiceInfo where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.Route53AutoNaming.Types.DnsConfig
import Amazonka.Route53AutoNaming.Types.HealthCheckConfig
import Amazonka.Route53AutoNaming.Types.HealthCheckCustomConfig
import Amazonka.Route53AutoNaming.Types.ServiceType

-- | A complex type that contains information about the specified service.
--
-- /See:/ 'newServiceInfo' smart constructor.
data ServiceInfo = ServiceInfo'
  { -- | The name of the service.
    name :: Prelude.Maybe Prelude.Text,
    -- | Describes the systems that can be used to discover the service
    -- instances.
    --
    -- [DNS_HTTP]
    --     The service instances can be discovered using either DNS queries or
    --     the @DiscoverInstances@ API operation.
    --
    -- [HTTP]
    --     The service instances can only be discovered using the
    --     @DiscoverInstances@ API operation.
    --
    -- [DNS]
    --     Reserved.
    type' :: Prelude.Maybe ServiceType,
    -- | A complex type that contains information about the Route 53 DNS records
    -- that you want Cloud Map to create when you register an instance.
    dnsConfig :: Prelude.Maybe DnsConfig,
    -- | A complex type that contains information about an optional custom health
    -- check.
    --
    -- If you specify a health check configuration, you can specify either
    -- @HealthCheckCustomConfig@ or @HealthCheckConfig@ but not both.
    healthCheckCustomConfig :: Prelude.Maybe HealthCheckCustomConfig,
    -- | The Amazon Resource Name (ARN) that Cloud Map assigns to the service
    -- when you create it.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The ID that Cloud Map assigned to the service when you created it.
    id :: Prelude.Maybe Prelude.Text,
    -- | The description of the service.
    description :: Prelude.Maybe Prelude.Text,
    -- | A unique string that identifies the request and that allows failed
    -- requests to be retried without the risk of running the operation twice.
    -- @CreatorRequestId@ can be any unique string (for example, a
    -- date\/timestamp).
    creatorRequestId :: Prelude.Maybe Prelude.Text,
    -- | The number of instances that are currently associated with the service.
    -- Instances that were previously associated with the service but that are
    -- deleted aren\'t included in the count. The count might not reflect
    -- pending registrations and deregistrations.
    instanceCount :: Prelude.Maybe Prelude.Int,
    -- | The date and time that the service was created, in Unix format and
    -- Coordinated Universal Time (UTC). The value of @CreateDate@ is accurate
    -- to milliseconds. For example, the value @1516925490.087@ represents
    -- Friday, January 26, 2018 12:11:30.087 AM.
    createDate :: Prelude.Maybe Core.POSIX,
    -- | The ID of the namespace that was used to create the service.
    namespaceId :: Prelude.Maybe Prelude.Text,
    -- | /Public DNS and HTTP namespaces only./ A complex type that contains
    -- settings for an optional health check. If you specify settings for a
    -- health check, Cloud Map associates the health check with the records
    -- that you specify in @DnsConfig@.
    --
    -- For information about the charges for health checks, see
    -- <http://aws.amazon.com/route53/pricing/ Amazon Route 53 Pricing>.
    healthCheckConfig :: Prelude.Maybe HealthCheckConfig
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ServiceInfo' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'serviceInfo_name' - The name of the service.
--
-- 'type'', 'serviceInfo_type' - Describes the systems that can be used to discover the service
-- instances.
--
-- [DNS_HTTP]
--     The service instances can be discovered using either DNS queries or
--     the @DiscoverInstances@ API operation.
--
-- [HTTP]
--     The service instances can only be discovered using the
--     @DiscoverInstances@ API operation.
--
-- [DNS]
--     Reserved.
--
-- 'dnsConfig', 'serviceInfo_dnsConfig' - A complex type that contains information about the Route 53 DNS records
-- that you want Cloud Map to create when you register an instance.
--
-- 'healthCheckCustomConfig', 'serviceInfo_healthCheckCustomConfig' - A complex type that contains information about an optional custom health
-- check.
--
-- If you specify a health check configuration, you can specify either
-- @HealthCheckCustomConfig@ or @HealthCheckConfig@ but not both.
--
-- 'arn', 'serviceInfo_arn' - The Amazon Resource Name (ARN) that Cloud Map assigns to the service
-- when you create it.
--
-- 'id', 'serviceInfo_id' - The ID that Cloud Map assigned to the service when you created it.
--
-- 'description', 'serviceInfo_description' - The description of the service.
--
-- 'creatorRequestId', 'serviceInfo_creatorRequestId' - A unique string that identifies the request and that allows failed
-- requests to be retried without the risk of running the operation twice.
-- @CreatorRequestId@ can be any unique string (for example, a
-- date\/timestamp).
--
-- 'instanceCount', 'serviceInfo_instanceCount' - The number of instances that are currently associated with the service.
-- Instances that were previously associated with the service but that are
-- deleted aren\'t included in the count. The count might not reflect
-- pending registrations and deregistrations.
--
-- 'createDate', 'serviceInfo_createDate' - The date and time that the service was created, in Unix format and
-- Coordinated Universal Time (UTC). The value of @CreateDate@ is accurate
-- to milliseconds. For example, the value @1516925490.087@ represents
-- Friday, January 26, 2018 12:11:30.087 AM.
--
-- 'namespaceId', 'serviceInfo_namespaceId' - The ID of the namespace that was used to create the service.
--
-- 'healthCheckConfig', 'serviceInfo_healthCheckConfig' - /Public DNS and HTTP namespaces only./ A complex type that contains
-- settings for an optional health check. If you specify settings for a
-- health check, Cloud Map associates the health check with the records
-- that you specify in @DnsConfig@.
--
-- For information about the charges for health checks, see
-- <http://aws.amazon.com/route53/pricing/ Amazon Route 53 Pricing>.
newServiceInfo ::
  ServiceInfo
newServiceInfo =
  ServiceInfo'
    { name = Prelude.Nothing,
      type' = Prelude.Nothing,
      dnsConfig = Prelude.Nothing,
      healthCheckCustomConfig = Prelude.Nothing,
      arn = Prelude.Nothing,
      id = Prelude.Nothing,
      description = Prelude.Nothing,
      creatorRequestId = Prelude.Nothing,
      instanceCount = Prelude.Nothing,
      createDate = Prelude.Nothing,
      namespaceId = Prelude.Nothing,
      healthCheckConfig = Prelude.Nothing
    }

-- | The name of the service.
serviceInfo_name :: Lens.Lens' ServiceInfo (Prelude.Maybe Prelude.Text)
serviceInfo_name = Lens.lens (\ServiceInfo' {name} -> name) (\s@ServiceInfo' {} a -> s {name = a} :: ServiceInfo)

-- | Describes the systems that can be used to discover the service
-- instances.
--
-- [DNS_HTTP]
--     The service instances can be discovered using either DNS queries or
--     the @DiscoverInstances@ API operation.
--
-- [HTTP]
--     The service instances can only be discovered using the
--     @DiscoverInstances@ API operation.
--
-- [DNS]
--     Reserved.
serviceInfo_type :: Lens.Lens' ServiceInfo (Prelude.Maybe ServiceType)
serviceInfo_type = Lens.lens (\ServiceInfo' {type'} -> type') (\s@ServiceInfo' {} a -> s {type' = a} :: ServiceInfo)

-- | A complex type that contains information about the Route 53 DNS records
-- that you want Cloud Map to create when you register an instance.
serviceInfo_dnsConfig :: Lens.Lens' ServiceInfo (Prelude.Maybe DnsConfig)
serviceInfo_dnsConfig = Lens.lens (\ServiceInfo' {dnsConfig} -> dnsConfig) (\s@ServiceInfo' {} a -> s {dnsConfig = a} :: ServiceInfo)

-- | A complex type that contains information about an optional custom health
-- check.
--
-- If you specify a health check configuration, you can specify either
-- @HealthCheckCustomConfig@ or @HealthCheckConfig@ but not both.
serviceInfo_healthCheckCustomConfig :: Lens.Lens' ServiceInfo (Prelude.Maybe HealthCheckCustomConfig)
serviceInfo_healthCheckCustomConfig = Lens.lens (\ServiceInfo' {healthCheckCustomConfig} -> healthCheckCustomConfig) (\s@ServiceInfo' {} a -> s {healthCheckCustomConfig = a} :: ServiceInfo)

-- | The Amazon Resource Name (ARN) that Cloud Map assigns to the service
-- when you create it.
serviceInfo_arn :: Lens.Lens' ServiceInfo (Prelude.Maybe Prelude.Text)
serviceInfo_arn = Lens.lens (\ServiceInfo' {arn} -> arn) (\s@ServiceInfo' {} a -> s {arn = a} :: ServiceInfo)

-- | The ID that Cloud Map assigned to the service when you created it.
serviceInfo_id :: Lens.Lens' ServiceInfo (Prelude.Maybe Prelude.Text)
serviceInfo_id = Lens.lens (\ServiceInfo' {id} -> id) (\s@ServiceInfo' {} a -> s {id = a} :: ServiceInfo)

-- | The description of the service.
serviceInfo_description :: Lens.Lens' ServiceInfo (Prelude.Maybe Prelude.Text)
serviceInfo_description = Lens.lens (\ServiceInfo' {description} -> description) (\s@ServiceInfo' {} a -> s {description = a} :: ServiceInfo)

-- | A unique string that identifies the request and that allows failed
-- requests to be retried without the risk of running the operation twice.
-- @CreatorRequestId@ can be any unique string (for example, a
-- date\/timestamp).
serviceInfo_creatorRequestId :: Lens.Lens' ServiceInfo (Prelude.Maybe Prelude.Text)
serviceInfo_creatorRequestId = Lens.lens (\ServiceInfo' {creatorRequestId} -> creatorRequestId) (\s@ServiceInfo' {} a -> s {creatorRequestId = a} :: ServiceInfo)

-- | The number of instances that are currently associated with the service.
-- Instances that were previously associated with the service but that are
-- deleted aren\'t included in the count. The count might not reflect
-- pending registrations and deregistrations.
serviceInfo_instanceCount :: Lens.Lens' ServiceInfo (Prelude.Maybe Prelude.Int)
serviceInfo_instanceCount = Lens.lens (\ServiceInfo' {instanceCount} -> instanceCount) (\s@ServiceInfo' {} a -> s {instanceCount = a} :: ServiceInfo)

-- | The date and time that the service was created, in Unix format and
-- Coordinated Universal Time (UTC). The value of @CreateDate@ is accurate
-- to milliseconds. For example, the value @1516925490.087@ represents
-- Friday, January 26, 2018 12:11:30.087 AM.
serviceInfo_createDate :: Lens.Lens' ServiceInfo (Prelude.Maybe Prelude.UTCTime)
serviceInfo_createDate = Lens.lens (\ServiceInfo' {createDate} -> createDate) (\s@ServiceInfo' {} a -> s {createDate = a} :: ServiceInfo) Prelude.. Lens.mapping Core._Time

-- | The ID of the namespace that was used to create the service.
serviceInfo_namespaceId :: Lens.Lens' ServiceInfo (Prelude.Maybe Prelude.Text)
serviceInfo_namespaceId = Lens.lens (\ServiceInfo' {namespaceId} -> namespaceId) (\s@ServiceInfo' {} a -> s {namespaceId = a} :: ServiceInfo)

-- | /Public DNS and HTTP namespaces only./ A complex type that contains
-- settings for an optional health check. If you specify settings for a
-- health check, Cloud Map associates the health check with the records
-- that you specify in @DnsConfig@.
--
-- For information about the charges for health checks, see
-- <http://aws.amazon.com/route53/pricing/ Amazon Route 53 Pricing>.
serviceInfo_healthCheckConfig :: Lens.Lens' ServiceInfo (Prelude.Maybe HealthCheckConfig)
serviceInfo_healthCheckConfig = Lens.lens (\ServiceInfo' {healthCheckConfig} -> healthCheckConfig) (\s@ServiceInfo' {} a -> s {healthCheckConfig = a} :: ServiceInfo)

instance Core.FromJSON ServiceInfo where
  parseJSON =
    Core.withObject
      "ServiceInfo"
      ( \x ->
          ServiceInfo'
            Prelude.<$> (x Core..:? "Name")
            Prelude.<*> (x Core..:? "Type")
            Prelude.<*> (x Core..:? "DnsConfig")
            Prelude.<*> (x Core..:? "HealthCheckCustomConfig")
            Prelude.<*> (x Core..:? "Arn")
            Prelude.<*> (x Core..:? "Id")
            Prelude.<*> (x Core..:? "Description")
            Prelude.<*> (x Core..:? "CreatorRequestId")
            Prelude.<*> (x Core..:? "InstanceCount")
            Prelude.<*> (x Core..:? "CreateDate")
            Prelude.<*> (x Core..:? "NamespaceId")
            Prelude.<*> (x Core..:? "HealthCheckConfig")
      )

instance Prelude.Hashable ServiceInfo where
  hashWithSalt _salt ServiceInfo' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` dnsConfig
      `Prelude.hashWithSalt` healthCheckCustomConfig
      `Prelude.hashWithSalt` arn
      `Prelude.hashWithSalt` id
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` creatorRequestId
      `Prelude.hashWithSalt` instanceCount
      `Prelude.hashWithSalt` createDate
      `Prelude.hashWithSalt` namespaceId
      `Prelude.hashWithSalt` healthCheckConfig

instance Prelude.NFData ServiceInfo where
  rnf ServiceInfo' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf type'
      `Prelude.seq` Prelude.rnf dnsConfig
      `Prelude.seq` Prelude.rnf healthCheckCustomConfig
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf id
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf creatorRequestId
      `Prelude.seq` Prelude.rnf instanceCount
      `Prelude.seq` Prelude.rnf createDate
      `Prelude.seq` Prelude.rnf namespaceId
      `Prelude.seq` Prelude.rnf healthCheckConfig
