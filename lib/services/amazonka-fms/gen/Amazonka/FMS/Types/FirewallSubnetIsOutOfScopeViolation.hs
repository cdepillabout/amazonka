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
-- Module      : Amazonka.FMS.Types.FirewallSubnetIsOutOfScopeViolation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.FMS.Types.FirewallSubnetIsOutOfScopeViolation where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Contains details about the firewall subnet that violates the policy
-- scope.
--
-- /See:/ 'newFirewallSubnetIsOutOfScopeViolation' smart constructor.
data FirewallSubnetIsOutOfScopeViolation = FirewallSubnetIsOutOfScopeViolation'
  { -- | The Availability Zone ID of the firewall subnet that violates the policy
    -- scope.
    subnetAvailabilityZoneId :: Prelude.Maybe Prelude.Text,
    -- | The VPC endpoint ID of the firewall subnet that violates the policy
    -- scope.
    vpcEndpointId :: Prelude.Maybe Prelude.Text,
    -- | The Availability Zone of the firewall subnet that violates the policy
    -- scope.
    subnetAvailabilityZone :: Prelude.Maybe Prelude.Text,
    -- | The ID of the firewall subnet that violates the policy scope.
    firewallSubnetId :: Prelude.Maybe Prelude.Text,
    -- | The VPC ID of the firewall subnet that violates the policy scope.
    vpcId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'FirewallSubnetIsOutOfScopeViolation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'subnetAvailabilityZoneId', 'firewallSubnetIsOutOfScopeViolation_subnetAvailabilityZoneId' - The Availability Zone ID of the firewall subnet that violates the policy
-- scope.
--
-- 'vpcEndpointId', 'firewallSubnetIsOutOfScopeViolation_vpcEndpointId' - The VPC endpoint ID of the firewall subnet that violates the policy
-- scope.
--
-- 'subnetAvailabilityZone', 'firewallSubnetIsOutOfScopeViolation_subnetAvailabilityZone' - The Availability Zone of the firewall subnet that violates the policy
-- scope.
--
-- 'firewallSubnetId', 'firewallSubnetIsOutOfScopeViolation_firewallSubnetId' - The ID of the firewall subnet that violates the policy scope.
--
-- 'vpcId', 'firewallSubnetIsOutOfScopeViolation_vpcId' - The VPC ID of the firewall subnet that violates the policy scope.
newFirewallSubnetIsOutOfScopeViolation ::
  FirewallSubnetIsOutOfScopeViolation
newFirewallSubnetIsOutOfScopeViolation =
  FirewallSubnetIsOutOfScopeViolation'
    { subnetAvailabilityZoneId =
        Prelude.Nothing,
      vpcEndpointId = Prelude.Nothing,
      subnetAvailabilityZone =
        Prelude.Nothing,
      firewallSubnetId = Prelude.Nothing,
      vpcId = Prelude.Nothing
    }

-- | The Availability Zone ID of the firewall subnet that violates the policy
-- scope.
firewallSubnetIsOutOfScopeViolation_subnetAvailabilityZoneId :: Lens.Lens' FirewallSubnetIsOutOfScopeViolation (Prelude.Maybe Prelude.Text)
firewallSubnetIsOutOfScopeViolation_subnetAvailabilityZoneId = Lens.lens (\FirewallSubnetIsOutOfScopeViolation' {subnetAvailabilityZoneId} -> subnetAvailabilityZoneId) (\s@FirewallSubnetIsOutOfScopeViolation' {} a -> s {subnetAvailabilityZoneId = a} :: FirewallSubnetIsOutOfScopeViolation)

-- | The VPC endpoint ID of the firewall subnet that violates the policy
-- scope.
firewallSubnetIsOutOfScopeViolation_vpcEndpointId :: Lens.Lens' FirewallSubnetIsOutOfScopeViolation (Prelude.Maybe Prelude.Text)
firewallSubnetIsOutOfScopeViolation_vpcEndpointId = Lens.lens (\FirewallSubnetIsOutOfScopeViolation' {vpcEndpointId} -> vpcEndpointId) (\s@FirewallSubnetIsOutOfScopeViolation' {} a -> s {vpcEndpointId = a} :: FirewallSubnetIsOutOfScopeViolation)

-- | The Availability Zone of the firewall subnet that violates the policy
-- scope.
firewallSubnetIsOutOfScopeViolation_subnetAvailabilityZone :: Lens.Lens' FirewallSubnetIsOutOfScopeViolation (Prelude.Maybe Prelude.Text)
firewallSubnetIsOutOfScopeViolation_subnetAvailabilityZone = Lens.lens (\FirewallSubnetIsOutOfScopeViolation' {subnetAvailabilityZone} -> subnetAvailabilityZone) (\s@FirewallSubnetIsOutOfScopeViolation' {} a -> s {subnetAvailabilityZone = a} :: FirewallSubnetIsOutOfScopeViolation)

-- | The ID of the firewall subnet that violates the policy scope.
firewallSubnetIsOutOfScopeViolation_firewallSubnetId :: Lens.Lens' FirewallSubnetIsOutOfScopeViolation (Prelude.Maybe Prelude.Text)
firewallSubnetIsOutOfScopeViolation_firewallSubnetId = Lens.lens (\FirewallSubnetIsOutOfScopeViolation' {firewallSubnetId} -> firewallSubnetId) (\s@FirewallSubnetIsOutOfScopeViolation' {} a -> s {firewallSubnetId = a} :: FirewallSubnetIsOutOfScopeViolation)

-- | The VPC ID of the firewall subnet that violates the policy scope.
firewallSubnetIsOutOfScopeViolation_vpcId :: Lens.Lens' FirewallSubnetIsOutOfScopeViolation (Prelude.Maybe Prelude.Text)
firewallSubnetIsOutOfScopeViolation_vpcId = Lens.lens (\FirewallSubnetIsOutOfScopeViolation' {vpcId} -> vpcId) (\s@FirewallSubnetIsOutOfScopeViolation' {} a -> s {vpcId = a} :: FirewallSubnetIsOutOfScopeViolation)

instance
  Core.FromJSON
    FirewallSubnetIsOutOfScopeViolation
  where
  parseJSON =
    Core.withObject
      "FirewallSubnetIsOutOfScopeViolation"
      ( \x ->
          FirewallSubnetIsOutOfScopeViolation'
            Prelude.<$> (x Core..:? "SubnetAvailabilityZoneId")
            Prelude.<*> (x Core..:? "VpcEndpointId")
            Prelude.<*> (x Core..:? "SubnetAvailabilityZone")
            Prelude.<*> (x Core..:? "FirewallSubnetId")
            Prelude.<*> (x Core..:? "VpcId")
      )

instance
  Prelude.Hashable
    FirewallSubnetIsOutOfScopeViolation
  where
  hashWithSalt
    _salt
    FirewallSubnetIsOutOfScopeViolation' {..} =
      _salt
        `Prelude.hashWithSalt` subnetAvailabilityZoneId
        `Prelude.hashWithSalt` vpcEndpointId
        `Prelude.hashWithSalt` subnetAvailabilityZone
        `Prelude.hashWithSalt` firewallSubnetId
        `Prelude.hashWithSalt` vpcId

instance
  Prelude.NFData
    FirewallSubnetIsOutOfScopeViolation
  where
  rnf FirewallSubnetIsOutOfScopeViolation' {..} =
    Prelude.rnf subnetAvailabilityZoneId
      `Prelude.seq` Prelude.rnf vpcEndpointId
      `Prelude.seq` Prelude.rnf subnetAvailabilityZone
      `Prelude.seq` Prelude.rnf firewallSubnetId
      `Prelude.seq` Prelude.rnf vpcId
