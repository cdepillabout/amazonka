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
-- Module      : Amazonka.Config.Types.DeliveryChannel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Config.Types.DeliveryChannel where

import Amazonka.Config.Types.ConfigSnapshotDeliveryProperties
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The channel through which Config delivers notifications and updated
-- configuration states.
--
-- /See:/ 'newDeliveryChannel' smart constructor.
data DeliveryChannel = DeliveryChannel'
  { -- | The prefix for the specified Amazon S3 bucket.
    s3KeyPrefix :: Prelude.Maybe Prelude.Text,
    -- | The name of the delivery channel. By default, Config assigns the name
    -- \"default\" when creating the delivery channel. To change the delivery
    -- channel name, you must use the DeleteDeliveryChannel action to delete
    -- your current delivery channel, and then you must use the
    -- PutDeliveryChannel command to create a delivery channel that has the
    -- desired name.
    name :: Prelude.Maybe Prelude.Text,
    -- | The name of the Amazon S3 bucket to which Config delivers configuration
    -- snapshots and configuration history files.
    --
    -- If you specify a bucket that belongs to another Amazon Web Services
    -- account, that bucket must have policies that grant access permissions to
    -- Config. For more information, see
    -- <https://docs.aws.amazon.com/config/latest/developerguide/s3-bucket-policy.html Permissions for the Amazon S3 Bucket>
    -- in the /Config Developer Guide/.
    s3BucketName :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the Amazon SNS topic to which Config
    -- sends notifications about configuration changes.
    --
    -- If you choose a topic from another account, the topic must have policies
    -- that grant access permissions to Config. For more information, see
    -- <https://docs.aws.amazon.com/config/latest/developerguide/sns-topic-policy.html Permissions for the Amazon SNS Topic>
    -- in the /Config Developer Guide/.
    snsTopicARN :: Prelude.Maybe Prelude.Text,
    -- | The options for how often Config delivers configuration snapshots to the
    -- Amazon S3 bucket.
    configSnapshotDeliveryProperties :: Prelude.Maybe ConfigSnapshotDeliveryProperties,
    -- | The Amazon Resource Name (ARN) of the Key Management Service (KMS ) KMS
    -- key (KMS key) used to encrypt objects delivered by Config. Must belong
    -- to the same Region as the destination S3 bucket.
    s3KmsKeyArn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeliveryChannel' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 's3KeyPrefix', 'deliveryChannel_s3KeyPrefix' - The prefix for the specified Amazon S3 bucket.
--
-- 'name', 'deliveryChannel_name' - The name of the delivery channel. By default, Config assigns the name
-- \"default\" when creating the delivery channel. To change the delivery
-- channel name, you must use the DeleteDeliveryChannel action to delete
-- your current delivery channel, and then you must use the
-- PutDeliveryChannel command to create a delivery channel that has the
-- desired name.
--
-- 's3BucketName', 'deliveryChannel_s3BucketName' - The name of the Amazon S3 bucket to which Config delivers configuration
-- snapshots and configuration history files.
--
-- If you specify a bucket that belongs to another Amazon Web Services
-- account, that bucket must have policies that grant access permissions to
-- Config. For more information, see
-- <https://docs.aws.amazon.com/config/latest/developerguide/s3-bucket-policy.html Permissions for the Amazon S3 Bucket>
-- in the /Config Developer Guide/.
--
-- 'snsTopicARN', 'deliveryChannel_snsTopicARN' - The Amazon Resource Name (ARN) of the Amazon SNS topic to which Config
-- sends notifications about configuration changes.
--
-- If you choose a topic from another account, the topic must have policies
-- that grant access permissions to Config. For more information, see
-- <https://docs.aws.amazon.com/config/latest/developerguide/sns-topic-policy.html Permissions for the Amazon SNS Topic>
-- in the /Config Developer Guide/.
--
-- 'configSnapshotDeliveryProperties', 'deliveryChannel_configSnapshotDeliveryProperties' - The options for how often Config delivers configuration snapshots to the
-- Amazon S3 bucket.
--
-- 's3KmsKeyArn', 'deliveryChannel_s3KmsKeyArn' - The Amazon Resource Name (ARN) of the Key Management Service (KMS ) KMS
-- key (KMS key) used to encrypt objects delivered by Config. Must belong
-- to the same Region as the destination S3 bucket.
newDeliveryChannel ::
  DeliveryChannel
newDeliveryChannel =
  DeliveryChannel'
    { s3KeyPrefix = Prelude.Nothing,
      name = Prelude.Nothing,
      s3BucketName = Prelude.Nothing,
      snsTopicARN = Prelude.Nothing,
      configSnapshotDeliveryProperties = Prelude.Nothing,
      s3KmsKeyArn = Prelude.Nothing
    }

-- | The prefix for the specified Amazon S3 bucket.
deliveryChannel_s3KeyPrefix :: Lens.Lens' DeliveryChannel (Prelude.Maybe Prelude.Text)
deliveryChannel_s3KeyPrefix = Lens.lens (\DeliveryChannel' {s3KeyPrefix} -> s3KeyPrefix) (\s@DeliveryChannel' {} a -> s {s3KeyPrefix = a} :: DeliveryChannel)

-- | The name of the delivery channel. By default, Config assigns the name
-- \"default\" when creating the delivery channel. To change the delivery
-- channel name, you must use the DeleteDeliveryChannel action to delete
-- your current delivery channel, and then you must use the
-- PutDeliveryChannel command to create a delivery channel that has the
-- desired name.
deliveryChannel_name :: Lens.Lens' DeliveryChannel (Prelude.Maybe Prelude.Text)
deliveryChannel_name = Lens.lens (\DeliveryChannel' {name} -> name) (\s@DeliveryChannel' {} a -> s {name = a} :: DeliveryChannel)

-- | The name of the Amazon S3 bucket to which Config delivers configuration
-- snapshots and configuration history files.
--
-- If you specify a bucket that belongs to another Amazon Web Services
-- account, that bucket must have policies that grant access permissions to
-- Config. For more information, see
-- <https://docs.aws.amazon.com/config/latest/developerguide/s3-bucket-policy.html Permissions for the Amazon S3 Bucket>
-- in the /Config Developer Guide/.
deliveryChannel_s3BucketName :: Lens.Lens' DeliveryChannel (Prelude.Maybe Prelude.Text)
deliveryChannel_s3BucketName = Lens.lens (\DeliveryChannel' {s3BucketName} -> s3BucketName) (\s@DeliveryChannel' {} a -> s {s3BucketName = a} :: DeliveryChannel)

-- | The Amazon Resource Name (ARN) of the Amazon SNS topic to which Config
-- sends notifications about configuration changes.
--
-- If you choose a topic from another account, the topic must have policies
-- that grant access permissions to Config. For more information, see
-- <https://docs.aws.amazon.com/config/latest/developerguide/sns-topic-policy.html Permissions for the Amazon SNS Topic>
-- in the /Config Developer Guide/.
deliveryChannel_snsTopicARN :: Lens.Lens' DeliveryChannel (Prelude.Maybe Prelude.Text)
deliveryChannel_snsTopicARN = Lens.lens (\DeliveryChannel' {snsTopicARN} -> snsTopicARN) (\s@DeliveryChannel' {} a -> s {snsTopicARN = a} :: DeliveryChannel)

-- | The options for how often Config delivers configuration snapshots to the
-- Amazon S3 bucket.
deliveryChannel_configSnapshotDeliveryProperties :: Lens.Lens' DeliveryChannel (Prelude.Maybe ConfigSnapshotDeliveryProperties)
deliveryChannel_configSnapshotDeliveryProperties = Lens.lens (\DeliveryChannel' {configSnapshotDeliveryProperties} -> configSnapshotDeliveryProperties) (\s@DeliveryChannel' {} a -> s {configSnapshotDeliveryProperties = a} :: DeliveryChannel)

-- | The Amazon Resource Name (ARN) of the Key Management Service (KMS ) KMS
-- key (KMS key) used to encrypt objects delivered by Config. Must belong
-- to the same Region as the destination S3 bucket.
deliveryChannel_s3KmsKeyArn :: Lens.Lens' DeliveryChannel (Prelude.Maybe Prelude.Text)
deliveryChannel_s3KmsKeyArn = Lens.lens (\DeliveryChannel' {s3KmsKeyArn} -> s3KmsKeyArn) (\s@DeliveryChannel' {} a -> s {s3KmsKeyArn = a} :: DeliveryChannel)

instance Core.FromJSON DeliveryChannel where
  parseJSON =
    Core.withObject
      "DeliveryChannel"
      ( \x ->
          DeliveryChannel'
            Prelude.<$> (x Core..:? "s3KeyPrefix")
            Prelude.<*> (x Core..:? "name")
            Prelude.<*> (x Core..:? "s3BucketName")
            Prelude.<*> (x Core..:? "snsTopicARN")
            Prelude.<*> (x Core..:? "configSnapshotDeliveryProperties")
            Prelude.<*> (x Core..:? "s3KmsKeyArn")
      )

instance Prelude.Hashable DeliveryChannel where
  hashWithSalt _salt DeliveryChannel' {..} =
    _salt `Prelude.hashWithSalt` s3KeyPrefix
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` s3BucketName
      `Prelude.hashWithSalt` snsTopicARN
      `Prelude.hashWithSalt` configSnapshotDeliveryProperties
      `Prelude.hashWithSalt` s3KmsKeyArn

instance Prelude.NFData DeliveryChannel where
  rnf DeliveryChannel' {..} =
    Prelude.rnf s3KeyPrefix
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf s3BucketName
      `Prelude.seq` Prelude.rnf snsTopicARN
      `Prelude.seq` Prelude.rnf configSnapshotDeliveryProperties
      `Prelude.seq` Prelude.rnf s3KmsKeyArn

instance Core.ToJSON DeliveryChannel where
  toJSON DeliveryChannel' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("s3KeyPrefix" Core..=) Prelude.<$> s3KeyPrefix,
            ("name" Core..=) Prelude.<$> name,
            ("s3BucketName" Core..=) Prelude.<$> s3BucketName,
            ("snsTopicARN" Core..=) Prelude.<$> snsTopicARN,
            ("configSnapshotDeliveryProperties" Core..=)
              Prelude.<$> configSnapshotDeliveryProperties,
            ("s3KmsKeyArn" Core..=) Prelude.<$> s3KmsKeyArn
          ]
      )
