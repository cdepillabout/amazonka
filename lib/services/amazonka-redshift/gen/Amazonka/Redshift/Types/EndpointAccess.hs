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
-- Module      : Amazonka.Redshift.Types.EndpointAccess
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Redshift.Types.EndpointAccess where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.Redshift.Internal
import Amazonka.Redshift.Types.VpcEndpoint
import Amazonka.Redshift.Types.VpcSecurityGroupMembership

-- | Describes a Redshift-managed VPC endpoint.
--
-- /See:/ 'newEndpointAccess' smart constructor.
data EndpointAccess = EndpointAccess'
  { -- | The port number on which the cluster accepts incoming connections.
    port :: Prelude.Maybe Prelude.Int,
    -- | The subnet group name where Amazon Redshift chooses to deploy the
    -- endpoint.
    subnetGroupName :: Prelude.Maybe Prelude.Text,
    -- | The cluster identifier of the cluster associated with the endpoint.
    clusterIdentifier :: Prelude.Maybe Prelude.Text,
    -- | The name of the endpoint.
    endpointName :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Web Services account ID of the owner of the cluster.
    resourceOwner :: Prelude.Maybe Prelude.Text,
    -- | The DNS address of the endpoint.
    address :: Prelude.Maybe Prelude.Text,
    -- | The status of the endpoint.
    endpointStatus :: Prelude.Maybe Prelude.Text,
    vpcEndpoint :: Prelude.Maybe VpcEndpoint,
    -- | The time (UTC) that the endpoint was created.
    endpointCreateTime :: Prelude.Maybe Core.ISO8601,
    -- | The security groups associated with the endpoint.
    vpcSecurityGroups :: Prelude.Maybe [VpcSecurityGroupMembership]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EndpointAccess' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'port', 'endpointAccess_port' - The port number on which the cluster accepts incoming connections.
--
-- 'subnetGroupName', 'endpointAccess_subnetGroupName' - The subnet group name where Amazon Redshift chooses to deploy the
-- endpoint.
--
-- 'clusterIdentifier', 'endpointAccess_clusterIdentifier' - The cluster identifier of the cluster associated with the endpoint.
--
-- 'endpointName', 'endpointAccess_endpointName' - The name of the endpoint.
--
-- 'resourceOwner', 'endpointAccess_resourceOwner' - The Amazon Web Services account ID of the owner of the cluster.
--
-- 'address', 'endpointAccess_address' - The DNS address of the endpoint.
--
-- 'endpointStatus', 'endpointAccess_endpointStatus' - The status of the endpoint.
--
-- 'vpcEndpoint', 'endpointAccess_vpcEndpoint' - Undocumented member.
--
-- 'endpointCreateTime', 'endpointAccess_endpointCreateTime' - The time (UTC) that the endpoint was created.
--
-- 'vpcSecurityGroups', 'endpointAccess_vpcSecurityGroups' - The security groups associated with the endpoint.
newEndpointAccess ::
  EndpointAccess
newEndpointAccess =
  EndpointAccess'
    { port = Prelude.Nothing,
      subnetGroupName = Prelude.Nothing,
      clusterIdentifier = Prelude.Nothing,
      endpointName = Prelude.Nothing,
      resourceOwner = Prelude.Nothing,
      address = Prelude.Nothing,
      endpointStatus = Prelude.Nothing,
      vpcEndpoint = Prelude.Nothing,
      endpointCreateTime = Prelude.Nothing,
      vpcSecurityGroups = Prelude.Nothing
    }

-- | The port number on which the cluster accepts incoming connections.
endpointAccess_port :: Lens.Lens' EndpointAccess (Prelude.Maybe Prelude.Int)
endpointAccess_port = Lens.lens (\EndpointAccess' {port} -> port) (\s@EndpointAccess' {} a -> s {port = a} :: EndpointAccess)

-- | The subnet group name where Amazon Redshift chooses to deploy the
-- endpoint.
endpointAccess_subnetGroupName :: Lens.Lens' EndpointAccess (Prelude.Maybe Prelude.Text)
endpointAccess_subnetGroupName = Lens.lens (\EndpointAccess' {subnetGroupName} -> subnetGroupName) (\s@EndpointAccess' {} a -> s {subnetGroupName = a} :: EndpointAccess)

-- | The cluster identifier of the cluster associated with the endpoint.
endpointAccess_clusterIdentifier :: Lens.Lens' EndpointAccess (Prelude.Maybe Prelude.Text)
endpointAccess_clusterIdentifier = Lens.lens (\EndpointAccess' {clusterIdentifier} -> clusterIdentifier) (\s@EndpointAccess' {} a -> s {clusterIdentifier = a} :: EndpointAccess)

-- | The name of the endpoint.
endpointAccess_endpointName :: Lens.Lens' EndpointAccess (Prelude.Maybe Prelude.Text)
endpointAccess_endpointName = Lens.lens (\EndpointAccess' {endpointName} -> endpointName) (\s@EndpointAccess' {} a -> s {endpointName = a} :: EndpointAccess)

-- | The Amazon Web Services account ID of the owner of the cluster.
endpointAccess_resourceOwner :: Lens.Lens' EndpointAccess (Prelude.Maybe Prelude.Text)
endpointAccess_resourceOwner = Lens.lens (\EndpointAccess' {resourceOwner} -> resourceOwner) (\s@EndpointAccess' {} a -> s {resourceOwner = a} :: EndpointAccess)

-- | The DNS address of the endpoint.
endpointAccess_address :: Lens.Lens' EndpointAccess (Prelude.Maybe Prelude.Text)
endpointAccess_address = Lens.lens (\EndpointAccess' {address} -> address) (\s@EndpointAccess' {} a -> s {address = a} :: EndpointAccess)

-- | The status of the endpoint.
endpointAccess_endpointStatus :: Lens.Lens' EndpointAccess (Prelude.Maybe Prelude.Text)
endpointAccess_endpointStatus = Lens.lens (\EndpointAccess' {endpointStatus} -> endpointStatus) (\s@EndpointAccess' {} a -> s {endpointStatus = a} :: EndpointAccess)

-- | Undocumented member.
endpointAccess_vpcEndpoint :: Lens.Lens' EndpointAccess (Prelude.Maybe VpcEndpoint)
endpointAccess_vpcEndpoint = Lens.lens (\EndpointAccess' {vpcEndpoint} -> vpcEndpoint) (\s@EndpointAccess' {} a -> s {vpcEndpoint = a} :: EndpointAccess)

-- | The time (UTC) that the endpoint was created.
endpointAccess_endpointCreateTime :: Lens.Lens' EndpointAccess (Prelude.Maybe Prelude.UTCTime)
endpointAccess_endpointCreateTime = Lens.lens (\EndpointAccess' {endpointCreateTime} -> endpointCreateTime) (\s@EndpointAccess' {} a -> s {endpointCreateTime = a} :: EndpointAccess) Prelude.. Lens.mapping Core._Time

-- | The security groups associated with the endpoint.
endpointAccess_vpcSecurityGroups :: Lens.Lens' EndpointAccess (Prelude.Maybe [VpcSecurityGroupMembership])
endpointAccess_vpcSecurityGroups = Lens.lens (\EndpointAccess' {vpcSecurityGroups} -> vpcSecurityGroups) (\s@EndpointAccess' {} a -> s {vpcSecurityGroups = a} :: EndpointAccess) Prelude.. Lens.mapping Lens.coerced

instance Core.FromXML EndpointAccess where
  parseXML x =
    EndpointAccess'
      Prelude.<$> (x Core..@? "Port")
      Prelude.<*> (x Core..@? "SubnetGroupName")
      Prelude.<*> (x Core..@? "ClusterIdentifier")
      Prelude.<*> (x Core..@? "EndpointName")
      Prelude.<*> (x Core..@? "ResourceOwner")
      Prelude.<*> (x Core..@? "Address")
      Prelude.<*> (x Core..@? "EndpointStatus")
      Prelude.<*> (x Core..@? "VpcEndpoint")
      Prelude.<*> (x Core..@? "EndpointCreateTime")
      Prelude.<*> ( x Core..@? "VpcSecurityGroups"
                      Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "VpcSecurityGroup")
                  )

