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
-- Module      : Amazonka.SecurityHub.Types.AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SecurityHub.Types.AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.SecurityHub.Types.AwsAutoScalingLaunchConfigurationBlockDeviceMappingsEbsDetails

-- | A block device for the instance.
--
-- /See:/ 'newAwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails' smart constructor.
data AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails = AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails'
  { -- | Parameters that are used to automatically set up Amazon EBS volumes when
    -- an instance is launched.
    ebs :: Prelude.Maybe AwsAutoScalingLaunchConfigurationBlockDeviceMappingsEbsDetails,
    -- | The device name that is exposed to the EC2 instance. For example,
    -- @\/dev\/sdh@ or @xvdh@.
    deviceName :: Prelude.Maybe Prelude.Text,
    -- | Whether to suppress the device that is included in the block device
    -- mapping of the Amazon Machine Image (AMI).
    --
    -- If @NoDevice@ is @true@, then you cannot specify @Ebs@.>
    noDevice :: Prelude.Maybe Prelude.Bool,
    -- | The name of the virtual device (for example, @ephemeral0@).
    --
    -- You can provide either @VirtualName@ or @Ebs@, but not both.
    virtualName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'ebs', 'awsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails_ebs' - Parameters that are used to automatically set up Amazon EBS volumes when
-- an instance is launched.
--
-- 'deviceName', 'awsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails_deviceName' - The device name that is exposed to the EC2 instance. For example,
-- @\/dev\/sdh@ or @xvdh@.
--
-- 'noDevice', 'awsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails_noDevice' - Whether to suppress the device that is included in the block device
-- mapping of the Amazon Machine Image (AMI).
--
-- If @NoDevice@ is @true@, then you cannot specify @Ebs@.>
--
-- 'virtualName', 'awsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails_virtualName' - The name of the virtual device (for example, @ephemeral0@).
--
-- You can provide either @VirtualName@ or @Ebs@, but not both.
newAwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails ::
  AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails
newAwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails =
  AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails'
    { ebs =
        Prelude.Nothing,
      deviceName =
        Prelude.Nothing,
      noDevice =
        Prelude.Nothing,
      virtualName =
        Prelude.Nothing
    }

-- | Parameters that are used to automatically set up Amazon EBS volumes when
-- an instance is launched.
awsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails_ebs :: Lens.Lens' AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails (Prelude.Maybe AwsAutoScalingLaunchConfigurationBlockDeviceMappingsEbsDetails)
awsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails_ebs = Lens.lens (\AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails' {ebs} -> ebs) (\s@AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails' {} a -> s {ebs = a} :: AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails)

-- | The device name that is exposed to the EC2 instance. For example,
-- @\/dev\/sdh@ or @xvdh@.
awsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails_deviceName :: Lens.Lens' AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails (Prelude.Maybe Prelude.Text)
awsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails_deviceName = Lens.lens (\AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails' {deviceName} -> deviceName) (\s@AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails' {} a -> s {deviceName = a} :: AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails)

-- | Whether to suppress the device that is included in the block device
-- mapping of the Amazon Machine Image (AMI).
--
-- If @NoDevice@ is @true@, then you cannot specify @Ebs@.>
awsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails_noDevice :: Lens.Lens' AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails (Prelude.Maybe Prelude.Bool)
awsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails_noDevice = Lens.lens (\AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails' {noDevice} -> noDevice) (\s@AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails' {} a -> s {noDevice = a} :: AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails)

-- | The name of the virtual device (for example, @ephemeral0@).
--
-- You can provide either @VirtualName@ or @Ebs@, but not both.
awsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails_virtualName :: Lens.Lens' AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails (Prelude.Maybe Prelude.Text)
awsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails_virtualName = Lens.lens (\AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails' {virtualName} -> virtualName) (\s@AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails' {} a -> s {virtualName = a} :: AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails)

instance
  Core.FromJSON
    AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails
  where
  parseJSON =
    Core.withObject
      "AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails"
      ( \x ->
          AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails'
            Prelude.<$> (x Core..:? "Ebs")
              Prelude.<*> (x Core..:? "DeviceName")
              Prelude.<*> (x Core..:? "NoDevice")
              Prelude.<*> (x Core..:? "VirtualName")
      )

instance
  Prelude.Hashable
    AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails
  where
  hashWithSalt
    _salt
    AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails' {..} =
      _salt `Prelude.hashWithSalt` ebs
        `Prelude.hashWithSalt` deviceName
        `Prelude.hashWithSalt` noDevice
        `Prelude.hashWithSalt` virtualName

instance
  Prelude.NFData
    AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails
  where
  rnf
    AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails' {..} =
      Prelude.rnf ebs
        `Prelude.seq` Prelude.rnf deviceName
        `Prelude.seq` Prelude.rnf noDevice
        `Prelude.seq` Prelude.rnf virtualName

instance
  Core.ToJSON
    AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails
  where
  toJSON
    AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails' {..} =
      Core.object
        ( Prelude.catMaybes
            [ ("Ebs" Core..=) Prelude.<$> ebs,
              ("DeviceName" Core..=) Prelude.<$> deviceName,
              ("NoDevice" Core..=) Prelude.<$> noDevice,
              ("VirtualName" Core..=) Prelude.<$> virtualName
            ]
        )
