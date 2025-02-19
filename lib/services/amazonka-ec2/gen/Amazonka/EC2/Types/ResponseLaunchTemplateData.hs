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
-- Module      : Amazonka.EC2.Types.ResponseLaunchTemplateData
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.ResponseLaunchTemplateData where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import Amazonka.EC2.Types.CreditSpecification
import Amazonka.EC2.Types.ElasticGpuSpecificationResponse
import Amazonka.EC2.Types.InstanceRequirements
import Amazonka.EC2.Types.InstanceType
import Amazonka.EC2.Types.LaunchTemplateBlockDeviceMapping
import Amazonka.EC2.Types.LaunchTemplateCapacityReservationSpecificationResponse
import Amazonka.EC2.Types.LaunchTemplateCpuOptions
import Amazonka.EC2.Types.LaunchTemplateElasticInferenceAcceleratorResponse
import Amazonka.EC2.Types.LaunchTemplateEnclaveOptions
import Amazonka.EC2.Types.LaunchTemplateHibernationOptions
import Amazonka.EC2.Types.LaunchTemplateIamInstanceProfileSpecification
import Amazonka.EC2.Types.LaunchTemplateInstanceMaintenanceOptions
import Amazonka.EC2.Types.LaunchTemplateInstanceMarketOptions
import Amazonka.EC2.Types.LaunchTemplateInstanceMetadataOptions
import Amazonka.EC2.Types.LaunchTemplateInstanceNetworkInterfaceSpecification
import Amazonka.EC2.Types.LaunchTemplateLicenseConfiguration
import Amazonka.EC2.Types.LaunchTemplatePlacement
import Amazonka.EC2.Types.LaunchTemplatePrivateDnsNameOptions
import Amazonka.EC2.Types.LaunchTemplateTagSpecification
import Amazonka.EC2.Types.LaunchTemplatesMonitoring
import Amazonka.EC2.Types.ShutdownBehavior
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The information for a launch template.
--
-- /See:/ 'newResponseLaunchTemplateData' smart constructor.
data ResponseLaunchTemplateData = ResponseLaunchTemplateData'
  { -- | Indicates whether the instance is optimized for Amazon EBS I\/O.
    ebsOptimized :: Prelude.Maybe Prelude.Bool,
    -- | Indicates whether an instance is configured for hibernation. For more
    -- information, see
    -- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html Hibernate your instance>
    -- in the /Amazon Elastic Compute Cloud User Guide/.
    hibernationOptions :: Prelude.Maybe LaunchTemplateHibernationOptions,
    -- | The IAM instance profile.
    iamInstanceProfile :: Prelude.Maybe LaunchTemplateIamInstanceProfileSpecification,
    -- | The elastic inference accelerator for the instance.
    elasticInferenceAccelerators :: Prelude.Maybe [LaunchTemplateElasticInferenceAcceleratorResponse],
    -- | The placement of the instance.
    placement :: Prelude.Maybe LaunchTemplatePlacement,
    -- | The user data for the instance.
    userData :: Prelude.Maybe Prelude.Text,
    -- | The attributes for the instance types. When you specify instance
    -- attributes, Amazon EC2 will identify instance types with these
    -- attributes.
    --
    -- If you specify @InstanceRequirements@, you can\'t specify
    -- @InstanceTypes@.
    instanceRequirements :: Prelude.Maybe InstanceRequirements,
    -- | The credit option for CPU usage of the instance.
    creditSpecification :: Prelude.Maybe CreditSpecification,
    -- | The block device mappings.
    blockDeviceMappings :: Prelude.Maybe [LaunchTemplateBlockDeviceMapping],
    -- | The security group IDs.
    securityGroupIds :: Prelude.Maybe [Prelude.Text],
    -- | Indicates whether an instance stops or terminates when you initiate
    -- shutdown from the instance (using the operating system command for
    -- system shutdown).
    instanceInitiatedShutdownBehavior :: Prelude.Maybe ShutdownBehavior,
    -- | The monitoring for the instance.
    monitoring :: Prelude.Maybe LaunchTemplatesMonitoring,
    -- | The market (purchasing) option for the instances.
    instanceMarketOptions :: Prelude.Maybe LaunchTemplateInstanceMarketOptions,
    -- | Information about the Capacity Reservation targeting option.
    capacityReservationSpecification :: Prelude.Maybe LaunchTemplateCapacityReservationSpecificationResponse,
    -- | The instance type.
    instanceType :: Prelude.Maybe InstanceType,
    -- | The security group names.
    securityGroups :: Prelude.Maybe [Prelude.Text],
    -- | The elastic GPU specification.
    elasticGpuSpecifications :: Prelude.Maybe [ElasticGpuSpecificationResponse],
    -- | The ID of the RAM disk, if applicable.
    ramDiskId :: Prelude.Maybe Prelude.Text,
    -- | The maintenance options for your instance.
    maintenanceOptions :: Prelude.Maybe LaunchTemplateInstanceMaintenanceOptions,
    -- | The options for the instance hostname.
    privateDnsNameOptions :: Prelude.Maybe LaunchTemplatePrivateDnsNameOptions,
    -- | The name of the key pair.
    keyName :: Prelude.Maybe Prelude.Text,
    -- | The license configurations.
    licenseSpecifications :: Prelude.Maybe [LaunchTemplateLicenseConfiguration],
    -- | The ID of the kernel, if applicable.
    kernelId :: Prelude.Maybe Prelude.Text,
    -- | If set to @true@, indicates that the instance cannot be terminated using
    -- the Amazon EC2 console, command line tool, or API.
    disableApiTermination :: Prelude.Maybe Prelude.Bool,
    -- | The tags that are applied to the resources that are created during
    -- instance launch.
    tagSpecifications :: Prelude.Maybe [LaunchTemplateTagSpecification],
    -- | The CPU options for the instance. For more information, see
    -- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-optimize-cpu.html Optimizing CPU options>
    -- in the /Amazon Elastic Compute Cloud User Guide/.
    cpuOptions :: Prelude.Maybe LaunchTemplateCpuOptions,
    -- | Indicates whether the instance is enabled for stop protection. For more
    -- information, see
    -- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Stop_Start.html#Using_StopProtection Stop Protection>.
    disableApiStop :: Prelude.Maybe Prelude.Bool,
    -- | The ID of the AMI that was used to launch the instance.
    imageId :: Prelude.Maybe Prelude.Text,
    -- | The network interfaces.
    networkInterfaces :: Prelude.Maybe [LaunchTemplateInstanceNetworkInterfaceSpecification],
    -- | Indicates whether the instance is enabled for Amazon Web Services Nitro
    -- Enclaves.
    enclaveOptions :: Prelude.Maybe LaunchTemplateEnclaveOptions,
    -- | The metadata options for the instance. For more information, see
    -- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html Instance metadata and user data>
    -- in the /Amazon Elastic Compute Cloud User Guide/.
    metadataOptions :: Prelude.Maybe LaunchTemplateInstanceMetadataOptions
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ResponseLaunchTemplateData' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'ebsOptimized', 'responseLaunchTemplateData_ebsOptimized' - Indicates whether the instance is optimized for Amazon EBS I\/O.
--
-- 'hibernationOptions', 'responseLaunchTemplateData_hibernationOptions' - Indicates whether an instance is configured for hibernation. For more
-- information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html Hibernate your instance>
-- in the /Amazon Elastic Compute Cloud User Guide/.
--
-- 'iamInstanceProfile', 'responseLaunchTemplateData_iamInstanceProfile' - The IAM instance profile.
--
-- 'elasticInferenceAccelerators', 'responseLaunchTemplateData_elasticInferenceAccelerators' - The elastic inference accelerator for the instance.
--
-- 'placement', 'responseLaunchTemplateData_placement' - The placement of the instance.
--
-- 'userData', 'responseLaunchTemplateData_userData' - The user data for the instance.
--
-- 'instanceRequirements', 'responseLaunchTemplateData_instanceRequirements' - The attributes for the instance types. When you specify instance
-- attributes, Amazon EC2 will identify instance types with these
-- attributes.
--
-- If you specify @InstanceRequirements@, you can\'t specify
-- @InstanceTypes@.
--
-- 'creditSpecification', 'responseLaunchTemplateData_creditSpecification' - The credit option for CPU usage of the instance.
--
-- 'blockDeviceMappings', 'responseLaunchTemplateData_blockDeviceMappings' - The block device mappings.
--
-- 'securityGroupIds', 'responseLaunchTemplateData_securityGroupIds' - The security group IDs.
--
-- 'instanceInitiatedShutdownBehavior', 'responseLaunchTemplateData_instanceInitiatedShutdownBehavior' - Indicates whether an instance stops or terminates when you initiate
-- shutdown from the instance (using the operating system command for
-- system shutdown).
--
-- 'monitoring', 'responseLaunchTemplateData_monitoring' - The monitoring for the instance.
--
-- 'instanceMarketOptions', 'responseLaunchTemplateData_instanceMarketOptions' - The market (purchasing) option for the instances.
--
-- 'capacityReservationSpecification', 'responseLaunchTemplateData_capacityReservationSpecification' - Information about the Capacity Reservation targeting option.
--
-- 'instanceType', 'responseLaunchTemplateData_instanceType' - The instance type.
--
-- 'securityGroups', 'responseLaunchTemplateData_securityGroups' - The security group names.
--
-- 'elasticGpuSpecifications', 'responseLaunchTemplateData_elasticGpuSpecifications' - The elastic GPU specification.
--
-- 'ramDiskId', 'responseLaunchTemplateData_ramDiskId' - The ID of the RAM disk, if applicable.
--
-- 'maintenanceOptions', 'responseLaunchTemplateData_maintenanceOptions' - The maintenance options for your instance.
--
-- 'privateDnsNameOptions', 'responseLaunchTemplateData_privateDnsNameOptions' - The options for the instance hostname.
--
-- 'keyName', 'responseLaunchTemplateData_keyName' - The name of the key pair.
--
-- 'licenseSpecifications', 'responseLaunchTemplateData_licenseSpecifications' - The license configurations.
--
-- 'kernelId', 'responseLaunchTemplateData_kernelId' - The ID of the kernel, if applicable.
--
-- 'disableApiTermination', 'responseLaunchTemplateData_disableApiTermination' - If set to @true@, indicates that the instance cannot be terminated using
-- the Amazon EC2 console, command line tool, or API.
--
-- 'tagSpecifications', 'responseLaunchTemplateData_tagSpecifications' - The tags that are applied to the resources that are created during
-- instance launch.
--
-- 'cpuOptions', 'responseLaunchTemplateData_cpuOptions' - The CPU options for the instance. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-optimize-cpu.html Optimizing CPU options>
-- in the /Amazon Elastic Compute Cloud User Guide/.
--
-- 'disableApiStop', 'responseLaunchTemplateData_disableApiStop' - Indicates whether the instance is enabled for stop protection. For more
-- information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Stop_Start.html#Using_StopProtection Stop Protection>.
--
-- 'imageId', 'responseLaunchTemplateData_imageId' - The ID of the AMI that was used to launch the instance.
--
-- 'networkInterfaces', 'responseLaunchTemplateData_networkInterfaces' - The network interfaces.
--
-- 'enclaveOptions', 'responseLaunchTemplateData_enclaveOptions' - Indicates whether the instance is enabled for Amazon Web Services Nitro
-- Enclaves.
--
-- 'metadataOptions', 'responseLaunchTemplateData_metadataOptions' - The metadata options for the instance. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html Instance metadata and user data>
-- in the /Amazon Elastic Compute Cloud User Guide/.
newResponseLaunchTemplateData ::
  ResponseLaunchTemplateData
newResponseLaunchTemplateData =
  ResponseLaunchTemplateData'
    { ebsOptimized =
        Prelude.Nothing,
      hibernationOptions = Prelude.Nothing,
      iamInstanceProfile = Prelude.Nothing,
      elasticInferenceAccelerators = Prelude.Nothing,
      placement = Prelude.Nothing,
      userData = Prelude.Nothing,
      instanceRequirements = Prelude.Nothing,
      creditSpecification = Prelude.Nothing,
      blockDeviceMappings = Prelude.Nothing,
      securityGroupIds = Prelude.Nothing,
      instanceInitiatedShutdownBehavior =
        Prelude.Nothing,
      monitoring = Prelude.Nothing,
      instanceMarketOptions = Prelude.Nothing,
      capacityReservationSpecification =
        Prelude.Nothing,
      instanceType = Prelude.Nothing,
      securityGroups = Prelude.Nothing,
      elasticGpuSpecifications = Prelude.Nothing,
      ramDiskId = Prelude.Nothing,
      maintenanceOptions = Prelude.Nothing,
      privateDnsNameOptions = Prelude.Nothing,
      keyName = Prelude.Nothing,
      licenseSpecifications = Prelude.Nothing,
      kernelId = Prelude.Nothing,
      disableApiTermination = Prelude.Nothing,
      tagSpecifications = Prelude.Nothing,
      cpuOptions = Prelude.Nothing,
      disableApiStop = Prelude.Nothing,
      imageId = Prelude.Nothing,
      networkInterfaces = Prelude.Nothing,
      enclaveOptions = Prelude.Nothing,
      metadataOptions = Prelude.Nothing
    }

-- | Indicates whether the instance is optimized for Amazon EBS I\/O.
responseLaunchTemplateData_ebsOptimized :: Lens.Lens' ResponseLaunchTemplateData (Prelude.Maybe Prelude.Bool)
responseLaunchTemplateData_ebsOptimized = Lens.lens (\ResponseLaunchTemplateData' {ebsOptimized} -> ebsOptimized) (\s@ResponseLaunchTemplateData' {} a -> s {ebsOptimized = a} :: ResponseLaunchTemplateData)

-- | Indicates whether an instance is configured for hibernation. For more
-- information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html Hibernate your instance>
-- in the /Amazon Elastic Compute Cloud User Guide/.
responseLaunchTemplateData_hibernationOptions :: Lens.Lens' ResponseLaunchTemplateData (Prelude.Maybe LaunchTemplateHibernationOptions)
responseLaunchTemplateData_hibernationOptions = Lens.lens (\ResponseLaunchTemplateData' {hibernationOptions} -> hibernationOptions) (\s@ResponseLaunchTemplateData' {} a -> s {hibernationOptions = a} :: ResponseLaunchTemplateData)

-- | The IAM instance profile.
responseLaunchTemplateData_iamInstanceProfile :: Lens.Lens' ResponseLaunchTemplateData (Prelude.Maybe LaunchTemplateIamInstanceProfileSpecification)
responseLaunchTemplateData_iamInstanceProfile = Lens.lens (\ResponseLaunchTemplateData' {iamInstanceProfile} -> iamInstanceProfile) (\s@ResponseLaunchTemplateData' {} a -> s {iamInstanceProfile = a} :: ResponseLaunchTemplateData)

-- | The elastic inference accelerator for the instance.
responseLaunchTemplateData_elasticInferenceAccelerators :: Lens.Lens' ResponseLaunchTemplateData (Prelude.Maybe [LaunchTemplateElasticInferenceAcceleratorResponse])
responseLaunchTemplateData_elasticInferenceAccelerators = Lens.lens (\ResponseLaunchTemplateData' {elasticInferenceAccelerators} -> elasticInferenceAccelerators) (\s@ResponseLaunchTemplateData' {} a -> s {elasticInferenceAccelerators = a} :: ResponseLaunchTemplateData) Prelude.. Lens.mapping Lens.coerced

-- | The placement of the instance.
responseLaunchTemplateData_placement :: Lens.Lens' ResponseLaunchTemplateData (Prelude.Maybe LaunchTemplatePlacement)
responseLaunchTemplateData_placement = Lens.lens (\ResponseLaunchTemplateData' {placement} -> placement) (\s@ResponseLaunchTemplateData' {} a -> s {placement = a} :: ResponseLaunchTemplateData)

-- | The user data for the instance.
responseLaunchTemplateData_userData :: Lens.Lens' ResponseLaunchTemplateData (Prelude.Maybe Prelude.Text)
responseLaunchTemplateData_userData = Lens.lens (\ResponseLaunchTemplateData' {userData} -> userData) (\s@ResponseLaunchTemplateData' {} a -> s {userData = a} :: ResponseLaunchTemplateData)

-- | The attributes for the instance types. When you specify instance
-- attributes, Amazon EC2 will identify instance types with these
-- attributes.
--
-- If you specify @InstanceRequirements@, you can\'t specify
-- @InstanceTypes@.
responseLaunchTemplateData_instanceRequirements :: Lens.Lens' ResponseLaunchTemplateData (Prelude.Maybe InstanceRequirements)
responseLaunchTemplateData_instanceRequirements = Lens.lens (\ResponseLaunchTemplateData' {instanceRequirements} -> instanceRequirements) (\s@ResponseLaunchTemplateData' {} a -> s {instanceRequirements = a} :: ResponseLaunchTemplateData)

-- | The credit option for CPU usage of the instance.
responseLaunchTemplateData_creditSpecification :: Lens.Lens' ResponseLaunchTemplateData (Prelude.Maybe CreditSpecification)
responseLaunchTemplateData_creditSpecification = Lens.lens (\ResponseLaunchTemplateData' {creditSpecification} -> creditSpecification) (\s@ResponseLaunchTemplateData' {} a -> s {creditSpecification = a} :: ResponseLaunchTemplateData)

-- | The block device mappings.
responseLaunchTemplateData_blockDeviceMappings :: Lens.Lens' ResponseLaunchTemplateData (Prelude.Maybe [LaunchTemplateBlockDeviceMapping])
responseLaunchTemplateData_blockDeviceMappings = Lens.lens (\ResponseLaunchTemplateData' {blockDeviceMappings} -> blockDeviceMappings) (\s@ResponseLaunchTemplateData' {} a -> s {blockDeviceMappings = a} :: ResponseLaunchTemplateData) Prelude.. Lens.mapping Lens.coerced

-- | The security group IDs.
responseLaunchTemplateData_securityGroupIds :: Lens.Lens' ResponseLaunchTemplateData (Prelude.Maybe [Prelude.Text])
responseLaunchTemplateData_securityGroupIds = Lens.lens (\ResponseLaunchTemplateData' {securityGroupIds} -> securityGroupIds) (\s@ResponseLaunchTemplateData' {} a -> s {securityGroupIds = a} :: ResponseLaunchTemplateData) Prelude.. Lens.mapping Lens.coerced

-- | Indicates whether an instance stops or terminates when you initiate
-- shutdown from the instance (using the operating system command for
-- system shutdown).
responseLaunchTemplateData_instanceInitiatedShutdownBehavior :: Lens.Lens' ResponseLaunchTemplateData (Prelude.Maybe ShutdownBehavior)
responseLaunchTemplateData_instanceInitiatedShutdownBehavior = Lens.lens (\ResponseLaunchTemplateData' {instanceInitiatedShutdownBehavior} -> instanceInitiatedShutdownBehavior) (\s@ResponseLaunchTemplateData' {} a -> s {instanceInitiatedShutdownBehavior = a} :: ResponseLaunchTemplateData)

-- | The monitoring for the instance.
responseLaunchTemplateData_monitoring :: Lens.Lens' ResponseLaunchTemplateData (Prelude.Maybe LaunchTemplatesMonitoring)
responseLaunchTemplateData_monitoring = Lens.lens (\ResponseLaunchTemplateData' {monitoring} -> monitoring) (\s@ResponseLaunchTemplateData' {} a -> s {monitoring = a} :: ResponseLaunchTemplateData)

-- | The market (purchasing) option for the instances.
responseLaunchTemplateData_instanceMarketOptions :: Lens.Lens' ResponseLaunchTemplateData (Prelude.Maybe LaunchTemplateInstanceMarketOptions)
responseLaunchTemplateData_instanceMarketOptions = Lens.lens (\ResponseLaunchTemplateData' {instanceMarketOptions} -> instanceMarketOptions) (\s@ResponseLaunchTemplateData' {} a -> s {instanceMarketOptions = a} :: ResponseLaunchTemplateData)

-- | Information about the Capacity Reservation targeting option.
responseLaunchTemplateData_capacityReservationSpecification :: Lens.Lens' ResponseLaunchTemplateData (Prelude.Maybe LaunchTemplateCapacityReservationSpecificationResponse)
responseLaunchTemplateData_capacityReservationSpecification = Lens.lens (\ResponseLaunchTemplateData' {capacityReservationSpecification} -> capacityReservationSpecification) (\s@ResponseLaunchTemplateData' {} a -> s {capacityReservationSpecification = a} :: ResponseLaunchTemplateData)

-- | The instance type.
responseLaunchTemplateData_instanceType :: Lens.Lens' ResponseLaunchTemplateData (Prelude.Maybe InstanceType)
responseLaunchTemplateData_instanceType = Lens.lens (\ResponseLaunchTemplateData' {instanceType} -> instanceType) (\s@ResponseLaunchTemplateData' {} a -> s {instanceType = a} :: ResponseLaunchTemplateData)

-- | The security group names.
responseLaunchTemplateData_securityGroups :: Lens.Lens' ResponseLaunchTemplateData (Prelude.Maybe [Prelude.Text])
responseLaunchTemplateData_securityGroups = Lens.lens (\ResponseLaunchTemplateData' {securityGroups} -> securityGroups) (\s@ResponseLaunchTemplateData' {} a -> s {securityGroups = a} :: ResponseLaunchTemplateData) Prelude.. Lens.mapping Lens.coerced

-- | The elastic GPU specification.
responseLaunchTemplateData_elasticGpuSpecifications :: Lens.Lens' ResponseLaunchTemplateData (Prelude.Maybe [ElasticGpuSpecificationResponse])
responseLaunchTemplateData_elasticGpuSpecifications = Lens.lens (\ResponseLaunchTemplateData' {elasticGpuSpecifications} -> elasticGpuSpecifications) (\s@ResponseLaunchTemplateData' {} a -> s {elasticGpuSpecifications = a} :: ResponseLaunchTemplateData) Prelude.. Lens.mapping Lens.coerced

-- | The ID of the RAM disk, if applicable.
responseLaunchTemplateData_ramDiskId :: Lens.Lens' ResponseLaunchTemplateData (Prelude.Maybe Prelude.Text)
responseLaunchTemplateData_ramDiskId = Lens.lens (\ResponseLaunchTemplateData' {ramDiskId} -> ramDiskId) (\s@ResponseLaunchTemplateData' {} a -> s {ramDiskId = a} :: ResponseLaunchTemplateData)

-- | The maintenance options for your instance.
responseLaunchTemplateData_maintenanceOptions :: Lens.Lens' ResponseLaunchTemplateData (Prelude.Maybe LaunchTemplateInstanceMaintenanceOptions)
responseLaunchTemplateData_maintenanceOptions = Lens.lens (\ResponseLaunchTemplateData' {maintenanceOptions} -> maintenanceOptions) (\s@ResponseLaunchTemplateData' {} a -> s {maintenanceOptions = a} :: ResponseLaunchTemplateData)

-- | The options for the instance hostname.
responseLaunchTemplateData_privateDnsNameOptions :: Lens.Lens' ResponseLaunchTemplateData (Prelude.Maybe LaunchTemplatePrivateDnsNameOptions)
responseLaunchTemplateData_privateDnsNameOptions = Lens.lens (\ResponseLaunchTemplateData' {privateDnsNameOptions} -> privateDnsNameOptions) (\s@ResponseLaunchTemplateData' {} a -> s {privateDnsNameOptions = a} :: ResponseLaunchTemplateData)

-- | The name of the key pair.
responseLaunchTemplateData_keyName :: Lens.Lens' ResponseLaunchTemplateData (Prelude.Maybe Prelude.Text)
responseLaunchTemplateData_keyName = Lens.lens (\ResponseLaunchTemplateData' {keyName} -> keyName) (\s@ResponseLaunchTemplateData' {} a -> s {keyName = a} :: ResponseLaunchTemplateData)

-- | The license configurations.
responseLaunchTemplateData_licenseSpecifications :: Lens.Lens' ResponseLaunchTemplateData (Prelude.Maybe [LaunchTemplateLicenseConfiguration])
responseLaunchTemplateData_licenseSpecifications = Lens.lens (\ResponseLaunchTemplateData' {licenseSpecifications} -> licenseSpecifications) (\s@ResponseLaunchTemplateData' {} a -> s {licenseSpecifications = a} :: ResponseLaunchTemplateData) Prelude.. Lens.mapping Lens.coerced

-- | The ID of the kernel, if applicable.
responseLaunchTemplateData_kernelId :: Lens.Lens' ResponseLaunchTemplateData (Prelude.Maybe Prelude.Text)
responseLaunchTemplateData_kernelId = Lens.lens (\ResponseLaunchTemplateData' {kernelId} -> kernelId) (\s@ResponseLaunchTemplateData' {} a -> s {kernelId = a} :: ResponseLaunchTemplateData)

-- | If set to @true@, indicates that the instance cannot be terminated using
-- the Amazon EC2 console, command line tool, or API.
responseLaunchTemplateData_disableApiTermination :: Lens.Lens' ResponseLaunchTemplateData (Prelude.Maybe Prelude.Bool)
responseLaunchTemplateData_disableApiTermination = Lens.lens (\ResponseLaunchTemplateData' {disableApiTermination} -> disableApiTermination) (\s@ResponseLaunchTemplateData' {} a -> s {disableApiTermination = a} :: ResponseLaunchTemplateData)

-- | The tags that are applied to the resources that are created during
-- instance launch.
responseLaunchTemplateData_tagSpecifications :: Lens.Lens' ResponseLaunchTemplateData (Prelude.Maybe [LaunchTemplateTagSpecification])
responseLaunchTemplateData_tagSpecifications = Lens.lens (\ResponseLaunchTemplateData' {tagSpecifications} -> tagSpecifications) (\s@ResponseLaunchTemplateData' {} a -> s {tagSpecifications = a} :: ResponseLaunchTemplateData) Prelude.. Lens.mapping Lens.coerced

-- | The CPU options for the instance. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-optimize-cpu.html Optimizing CPU options>
-- in the /Amazon Elastic Compute Cloud User Guide/.
responseLaunchTemplateData_cpuOptions :: Lens.Lens' ResponseLaunchTemplateData (Prelude.Maybe LaunchTemplateCpuOptions)
responseLaunchTemplateData_cpuOptions = Lens.lens (\ResponseLaunchTemplateData' {cpuOptions} -> cpuOptions) (\s@ResponseLaunchTemplateData' {} a -> s {cpuOptions = a} :: ResponseLaunchTemplateData)

-- | Indicates whether the instance is enabled for stop protection. For more
-- information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Stop_Start.html#Using_StopProtection Stop Protection>.
responseLaunchTemplateData_disableApiStop :: Lens.Lens' ResponseLaunchTemplateData (Prelude.Maybe Prelude.Bool)
responseLaunchTemplateData_disableApiStop = Lens.lens (\ResponseLaunchTemplateData' {disableApiStop} -> disableApiStop) (\s@ResponseLaunchTemplateData' {} a -> s {disableApiStop = a} :: ResponseLaunchTemplateData)

-- | The ID of the AMI that was used to launch the instance.
responseLaunchTemplateData_imageId :: Lens.Lens' ResponseLaunchTemplateData (Prelude.Maybe Prelude.Text)
responseLaunchTemplateData_imageId = Lens.lens (\ResponseLaunchTemplateData' {imageId} -> imageId) (\s@ResponseLaunchTemplateData' {} a -> s {imageId = a} :: ResponseLaunchTemplateData)

-- | The network interfaces.
responseLaunchTemplateData_networkInterfaces :: Lens.Lens' ResponseLaunchTemplateData (Prelude.Maybe [LaunchTemplateInstanceNetworkInterfaceSpecification])
responseLaunchTemplateData_networkInterfaces = Lens.lens (\ResponseLaunchTemplateData' {networkInterfaces} -> networkInterfaces) (\s@ResponseLaunchTemplateData' {} a -> s {networkInterfaces = a} :: ResponseLaunchTemplateData) Prelude.. Lens.mapping Lens.coerced

-- | Indicates whether the instance is enabled for Amazon Web Services Nitro
-- Enclaves.
responseLaunchTemplateData_enclaveOptions :: Lens.Lens' ResponseLaunchTemplateData (Prelude.Maybe LaunchTemplateEnclaveOptions)
responseLaunchTemplateData_enclaveOptions = Lens.lens (\ResponseLaunchTemplateData' {enclaveOptions} -> enclaveOptions) (\s@ResponseLaunchTemplateData' {} a -> s {enclaveOptions = a} :: ResponseLaunchTemplateData)

-- | The metadata options for the instance. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html Instance metadata and user data>
-- in the /Amazon Elastic Compute Cloud User Guide/.
responseLaunchTemplateData_metadataOptions :: Lens.Lens' ResponseLaunchTemplateData (Prelude.Maybe LaunchTemplateInstanceMetadataOptions)
responseLaunchTemplateData_metadataOptions = Lens.lens (\ResponseLaunchTemplateData' {metadataOptions} -> metadataOptions) (\s@ResponseLaunchTemplateData' {} a -> s {metadataOptions = a} :: ResponseLaunchTemplateData)

instance Core.FromXML ResponseLaunchTemplateData where
  parseXML x =
    ResponseLaunchTemplateData'
      Prelude.<$> (x Core..@? "ebsOptimized")
      Prelude.<*> (x Core..@? "hibernationOptions")
      Prelude.<*> (x Core..@? "iamInstanceProfile")
      Prelude.<*> ( x Core..@? "elasticInferenceAcceleratorSet"
                      Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "item")
                  )
      Prelude.<*> (x Core..@? "placement")
      Prelude.<*> (x Core..@? "userData")
      Prelude.<*> (x Core..@? "instanceRequirements")
      Prelude.<*> (x Core..@? "creditSpecification")
      Prelude.<*> ( x Core..@? "blockDeviceMappingSet"
                      Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "item")
                  )
      Prelude.<*> ( x Core..@? "securityGroupIdSet"
                      Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "item")
                  )
      Prelude.<*> (x Core..@? "instanceInitiatedShutdownBehavior")
      Prelude.<*> (x Core..@? "monitoring")
      Prelude.<*> (x Core..@? "instanceMarketOptions")
      Prelude.<*> (x Core..@? "capacityReservationSpecification")
      Prelude.<*> (x Core..@? "instanceType")
      Prelude.<*> ( x Core..@? "securityGroupSet"
                      Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "item")
                  )
      Prelude.<*> ( x Core..@? "elasticGpuSpecificationSet"
                      Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "item")
                  )
      Prelude.<*> (x Core..@? "ramDiskId")
      Prelude.<*> (x Core..@? "maintenanceOptions")
      Prelude.<*> (x Core..@? "privateDnsNameOptions")
      Prelude.<*> (x Core..@? "keyName")
      Prelude.<*> ( x Core..@? "licenseSet" Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "item")
                  )
      Prelude.<*> (x Core..@? "kernelId")
      Prelude.<*> (x Core..@? "disableApiTermination")
      Prelude.<*> ( x Core..@? "tagSpecificationSet"
                      Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "item")
                  )
      Prelude.<*> (x Core..@? "cpuOptions")
      Prelude.<*> (x Core..@? "disableApiStop")
      Prelude.<*> (x Core..@? "imageId")
      Prelude.<*> ( x Core..@? "networkInterfaceSet"
                      Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "item")
                  )
      Prelude.<*> (x Core..@? "enclaveOptions")
      Prelude.<*> (x Core..@? "metadataOptions")

