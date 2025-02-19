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
-- Module      : Amazonka.Lightsail.Types.RelationalDatabase
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Lightsail.Types.RelationalDatabase where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.Lightsail.Types.PendingMaintenanceAction
import Amazonka.Lightsail.Types.PendingModifiedRelationalDatabaseValues
import Amazonka.Lightsail.Types.RelationalDatabaseEndpoint
import Amazonka.Lightsail.Types.RelationalDatabaseHardware
import Amazonka.Lightsail.Types.ResourceLocation
import Amazonka.Lightsail.Types.ResourceType
import Amazonka.Lightsail.Types.Tag
import qualified Amazonka.Prelude as Prelude

-- | Describes a database.
--
-- /See:/ 'newRelationalDatabase' smart constructor.
data RelationalDatabase = RelationalDatabase'
  { -- | The bundle ID for the database. A bundle describes the performance
    -- specifications for your database.
    relationalDatabaseBundleId :: Prelude.Maybe Prelude.Text,
    -- | The tag keys and optional values for the resource. For more information
    -- about tags in Lightsail, see the
    -- <https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-tags Amazon Lightsail Developer Guide>.
    tags :: Prelude.Maybe [Tag],
    -- | The Lightsail resource type for the database (for example,
    -- @RelationalDatabase@).
    resourceType :: Prelude.Maybe ResourceType,
    -- | The unique name of the database resource in Lightsail.
    name :: Prelude.Maybe Prelude.Text,
    -- | The master user name of the database.
    masterUsername :: Prelude.Maybe Prelude.Text,
    -- | The daily time range during which automated backups are created for the
    -- database (for example, @16:00-16:30@).
    preferredBackupWindow :: Prelude.Maybe Prelude.Text,
    -- | A Boolean value indicating whether automated backup retention is enabled
    -- for the database.
    backupRetentionEnabled :: Prelude.Maybe Prelude.Bool,
    -- | Describes the secondary Availability Zone of a high availability
    -- database.
    --
    -- The secondary database is used for failover support of a high
    -- availability database.
    secondaryAvailabilityZone :: Prelude.Maybe Prelude.Text,
    -- | The blueprint ID for the database. A blueprint describes the major
    -- engine version of a database.
    relationalDatabaseBlueprintId :: Prelude.Maybe Prelude.Text,
    -- | The latest point in time to which the database can be restored.
    -- Formatted in Unix time.
    latestRestorableTime :: Prelude.Maybe Core.POSIX,
    -- | The name of the master database created when the Lightsail database
    -- resource is created.
    masterDatabaseName :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the database.
    arn :: Prelude.Maybe Prelude.Text,
    -- | Describes the current state of the database.
    state :: Prelude.Maybe Prelude.Text,
    -- | A Boolean value indicating whether the database is publicly accessible.
    publiclyAccessible :: Prelude.Maybe Prelude.Bool,
    -- | The status of parameter updates for the database.
    parameterApplyStatus :: Prelude.Maybe Prelude.Text,
    -- | The Region name and Availability Zone where the database is located.
    location :: Prelude.Maybe ResourceLocation,
    -- | Describes the hardware of the database.
    hardware :: Prelude.Maybe RelationalDatabaseHardware,
    -- | The master endpoint for the database.
    masterEndpoint :: Prelude.Maybe RelationalDatabaseEndpoint,
    -- | The certificate associated with the database.
    caCertificateIdentifier :: Prelude.Maybe Prelude.Text,
    -- | Describes the pending maintenance actions for the database.
    pendingMaintenanceActions :: Prelude.Maybe [PendingMaintenanceAction],
    -- | The database software (for example, @MySQL@).
    engine :: Prelude.Maybe Prelude.Text,
    -- | Describes pending database value modifications.
    pendingModifiedValues :: Prelude.Maybe PendingModifiedRelationalDatabaseValues,
    -- | The weekly time range during which system maintenance can occur on the
    -- database.
    --
    -- In the format @ddd:hh24:mi-ddd:hh24:mi@. For example,
    -- @Tue:17:00-Tue:17:30@.
    preferredMaintenanceWindow :: Prelude.Maybe Prelude.Text,
    -- | The support code for the database. Include this code in your email to
    -- support when you have questions about a database in Lightsail. This code
    -- enables our support team to look up your Lightsail information more
    -- easily.
    supportCode :: Prelude.Maybe Prelude.Text,
    -- | The timestamp when the database was created. Formatted in Unix time.
    createdAt :: Prelude.Maybe Core.POSIX,
    -- | The database engine version (for example, @5.7.23@).
    engineVersion :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RelationalDatabase' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'relationalDatabaseBundleId', 'relationalDatabase_relationalDatabaseBundleId' - The bundle ID for the database. A bundle describes the performance
-- specifications for your database.
--
-- 'tags', 'relationalDatabase_tags' - The tag keys and optional values for the resource. For more information
-- about tags in Lightsail, see the
-- <https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-tags Amazon Lightsail Developer Guide>.
--
-- 'resourceType', 'relationalDatabase_resourceType' - The Lightsail resource type for the database (for example,
-- @RelationalDatabase@).
--
-- 'name', 'relationalDatabase_name' - The unique name of the database resource in Lightsail.
--
-- 'masterUsername', 'relationalDatabase_masterUsername' - The master user name of the database.
--
-- 'preferredBackupWindow', 'relationalDatabase_preferredBackupWindow' - The daily time range during which automated backups are created for the
-- database (for example, @16:00-16:30@).
--
-- 'backupRetentionEnabled', 'relationalDatabase_backupRetentionEnabled' - A Boolean value indicating whether automated backup retention is enabled
-- for the database.
--
-- 'secondaryAvailabilityZone', 'relationalDatabase_secondaryAvailabilityZone' - Describes the secondary Availability Zone of a high availability
-- database.
--
-- The secondary database is used for failover support of a high
-- availability database.
--
-- 'relationalDatabaseBlueprintId', 'relationalDatabase_relationalDatabaseBlueprintId' - The blueprint ID for the database. A blueprint describes the major
-- engine version of a database.
--
-- 'latestRestorableTime', 'relationalDatabase_latestRestorableTime' - The latest point in time to which the database can be restored.
-- Formatted in Unix time.
--
-- 'masterDatabaseName', 'relationalDatabase_masterDatabaseName' - The name of the master database created when the Lightsail database
-- resource is created.
--
-- 'arn', 'relationalDatabase_arn' - The Amazon Resource Name (ARN) of the database.
--
-- 'state', 'relationalDatabase_state' - Describes the current state of the database.
--
-- 'publiclyAccessible', 'relationalDatabase_publiclyAccessible' - A Boolean value indicating whether the database is publicly accessible.
--
-- 'parameterApplyStatus', 'relationalDatabase_parameterApplyStatus' - The status of parameter updates for the database.
--
-- 'location', 'relationalDatabase_location' - The Region name and Availability Zone where the database is located.
--
-- 'hardware', 'relationalDatabase_hardware' - Describes the hardware of the database.
--
-- 'masterEndpoint', 'relationalDatabase_masterEndpoint' - The master endpoint for the database.
--
-- 'caCertificateIdentifier', 'relationalDatabase_caCertificateIdentifier' - The certificate associated with the database.
--
-- 'pendingMaintenanceActions', 'relationalDatabase_pendingMaintenanceActions' - Describes the pending maintenance actions for the database.
--
-- 'engine', 'relationalDatabase_engine' - The database software (for example, @MySQL@).
--
-- 'pendingModifiedValues', 'relationalDatabase_pendingModifiedValues' - Describes pending database value modifications.
--
-- 'preferredMaintenanceWindow', 'relationalDatabase_preferredMaintenanceWindow' - The weekly time range during which system maintenance can occur on the
-- database.
--
-- In the format @ddd:hh24:mi-ddd:hh24:mi@. For example,
-- @Tue:17:00-Tue:17:30@.
--
-- 'supportCode', 'relationalDatabase_supportCode' - The support code for the database. Include this code in your email to
-- support when you have questions about a database in Lightsail. This code
-- enables our support team to look up your Lightsail information more
-- easily.
--
-- 'createdAt', 'relationalDatabase_createdAt' - The timestamp when the database was created. Formatted in Unix time.
--
-- 'engineVersion', 'relationalDatabase_engineVersion' - The database engine version (for example, @5.7.23@).
newRelationalDatabase ::
  RelationalDatabase
newRelationalDatabase =
  RelationalDatabase'
    { relationalDatabaseBundleId =
        Prelude.Nothing,
      tags = Prelude.Nothing,
      resourceType = Prelude.Nothing,
      name = Prelude.Nothing,
      masterUsername = Prelude.Nothing,
      preferredBackupWindow = Prelude.Nothing,
      backupRetentionEnabled = Prelude.Nothing,
      secondaryAvailabilityZone = Prelude.Nothing,
      relationalDatabaseBlueprintId = Prelude.Nothing,
      latestRestorableTime = Prelude.Nothing,
      masterDatabaseName = Prelude.Nothing,
      arn = Prelude.Nothing,
      state = Prelude.Nothing,
      publiclyAccessible = Prelude.Nothing,
      parameterApplyStatus = Prelude.Nothing,
      location = Prelude.Nothing,
      hardware = Prelude.Nothing,
      masterEndpoint = Prelude.Nothing,
      caCertificateIdentifier = Prelude.Nothing,
      pendingMaintenanceActions = Prelude.Nothing,
      engine = Prelude.Nothing,
      pendingModifiedValues = Prelude.Nothing,
      preferredMaintenanceWindow = Prelude.Nothing,
      supportCode = Prelude.Nothing,
      createdAt = Prelude.Nothing,
      engineVersion = Prelude.Nothing
    }

-- | The bundle ID for the database. A bundle describes the performance
-- specifications for your database.
relationalDatabase_relationalDatabaseBundleId :: Lens.Lens' RelationalDatabase (Prelude.Maybe Prelude.Text)
relationalDatabase_relationalDatabaseBundleId = Lens.lens (\RelationalDatabase' {relationalDatabaseBundleId} -> relationalDatabaseBundleId) (\s@RelationalDatabase' {} a -> s {relationalDatabaseBundleId = a} :: RelationalDatabase)

-- | The tag keys and optional values for the resource. For more information
-- about tags in Lightsail, see the
-- <https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-tags Amazon Lightsail Developer Guide>.
relationalDatabase_tags :: Lens.Lens' RelationalDatabase (Prelude.Maybe [Tag])
relationalDatabase_tags = Lens.lens (\RelationalDatabase' {tags} -> tags) (\s@RelationalDatabase' {} a -> s {tags = a} :: RelationalDatabase) Prelude.. Lens.mapping Lens.coerced

-- | The Lightsail resource type for the database (for example,
-- @RelationalDatabase@).
relationalDatabase_resourceType :: Lens.Lens' RelationalDatabase (Prelude.Maybe ResourceType)
relationalDatabase_resourceType = Lens.lens (\RelationalDatabase' {resourceType} -> resourceType) (\s@RelationalDatabase' {} a -> s {resourceType = a} :: RelationalDatabase)

-- | The unique name of the database resource in Lightsail.
relationalDatabase_name :: Lens.Lens' RelationalDatabase (Prelude.Maybe Prelude.Text)
relationalDatabase_name = Lens.lens (\RelationalDatabase' {name} -> name) (\s@RelationalDatabase' {} a -> s {name = a} :: RelationalDatabase)

-- | The master user name of the database.
relationalDatabase_masterUsername :: Lens.Lens' RelationalDatabase (Prelude.Maybe Prelude.Text)
relationalDatabase_masterUsername = Lens.lens (\RelationalDatabase' {masterUsername} -> masterUsername) (\s@RelationalDatabase' {} a -> s {masterUsername = a} :: RelationalDatabase)

-- | The daily time range during which automated backups are created for the
-- database (for example, @16:00-16:30@).
relationalDatabase_preferredBackupWindow :: Lens.Lens' RelationalDatabase (Prelude.Maybe Prelude.Text)
relationalDatabase_preferredBackupWindow = Lens.lens (\RelationalDatabase' {preferredBackupWindow} -> preferredBackupWindow) (\s@RelationalDatabase' {} a -> s {preferredBackupWindow = a} :: RelationalDatabase)

-- | A Boolean value indicating whether automated backup retention is enabled
-- for the database.
relationalDatabase_backupRetentionEnabled :: Lens.Lens' RelationalDatabase (Prelude.Maybe Prelude.Bool)
relationalDatabase_backupRetentionEnabled = Lens.lens (\RelationalDatabase' {backupRetentionEnabled} -> backupRetentionEnabled) (\s@RelationalDatabase' {} a -> s {backupRetentionEnabled = a} :: RelationalDatabase)

-- | Describes the secondary Availability Zone of a high availability
-- database.
--
-- The secondary database is used for failover support of a high
-- availability database.
relationalDatabase_secondaryAvailabilityZone :: Lens.Lens' RelationalDatabase (Prelude.Maybe Prelude.Text)
relationalDatabase_secondaryAvailabilityZone = Lens.lens (\RelationalDatabase' {secondaryAvailabilityZone} -> secondaryAvailabilityZone) (\s@RelationalDatabase' {} a -> s {secondaryAvailabilityZone = a} :: RelationalDatabase)

-- | The blueprint ID for the database. A blueprint describes the major
-- engine version of a database.
relationalDatabase_relationalDatabaseBlueprintId :: Lens.Lens' RelationalDatabase (Prelude.Maybe Prelude.Text)
relationalDatabase_relationalDatabaseBlueprintId = Lens.lens (\RelationalDatabase' {relationalDatabaseBlueprintId} -> relationalDatabaseBlueprintId) (\s@RelationalDatabase' {} a -> s {relationalDatabaseBlueprintId = a} :: RelationalDatabase)

-- | The latest point in time to which the database can be restored.
-- Formatted in Unix time.
relationalDatabase_latestRestorableTime :: Lens.Lens' RelationalDatabase (Prelude.Maybe Prelude.UTCTime)
relationalDatabase_latestRestorableTime = Lens.lens (\RelationalDatabase' {latestRestorableTime} -> latestRestorableTime) (\s@RelationalDatabase' {} a -> s {latestRestorableTime = a} :: RelationalDatabase) Prelude.. Lens.mapping Core._Time

-- | The name of the master database created when the Lightsail database
-- resource is created.
relationalDatabase_masterDatabaseName :: Lens.Lens' RelationalDatabase (Prelude.Maybe Prelude.Text)
relationalDatabase_masterDatabaseName = Lens.lens (\RelationalDatabase' {masterDatabaseName} -> masterDatabaseName) (\s@RelationalDatabase' {} a -> s {masterDatabaseName = a} :: RelationalDatabase)

-- | The Amazon Resource Name (ARN) of the database.
relationalDatabase_arn :: Lens.Lens' RelationalDatabase (Prelude.Maybe Prelude.Text)
relationalDatabase_arn = Lens.lens (\RelationalDatabase' {arn} -> arn) (\s@RelationalDatabase' {} a -> s {arn = a} :: RelationalDatabase)

-- | Describes the current state of the database.
relationalDatabase_state :: Lens.Lens' RelationalDatabase (Prelude.Maybe Prelude.Text)
relationalDatabase_state = Lens.lens (\RelationalDatabase' {state} -> state) (\s@RelationalDatabase' {} a -> s {state = a} :: RelationalDatabase)

-- | A Boolean value indicating whether the database is publicly accessible.
relationalDatabase_publiclyAccessible :: Lens.Lens' RelationalDatabase (Prelude.Maybe Prelude.Bool)
relationalDatabase_publiclyAccessible = Lens.lens (\RelationalDatabase' {publiclyAccessible} -> publiclyAccessible) (\s@RelationalDatabase' {} a -> s {publiclyAccessible = a} :: RelationalDatabase)

-- | The status of parameter updates for the database.
relationalDatabase_parameterApplyStatus :: Lens.Lens' RelationalDatabase (Prelude.Maybe Prelude.Text)
relationalDatabase_parameterApplyStatus = Lens.lens (\RelationalDatabase' {parameterApplyStatus} -> parameterApplyStatus) (\s@RelationalDatabase' {} a -> s {parameterApplyStatus = a} :: RelationalDatabase)

-- | The Region name and Availability Zone where the database is located.
relationalDatabase_location :: Lens.Lens' RelationalDatabase (Prelude.Maybe ResourceLocation)
relationalDatabase_location = Lens.lens (\RelationalDatabase' {location} -> location) (\s@RelationalDatabase' {} a -> s {location = a} :: RelationalDatabase)

-- | Describes the hardware of the database.
relationalDatabase_hardware :: Lens.Lens' RelationalDatabase (Prelude.Maybe RelationalDatabaseHardware)
relationalDatabase_hardware = Lens.lens (\RelationalDatabase' {hardware} -> hardware) (\s@RelationalDatabase' {} a -> s {hardware = a} :: RelationalDatabase)

-- | The master endpoint for the database.
relationalDatabase_masterEndpoint :: Lens.Lens' RelationalDatabase (Prelude.Maybe RelationalDatabaseEndpoint)
relationalDatabase_masterEndpoint = Lens.lens (\RelationalDatabase' {masterEndpoint} -> masterEndpoint) (\s@RelationalDatabase' {} a -> s {masterEndpoint = a} :: RelationalDatabase)

-- | The certificate associated with the database.
relationalDatabase_caCertificateIdentifier :: Lens.Lens' RelationalDatabase (Prelude.Maybe Prelude.Text)
relationalDatabase_caCertificateIdentifier = Lens.lens (\RelationalDatabase' {caCertificateIdentifier} -> caCertificateIdentifier) (\s@RelationalDatabase' {} a -> s {caCertificateIdentifier = a} :: RelationalDatabase)

-- | Describes the pending maintenance actions for the database.
relationalDatabase_pendingMaintenanceActions :: Lens.Lens' RelationalDatabase (Prelude.Maybe [PendingMaintenanceAction])
relationalDatabase_pendingMaintenanceActions = Lens.lens (\RelationalDatabase' {pendingMaintenanceActions} -> pendingMaintenanceActions) (\s@RelationalDatabase' {} a -> s {pendingMaintenanceActions = a} :: RelationalDatabase) Prelude.. Lens.mapping Lens.coerced

-- | The database software (for example, @MySQL@).
relationalDatabase_engine :: Lens.Lens' RelationalDatabase (Prelude.Maybe Prelude.Text)
relationalDatabase_engine = Lens.lens (\RelationalDatabase' {engine} -> engine) (\s@RelationalDatabase' {} a -> s {engine = a} :: RelationalDatabase)

-- | Describes pending database value modifications.
relationalDatabase_pendingModifiedValues :: Lens.Lens' RelationalDatabase (Prelude.Maybe PendingModifiedRelationalDatabaseValues)
relationalDatabase_pendingModifiedValues = Lens.lens (\RelationalDatabase' {pendingModifiedValues} -> pendingModifiedValues) (\s@RelationalDatabase' {} a -> s {pendingModifiedValues = a} :: RelationalDatabase)

-- | The weekly time range during which system maintenance can occur on the
-- database.
--
-- In the format @ddd:hh24:mi-ddd:hh24:mi@. For example,
-- @Tue:17:00-Tue:17:30@.
relationalDatabase_preferredMaintenanceWindow :: Lens.Lens' RelationalDatabase (Prelude.Maybe Prelude.Text)
relationalDatabase_preferredMaintenanceWindow = Lens.lens (\RelationalDatabase' {preferredMaintenanceWindow} -> preferredMaintenanceWindow) (\s@RelationalDatabase' {} a -> s {preferredMaintenanceWindow = a} :: RelationalDatabase)

-- | The support code for the database. Include this code in your email to
-- support when you have questions about a database in Lightsail. This code
-- enables our support team to look up your Lightsail information more
-- easily.
relationalDatabase_supportCode :: Lens.Lens' RelationalDatabase (Prelude.Maybe Prelude.Text)
relationalDatabase_supportCode = Lens.lens (\RelationalDatabase' {supportCode} -> supportCode) (\s@RelationalDatabase' {} a -> s {supportCode = a} :: RelationalDatabase)

-- | The timestamp when the database was created. Formatted in Unix time.
relationalDatabase_createdAt :: Lens.Lens' RelationalDatabase (Prelude.Maybe Prelude.UTCTime)
relationalDatabase_createdAt = Lens.lens (\RelationalDatabase' {createdAt} -> createdAt) (\s@RelationalDatabase' {} a -> s {createdAt = a} :: RelationalDatabase) Prelude.. Lens.mapping Core._Time

-- | The database engine version (for example, @5.7.23@).
relationalDatabase_engineVersion :: Lens.Lens' RelationalDatabase (Prelude.Maybe Prelude.Text)
relationalDatabase_engineVersion = Lens.lens (\RelationalDatabase' {engineVersion} -> engineVersion) (\s@RelationalDatabase' {} a -> s {engineVersion = a} :: RelationalDatabase)

instance Core.FromJSON RelationalDatabase where
  parseJSON =
    Core.withObject
      "RelationalDatabase"
      ( \x ->
          RelationalDatabase'
            Prelude.<$> (x Core..:? "relationalDatabaseBundleId")
            Prelude.<*> (x Core..:? "tags" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "resourceType")
            Prelude.<*> (x Core..:? "name")
            Prelude.<*> (x Core..:? "masterUsername")
            Prelude.<*> (x Core..:? "preferredBackupWindow")
            Prelude.<*> (x Core..:? "backupRetentionEnabled")
            Prelude.<*> (x Core..:? "secondaryAvailabilityZone")
            Prelude.<*> (x Core..:? "relationalDatabaseBlueprintId")
            Prelude.<*> (x Core..:? "latestRestorableTime")
            Prelude.<*> (x Core..:? "masterDatabaseName")
            Prelude.<*> (x Core..:? "arn")
            Prelude.<*> (x Core..:? "state")
            Prelude.<*> (x Core..:? "publiclyAccessible")
            Prelude.<*> (x Core..:? "parameterApplyStatus")
            Prelude.<*> (x Core..:? "location")
            Prelude.<*> (x Core..:? "hardware")
            Prelude.<*> (x Core..:? "masterEndpoint")
            Prelude.<*> (x Core..:? "caCertificateIdentifier")
            Prelude.<*> ( x Core..:? "pendingMaintenanceActions"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "engine")
            Prelude.<*> (x Core..:? "pendingModifiedValues")
            Prelude.<*> (x Core..:? "preferredMaintenanceWindow")
            Prelude.<*> (x Core..:? "supportCode")
            Prelude.<*> (x Core..:? "createdAt")
            Prelude.<*> (x Core..:? "engineVersion")
      )

instance Prelude.Hashable RelationalDatabase where
  hashWithSalt _salt RelationalDatabase' {..} =
    _salt
      `Prelude.hashWithSalt` relationalDatabaseBundleId
      `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` resourceType
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` masterUsername
      `Prelude.hashWithSalt` preferredBackupWindow
      `Prelude.hashWithSalt` backupRetentionEnabled
      `Prelude.hashWithSalt` secondaryAvailabilityZone
      `Prelude.hashWithSalt` relationalDatabaseBlueprintId
      `Prelude.hashWithSalt` latestRestorableTime
      `Prelude.hashWithSalt` masterDatabaseName
      `Prelude.hashWithSalt` arn
      `Prelude.hashWithSalt` state
      `Prelude.hashWithSalt` publiclyAccessible
      `Prelude.hashWithSalt` parameterApplyStatus
      `Prelude.hashWithSalt` location
      `Prelude.hashWithSalt` hardware
      `Prelude.hashWithSalt` masterEndpoint
      `Prelude.hashWithSalt` caCertificateIdentifier
      `Prelude.hashWithSalt` pendingMaintenanceActions
      `Prelude.hashWithSalt` engine
      `Prelude.hashWithSalt` pendingModifiedValues
      `Prelude.hashWithSalt` preferredMaintenanceWindow
      `Prelude.hashWithSalt` supportCode
      `Prelude.hashWithSalt` createdAt
      `Prelude.hashWithSalt` engineVersion

instance Prelude.NFData RelationalDatabase where
  rnf RelationalDatabase' {..} =
    Prelude.rnf relationalDatabaseBundleId
      `Prelude.seq` Prelude.rnf tags
      `Prelude.seq` Prelude.rnf resourceType
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf masterUsername
      `Prelude.seq` Prelude.rnf preferredBackupWindow
      `Prelude.seq` Prelude.rnf backupRetentionEnabled
      `Prelude.seq` Prelude.rnf secondaryAvailabilityZone
      `Prelude.seq` Prelude.rnf relationalDatabaseBlueprintId
      `Prelude.seq` Prelude.rnf latestRestorableTime
      `Prelude.seq` Prelude.rnf masterDatabaseName
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf state
      `Prelude.seq` Prelude.rnf publiclyAccessible
      `Prelude.seq` Prelude.rnf parameterApplyStatus
      `Prelude.seq` Prelude.rnf location
      `Prelude.seq` Prelude.rnf hardware
      `Prelude.seq` Prelude.rnf masterEndpoint
      `Prelude.seq` Prelude.rnf
        caCertificateIdentifier
      `Prelude.seq` Prelude.rnf
        pendingMaintenanceActions
      `Prelude.seq` Prelude.rnf engine
      `Prelude.seq` Prelude.rnf
        pendingModifiedValues
      `Prelude.seq` Prelude.rnf
        preferredMaintenanceWindow
      `Prelude.seq` Prelude.rnf
        supportCode
      `Prelude.seq` Prelude.rnf
        createdAt
      `Prelude.seq` Prelude.rnf
        engineVersion
