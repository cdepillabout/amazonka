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
-- Module      : Amazonka.GuardDuty.Types.InstanceDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.GuardDuty.Types.InstanceDetails where

import qualified Amazonka.Core as Core
import Amazonka.GuardDuty.Types.IamInstanceProfile
import Amazonka.GuardDuty.Types.NetworkInterface
import Amazonka.GuardDuty.Types.ProductCode
import Amazonka.GuardDuty.Types.Tag
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Contains information about the details of an instance.
--
-- /See:/ 'newInstanceDetails' smart constructor.
data InstanceDetails = InstanceDetails'
  { -- | The tags of the EC2 instance.
    tags :: Prelude.Maybe [Tag],
    -- | The state of the EC2 instance.
    instanceState :: Prelude.Maybe Prelude.Text,
    -- | The profile information of the EC2 instance.
    iamInstanceProfile :: Prelude.Maybe IamInstanceProfile,
    -- | The Amazon Resource Name (ARN) of the Amazon Web Services Outpost. Only
    -- applicable to Amazon Web Services Outposts instances.
    outpostArn :: Prelude.Maybe Prelude.Text,
    -- | The image description of the EC2 instance.
    imageDescription :: Prelude.Maybe Prelude.Text,
    -- | The launch time of the EC2 instance.
    launchTime :: Prelude.Maybe Prelude.Text,
    -- | The product code of the EC2 instance.
    productCodes :: Prelude.Maybe [ProductCode],
    -- | The platform of the EC2 instance.
    platform :: Prelude.Maybe Prelude.Text,
    -- | The Availability Zone of the EC2 instance.
    availabilityZone :: Prelude.Maybe Prelude.Text,
    -- | The type of the EC2 instance.
    instanceType :: Prelude.Maybe Prelude.Text,
    -- | The ID of the EC2 instance.
    instanceId :: Prelude.Maybe Prelude.Text,
    -- | The image ID of the EC2 instance.
    imageId :: Prelude.Maybe Prelude.Text,
    -- | The elastic network interface information of the EC2 instance.
    networkInterfaces :: Prelude.Maybe [NetworkInterface]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InstanceDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'instanceDetails_tags' - The tags of the EC2 instance.
--
-- 'instanceState', 'instanceDetails_instanceState' - The state of the EC2 instance.
--
-- 'iamInstanceProfile', 'instanceDetails_iamInstanceProfile' - The profile information of the EC2 instance.
--
-- 'outpostArn', 'instanceDetails_outpostArn' - The Amazon Resource Name (ARN) of the Amazon Web Services Outpost. Only
-- applicable to Amazon Web Services Outposts instances.
--
-- 'imageDescription', 'instanceDetails_imageDescription' - The image description of the EC2 instance.
--
-- 'launchTime', 'instanceDetails_launchTime' - The launch time of the EC2 instance.
--
-- 'productCodes', 'instanceDetails_productCodes' - The product code of the EC2 instance.
--
-- 'platform', 'instanceDetails_platform' - The platform of the EC2 instance.
--
-- 'availabilityZone', 'instanceDetails_availabilityZone' - The Availability Zone of the EC2 instance.
--
-- 'instanceType', 'instanceDetails_instanceType' - The type of the EC2 instance.
--
-- 'instanceId', 'instanceDetails_instanceId' - The ID of the EC2 instance.
--
-- 'imageId', 'instanceDetails_imageId' - The image ID of the EC2 instance.
--
-- 'networkInterfaces', 'instanceDetails_networkInterfaces' - The elastic network interface information of the EC2 instance.
newInstanceDetails ::
  InstanceDetails
newInstanceDetails =
  InstanceDetails'
    { tags = Prelude.Nothing,
      instanceState = Prelude.Nothing,
      iamInstanceProfile = Prelude.Nothing,
      outpostArn = Prelude.Nothing,
      imageDescription = Prelude.Nothing,
      launchTime = Prelude.Nothing,
      productCodes = Prelude.Nothing,
      platform = Prelude.Nothing,
      availabilityZone = Prelude.Nothing,
      instanceType = Prelude.Nothing,
      instanceId = Prelude.Nothing,
      imageId = Prelude.Nothing,
      networkInterfaces = Prelude.Nothing
    }

-- | The tags of the EC2 instance.
instanceDetails_tags :: Lens.Lens' InstanceDetails (Prelude.Maybe [Tag])
instanceDetails_tags = Lens.lens (\InstanceDetails' {tags} -> tags) (\s@InstanceDetails' {} a -> s {tags = a} :: InstanceDetails) Prelude.. Lens.mapping Lens.coerced

-- | The state of the EC2 instance.
instanceDetails_instanceState :: Lens.Lens' InstanceDetails (Prelude.Maybe Prelude.Text)
instanceDetails_instanceState = Lens.lens (\InstanceDetails' {instanceState} -> instanceState) (\s@InstanceDetails' {} a -> s {instanceState = a} :: InstanceDetails)

-- | The profile information of the EC2 instance.
instanceDetails_iamInstanceProfile :: Lens.Lens' InstanceDetails (Prelude.Maybe IamInstanceProfile)
instanceDetails_iamInstanceProfile = Lens.lens (\InstanceDetails' {iamInstanceProfile} -> iamInstanceProfile) (\s@InstanceDetails' {} a -> s {iamInstanceProfile = a} :: InstanceDetails)

-- | The Amazon Resource Name (ARN) of the Amazon Web Services Outpost. Only
-- applicable to Amazon Web Services Outposts instances.
instanceDetails_outpostArn :: Lens.Lens' InstanceDetails (Prelude.Maybe Prelude.Text)
instanceDetails_outpostArn = Lens.lens (\InstanceDetails' {outpostArn} -> outpostArn) (\s@InstanceDetails' {} a -> s {outpostArn = a} :: InstanceDetails)

-- | The image description of the EC2 instance.
instanceDetails_imageDescription :: Lens.Lens' InstanceDetails (Prelude.Maybe Prelude.Text)
instanceDetails_imageDescription = Lens.lens (\InstanceDetails' {imageDescription} -> imageDescription) (\s@InstanceDetails' {} a -> s {imageDescription = a} :: InstanceDetails)

-- | The launch time of the EC2 instance.
instanceDetails_launchTime :: Lens.Lens' InstanceDetails (Prelude.Maybe Prelude.Text)
instanceDetails_launchTime = Lens.lens (\InstanceDetails' {launchTime} -> launchTime) (\s@InstanceDetails' {} a -> s {launchTime = a} :: InstanceDetails)

-- | The product code of the EC2 instance.
instanceDetails_productCodes :: Lens.Lens' InstanceDetails (Prelude.Maybe [ProductCode])
instanceDetails_productCodes = Lens.lens (\InstanceDetails' {productCodes} -> productCodes) (\s@InstanceDetails' {} a -> s {productCodes = a} :: InstanceDetails) Prelude.. Lens.mapping Lens.coerced

-- | The platform of the EC2 instance.
instanceDetails_platform :: Lens.Lens' InstanceDetails (Prelude.Maybe Prelude.Text)
instanceDetails_platform = Lens.lens (\InstanceDetails' {platform} -> platform) (\s@InstanceDetails' {} a -> s {platform = a} :: InstanceDetails)

-- | The Availability Zone of the EC2 instance.
instanceDetails_availabilityZone :: Lens.Lens' InstanceDetails (Prelude.Maybe Prelude.Text)
instanceDetails_availabilityZone = Lens.lens (\InstanceDetails' {availabilityZone} -> availabilityZone) (\s@InstanceDetails' {} a -> s {availabilityZone = a} :: InstanceDetails)

-- | The type of the EC2 instance.
instanceDetails_instanceType :: Lens.Lens' InstanceDetails (Prelude.Maybe Prelude.Text)
instanceDetails_instanceType = Lens.lens (\InstanceDetails' {instanceType} -> instanceType) (\s@InstanceDetails' {} a -> s {instanceType = a} :: InstanceDetails)

-- | The ID of the EC2 instance.
instanceDetails_instanceId :: Lens.Lens' InstanceDetails (Prelude.Maybe Prelude.Text)
instanceDetails_instanceId = Lens.lens (\InstanceDetails' {instanceId} -> instanceId) (\s@InstanceDetails' {} a -> s {instanceId = a} :: InstanceDetails)

-- | The image ID of the EC2 instance.
instanceDetails_imageId :: Lens.Lens' InstanceDetails (Prelude.Maybe Prelude.Text)
instanceDetails_imageId = Lens.lens (\InstanceDetails' {imageId} -> imageId) (\s@InstanceDetails' {} a -> s {imageId = a} :: InstanceDetails)

-- | The elastic network interface information of the EC2 instance.
instanceDetails_networkInterfaces :: Lens.Lens' InstanceDetails (Prelude.Maybe [NetworkInterface])
instanceDetails_networkInterfaces = Lens.lens (\InstanceDetails' {networkInterfaces} -> networkInterfaces) (\s@InstanceDetails' {} a -> s {networkInterfaces = a} :: InstanceDetails) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON InstanceDetails where
  parseJSON =
    Core.withObject
      "InstanceDetails"
      ( \x ->
          InstanceDetails'
            Prelude.<$> (x Core..:? "tags" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "instanceState")
            Prelude.<*> (x Core..:? "iamInstanceProfile")
            Prelude.<*> (x Core..:? "outpostArn")
            Prelude.<*> (x Core..:? "imageDescription")
            Prelude.<*> (x Core..:? "launchTime")
            Prelude.<*> (x Core..:? "productCodes" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "platform")
            Prelude.<*> (x Core..:? "availabilityZone")
            Prelude.<*> (x Core..:? "instanceType")
            Prelude.<*> (x Core..:? "instanceId")
            Prelude.<*> (x Core..:? "imageId")
            Prelude.<*> ( x Core..:? "networkInterfaces"
                            Core..!= Prelude.mempty
                        )
      )

instance Prelude.Hashable InstanceDetails where
  hashWithSalt _salt InstanceDetails' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` instanceState
      `Prelude.hashWithSalt` iamInstanceProfile
      `Prelude.hashWithSalt` outpostArn
      `Prelude.hashWithSalt` imageDescription
      `Prelude.hashWithSalt` launchTime
      `Prelude.hashWithSalt` productCodes
      `Prelude.hashWithSalt` platform
      `Prelude.hashWithSalt` availabilityZone
      `Prelude.hashWithSalt` instanceType
      `Prelude.hashWithSalt` instanceId
      `Prelude.hashWithSalt` imageId
      `Prelude.hashWithSalt` networkInterfaces

instance Prelude.NFData InstanceDetails where
  rnf InstanceDetails' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf instanceState
      `Prelude.seq` Prelude.rnf iamInstanceProfile
      `Prelude.seq` Prelude.rnf outpostArn
      `Prelude.seq` Prelude.rnf imageDescription
      `Prelude.seq` Prelude.rnf launchTime
      `Prelude.seq` Prelude.rnf productCodes
      `Prelude.seq` Prelude.rnf platform
      `Prelude.seq` Prelude.rnf availabilityZone
      `Prelude.seq` Prelude.rnf instanceType
      `Prelude.seq` Prelude.rnf instanceId
      `Prelude.seq` Prelude.rnf imageId
      `Prelude.seq` Prelude.rnf networkInterfaces