instance Prelude.Hashable ResponseLaunchTemplateData where
  hashWithSalt _salt ResponseLaunchTemplateData' {..} =
    _salt `Prelude.hashWithSalt` ebsOptimized
      `Prelude.hashWithSalt` hibernationOptions
      `Prelude.hashWithSalt` iamInstanceProfile
      `Prelude.hashWithSalt` elasticInferenceAccelerators
      `Prelude.hashWithSalt` placement
      `Prelude.hashWithSalt` userData
      `Prelude.hashWithSalt` instanceRequirements
      `Prelude.hashWithSalt` creditSpecification
      `Prelude.hashWithSalt` blockDeviceMappings
      `Prelude.hashWithSalt` securityGroupIds
      `Prelude.hashWithSalt` instanceInitiatedShutdownBehavior
      `Prelude.hashWithSalt` monitoring
      `Prelude.hashWithSalt` instanceMarketOptions
      `Prelude.hashWithSalt` capacityReservationSpecification
      `Prelude.hashWithSalt` instanceType
      `Prelude.hashWithSalt` securityGroups
      `Prelude.hashWithSalt` elasticGpuSpecifications
      `Prelude.hashWithSalt` ramDiskId
      `Prelude.hashWithSalt` maintenanceOptions
      `Prelude.hashWithSalt` privateDnsNameOptions
      `Prelude.hashWithSalt` keyName
      `Prelude.hashWithSalt` licenseSpecifications
      `Prelude.hashWithSalt` kernelId
      `Prelude.hashWithSalt` disableApiTermination
      `Prelude.hashWithSalt` tagSpecifications
      `Prelude.hashWithSalt` cpuOptions
      `Prelude.hashWithSalt` disableApiStop
      `Prelude.hashWithSalt` imageId
      `Prelude.hashWithSalt` networkInterfaces
      `Prelude.hashWithSalt` enclaveOptions
      `Prelude.hashWithSalt` metadataOptions

