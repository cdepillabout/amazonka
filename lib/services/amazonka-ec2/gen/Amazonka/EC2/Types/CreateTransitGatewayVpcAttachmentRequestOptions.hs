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
-- Module      : Amazonka.EC2.Types.CreateTransitGatewayVpcAttachmentRequestOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.CreateTransitGatewayVpcAttachmentRequestOptions where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import Amazonka.EC2.Types.ApplianceModeSupportValue
import Amazonka.EC2.Types.DnsSupportValue
import Amazonka.EC2.Types.Ipv6SupportValue
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes the options for a VPC attachment.
--
-- /See:/ 'newCreateTransitGatewayVpcAttachmentRequestOptions' smart constructor.
data CreateTransitGatewayVpcAttachmentRequestOptions = CreateTransitGatewayVpcAttachmentRequestOptions'
  { -- | Enable or disable DNS support. The default is @enable@.
    dnsSupport :: Prelude.Maybe DnsSupportValue,
    -- | Enable or disable IPv6 support. The default is @disable@.
    ipv6Support :: Prelude.Maybe Ipv6SupportValue,
    -- | Enable or disable support for appliance mode. If enabled, a traffic flow
    -- between a source and destination uses the same Availability Zone for the
    -- VPC attachment for the lifetime of that flow. The default is @disable@.
    applianceModeSupport :: Prelude.Maybe ApplianceModeSupportValue
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateTransitGatewayVpcAttachmentRequestOptions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dnsSupport', 'createTransitGatewayVpcAttachmentRequestOptions_dnsSupport' - Enable or disable DNS support. The default is @enable@.
--
-- 'ipv6Support', 'createTransitGatewayVpcAttachmentRequestOptions_ipv6Support' - Enable or disable IPv6 support. The default is @disable@.
--
-- 'applianceModeSupport', 'createTransitGatewayVpcAttachmentRequestOptions_applianceModeSupport' - Enable or disable support for appliance mode. If enabled, a traffic flow
-- between a source and destination uses the same Availability Zone for the
-- VPC attachment for the lifetime of that flow. The default is @disable@.
newCreateTransitGatewayVpcAttachmentRequestOptions ::
  CreateTransitGatewayVpcAttachmentRequestOptions
newCreateTransitGatewayVpcAttachmentRequestOptions =
  CreateTransitGatewayVpcAttachmentRequestOptions'
    { dnsSupport =
        Prelude.Nothing,
      ipv6Support =
        Prelude.Nothing,
      applianceModeSupport =
        Prelude.Nothing
    }

-- | Enable or disable DNS support. The default is @enable@.
createTransitGatewayVpcAttachmentRequestOptions_dnsSupport :: Lens.Lens' CreateTransitGatewayVpcAttachmentRequestOptions (Prelude.Maybe DnsSupportValue)
createTransitGatewayVpcAttachmentRequestOptions_dnsSupport = Lens.lens (\CreateTransitGatewayVpcAttachmentRequestOptions' {dnsSupport} -> dnsSupport) (\s@CreateTransitGatewayVpcAttachmentRequestOptions' {} a -> s {dnsSupport = a} :: CreateTransitGatewayVpcAttachmentRequestOptions)

-- | Enable or disable IPv6 support. The default is @disable@.
createTransitGatewayVpcAttachmentRequestOptions_ipv6Support :: Lens.Lens' CreateTransitGatewayVpcAttachmentRequestOptions (Prelude.Maybe Ipv6SupportValue)
createTransitGatewayVpcAttachmentRequestOptions_ipv6Support = Lens.lens (\CreateTransitGatewayVpcAttachmentRequestOptions' {ipv6Support} -> ipv6Support) (\s@CreateTransitGatewayVpcAttachmentRequestOptions' {} a -> s {ipv6Support = a} :: CreateTransitGatewayVpcAttachmentRequestOptions)

-- | Enable or disable support for appliance mode. If enabled, a traffic flow
-- between a source and destination uses the same Availability Zone for the
-- VPC attachment for the lifetime of that flow. The default is @disable@.
createTransitGatewayVpcAttachmentRequestOptions_applianceModeSupport :: Lens.Lens' CreateTransitGatewayVpcAttachmentRequestOptions (Prelude.Maybe ApplianceModeSupportValue)
createTransitGatewayVpcAttachmentRequestOptions_applianceModeSupport = Lens.lens (\CreateTransitGatewayVpcAttachmentRequestOptions' {applianceModeSupport} -> applianceModeSupport) (\s@CreateTransitGatewayVpcAttachmentRequestOptions' {} a -> s {applianceModeSupport = a} :: CreateTransitGatewayVpcAttachmentRequestOptions)

instance
  Prelude.Hashable
    CreateTransitGatewayVpcAttachmentRequestOptions
  where
  hashWithSalt
    _salt
    CreateTransitGatewayVpcAttachmentRequestOptions' {..} =
      _salt `Prelude.hashWithSalt` dnsSupport
        `Prelude.hashWithSalt` ipv6Support
        `Prelude.hashWithSalt` applianceModeSupport

instance
  Prelude.NFData
    CreateTransitGatewayVpcAttachmentRequestOptions
  where
  rnf
    CreateTransitGatewayVpcAttachmentRequestOptions' {..} =
      Prelude.rnf dnsSupport
        `Prelude.seq` Prelude.rnf ipv6Support
        `Prelude.seq` Prelude.rnf applianceModeSupport

instance
  Core.ToQuery
    CreateTransitGatewayVpcAttachmentRequestOptions
  where
  toQuery
    CreateTransitGatewayVpcAttachmentRequestOptions' {..} =
      Prelude.mconcat
        [ "DnsSupport" Core.=: dnsSupport,
          "Ipv6Support" Core.=: ipv6Support,
          "ApplianceModeSupport" Core.=: applianceModeSupport
        ]
