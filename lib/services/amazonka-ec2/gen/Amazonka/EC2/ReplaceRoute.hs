{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.EC2.ReplaceRoute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Replaces an existing route within a route table in a VPC.
--
-- You must specify either a destination CIDR block or a prefix list ID.
-- You must also specify exactly one of the resources from the parameter
-- list, or reset the local route to its default target.
--
-- For more information, see
-- <https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html Route tables>
-- in the /Amazon Virtual Private Cloud User Guide/.
module Amazonka.EC2.ReplaceRoute
  ( -- * Creating a Request
    ReplaceRoute (..),
    newReplaceRoute,

    -- * Request Lenses
    replaceRoute_localGatewayId,
    replaceRoute_destinationPrefixListId,
    replaceRoute_carrierGatewayId,
    replaceRoute_transitGatewayId,
    replaceRoute_natGatewayId,
    replaceRoute_vpcPeeringConnectionId,
    replaceRoute_vpcEndpointId,
    replaceRoute_dryRun,
    replaceRoute_destinationCidrBlock,
    replaceRoute_coreNetworkArn,
    replaceRoute_instanceId,
    replaceRoute_egressOnlyInternetGatewayId,
    replaceRoute_networkInterfaceId,
    replaceRoute_gatewayId,
    replaceRoute_destinationIpv6CidrBlock,
    replaceRoute_localTarget,
    replaceRoute_routeTableId,

    -- * Destructuring the Response
    ReplaceRouteResponse (..),
    newReplaceRouteResponse,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newReplaceRoute' smart constructor.
data ReplaceRoute = ReplaceRoute'
  { -- | The ID of the local gateway.
    localGatewayId :: Prelude.Maybe Prelude.Text,
    -- | The ID of the prefix list for the route.
    destinationPrefixListId :: Prelude.Maybe Prelude.Text,
    -- | [IPv4 traffic only] The ID of a carrier gateway.
    carrierGatewayId :: Prelude.Maybe Prelude.Text,
    -- | The ID of a transit gateway.
    transitGatewayId :: Prelude.Maybe Prelude.Text,
    -- | [IPv4 traffic only] The ID of a NAT gateway.
    natGatewayId :: Prelude.Maybe Prelude.Text,
    -- | The ID of a VPC peering connection.
    vpcPeeringConnectionId :: Prelude.Maybe Prelude.Text,
    -- | The ID of a VPC endpoint. Supported for Gateway Load Balancer endpoints
    -- only.
    vpcEndpointId :: Prelude.Maybe Prelude.Text,
    -- | Checks whether you have the required permissions for the action, without
    -- actually making the request, and provides an error response. If you have
    -- the required permissions, the error response is @DryRunOperation@.
    -- Otherwise, it is @UnauthorizedOperation@.
    dryRun :: Prelude.Maybe Prelude.Bool,
    -- | The IPv4 CIDR address block used for the destination match. The value
    -- that you provide must match the CIDR of an existing route in the table.
    destinationCidrBlock :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the core network.
    coreNetworkArn :: Prelude.Maybe Prelude.Text,
    -- | The ID of a NAT instance in your VPC.
    instanceId :: Prelude.Maybe Prelude.Text,
    -- | [IPv6 traffic only] The ID of an egress-only internet gateway.
    egressOnlyInternetGatewayId :: Prelude.Maybe Prelude.Text,
    -- | The ID of a network interface.
    networkInterfaceId :: Prelude.Maybe Prelude.Text,
    -- | The ID of an internet gateway or virtual private gateway.
    gatewayId :: Prelude.Maybe Prelude.Text,
    -- | The IPv6 CIDR address block used for the destination match. The value
    -- that you provide must match the CIDR of an existing route in the table.
    destinationIpv6CidrBlock :: Prelude.Maybe Prelude.Text,
    -- | Specifies whether to reset the local route to its default target
    -- (@local@).
    localTarget :: Prelude.Maybe Prelude.Bool,
    -- | The ID of the route table.
    routeTableId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ReplaceRoute' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'localGatewayId', 'replaceRoute_localGatewayId' - The ID of the local gateway.
--
-- 'destinationPrefixListId', 'replaceRoute_destinationPrefixListId' - The ID of the prefix list for the route.
--
-- 'carrierGatewayId', 'replaceRoute_carrierGatewayId' - [IPv4 traffic only] The ID of a carrier gateway.
--
-- 'transitGatewayId', 'replaceRoute_transitGatewayId' - The ID of a transit gateway.
--
-- 'natGatewayId', 'replaceRoute_natGatewayId' - [IPv4 traffic only] The ID of a NAT gateway.
--
-- 'vpcPeeringConnectionId', 'replaceRoute_vpcPeeringConnectionId' - The ID of a VPC peering connection.
--
-- 'vpcEndpointId', 'replaceRoute_vpcEndpointId' - The ID of a VPC endpoint. Supported for Gateway Load Balancer endpoints
-- only.
--
-- 'dryRun', 'replaceRoute_dryRun' - Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
--
-- 'destinationCidrBlock', 'replaceRoute_destinationCidrBlock' - The IPv4 CIDR address block used for the destination match. The value
-- that you provide must match the CIDR of an existing route in the table.
--
-- 'coreNetworkArn', 'replaceRoute_coreNetworkArn' - The Amazon Resource Name (ARN) of the core network.
--
-- 'instanceId', 'replaceRoute_instanceId' - The ID of a NAT instance in your VPC.
--
-- 'egressOnlyInternetGatewayId', 'replaceRoute_egressOnlyInternetGatewayId' - [IPv6 traffic only] The ID of an egress-only internet gateway.
--
-- 'networkInterfaceId', 'replaceRoute_networkInterfaceId' - The ID of a network interface.
--
-- 'gatewayId', 'replaceRoute_gatewayId' - The ID of an internet gateway or virtual private gateway.
--
-- 'destinationIpv6CidrBlock', 'replaceRoute_destinationIpv6CidrBlock' - The IPv6 CIDR address block used for the destination match. The value
-- that you provide must match the CIDR of an existing route in the table.
--
-- 'localTarget', 'replaceRoute_localTarget' - Specifies whether to reset the local route to its default target
-- (@local@).
--
-- 'routeTableId', 'replaceRoute_routeTableId' - The ID of the route table.
newReplaceRoute ::
  -- | 'routeTableId'
  Prelude.Text ->
  ReplaceRoute
newReplaceRoute pRouteTableId_ =
  ReplaceRoute'
    { localGatewayId = Prelude.Nothing,
      destinationPrefixListId = Prelude.Nothing,
      carrierGatewayId = Prelude.Nothing,
      transitGatewayId = Prelude.Nothing,
      natGatewayId = Prelude.Nothing,
      vpcPeeringConnectionId = Prelude.Nothing,
      vpcEndpointId = Prelude.Nothing,
      dryRun = Prelude.Nothing,
      destinationCidrBlock = Prelude.Nothing,
      coreNetworkArn = Prelude.Nothing,
      instanceId = Prelude.Nothing,
      egressOnlyInternetGatewayId = Prelude.Nothing,
      networkInterfaceId = Prelude.Nothing,
      gatewayId = Prelude.Nothing,
      destinationIpv6CidrBlock = Prelude.Nothing,
      localTarget = Prelude.Nothing,
      routeTableId = pRouteTableId_
    }

-- | The ID of the local gateway.
replaceRoute_localGatewayId :: Lens.Lens' ReplaceRoute (Prelude.Maybe Prelude.Text)
replaceRoute_localGatewayId = Lens.lens (\ReplaceRoute' {localGatewayId} -> localGatewayId) (\s@ReplaceRoute' {} a -> s {localGatewayId = a} :: ReplaceRoute)

-- | The ID of the prefix list for the route.
replaceRoute_destinationPrefixListId :: Lens.Lens' ReplaceRoute (Prelude.Maybe Prelude.Text)
replaceRoute_destinationPrefixListId = Lens.lens (\ReplaceRoute' {destinationPrefixListId} -> destinationPrefixListId) (\s@ReplaceRoute' {} a -> s {destinationPrefixListId = a} :: ReplaceRoute)

-- | [IPv4 traffic only] The ID of a carrier gateway.
replaceRoute_carrierGatewayId :: Lens.Lens' ReplaceRoute (Prelude.Maybe Prelude.Text)
replaceRoute_carrierGatewayId = Lens.lens (\ReplaceRoute' {carrierGatewayId} -> carrierGatewayId) (\s@ReplaceRoute' {} a -> s {carrierGatewayId = a} :: ReplaceRoute)

-- | The ID of a transit gateway.
replaceRoute_transitGatewayId :: Lens.Lens' ReplaceRoute (Prelude.Maybe Prelude.Text)
replaceRoute_transitGatewayId = Lens.lens (\ReplaceRoute' {transitGatewayId} -> transitGatewayId) (\s@ReplaceRoute' {} a -> s {transitGatewayId = a} :: ReplaceRoute)

-- | [IPv4 traffic only] The ID of a NAT gateway.
replaceRoute_natGatewayId :: Lens.Lens' ReplaceRoute (Prelude.Maybe Prelude.Text)
replaceRoute_natGatewayId = Lens.lens (\ReplaceRoute' {natGatewayId} -> natGatewayId) (\s@ReplaceRoute' {} a -> s {natGatewayId = a} :: ReplaceRoute)

-- | The ID of a VPC peering connection.
replaceRoute_vpcPeeringConnectionId :: Lens.Lens' ReplaceRoute (Prelude.Maybe Prelude.Text)
replaceRoute_vpcPeeringConnectionId = Lens.lens (\ReplaceRoute' {vpcPeeringConnectionId} -> vpcPeeringConnectionId) (\s@ReplaceRoute' {} a -> s {vpcPeeringConnectionId = a} :: ReplaceRoute)

-- | The ID of a VPC endpoint. Supported for Gateway Load Balancer endpoints
-- only.
replaceRoute_vpcEndpointId :: Lens.Lens' ReplaceRoute (Prelude.Maybe Prelude.Text)
replaceRoute_vpcEndpointId = Lens.lens (\ReplaceRoute' {vpcEndpointId} -> vpcEndpointId) (\s@ReplaceRoute' {} a -> s {vpcEndpointId = a} :: ReplaceRoute)

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
replaceRoute_dryRun :: Lens.Lens' ReplaceRoute (Prelude.Maybe Prelude.Bool)
replaceRoute_dryRun = Lens.lens (\ReplaceRoute' {dryRun} -> dryRun) (\s@ReplaceRoute' {} a -> s {dryRun = a} :: ReplaceRoute)

-- | The IPv4 CIDR address block used for the destination match. The value
-- that you provide must match the CIDR of an existing route in the table.
replaceRoute_destinationCidrBlock :: Lens.Lens' ReplaceRoute (Prelude.Maybe Prelude.Text)
replaceRoute_destinationCidrBlock = Lens.lens (\ReplaceRoute' {destinationCidrBlock} -> destinationCidrBlock) (\s@ReplaceRoute' {} a -> s {destinationCidrBlock = a} :: ReplaceRoute)

-- | The Amazon Resource Name (ARN) of the core network.
replaceRoute_coreNetworkArn :: Lens.Lens' ReplaceRoute (Prelude.Maybe Prelude.Text)
replaceRoute_coreNetworkArn = Lens.lens (\ReplaceRoute' {coreNetworkArn} -> coreNetworkArn) (\s@ReplaceRoute' {} a -> s {coreNetworkArn = a} :: ReplaceRoute)

-- | The ID of a NAT instance in your VPC.
replaceRoute_instanceId :: Lens.Lens' ReplaceRoute (Prelude.Maybe Prelude.Text)
replaceRoute_instanceId = Lens.lens (\ReplaceRoute' {instanceId} -> instanceId) (\s@ReplaceRoute' {} a -> s {instanceId = a} :: ReplaceRoute)

-- | [IPv6 traffic only] The ID of an egress-only internet gateway.
replaceRoute_egressOnlyInternetGatewayId :: Lens.Lens' ReplaceRoute (Prelude.Maybe Prelude.Text)
replaceRoute_egressOnlyInternetGatewayId = Lens.lens (\ReplaceRoute' {egressOnlyInternetGatewayId} -> egressOnlyInternetGatewayId) (\s@ReplaceRoute' {} a -> s {egressOnlyInternetGatewayId = a} :: ReplaceRoute)

-- | The ID of a network interface.
replaceRoute_networkInterfaceId :: Lens.Lens' ReplaceRoute (Prelude.Maybe Prelude.Text)
replaceRoute_networkInterfaceId = Lens.lens (\ReplaceRoute' {networkInterfaceId} -> networkInterfaceId) (\s@ReplaceRoute' {} a -> s {networkInterfaceId = a} :: ReplaceRoute)

-- | The ID of an internet gateway or virtual private gateway.
replaceRoute_gatewayId :: Lens.Lens' ReplaceRoute (Prelude.Maybe Prelude.Text)
replaceRoute_gatewayId = Lens.lens (\ReplaceRoute' {gatewayId} -> gatewayId) (\s@ReplaceRoute' {} a -> s {gatewayId = a} :: ReplaceRoute)

-- | The IPv6 CIDR address block used for the destination match. The value
-- that you provide must match the CIDR of an existing route in the table.
replaceRoute_destinationIpv6CidrBlock :: Lens.Lens' ReplaceRoute (Prelude.Maybe Prelude.Text)
replaceRoute_destinationIpv6CidrBlock = Lens.lens (\ReplaceRoute' {destinationIpv6CidrBlock} -> destinationIpv6CidrBlock) (\s@ReplaceRoute' {} a -> s {destinationIpv6CidrBlock = a} :: ReplaceRoute)

-- | Specifies whether to reset the local route to its default target
-- (@local@).
replaceRoute_localTarget :: Lens.Lens' ReplaceRoute (Prelude.Maybe Prelude.Bool)
replaceRoute_localTarget = Lens.lens (\ReplaceRoute' {localTarget} -> localTarget) (\s@ReplaceRoute' {} a -> s {localTarget = a} :: ReplaceRoute)

-- | The ID of the route table.
replaceRoute_routeTableId :: Lens.Lens' ReplaceRoute Prelude.Text
replaceRoute_routeTableId = Lens.lens (\ReplaceRoute' {routeTableId} -> routeTableId) (\s@ReplaceRoute' {} a -> s {routeTableId = a} :: ReplaceRoute)

instance Core.AWSRequest ReplaceRoute where
  type AWSResponse ReplaceRoute = ReplaceRouteResponse
  request = Request.postQuery defaultService
  response = Response.receiveNull ReplaceRouteResponse'

instance Prelude.Hashable ReplaceRoute where
  hashWithSalt _salt ReplaceRoute' {..} =
    _salt `Prelude.hashWithSalt` localGatewayId
      `Prelude.hashWithSalt` destinationPrefixListId
      `Prelude.hashWithSalt` carrierGatewayId
      `Prelude.hashWithSalt` transitGatewayId
      `Prelude.hashWithSalt` natGatewayId
      `Prelude.hashWithSalt` vpcPeeringConnectionId
      `Prelude.hashWithSalt` vpcEndpointId
      `Prelude.hashWithSalt` dryRun
      `Prelude.hashWithSalt` destinationCidrBlock
      `Prelude.hashWithSalt` coreNetworkArn
      `Prelude.hashWithSalt` instanceId
      `Prelude.hashWithSalt` egressOnlyInternetGatewayId
      `Prelude.hashWithSalt` networkInterfaceId
      `Prelude.hashWithSalt` gatewayId
      `Prelude.hashWithSalt` destinationIpv6CidrBlock
      `Prelude.hashWithSalt` localTarget
      `Prelude.hashWithSalt` routeTableId

instance Prelude.NFData ReplaceRoute where
  rnf ReplaceRoute' {..} =
    Prelude.rnf localGatewayId
      `Prelude.seq` Prelude.rnf destinationPrefixListId
      `Prelude.seq` Prelude.rnf carrierGatewayId
      `Prelude.seq` Prelude.rnf transitGatewayId
      `Prelude.seq` Prelude.rnf natGatewayId
      `Prelude.seq` Prelude.rnf vpcPeeringConnectionId
      `Prelude.seq` Prelude.rnf vpcEndpointId
      `Prelude.seq` Prelude.rnf dryRun
      `Prelude.seq` Prelude.rnf destinationCidrBlock
      `Prelude.seq` Prelude.rnf coreNetworkArn
      `Prelude.seq` Prelude.rnf instanceId
      `Prelude.seq` Prelude.rnf egressOnlyInternetGatewayId
      `Prelude.seq` Prelude.rnf networkInterfaceId
      `Prelude.seq` Prelude.rnf gatewayId
      `Prelude.seq` Prelude.rnf destinationIpv6CidrBlock
      `Prelude.seq` Prelude.rnf localTarget
      `Prelude.seq` Prelude.rnf routeTableId

instance Core.ToHeaders ReplaceRoute where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath ReplaceRoute where
  toPath = Prelude.const "/"

instance Core.ToQuery ReplaceRoute where
  toQuery ReplaceRoute' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("ReplaceRoute" :: Prelude.ByteString),
        "Version"
          Core.=: ("2016-11-15" :: Prelude.ByteString),
        "LocalGatewayId" Core.=: localGatewayId,
        "DestinationPrefixListId"
          Core.=: destinationPrefixListId,
        "CarrierGatewayId" Core.=: carrierGatewayId,
        "TransitGatewayId" Core.=: transitGatewayId,
        "NatGatewayId" Core.=: natGatewayId,
        "VpcPeeringConnectionId"
          Core.=: vpcPeeringConnectionId,
        "VpcEndpointId" Core.=: vpcEndpointId,
        "DryRun" Core.=: dryRun,
        "DestinationCidrBlock" Core.=: destinationCidrBlock,
        "CoreNetworkArn" Core.=: coreNetworkArn,
        "InstanceId" Core.=: instanceId,
        "EgressOnlyInternetGatewayId"
          Core.=: egressOnlyInternetGatewayId,
        "NetworkInterfaceId" Core.=: networkInterfaceId,
        "GatewayId" Core.=: gatewayId,
        "DestinationIpv6CidrBlock"
          Core.=: destinationIpv6CidrBlock,
        "LocalTarget" Core.=: localTarget,
        "RouteTableId" Core.=: routeTableId
      ]

-- | /See:/ 'newReplaceRouteResponse' smart constructor.
data ReplaceRouteResponse = ReplaceRouteResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ReplaceRouteResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newReplaceRouteResponse ::
  ReplaceRouteResponse
newReplaceRouteResponse = ReplaceRouteResponse'

instance Prelude.NFData ReplaceRouteResponse where
  rnf _ = ()