instance Prelude.NFData ResponseLaunchTemplateData where
  rnf ResponseLaunchTemplateData' {..} =
    Prelude.rnf ebsOptimized
      `Prelude.seq` Prelude.rnf hibernationOptions
      `Prelude.seq` Prelude.rnf iamInstanceProfile
      `Prelude.seq` Prelude.rnf elasticInferenceAccelerators
      `Prelude.seq` Prelude.rnf placement
      `Prelude.seq` Prelude.rnf userData
      `Prelude.seq` Prelude.rnf instanceRequirements
      `Prelude.seq` Prelude.rnf creditSpecification
      `Prelude.seq` Prelude.rnf blockDeviceMappings
      `Prelude.seq` Prelude.rnf securityGroupIds
      `Prelude.seq` Prelude.rnf instanceInitiatedShutdownBehavior
      `Prelude.seq` Prelude.rnf monitoring
      `Prelude.seq` Prelude.rnf instanceMarketOptions
      `Prelude.seq` Prelude.rnf
        capacityReservationSpecification
      `Prelude.seq` Prelude.rnf instanceType
      `Prelude.seq` Prelude.rnf securityGroups
      `Prelude.seq` Prelude.rnf elasticGpuSpecifications
      `Prelude.seq` Prelude.rnf ramDiskId
      `Prelude.seq` Prelude.rnf maintenanceOptions
      `Prelude.seq` Prelude.rnf
        privateDnsNameOptions
      `Prelude.seq` Prelude.rnf keyName
      `Prelude.seq` Prelude.rnf
        licenseSpecifications
      `Prelude.seq` Prelude.rnf kernelId
      `Prelude.seq` Prelude.rnf
        disableApiTermination
      `Prelude.seq` Prelude.rnf
        tagSpecifications
      `Prelude.seq` Prelude.rnf
        cpuOptions
      `Prelude.seq` Prelude.rnf
        disableApiStop
      `Prelude.seq` Prelude.rnf
        imageId
      `Prelude.seq` Prelude.rnf
        networkInterfaces
      `Prelude.seq` Prelude.rnf
        enclaveOptions
      `Prelude.seq` Prelude.rnf
        metadataOptions
