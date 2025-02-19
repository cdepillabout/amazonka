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
-- Module      : Amazonka.EC2.Types.FleetCapacityReservation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.FleetCapacityReservation where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import Amazonka.EC2.Types.CapacityReservationInstancePlatform
import Amazonka.EC2.Types.InstanceType
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Information about a Capacity Reservation in a Capacity Reservation
-- Fleet.
--
-- /See:/ 'newFleetCapacityReservation' smart constructor.
data FleetCapacityReservation = FleetCapacityReservation'
  { -- | Indicates whether the Capacity Reservation reserves capacity for
    -- EBS-optimized instance types.
    ebsOptimized :: Prelude.Maybe Prelude.Bool,
    -- | The total number of instances for which the Capacity Reservation
    -- reserves capacity.
    totalInstanceCount :: Prelude.Maybe Prelude.Int,
    -- | The ID of the Capacity Reservation.
    capacityReservationId :: Prelude.Maybe Prelude.Text,
    -- | The number of capacity units fulfilled by the Capacity Reservation. For
    -- more information, see
    -- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/crfleet-concepts.html#target-capacity Total target capacity>
    -- in the Amazon EC2 User Guide.
    fulfilledCapacity :: Prelude.Maybe Prelude.Double,
    -- | The Availability Zone in which the Capacity Reservation reserves
    -- capacity.
    availabilityZone :: Prelude.Maybe Prelude.Text,
    -- | The instance type for which the Capacity Reservation reserves capacity.
    instanceType :: Prelude.Maybe InstanceType,
    -- | The type of operating system for which the Capacity Reservation reserves
    -- capacity.
    instancePlatform :: Prelude.Maybe CapacityReservationInstancePlatform,
    -- | The priority of the instance type in the Capacity Reservation Fleet. For
    -- more information, see
    -- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/crfleet-concepts.html#instance-priority Instance type priority>
    -- in the Amazon EC2 User Guide.
    priority :: Prelude.Maybe Prelude.Natural,
    -- | The date and time at which the Capacity Reservation was created.
    createDate :: Prelude.Maybe Core.ISO8601,
    -- | The weight of the instance type in the Capacity Reservation Fleet. For
    -- more information, see
    -- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/crfleet-concepts.html#instance-weight Instance type weight>
    -- in the Amazon EC2 User Guide.
    weight :: Prelude.Maybe Prelude.Double,
    -- | The ID of the Availability Zone in which the Capacity Reservation
    -- reserves capacity.
    availabilityZoneId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'FleetCapacityReservation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'ebsOptimized', 'fleetCapacityReservation_ebsOptimized' - Indicates whether the Capacity Reservation reserves capacity for
-- EBS-optimized instance types.
--
-- 'totalInstanceCount', 'fleetCapacityReservation_totalInstanceCount' - The total number of instances for which the Capacity Reservation
-- reserves capacity.
--
-- 'capacityReservationId', 'fleetCapacityReservation_capacityReservationId' - The ID of the Capacity Reservation.
--
-- 'fulfilledCapacity', 'fleetCapacityReservation_fulfilledCapacity' - The number of capacity units fulfilled by the Capacity Reservation. For
-- more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/crfleet-concepts.html#target-capacity Total target capacity>
-- in the Amazon EC2 User Guide.
--
-- 'availabilityZone', 'fleetCapacityReservation_availabilityZone' - The Availability Zone in which the Capacity Reservation reserves
-- capacity.
--
-- 'instanceType', 'fleetCapacityReservation_instanceType' - The instance type for which the Capacity Reservation reserves capacity.
--
-- 'instancePlatform', 'fleetCapacityReservation_instancePlatform' - The type of operating system for which the Capacity Reservation reserves
-- capacity.
--
-- 'priority', 'fleetCapacityReservation_priority' - The priority of the instance type in the Capacity Reservation Fleet. For
-- more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/crfleet-concepts.html#instance-priority Instance type priority>
-- in the Amazon EC2 User Guide.
--
-- 'createDate', 'fleetCapacityReservation_createDate' - The date and time at which the Capacity Reservation was created.
--
-- 'weight', 'fleetCapacityReservation_weight' - The weight of the instance type in the Capacity Reservation Fleet. For
-- more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/crfleet-concepts.html#instance-weight Instance type weight>
-- in the Amazon EC2 User Guide.
--
-- 'availabilityZoneId', 'fleetCapacityReservation_availabilityZoneId' - The ID of the Availability Zone in which the Capacity Reservation
-- reserves capacity.
newFleetCapacityReservation ::
  FleetCapacityReservation
newFleetCapacityReservation =
  FleetCapacityReservation'
    { ebsOptimized =
        Prelude.Nothing,
      totalInstanceCount = Prelude.Nothing,
      capacityReservationId = Prelude.Nothing,
      fulfilledCapacity = Prelude.Nothing,
      availabilityZone = Prelude.Nothing,
      instanceType = Prelude.Nothing,
      instancePlatform = Prelude.Nothing,
      priority = Prelude.Nothing,
      createDate = Prelude.Nothing,
      weight = Prelude.Nothing,
      availabilityZoneId = Prelude.Nothing
    }

-- | Indicates whether the Capacity Reservation reserves capacity for
-- EBS-optimized instance types.
fleetCapacityReservation_ebsOptimized :: Lens.Lens' FleetCapacityReservation (Prelude.Maybe Prelude.Bool)
fleetCapacityReservation_ebsOptimized = Lens.lens (\FleetCapacityReservation' {ebsOptimized} -> ebsOptimized) (\s@FleetCapacityReservation' {} a -> s {ebsOptimized = a} :: FleetCapacityReservation)

-- | The total number of instances for which the Capacity Reservation
-- reserves capacity.
fleetCapacityReservation_totalInstanceCount :: Lens.Lens' FleetCapacityReservation (Prelude.Maybe Prelude.Int)
fleetCapacityReservation_totalInstanceCount = Lens.lens (\FleetCapacityReservation' {totalInstanceCount} -> totalInstanceCount) (\s@FleetCapacityReservation' {} a -> s {totalInstanceCount = a} :: FleetCapacityReservation)

-- | The ID of the Capacity Reservation.
fleetCapacityReservation_capacityReservationId :: Lens.Lens' FleetCapacityReservation (Prelude.Maybe Prelude.Text)
fleetCapacityReservation_capacityReservationId = Lens.lens (\FleetCapacityReservation' {capacityReservationId} -> capacityReservationId) (\s@FleetCapacityReservation' {} a -> s {capacityReservationId = a} :: FleetCapacityReservation)

-- | The number of capacity units fulfilled by the Capacity Reservation. For
-- more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/crfleet-concepts.html#target-capacity Total target capacity>
-- in the Amazon EC2 User Guide.
fleetCapacityReservation_fulfilledCapacity :: Lens.Lens' FleetCapacityReservation (Prelude.Maybe Prelude.Double)
fleetCapacityReservation_fulfilledCapacity = Lens.lens (\FleetCapacityReservation' {fulfilledCapacity} -> fulfilledCapacity) (\s@FleetCapacityReservation' {} a -> s {fulfilledCapacity = a} :: FleetCapacityReservation)

-- | The Availability Zone in which the Capacity Reservation reserves
-- capacity.
fleetCapacityReservation_availabilityZone :: Lens.Lens' FleetCapacityReservation (Prelude.Maybe Prelude.Text)
fleetCapacityReservation_availabilityZone = Lens.lens (\FleetCapacityReservation' {availabilityZone} -> availabilityZone) (\s@FleetCapacityReservation' {} a -> s {availabilityZone = a} :: FleetCapacityReservation)

-- | The instance type for which the Capacity Reservation reserves capacity.
fleetCapacityReservation_instanceType :: Lens.Lens' FleetCapacityReservation (Prelude.Maybe InstanceType)
fleetCapacityReservation_instanceType = Lens.lens (\FleetCapacityReservation' {instanceType} -> instanceType) (\s@FleetCapacityReservation' {} a -> s {instanceType = a} :: FleetCapacityReservation)

-- | The type of operating system for which the Capacity Reservation reserves
-- capacity.
fleetCapacityReservation_instancePlatform :: Lens.Lens' FleetCapacityReservation (Prelude.Maybe CapacityReservationInstancePlatform)
fleetCapacityReservation_instancePlatform = Lens.lens (\FleetCapacityReservation' {instancePlatform} -> instancePlatform) (\s@FleetCapacityReservation' {} a -> s {instancePlatform = a} :: FleetCapacityReservation)

-- | The priority of the instance type in the Capacity Reservation Fleet. For
-- more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/crfleet-concepts.html#instance-priority Instance type priority>
-- in the Amazon EC2 User Guide.
fleetCapacityReservation_priority :: Lens.Lens' FleetCapacityReservation (Prelude.Maybe Prelude.Natural)
fleetCapacityReservation_priority = Lens.lens (\FleetCapacityReservation' {priority} -> priority) (\s@FleetCapacityReservation' {} a -> s {priority = a} :: FleetCapacityReservation)

-- | The date and time at which the Capacity Reservation was created.
fleetCapacityReservation_createDate :: Lens.Lens' FleetCapacityReservation (Prelude.Maybe Prelude.UTCTime)
fleetCapacityReservation_createDate = Lens.lens (\FleetCapacityReservation' {createDate} -> createDate) (\s@FleetCapacityReservation' {} a -> s {createDate = a} :: FleetCapacityReservation) Prelude.. Lens.mapping Core._Time

-- | The weight of the instance type in the Capacity Reservation Fleet. For
-- more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/crfleet-concepts.html#instance-weight Instance type weight>
-- in the Amazon EC2 User Guide.
fleetCapacityReservation_weight :: Lens.Lens' FleetCapacityReservation (Prelude.Maybe Prelude.Double)
fleetCapacityReservation_weight = Lens.lens (\FleetCapacityReservation' {weight} -> weight) (\s@FleetCapacityReservation' {} a -> s {weight = a} :: FleetCapacityReservation)

-- | The ID of the Availability Zone in which the Capacity Reservation
-- reserves capacity.
fleetCapacityReservation_availabilityZoneId :: Lens.Lens' FleetCapacityReservation (Prelude.Maybe Prelude.Text)
fleetCapacityReservation_availabilityZoneId = Lens.lens (\FleetCapacityReservation' {availabilityZoneId} -> availabilityZoneId) (\s@FleetCapacityReservation' {} a -> s {availabilityZoneId = a} :: FleetCapacityReservation)

instance Core.FromXML FleetCapacityReservation where
  parseXML x =
    FleetCapacityReservation'
      Prelude.<$> (x Core..@? "ebsOptimized")
      Prelude.<*> (x Core..@? "totalInstanceCount")
      Prelude.<*> (x Core..@? "capacityReservationId")
      Prelude.<*> (x Core..@? "fulfilledCapacity")
      Prelude.<*> (x Core..@? "availabilityZone")
      Prelude.<*> (x Core..@? "instanceType")
      Prelude.<*> (x Core..@? "instancePlatform")
      Prelude.<*> (x Core..@? "priority")
      Prelude.<*> (x Core..@? "createDate")
      Prelude.<*> (x Core..@? "weight")
      Prelude.<*> (x Core..@? "availabilityZoneId")

instance Prelude.Hashable FleetCapacityReservation where
  hashWithSalt _salt FleetCapacityReservation' {..} =
    _salt `Prelude.hashWithSalt` ebsOptimized
      `Prelude.hashWithSalt` totalInstanceCount
      `Prelude.hashWithSalt` capacityReservationId
      `Prelude.hashWithSalt` fulfilledCapacity
      `Prelude.hashWithSalt` availabilityZone
      `Prelude.hashWithSalt` instanceType
      `Prelude.hashWithSalt` instancePlatform
      `Prelude.hashWithSalt` priority
      `Prelude.hashWithSalt` createDate
      `Prelude.hashWithSalt` weight
      `Prelude.hashWithSalt` availabilityZoneId

instance Prelude.NFData FleetCapacityReservation where
  rnf FleetCapacityReservation' {..} =
    Prelude.rnf ebsOptimized
      `Prelude.seq` Prelude.rnf totalInstanceCount
      `Prelude.seq` Prelude.rnf capacityReservationId
      `Prelude.seq` Prelude.rnf fulfilledCapacity
      `Prelude.seq` Prelude.rnf availabilityZone
      `Prelude.seq` Prelude.rnf instanceType
      `Prelude.seq` Prelude.rnf instancePlatform
      `Prelude.seq` Prelude.rnf priority
      `Prelude.seq` Prelude.rnf createDate
      `Prelude.seq` Prelude.rnf weight
      `Prelude.seq` Prelude.rnf availabilityZoneId
