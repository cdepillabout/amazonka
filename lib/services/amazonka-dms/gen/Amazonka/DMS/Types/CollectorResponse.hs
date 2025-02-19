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
-- Module      : Amazonka.DMS.Types.CollectorResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DMS.Types.CollectorResponse where

import qualified Amazonka.Core as Core
import Amazonka.DMS.Types.CollectorHealthCheck
import Amazonka.DMS.Types.InventoryData
import Amazonka.DMS.Types.VersionStatus
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes a Fleet Advisor collector.
--
-- /See:/ 'newCollectorResponse' smart constructor.
data CollectorResponse = CollectorResponse'
  { -- | The name of the Fleet Advisor collector .
    collectorName :: Prelude.Maybe Prelude.Text,
    -- | The Amazon S3 bucket that the Fleet Advisor collector uses to store
    -- inventory metadata.
    s3BucketName :: Prelude.Maybe Prelude.Text,
    -- | Whether the collector version is up to date.
    versionStatus :: Prelude.Maybe VersionStatus,
    -- | The IAM role that grants permissions to access the specified Amazon S3
    -- bucket.
    serviceAccessRoleArn :: Prelude.Maybe Prelude.Text,
    inventoryData :: Prelude.Maybe InventoryData,
    -- | A summary description of the Fleet Advisor collector.
    description :: Prelude.Maybe Prelude.Text,
    -- | The timestamp of the last time the collector received data, in the
    -- following format: @2022-01-24T19:04:02.596113Z@
    lastDataReceived :: Prelude.Maybe Prelude.Text,
    collectorHealthCheck :: Prelude.Maybe CollectorHealthCheck,
    -- | The reference ID of the Fleet Advisor collector.
    collectorReferencedId :: Prelude.Maybe Prelude.Text,
    -- | The timestamp when DMS registered the collector, in the following
    -- format: @2022-01-24T19:04:02.596113Z@
    registeredDate :: Prelude.Maybe Prelude.Text,
    -- | The timestamp when you created the collector, in the following format:
    -- @2022-01-24T19:04:02.596113Z@
    createdDate :: Prelude.Maybe Prelude.Text,
    -- | The timestamp when DMS last modified the collector, in the following
    -- format: @2022-01-24T19:04:02.596113Z@
    modifiedDate :: Prelude.Maybe Prelude.Text,
    -- | The version of your Fleet Advisor collector, in semantic versioning
    -- format, for example @1.0.2@
    collectorVersion :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CollectorResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'collectorName', 'collectorResponse_collectorName' - The name of the Fleet Advisor collector .
--
-- 's3BucketName', 'collectorResponse_s3BucketName' - The Amazon S3 bucket that the Fleet Advisor collector uses to store
-- inventory metadata.
--
-- 'versionStatus', 'collectorResponse_versionStatus' - Whether the collector version is up to date.
--
-- 'serviceAccessRoleArn', 'collectorResponse_serviceAccessRoleArn' - The IAM role that grants permissions to access the specified Amazon S3
-- bucket.
--
-- 'inventoryData', 'collectorResponse_inventoryData' - Undocumented member.
--
-- 'description', 'collectorResponse_description' - A summary description of the Fleet Advisor collector.
--
-- 'lastDataReceived', 'collectorResponse_lastDataReceived' - The timestamp of the last time the collector received data, in the
-- following format: @2022-01-24T19:04:02.596113Z@
--
-- 'collectorHealthCheck', 'collectorResponse_collectorHealthCheck' - Undocumented member.
--
-- 'collectorReferencedId', 'collectorResponse_collectorReferencedId' - The reference ID of the Fleet Advisor collector.
--
-- 'registeredDate', 'collectorResponse_registeredDate' - The timestamp when DMS registered the collector, in the following
-- format: @2022-01-24T19:04:02.596113Z@
--
-- 'createdDate', 'collectorResponse_createdDate' - The timestamp when you created the collector, in the following format:
-- @2022-01-24T19:04:02.596113Z@
--
-- 'modifiedDate', 'collectorResponse_modifiedDate' - The timestamp when DMS last modified the collector, in the following
-- format: @2022-01-24T19:04:02.596113Z@
--
-- 'collectorVersion', 'collectorResponse_collectorVersion' - The version of your Fleet Advisor collector, in semantic versioning
-- format, for example @1.0.2@
newCollectorResponse ::
  CollectorResponse
newCollectorResponse =
  CollectorResponse'
    { collectorName = Prelude.Nothing,
      s3BucketName = Prelude.Nothing,
      versionStatus = Prelude.Nothing,
      serviceAccessRoleArn = Prelude.Nothing,
      inventoryData = Prelude.Nothing,
      description = Prelude.Nothing,
      lastDataReceived = Prelude.Nothing,
      collectorHealthCheck = Prelude.Nothing,
      collectorReferencedId = Prelude.Nothing,
      registeredDate = Prelude.Nothing,
      createdDate = Prelude.Nothing,
      modifiedDate = Prelude.Nothing,
      collectorVersion = Prelude.Nothing
    }

-- | The name of the Fleet Advisor collector .
collectorResponse_collectorName :: Lens.Lens' CollectorResponse (Prelude.Maybe Prelude.Text)
collectorResponse_collectorName = Lens.lens (\CollectorResponse' {collectorName} -> collectorName) (\s@CollectorResponse' {} a -> s {collectorName = a} :: CollectorResponse)

-- | The Amazon S3 bucket that the Fleet Advisor collector uses to store
-- inventory metadata.
collectorResponse_s3BucketName :: Lens.Lens' CollectorResponse (Prelude.Maybe Prelude.Text)
collectorResponse_s3BucketName = Lens.lens (\CollectorResponse' {s3BucketName} -> s3BucketName) (\s@CollectorResponse' {} a -> s {s3BucketName = a} :: CollectorResponse)

-- | Whether the collector version is up to date.
collectorResponse_versionStatus :: Lens.Lens' CollectorResponse (Prelude.Maybe VersionStatus)
collectorResponse_versionStatus = Lens.lens (\CollectorResponse' {versionStatus} -> versionStatus) (\s@CollectorResponse' {} a -> s {versionStatus = a} :: CollectorResponse)

-- | The IAM role that grants permissions to access the specified Amazon S3
-- bucket.
collectorResponse_serviceAccessRoleArn :: Lens.Lens' CollectorResponse (Prelude.Maybe Prelude.Text)
collectorResponse_serviceAccessRoleArn = Lens.lens (\CollectorResponse' {serviceAccessRoleArn} -> serviceAccessRoleArn) (\s@CollectorResponse' {} a -> s {serviceAccessRoleArn = a} :: CollectorResponse)

-- | Undocumented member.
collectorResponse_inventoryData :: Lens.Lens' CollectorResponse (Prelude.Maybe InventoryData)
collectorResponse_inventoryData = Lens.lens (\CollectorResponse' {inventoryData} -> inventoryData) (\s@CollectorResponse' {} a -> s {inventoryData = a} :: CollectorResponse)

-- | A summary description of the Fleet Advisor collector.
collectorResponse_description :: Lens.Lens' CollectorResponse (Prelude.Maybe Prelude.Text)
collectorResponse_description = Lens.lens (\CollectorResponse' {description} -> description) (\s@CollectorResponse' {} a -> s {description = a} :: CollectorResponse)

-- | The timestamp of the last time the collector received data, in the
-- following format: @2022-01-24T19:04:02.596113Z@
collectorResponse_lastDataReceived :: Lens.Lens' CollectorResponse (Prelude.Maybe Prelude.Text)
collectorResponse_lastDataReceived = Lens.lens (\CollectorResponse' {lastDataReceived} -> lastDataReceived) (\s@CollectorResponse' {} a -> s {lastDataReceived = a} :: CollectorResponse)

-- | Undocumented member.
collectorResponse_collectorHealthCheck :: Lens.Lens' CollectorResponse (Prelude.Maybe CollectorHealthCheck)
collectorResponse_collectorHealthCheck = Lens.lens (\CollectorResponse' {collectorHealthCheck} -> collectorHealthCheck) (\s@CollectorResponse' {} a -> s {collectorHealthCheck = a} :: CollectorResponse)

-- | The reference ID of the Fleet Advisor collector.
collectorResponse_collectorReferencedId :: Lens.Lens' CollectorResponse (Prelude.Maybe Prelude.Text)
collectorResponse_collectorReferencedId = Lens.lens (\CollectorResponse' {collectorReferencedId} -> collectorReferencedId) (\s@CollectorResponse' {} a -> s {collectorReferencedId = a} :: CollectorResponse)

-- | The timestamp when DMS registered the collector, in the following
-- format: @2022-01-24T19:04:02.596113Z@
collectorResponse_registeredDate :: Lens.Lens' CollectorResponse (Prelude.Maybe Prelude.Text)
collectorResponse_registeredDate = Lens.lens (\CollectorResponse' {registeredDate} -> registeredDate) (\s@CollectorResponse' {} a -> s {registeredDate = a} :: CollectorResponse)

-- | The timestamp when you created the collector, in the following format:
-- @2022-01-24T19:04:02.596113Z@
collectorResponse_createdDate :: Lens.Lens' CollectorResponse (Prelude.Maybe Prelude.Text)
collectorResponse_createdDate = Lens.lens (\CollectorResponse' {createdDate} -> createdDate) (\s@CollectorResponse' {} a -> s {createdDate = a} :: CollectorResponse)

-- | The timestamp when DMS last modified the collector, in the following
-- format: @2022-01-24T19:04:02.596113Z@
collectorResponse_modifiedDate :: Lens.Lens' CollectorResponse (Prelude.Maybe Prelude.Text)
collectorResponse_modifiedDate = Lens.lens (\CollectorResponse' {modifiedDate} -> modifiedDate) (\s@CollectorResponse' {} a -> s {modifiedDate = a} :: CollectorResponse)

-- | The version of your Fleet Advisor collector, in semantic versioning
-- format, for example @1.0.2@
collectorResponse_collectorVersion :: Lens.Lens' CollectorResponse (Prelude.Maybe Prelude.Text)
collectorResponse_collectorVersion = Lens.lens (\CollectorResponse' {collectorVersion} -> collectorVersion) (\s@CollectorResponse' {} a -> s {collectorVersion = a} :: CollectorResponse)

instance Core.FromJSON CollectorResponse where
  parseJSON =
    Core.withObject
      "CollectorResponse"
      ( \x ->
          CollectorResponse'
            Prelude.<$> (x Core..:? "CollectorName")
            Prelude.<*> (x Core..:? "S3BucketName")
            Prelude.<*> (x Core..:? "VersionStatus")
            Prelude.<*> (x Core..:? "ServiceAccessRoleArn")
            Prelude.<*> (x Core..:? "InventoryData")
            Prelude.<*> (x Core..:? "Description")
            Prelude.<*> (x Core..:? "LastDataReceived")
            Prelude.<*> (x Core..:? "CollectorHealthCheck")
            Prelude.<*> (x Core..:? "CollectorReferencedId")
            Prelude.<*> (x Core..:? "RegisteredDate")
            Prelude.<*> (x Core..:? "CreatedDate")
            Prelude.<*> (x Core..:? "ModifiedDate")
            Prelude.<*> (x Core..:? "CollectorVersion")
      )

instance Prelude.Hashable CollectorResponse where
  hashWithSalt _salt CollectorResponse' {..} =
    _salt `Prelude.hashWithSalt` collectorName
      `Prelude.hashWithSalt` s3BucketName
      `Prelude.hashWithSalt` versionStatus
      `Prelude.hashWithSalt` serviceAccessRoleArn
      `Prelude.hashWithSalt` inventoryData
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` lastDataReceived
      `Prelude.hashWithSalt` collectorHealthCheck
      `Prelude.hashWithSalt` collectorReferencedId
      `Prelude.hashWithSalt` registeredDate
      `Prelude.hashWithSalt` createdDate
      `Prelude.hashWithSalt` modifiedDate
      `Prelude.hashWithSalt` collectorVersion

instance Prelude.NFData CollectorResponse where
  rnf CollectorResponse' {..} =
    Prelude.rnf collectorName
      `Prelude.seq` Prelude.rnf s3BucketName
      `Prelude.seq` Prelude.rnf versionStatus
      `Prelude.seq` Prelude.rnf serviceAccessRoleArn
      `Prelude.seq` Prelude.rnf inventoryData
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf lastDataReceived
      `Prelude.seq` Prelude.rnf collectorHealthCheck
      `Prelude.seq` Prelude.rnf collectorReferencedId
      `Prelude.seq` Prelude.rnf registeredDate
      `Prelude.seq` Prelude.rnf createdDate
      `Prelude.seq` Prelude.rnf modifiedDate
      `Prelude.seq` Prelude.rnf collectorVersion
