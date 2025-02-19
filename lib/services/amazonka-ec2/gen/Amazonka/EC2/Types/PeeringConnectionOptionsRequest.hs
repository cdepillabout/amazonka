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
-- Module      : Amazonka.EC2.Types.PeeringConnectionOptionsRequest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.PeeringConnectionOptionsRequest where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | We are retiring EC2-Classic on August 15, 2022. We recommend that you
-- migrate from EC2-Classic to a VPC. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html Migrate from EC2-Classic to a VPC>
-- in the /Amazon Elastic Compute Cloud User Guide/.
--
-- The VPC peering connection options.
--
-- /See:/ 'newPeeringConnectionOptionsRequest' smart constructor.
data PeeringConnectionOptionsRequest = PeeringConnectionOptionsRequest'
  { -- | If true, enables a local VPC to resolve public DNS hostnames to private
    -- IP addresses when queried from instances in the peer VPC.
    allowDnsResolutionFromRemoteVpc :: Prelude.Maybe Prelude.Bool,
    -- | If true, enables outbound communication from instances in a local VPC to
    -- an EC2-Classic instance that\'s linked to a peer VPC using ClassicLink.
    allowEgressFromLocalVpcToRemoteClassicLink :: Prelude.Maybe Prelude.Bool,
    -- | If true, enables outbound communication from an EC2-Classic instance
    -- that\'s linked to a local VPC using ClassicLink to instances in a peer
    -- VPC.
    allowEgressFromLocalClassicLinkToRemoteVpc :: Prelude.Maybe Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PeeringConnectionOptionsRequest' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'allowDnsResolutionFromRemoteVpc', 'peeringConnectionOptionsRequest_allowDnsResolutionFromRemoteVpc' - If true, enables a local VPC to resolve public DNS hostnames to private
-- IP addresses when queried from instances in the peer VPC.
--
-- 'allowEgressFromLocalVpcToRemoteClassicLink', 'peeringConnectionOptionsRequest_allowEgressFromLocalVpcToRemoteClassicLink' - If true, enables outbound communication from instances in a local VPC to
-- an EC2-Classic instance that\'s linked to a peer VPC using ClassicLink.
--
-- 'allowEgressFromLocalClassicLinkToRemoteVpc', 'peeringConnectionOptionsRequest_allowEgressFromLocalClassicLinkToRemoteVpc' - If true, enables outbound communication from an EC2-Classic instance
-- that\'s linked to a local VPC using ClassicLink to instances in a peer
-- VPC.
newPeeringConnectionOptionsRequest ::
  PeeringConnectionOptionsRequest
newPeeringConnectionOptionsRequest =
  PeeringConnectionOptionsRequest'
    { allowDnsResolutionFromRemoteVpc =
        Prelude.Nothing,
      allowEgressFromLocalVpcToRemoteClassicLink =
        Prelude.Nothing,
      allowEgressFromLocalClassicLinkToRemoteVpc =
        Prelude.Nothing
    }

-- | If true, enables a local VPC to resolve public DNS hostnames to private
-- IP addresses when queried from instances in the peer VPC.
peeringConnectionOptionsRequest_allowDnsResolutionFromRemoteVpc :: Lens.Lens' PeeringConnectionOptionsRequest (Prelude.Maybe Prelude.Bool)
peeringConnectionOptionsRequest_allowDnsResolutionFromRemoteVpc = Lens.lens (\PeeringConnectionOptionsRequest' {allowDnsResolutionFromRemoteVpc} -> allowDnsResolutionFromRemoteVpc) (\s@PeeringConnectionOptionsRequest' {} a -> s {allowDnsResolutionFromRemoteVpc = a} :: PeeringConnectionOptionsRequest)

-- | If true, enables outbound communication from instances in a local VPC to
-- an EC2-Classic instance that\'s linked to a peer VPC using ClassicLink.
peeringConnectionOptionsRequest_allowEgressFromLocalVpcToRemoteClassicLink :: Lens.Lens' PeeringConnectionOptionsRequest (Prelude.Maybe Prelude.Bool)
peeringConnectionOptionsRequest_allowEgressFromLocalVpcToRemoteClassicLink = Lens.lens (\PeeringConnectionOptionsRequest' {allowEgressFromLocalVpcToRemoteClassicLink} -> allowEgressFromLocalVpcToRemoteClassicLink) (\s@PeeringConnectionOptionsRequest' {} a -> s {allowEgressFromLocalVpcToRemoteClassicLink = a} :: PeeringConnectionOptionsRequest)

-- | If true, enables outbound communication from an EC2-Classic instance
-- that\'s linked to a local VPC using ClassicLink to instances in a peer
-- VPC.
peeringConnectionOptionsRequest_allowEgressFromLocalClassicLinkToRemoteVpc :: Lens.Lens' PeeringConnectionOptionsRequest (Prelude.Maybe Prelude.Bool)
peeringConnectionOptionsRequest_allowEgressFromLocalClassicLinkToRemoteVpc = Lens.lens (\PeeringConnectionOptionsRequest' {allowEgressFromLocalClassicLinkToRemoteVpc} -> allowEgressFromLocalClassicLinkToRemoteVpc) (\s@PeeringConnectionOptionsRequest' {} a -> s {allowEgressFromLocalClassicLinkToRemoteVpc = a} :: PeeringConnectionOptionsRequest)

instance
  Prelude.Hashable
    PeeringConnectionOptionsRequest
  where
  hashWithSalt
    _salt
    PeeringConnectionOptionsRequest' {..} =
      _salt
        `Prelude.hashWithSalt` allowDnsResolutionFromRemoteVpc
        `Prelude.hashWithSalt` allowEgressFromLocalVpcToRemoteClassicLink
        `Prelude.hashWithSalt` allowEgressFromLocalClassicLinkToRemoteVpc

instance
  Prelude.NFData
    PeeringConnectionOptionsRequest
  where
  rnf PeeringConnectionOptionsRequest' {..} =
    Prelude.rnf allowDnsResolutionFromRemoteVpc
      `Prelude.seq` Prelude.rnf
        allowEgressFromLocalVpcToRemoteClassicLink
      `Prelude.seq` Prelude.rnf
        allowEgressFromLocalClassicLinkToRemoteVpc

instance Core.ToQuery PeeringConnectionOptionsRequest where
  toQuery PeeringConnectionOptionsRequest' {..} =
    Prelude.mconcat
      [ "AllowDnsResolutionFromRemoteVpc"
          Core.=: allowDnsResolutionFromRemoteVpc,
        "AllowEgressFromLocalVpcToRemoteClassicLink"
          Core.=: allowEgressFromLocalVpcToRemoteClassicLink,
        "AllowEgressFromLocalClassicLinkToRemoteVpc"
          Core.=: allowEgressFromLocalClassicLinkToRemoteVpc
      ]
