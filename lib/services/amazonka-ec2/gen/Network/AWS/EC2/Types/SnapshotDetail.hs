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
-- Module      : Amazonka.EC2.Types.SnapshotDetail
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.SnapshotDetail where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import Amazonka.EC2.Types.UserBucketDetails
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes the snapshot created from the imported disk.
--
-- /See:/ 'newSnapshotDetail' smart constructor.
data SnapshotDetail = SnapshotDetail'
  { -- | A brief status of the snapshot creation.
    status :: Prelude.Maybe Prelude.Text,
    -- | The percentage of progress for the task.
    progress :: Prelude.Maybe Prelude.Text,
    -- | The format of the disk image from which the snapshot is created.
    format :: Prelude.Maybe Prelude.Text,
    -- | The URL used to access the disk image.
    url :: Prelude.Maybe Prelude.Text,
    -- | The block device mapping for the snapshot.
    deviceName :: Prelude.Maybe Prelude.Text,
    -- | A detailed status message for the snapshot creation.
    statusMessage :: Prelude.Maybe Prelude.Text,
    -- | The Amazon S3 bucket for the disk image.
    userBucket :: Prelude.Maybe UserBucketDetails,
    -- | The size of the disk in the snapshot, in GiB.
    diskImageSize :: Prelude.Maybe Prelude.Double,
    -- | A description for the snapshot.
    description :: Prelude.Maybe Prelude.Text,
    -- | The snapshot ID of the disk being imported.
    snapshotId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SnapshotDetail' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'snapshotDetail_status' - A brief status of the snapshot creation.
--
-- 'progress', 'snapshotDetail_progress' - The percentage of progress for the task.
--
-- 'format', 'snapshotDetail_format' - The format of the disk image from which the snapshot is created.
--
-- 'url', 'snapshotDetail_url' - The URL used to access the disk image.
--
-- 'deviceName', 'snapshotDetail_deviceName' - The block device mapping for the snapshot.
--
-- 'statusMessage', 'snapshotDetail_statusMessage' - A detailed status message for the snapshot creation.
--
-- 'userBucket', 'snapshotDetail_userBucket' - The Amazon S3 bucket for the disk image.
--
-- 'diskImageSize', 'snapshotDetail_diskImageSize' - The size of the disk in the snapshot, in GiB.
--
-- 'description', 'snapshotDetail_description' - A description for the snapshot.
--
-- 'snapshotId', 'snapshotDetail_snapshotId' - The snapshot ID of the disk being imported.
newSnapshotDetail ::
  SnapshotDetail
newSnapshotDetail =
  SnapshotDetail'
    { status = Prelude.Nothing,
      progress = Prelude.Nothing,
      format = Prelude.Nothing,
      url = Prelude.Nothing,
      deviceName = Prelude.Nothing,
      statusMessage = Prelude.Nothing,
      userBucket = Prelude.Nothing,
      diskImageSize = Prelude.Nothing,
      description = Prelude.Nothing,
      snapshotId = Prelude.Nothing
    }

-- | A brief status of the snapshot creation.
snapshotDetail_status :: Lens.Lens' SnapshotDetail (Prelude.Maybe Prelude.Text)
snapshotDetail_status = Lens.lens (\SnapshotDetail' {status} -> status) (\s@SnapshotDetail' {} a -> s {status = a} :: SnapshotDetail)

-- | The percentage of progress for the task.
snapshotDetail_progress :: Lens.Lens' SnapshotDetail (Prelude.Maybe Prelude.Text)
snapshotDetail_progress = Lens.lens (\SnapshotDetail' {progress} -> progress) (\s@SnapshotDetail' {} a -> s {progress = a} :: SnapshotDetail)

-- | The format of the disk image from which the snapshot is created.
snapshotDetail_format :: Lens.Lens' SnapshotDetail (Prelude.Maybe Prelude.Text)
snapshotDetail_format = Lens.lens (\SnapshotDetail' {format} -> format) (\s@SnapshotDetail' {} a -> s {format = a} :: SnapshotDetail)

-- | The URL used to access the disk image.
snapshotDetail_url :: Lens.Lens' SnapshotDetail (Prelude.Maybe Prelude.Text)
snapshotDetail_url = Lens.lens (\SnapshotDetail' {url} -> url) (\s@SnapshotDetail' {} a -> s {url = a} :: SnapshotDetail)

-- | The block device mapping for the snapshot.
snapshotDetail_deviceName :: Lens.Lens' SnapshotDetail (Prelude.Maybe Prelude.Text)
snapshotDetail_deviceName = Lens.lens (\SnapshotDetail' {deviceName} -> deviceName) (\s@SnapshotDetail' {} a -> s {deviceName = a} :: SnapshotDetail)

-- | A detailed status message for the snapshot creation.
snapshotDetail_statusMessage :: Lens.Lens' SnapshotDetail (Prelude.Maybe Prelude.Text)
snapshotDetail_statusMessage = Lens.lens (\SnapshotDetail' {statusMessage} -> statusMessage) (\s@SnapshotDetail' {} a -> s {statusMessage = a} :: SnapshotDetail)

-- | The Amazon S3 bucket for the disk image.
snapshotDetail_userBucket :: Lens.Lens' SnapshotDetail (Prelude.Maybe UserBucketDetails)
snapshotDetail_userBucket = Lens.lens (\SnapshotDetail' {userBucket} -> userBucket) (\s@SnapshotDetail' {} a -> s {userBucket = a} :: SnapshotDetail)

-- | The size of the disk in the snapshot, in GiB.
snapshotDetail_diskImageSize :: Lens.Lens' SnapshotDetail (Prelude.Maybe Prelude.Double)
snapshotDetail_diskImageSize = Lens.lens (\SnapshotDetail' {diskImageSize} -> diskImageSize) (\s@SnapshotDetail' {} a -> s {diskImageSize = a} :: SnapshotDetail)

-- | A description for the snapshot.
snapshotDetail_description :: Lens.Lens' SnapshotDetail (Prelude.Maybe Prelude.Text)
snapshotDetail_description = Lens.lens (\SnapshotDetail' {description} -> description) (\s@SnapshotDetail' {} a -> s {description = a} :: SnapshotDetail)

-- | The snapshot ID of the disk being imported.
snapshotDetail_snapshotId :: Lens.Lens' SnapshotDetail (Prelude.Maybe Prelude.Text)
snapshotDetail_snapshotId = Lens.lens (\SnapshotDetail' {snapshotId} -> snapshotId) (\s@SnapshotDetail' {} a -> s {snapshotId = a} :: SnapshotDetail)

instance Core.FromXML SnapshotDetail where
  parseXML x =
    SnapshotDetail'
      Prelude.<$> (x Core..@? "status")
      Prelude.<*> (x Core..@? "progress")
      Prelude.<*> (x Core..@? "format")
      Prelude.<*> (x Core..@? "url")
      Prelude.<*> (x Core..@? "deviceName")
      Prelude.<*> (x Core..@? "statusMessage")
      Prelude.<*> (x Core..@? "userBucket")
      Prelude.<*> (x Core..@? "diskImageSize")
      Prelude.<*> (x Core..@? "description")
      Prelude.<*> (x Core..@? "snapshotId")

instance Prelude.Hashable SnapshotDetail

instance Prelude.NFData SnapshotDetail
