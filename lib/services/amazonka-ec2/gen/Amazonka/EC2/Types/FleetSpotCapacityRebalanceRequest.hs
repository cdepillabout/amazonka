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
-- Module      : Amazonka.EC2.Types.FleetSpotCapacityRebalanceRequest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.FleetSpotCapacityRebalanceRequest where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import Amazonka.EC2.Types.FleetReplacementStrategy
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The Spot Instance replacement strategy to use when Amazon EC2 emits a
-- rebalance notification signal that your Spot Instance is at an elevated
-- risk of being interrupted. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet-capacity-rebalance.html Capacity rebalancing>
-- in the /Amazon EC2 User Guide/.
--
-- /See:/ 'newFleetSpotCapacityRebalanceRequest' smart constructor.
data FleetSpotCapacityRebalanceRequest = FleetSpotCapacityRebalanceRequest'
  { -- | The amount of time (in seconds) that Amazon EC2 waits before terminating
    -- the old Spot Instance after launching a new replacement Spot Instance.
    --
    -- Required when @ReplacementStrategy@ is set to @launch-before-terminate@.
    --
    -- Not valid when @ReplacementStrategy@ is set to @launch@.
    --
    -- Valid values: Minimum value of @120@ seconds. Maximum value of @7200@
    -- seconds.
    terminationDelay :: Prelude.Maybe Prelude.Int,
    -- | The replacement strategy to use. Only available for fleets of type
    -- @maintain@.
    --
    -- @launch@ - EC2 Fleet launches a replacement Spot Instance when a
    -- rebalance notification is emitted for an existing Spot Instance in the
    -- fleet. EC2 Fleet does not terminate the instances that receive a
    -- rebalance notification. You can terminate the old instances, or you can
    -- leave them running. You are charged for all instances while they are
    -- running.
    --
    -- @launch-before-terminate@ - EC2 Fleet launches a replacement Spot
    -- Instance when a rebalance notification is emitted for an existing Spot
    -- Instance in the fleet, and then, after a delay that you specify (in
    -- @TerminationDelay@), terminates the instances that received a rebalance
    -- notification.
    replacementStrategy :: Prelude.Maybe FleetReplacementStrategy
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'FleetSpotCapacityRebalanceRequest' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'terminationDelay', 'fleetSpotCapacityRebalanceRequest_terminationDelay' - The amount of time (in seconds) that Amazon EC2 waits before terminating
-- the old Spot Instance after launching a new replacement Spot Instance.
--
-- Required when @ReplacementStrategy@ is set to @launch-before-terminate@.
--
-- Not valid when @ReplacementStrategy@ is set to @launch@.
--
-- Valid values: Minimum value of @120@ seconds. Maximum value of @7200@
-- seconds.
--
-- 'replacementStrategy', 'fleetSpotCapacityRebalanceRequest_replacementStrategy' - The replacement strategy to use. Only available for fleets of type
-- @maintain@.
--
-- @launch@ - EC2 Fleet launches a replacement Spot Instance when a
-- rebalance notification is emitted for an existing Spot Instance in the
-- fleet. EC2 Fleet does not terminate the instances that receive a
-- rebalance notification. You can terminate the old instances, or you can
-- leave them running. You are charged for all instances while they are
-- running.
--
-- @launch-before-terminate@ - EC2 Fleet launches a replacement Spot
-- Instance when a rebalance notification is emitted for an existing Spot
-- Instance in the fleet, and then, after a delay that you specify (in
-- @TerminationDelay@), terminates the instances that received a rebalance
-- notification.
newFleetSpotCapacityRebalanceRequest ::
  FleetSpotCapacityRebalanceRequest
newFleetSpotCapacityRebalanceRequest =
  FleetSpotCapacityRebalanceRequest'
    { terminationDelay =
        Prelude.Nothing,
      replacementStrategy = Prelude.Nothing
    }

-- | The amount of time (in seconds) that Amazon EC2 waits before terminating
-- the old Spot Instance after launching a new replacement Spot Instance.
--
-- Required when @ReplacementStrategy@ is set to @launch-before-terminate@.
--
-- Not valid when @ReplacementStrategy@ is set to @launch@.
--
-- Valid values: Minimum value of @120@ seconds. Maximum value of @7200@
-- seconds.
fleetSpotCapacityRebalanceRequest_terminationDelay :: Lens.Lens' FleetSpotCapacityRebalanceRequest (Prelude.Maybe Prelude.Int)
fleetSpotCapacityRebalanceRequest_terminationDelay = Lens.lens (\FleetSpotCapacityRebalanceRequest' {terminationDelay} -> terminationDelay) (\s@FleetSpotCapacityRebalanceRequest' {} a -> s {terminationDelay = a} :: FleetSpotCapacityRebalanceRequest)

-- | The replacement strategy to use. Only available for fleets of type
-- @maintain@.
--
-- @launch@ - EC2 Fleet launches a replacement Spot Instance when a
-- rebalance notification is emitted for an existing Spot Instance in the
-- fleet. EC2 Fleet does not terminate the instances that receive a
-- rebalance notification. You can terminate the old instances, or you can
-- leave them running. You are charged for all instances while they are
-- running.
--
-- @launch-before-terminate@ - EC2 Fleet launches a replacement Spot
-- Instance when a rebalance notification is emitted for an existing Spot
-- Instance in the fleet, and then, after a delay that you specify (in
-- @TerminationDelay@), terminates the instances that received a rebalance
-- notification.
fleetSpotCapacityRebalanceRequest_replacementStrategy :: Lens.Lens' FleetSpotCapacityRebalanceRequest (Prelude.Maybe FleetReplacementStrategy)
fleetSpotCapacityRebalanceRequest_replacementStrategy = Lens.lens (\FleetSpotCapacityRebalanceRequest' {replacementStrategy} -> replacementStrategy) (\s@FleetSpotCapacityRebalanceRequest' {} a -> s {replacementStrategy = a} :: FleetSpotCapacityRebalanceRequest)

instance
  Prelude.Hashable
    FleetSpotCapacityRebalanceRequest
  where
  hashWithSalt
    _salt
    FleetSpotCapacityRebalanceRequest' {..} =
      _salt `Prelude.hashWithSalt` terminationDelay
        `Prelude.hashWithSalt` replacementStrategy

instance
  Prelude.NFData
    FleetSpotCapacityRebalanceRequest
  where
  rnf FleetSpotCapacityRebalanceRequest' {..} =
    Prelude.rnf terminationDelay
      `Prelude.seq` Prelude.rnf replacementStrategy

instance
  Core.ToQuery
    FleetSpotCapacityRebalanceRequest
  where
  toQuery FleetSpotCapacityRebalanceRequest' {..} =
    Prelude.mconcat
      [ "TerminationDelay" Core.=: terminationDelay,
        "ReplacementStrategy" Core.=: replacementStrategy
      ]
