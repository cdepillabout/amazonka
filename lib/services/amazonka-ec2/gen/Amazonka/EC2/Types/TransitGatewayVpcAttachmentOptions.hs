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
-- Module      : Amazonka.EC2.Types.TransitGatewayVpcAttachmentOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.TransitGatewayVpcAttachmentOptions where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import Amazonka.EC2.Types.ApplianceModeSupportValue
import Amazonka.EC2.Types.DnsSupportValue
import Amazonka.EC2.Types.Ipv6SupportValue
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes the VPC attachment options.
--
-- /See:/ 'newTransitGatewayVpcAttachmentOptions' smart constructor.
data TransitGatewayVpcAttachmentOptions = TransitGatewayVpcAttachmentOptions'
  { -- | Indicates whether DNS support is enabled.
    dnsSupport :: Prelude.Maybe DnsSupportValue,
    -- | Indicates whether IPv6 support is disabled.
    ipv6Support :: Prelude.Maybe Ipv6SupportValue,
    -- | Indicates whether appliance mode support is enabled.
    applianceModeSupport :: Prelude.Maybe ApplianceModeSupportValue
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TransitGatewayVpcAttachmentOptions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dnsSupport', 'transitGatewayVpcAttachmentOptions_dnsSupport' - Indicates whether DNS support is enabled.
--
-- 'ipv6Support', 'transitGatewayVpcAttachmentOptions_ipv6Support' - Indicates whether IPv6 support is disabled.
--
-- 'applianceModeSupport', 'transitGatewayVpcAttachmentOptions_applianceModeSupport' - Indicates whether appliance mode support is enabled.
newTransitGatewayVpcAttachmentOptions ::
  TransitGatewayVpcAttachmentOptions
newTransitGatewayVpcAttachmentOptions =
  TransitGatewayVpcAttachmentOptions'
    { dnsSupport =
        Prelude.Nothing,
      ipv6Support = Prelude.Nothing,
      applianceModeSupport = Prelude.Nothing
    }

-- | Indicates whether DNS support is enabled.
transitGatewayVpcAttachmentOptions_dnsSupport :: Lens.Lens' TransitGatewayVpcAttachmentOptions (Prelude.Maybe DnsSupportValue)
transitGatewayVpcAttachmentOptions_dnsSupport = Lens.lens (\TransitGatewayVpcAttachmentOptions' {dnsSupport} -> dnsSupport) (\s@TransitGatewayVpcAttachmentOptions' {} a -> s {dnsSupport = a} :: TransitGatewayVpcAttachmentOptions)

-- | Indicates whether IPv6 support is disabled.
transitGatewayVpcAttachmentOptions_ipv6Support :: Lens.Lens' TransitGatewayVpcAttachmentOptions (Prelude.Maybe Ipv6SupportValue)
transitGatewayVpcAttachmentOptions_ipv6Support = Lens.lens (\TransitGatewayVpcAttachmentOptions' {ipv6Support} -> ipv6Support) (\s@TransitGatewayVpcAttachmentOptions' {} a -> s {ipv6Support = a} :: TransitGatewayVpcAttachmentOptions)

-- | Indicates whether appliance mode support is enabled.
transitGatewayVpcAttachmentOptions_applianceModeSupport :: Lens.Lens' TransitGatewayVpcAttachmentOptions (Prelude.Maybe ApplianceModeSupportValue)
transitGatewayVpcAttachmentOptions_applianceModeSupport = Lens.lens (\TransitGatewayVpcAttachmentOptions' {applianceModeSupport} -> applianceModeSupport) (\s@TransitGatewayVpcAttachmentOptions' {} a -> s {applianceModeSupport = a} :: TransitGatewayVpcAttachmentOptions)

instance
  Core.FromXML
    TransitGatewayVpcAttachmentOptions
  where
  parseXML x =
    TransitGatewayVpcAttachmentOptions'
      Prelude.<$> (x Core..@? "dnsSupport")
      Prelude.<*> (x Core..@? "ipv6Support")
      Prelude.<*> (x Core..@? "applianceModeSupport")

instance
  Prelude.Hashable
    TransitGatewayVpcAttachmentOptions
  where
  hashWithSalt
    _salt
    TransitGatewayVpcAttachmentOptions' {..} =
      _salt `Prelude.hashWithSalt` dnsSupport
        `Prelude.hashWithSalt` ipv6Support
        `Prelude.hashWithSalt` applianceModeSupport

instance
  Prelude.NFData
    TransitGatewayVpcAttachmentOptions
  where
  rnf TransitGatewayVpcAttachmentOptions' {..} =
    Prelude.rnf dnsSupport
      `Prelude.seq` Prelude.rnf ipv6Support
      `Prelude.seq` Prelude.rnf applianceModeSupport