instance Prelude.Hashable EndpointAccess where
  hashWithSalt _salt EndpointAccess' {..} =
    _salt `Prelude.hashWithSalt` port
      `Prelude.hashWithSalt` subnetGroupName
      `Prelude.hashWithSalt` clusterIdentifier
      `Prelude.hashWithSalt` endpointName
      `Prelude.hashWithSalt` resourceOwner
      `Prelude.hashWithSalt` address
      `Prelude.hashWithSalt` endpointStatus
      `Prelude.hashWithSalt` vpcEndpoint
      `Prelude.hashWithSalt` endpointCreateTime
      `Prelude.hashWithSalt` vpcSecurityGroups

instance Prelude.NFData EndpointAccess where
  rnf EndpointAccess' {..} =
    Prelude.rnf port
      `Prelude.seq` Prelude.rnf subnetGroupName
      `Prelude.seq` Prelude.rnf clusterIdentifier
      `Prelude.seq` Prelude.rnf endpointName
      `Prelude.seq` Prelude.rnf resourceOwner
      `Prelude.seq` Prelude.rnf address
      `Prelude.seq` Prelude.rnf endpointStatus
      `Prelude.seq` Prelude.rnf vpcEndpoint
      `Prelude.seq` Prelude.rnf endpointCreateTime
      `Prelude.seq` Prelude.rnf vpcSecurityGroups
