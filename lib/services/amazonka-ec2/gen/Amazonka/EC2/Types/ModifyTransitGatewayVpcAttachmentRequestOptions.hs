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
-- Module      : Amazonka.EC2.Types.ModifyTransitGatewayVpcAttachmentRequestOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.ModifyTransitGatewayVpcAttachmentRequestOptions where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import Amazonka.EC2.Types.ApplianceModeSupportValue
import Amazonka.EC2.Types.DnsSupportValue
import Amazonka.EC2.Types.Ipv6SupportValue
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes the options for a VPC attachment.
--
-- /See:/ 'newModifyTransitGatewayVpcAttachmentRequestOptions' smart constructor.
data ModifyTransitGatewayVpcAttachmentRequestOptions = ModifyTransitGatewayVpcAttachmentRequestOptions'
  { -- | Enable or disable DNS support. The default is @enable@.
    dnsSupport :: Prelude.Maybe DnsSupportValue,
    -- | Enable or disable IPv6 support. The default is @enable@.
    ipv6Support :: Prelude.Maybe Ipv6SupportValue,
    -- | Enable or disable support for appliance mode. If enabled, a traffic flow
    -- between a source and destination uses the same Availability Zone for the
    -- VPC attachment for the lifetime of that flow. The default is @disable@.
    applianceModeSupport :: Prelude.Maybe ApplianceModeSupportValue
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ModifyTransitGatewayVpcAttachmentRequestOptions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dnsSupport', 'modifyTransitGatewayVpcAttachmentRequestOptions_dnsSupport' - Enable or disable DNS support. The default is @enable@.
--
-- 'ipv6Support', 'modifyTransitGatewayVpcAttachmentRequestOptions_ipv6Support' - Enable or disable IPv6 support. The default is @enable@.
--
-- 'applianceModeSupport', 'modifyTransitGatewayVpcAttachmentRequestOptions_applianceModeSupport' - Enable or disable support for appliance mode. If enabled, a traffic flow
-- between a source and destination uses the same Availability Zone for the
-- VPC attachment for the lifetime of that flow. The default is @disable@.
newModifyTransitGatewayVpcAttachmentRequestOptions ::
  ModifyTransitGatewayVpcAttachmentRequestOptions
newModifyTransitGatewayVpcAttachmentRequestOptions =
  ModifyTransitGatewayVpcAttachmentRequestOptions'
    { dnsSupport =
        Prelude.Nothing,
      ipv6Support =
        Prelude.Nothing,
      applianceModeSupport =
        Prelude.Nothing
    }

-- | Enable or disable DNS support. The default is @enable@.
modifyTransitGatewayVpcAttachmentRequestOptions_dnsSupport :: Lens.Lens' ModifyTransitGatewayVpcAttachmentRequestOptions (Prelude.Maybe DnsSupportValue)
modifyTransitGatewayVpcAttachmentRequestOptions_dnsSupport = Lens.lens (\ModifyTransitGatewayVpcAttachmentRequestOptions' {dnsSupport} -> dnsSupport) (\s@ModifyTransitGatewayVpcAttachmentRequestOptions' {} a -> s {dnsSupport = a} :: ModifyTransitGatewayVpcAttachmentRequestOptions)

-- | Enable or disable IPv6 support. The default is @enable@.
modifyTransitGatewayVpcAttachmentRequestOptions_ipv6Support :: Lens.Lens' ModifyTransitGatewayVpcAttachmentRequestOptions (Prelude.Maybe Ipv6SupportValue)
modifyTransitGatewayVpcAttachmentRequestOptions_ipv6Support = Lens.lens (\ModifyTransitGatewayVpcAttachmentRequestOptions' {ipv6Support} -> ipv6Support) (\s@ModifyTransitGatewayVpcAttachmentRequestOptions' {} a -> s {ipv6Support = a} :: ModifyTransitGatewayVpcAttachmentRequestOptions)

-- | Enable or disable support for appliance mode. If enabled, a traffic flow
-- between a source and destination uses the same Availability Zone for the
-- VPC attachment for the lifetime of that flow. The default is @disable@.
modifyTransitGatewayVpcAttachmentRequestOptions_applianceModeSupport :: Lens.Lens' ModifyTransitGatewayVpcAttachmentRequestOptions (Prelude.Maybe ApplianceModeSupportValue)
modifyTransitGatewayVpcAttachmentRequestOptions_applianceModeSupport = Lens.lens (\ModifyTransitGatewayVpcAttachmentRequestOptions' {applianceModeSupport} -> applianceModeSupport) (\s@ModifyTransitGatewayVpcAttachmentRequestOptions' {} a -> s {applianceModeSupport = a} :: ModifyTransitGatewayVpcAttachmentRequestOptions)

instance
  Prelude.Hashable
    ModifyTransitGatewayVpcAttachmentRequestOptions
  where
  hashWithSalt
    _salt
    ModifyTransitGatewayVpcAttachmentRequestOptions' {..} =
      _salt `Prelude.hashWithSalt` dnsSupport
        `Prelude.hashWithSalt` ipv6Support
        `Prelude.hashWithSalt` applianceModeSupport

instance
  Prelude.NFData
    ModifyTransitGatewayVpcAttachmentRequestOptions
  where
  rnf
    ModifyTransitGatewayVpcAttachmentRequestOptions' {..} =
      Prelude.rnf dnsSupport
        `Prelude.seq` Prelude.rnf ipv6Support
        `Prelude.seq` Prelude.rnf applianceModeSupport

instance
  Core.ToQuery
    ModifyTransitGatewayVpcAttachmentRequestOptions
  where
  toQuery
    ModifyTransitGatewayVpcAttachmentRequestOptions' {..} =
      Prelude.mconcat
        [ "DnsSupport" Core.=: dnsSupport,
          "Ipv6Support" Core.=: ipv6Support,
          "ApplianceModeSupport" Core.=: applianceModeSupport
        ]
