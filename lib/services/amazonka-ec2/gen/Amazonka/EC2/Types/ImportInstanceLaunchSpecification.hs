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
-- Module      : Amazonka.EC2.Types.ImportInstanceLaunchSpecification
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.ImportInstanceLaunchSpecification where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import Amazonka.EC2.Types.ArchitectureValues
import Amazonka.EC2.Types.InstanceType
import Amazonka.EC2.Types.Placement
import Amazonka.EC2.Types.ShutdownBehavior
import Amazonka.EC2.Types.UserData
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes the launch specification for VM import.
--
-- /See:/ 'newImportInstanceLaunchSpecification' smart constructor.
data ImportInstanceLaunchSpecification = ImportInstanceLaunchSpecification'
  { -- | The placement information for the instance.
    placement :: Prelude.Maybe Placement,
    -- | The Base64-encoded user data to make available to the instance.
    userData :: Prelude.Maybe (Core.Sensitive UserData),
    -- | Reserved.
    additionalInfo :: Prelude.Maybe Prelude.Text,
    -- | Indicates whether an instance stops or terminates when you initiate
    -- shutdown from the instance (using the operating system command for
    -- system shutdown).
    instanceInitiatedShutdownBehavior :: Prelude.Maybe ShutdownBehavior,
    -- | Indicates whether monitoring is enabled.
    monitoring :: Prelude.Maybe Prelude.Bool,
    -- | [EC2-VPC] The ID of the subnet in which to launch the instance.
    subnetId :: Prelude.Maybe Prelude.Text,
    -- | The instance type. For more information about the instance types that
    -- you can import, see
    -- <https://docs.aws.amazon.com/vm-import/latest/userguide/vmie_prereqs.html#vmimport-instance-types Instance Types>
    -- in the VM Import\/Export User Guide.
    instanceType :: Prelude.Maybe InstanceType,
    -- | The security group IDs.
    groupIds :: Prelude.Maybe [Prelude.Text],
    -- | The security group names.
    groupNames :: Prelude.Maybe [Prelude.Text],
    -- | [EC2-VPC] An available IP address from the IP address range of the
    -- subnet.
    privateIpAddress :: Prelude.Maybe Prelude.Text,
    -- | The architecture of the instance.
    architecture :: Prelude.Maybe ArchitectureValues
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ImportInstanceLaunchSpecification' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'placement', 'importInstanceLaunchSpecification_placement' - The placement information for the instance.
--
-- 'userData', 'importInstanceLaunchSpecification_userData' - The Base64-encoded user data to make available to the instance.
--
-- 'additionalInfo', 'importInstanceLaunchSpecification_additionalInfo' - Reserved.
--
-- 'instanceInitiatedShutdownBehavior', 'importInstanceLaunchSpecification_instanceInitiatedShutdownBehavior' - Indicates whether an instance stops or terminates when you initiate
-- shutdown from the instance (using the operating system command for
-- system shutdown).
--
-- 'monitoring', 'importInstanceLaunchSpecification_monitoring' - Indicates whether monitoring is enabled.
--
-- 'subnetId', 'importInstanceLaunchSpecification_subnetId' - [EC2-VPC] The ID of the subnet in which to launch the instance.
--
-- 'instanceType', 'importInstanceLaunchSpecification_instanceType' - The instance type. For more information about the instance types that
-- you can import, see
-- <https://docs.aws.amazon.com/vm-import/latest/userguide/vmie_prereqs.html#vmimport-instance-types Instance Types>
-- in the VM Import\/Export User Guide.
--
-- 'groupIds', 'importInstanceLaunchSpecification_groupIds' - The security group IDs.
--
-- 'groupNames', 'importInstanceLaunchSpecification_groupNames' - The security group names.
--
-- 'privateIpAddress', 'importInstanceLaunchSpecification_privateIpAddress' - [EC2-VPC] An available IP address from the IP address range of the
-- subnet.
--
-- 'architecture', 'importInstanceLaunchSpecification_architecture' - The architecture of the instance.
newImportInstanceLaunchSpecification ::
  ImportInstanceLaunchSpecification
newImportInstanceLaunchSpecification =
  ImportInstanceLaunchSpecification'
    { placement =
        Prelude.Nothing,
      userData = Prelude.Nothing,
      additionalInfo = Prelude.Nothing,
      instanceInitiatedShutdownBehavior =
        Prelude.Nothing,
      monitoring = Prelude.Nothing,
      subnetId = Prelude.Nothing,
      instanceType = Prelude.Nothing,
      groupIds = Prelude.Nothing,
      groupNames = Prelude.Nothing,
      privateIpAddress = Prelude.Nothing,
      architecture = Prelude.Nothing
    }

-- | The placement information for the instance.
importInstanceLaunchSpecification_placement :: Lens.Lens' ImportInstanceLaunchSpecification (Prelude.Maybe Placement)
importInstanceLaunchSpecification_placement = Lens.lens (\ImportInstanceLaunchSpecification' {placement} -> placement) (\s@ImportInstanceLaunchSpecification' {} a -> s {placement = a} :: ImportInstanceLaunchSpecification)

-- | The Base64-encoded user data to make available to the instance.
importInstanceLaunchSpecification_userData :: Lens.Lens' ImportInstanceLaunchSpecification (Prelude.Maybe UserData)
importInstanceLaunchSpecification_userData = Lens.lens (\ImportInstanceLaunchSpecification' {userData} -> userData) (\s@ImportInstanceLaunchSpecification' {} a -> s {userData = a} :: ImportInstanceLaunchSpecification) Prelude.. Lens.mapping Core._Sensitive

-- | Reserved.
importInstanceLaunchSpecification_additionalInfo :: Lens.Lens' ImportInstanceLaunchSpecification (Prelude.Maybe Prelude.Text)
importInstanceLaunchSpecification_additionalInfo = Lens.lens (\ImportInstanceLaunchSpecification' {additionalInfo} -> additionalInfo) (\s@ImportInstanceLaunchSpecification' {} a -> s {additionalInfo = a} :: ImportInstanceLaunchSpecification)

-- | Indicates whether an instance stops or terminates when you initiate
-- shutdown from the instance (using the operating system command for
-- system shutdown).
importInstanceLaunchSpecification_instanceInitiatedShutdownBehavior :: Lens.Lens' ImportInstanceLaunchSpecification (Prelude.Maybe ShutdownBehavior)
importInstanceLaunchSpecification_instanceInitiatedShutdownBehavior = Lens.lens (\ImportInstanceLaunchSpecification' {instanceInitiatedShutdownBehavior} -> instanceInitiatedShutdownBehavior) (\s@ImportInstanceLaunchSpecification' {} a -> s {instanceInitiatedShutdownBehavior = a} :: ImportInstanceLaunchSpecification)

-- | Indicates whether monitoring is enabled.
importInstanceLaunchSpecification_monitoring :: Lens.Lens' ImportInstanceLaunchSpecification (Prelude.Maybe Prelude.Bool)
importInstanceLaunchSpecification_monitoring = Lens.lens (\ImportInstanceLaunchSpecification' {monitoring} -> monitoring) (\s@ImportInstanceLaunchSpecification' {} a -> s {monitoring = a} :: ImportInstanceLaunchSpecification)

-- | [EC2-VPC] The ID of the subnet in which to launch the instance.
importInstanceLaunchSpecification_subnetId :: Lens.Lens' ImportInstanceLaunchSpecification (Prelude.Maybe Prelude.Text)
importInstanceLaunchSpecification_subnetId = Lens.lens (\ImportInstanceLaunchSpecification' {subnetId} -> subnetId) (\s@ImportInstanceLaunchSpecification' {} a -> s {subnetId = a} :: ImportInstanceLaunchSpecification)

-- | The instance type. For more information about the instance types that
-- you can import, see
-- <https://docs.aws.amazon.com/vm-import/latest/userguide/vmie_prereqs.html#vmimport-instance-types Instance Types>
-- in the VM Import\/Export User Guide.
importInstanceLaunchSpecification_instanceType :: Lens.Lens' ImportInstanceLaunchSpecification (Prelude.Maybe InstanceType)
importInstanceLaunchSpecification_instanceType = Lens.lens (\ImportInstanceLaunchSpecification' {instanceType} -> instanceType) (\s@ImportInstanceLaunchSpecification' {} a -> s {instanceType = a} :: ImportInstanceLaunchSpecification)

-- | The security group IDs.
importInstanceLaunchSpecification_groupIds :: Lens.Lens' ImportInstanceLaunchSpecification (Prelude.Maybe [Prelude.Text])
importInstanceLaunchSpecification_groupIds = Lens.lens (\ImportInstanceLaunchSpecification' {groupIds} -> groupIds) (\s@ImportInstanceLaunchSpecification' {} a -> s {groupIds = a} :: ImportInstanceLaunchSpecification) Prelude.. Lens.mapping Lens.coerced

-- | The security group names.
importInstanceLaunchSpecification_groupNames :: Lens.Lens' ImportInstanceLaunchSpecification (Prelude.Maybe [Prelude.Text])
importInstanceLaunchSpecification_groupNames = Lens.lens (\ImportInstanceLaunchSpecification' {groupNames} -> groupNames) (\s@ImportInstanceLaunchSpecification' {} a -> s {groupNames = a} :: ImportInstanceLaunchSpecification) Prelude.. Lens.mapping Lens.coerced

-- | [EC2-VPC] An available IP address from the IP address range of the
-- subnet.
importInstanceLaunchSpecification_privateIpAddress :: Lens.Lens' ImportInstanceLaunchSpecification (Prelude.Maybe Prelude.Text)
importInstanceLaunchSpecification_privateIpAddress = Lens.lens (\ImportInstanceLaunchSpecification' {privateIpAddress} -> privateIpAddress) (\s@ImportInstanceLaunchSpecification' {} a -> s {privateIpAddress = a} :: ImportInstanceLaunchSpecification)

-- | The architecture of the instance.
importInstanceLaunchSpecification_architecture :: Lens.Lens' ImportInstanceLaunchSpecification (Prelude.Maybe ArchitectureValues)
importInstanceLaunchSpecification_architecture = Lens.lens (\ImportInstanceLaunchSpecification' {architecture} -> architecture) (\s@ImportInstanceLaunchSpecification' {} a -> s {architecture = a} :: ImportInstanceLaunchSpecification)

instance
  Prelude.Hashable
    ImportInstanceLaunchSpecification
  where
  hashWithSalt
    _salt
    ImportInstanceLaunchSpecification' {..} =
      _salt `Prelude.hashWithSalt` placement
        `Prelude.hashWithSalt` userData
        `Prelude.hashWithSalt` additionalInfo
        `Prelude.hashWithSalt` instanceInitiatedShutdownBehavior
        `Prelude.hashWithSalt` monitoring
        `Prelude.hashWithSalt` subnetId
        `Prelude.hashWithSalt` instanceType
        `Prelude.hashWithSalt` groupIds
        `Prelude.hashWithSalt` groupNames
        `Prelude.hashWithSalt` privateIpAddress
        `Prelude.hashWithSalt` architecture

instance
  Prelude.NFData
    ImportInstanceLaunchSpecification
  where
  rnf ImportInstanceLaunchSpecification' {..} =
    Prelude.rnf placement
      `Prelude.seq` Prelude.rnf userData
      `Prelude.seq` Prelude.rnf additionalInfo
      `Prelude.seq` Prelude.rnf instanceInitiatedShutdownBehavior
      `Prelude.seq` Prelude.rnf monitoring
      `Prelude.seq` Prelude.rnf subnetId
      `Prelude.seq` Prelude.rnf instanceType
      `Prelude.seq` Prelude.rnf groupIds
      `Prelude.seq` Prelude.rnf groupNames
      `Prelude.seq` Prelude.rnf privateIpAddress
      `Prelude.seq` Prelude.rnf architecture

instance
  Core.ToQuery
    ImportInstanceLaunchSpecification
  where
  toQuery ImportInstanceLaunchSpecification' {..} =
    Prelude.mconcat
      [ "Placement" Core.=: placement,
        "UserData" Core.=: userData,
        "AdditionalInfo" Core.=: additionalInfo,
        "InstanceInitiatedShutdownBehavior"
          Core.=: instanceInitiatedShutdownBehavior,
        "Monitoring" Core.=: monitoring,
        "SubnetId" Core.=: subnetId,
        "InstanceType" Core.=: instanceType,
        Core.toQuery
          (Core.toQueryList "GroupId" Prelude.<$> groupIds),
        Core.toQuery
          ( Core.toQueryList "GroupName"
              Prelude.<$> groupNames
          ),
        "PrivateIpAddress" Core.=: privateIpAddress,
        "Architecture" Core.=: architecture
      ]
