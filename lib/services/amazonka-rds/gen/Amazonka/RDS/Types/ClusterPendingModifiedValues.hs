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
-- Module      : Amazonka.RDS.Types.ClusterPendingModifiedValues
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.RDS.Types.ClusterPendingModifiedValues where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.RDS.Types.PendingCloudwatchLogsExports

-- | This data type is used as a response element in the @ModifyDBCluster@
-- operation and contains changes that will be applied during the next
-- maintenance window.
--
-- /See:/ 'newClusterPendingModifiedValues' smart constructor.
data ClusterPendingModifiedValues = ClusterPendingModifiedValues'
  { -- | The DBClusterIdentifier value for the DB cluster.
    dbClusterIdentifier :: Prelude.Maybe Prelude.Text,
    pendingCloudwatchLogsExports :: Prelude.Maybe PendingCloudwatchLogsExports,
    -- | The master credentials for the DB cluster.
    masterUserPassword :: Prelude.Maybe Prelude.Text,
    -- | A value that indicates whether mapping of Amazon Web Services Identity
    -- and Access Management (IAM) accounts to database accounts is enabled.
    iAMDatabaseAuthenticationEnabled :: Prelude.Maybe Prelude.Bool,
    -- | The database engine version.
    engineVersion :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ClusterPendingModifiedValues' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dbClusterIdentifier', 'clusterPendingModifiedValues_dbClusterIdentifier' - The DBClusterIdentifier value for the DB cluster.
--
-- 'pendingCloudwatchLogsExports', 'clusterPendingModifiedValues_pendingCloudwatchLogsExports' - Undocumented member.
--
-- 'masterUserPassword', 'clusterPendingModifiedValues_masterUserPassword' - The master credentials for the DB cluster.
--
-- 'iAMDatabaseAuthenticationEnabled', 'clusterPendingModifiedValues_iAMDatabaseAuthenticationEnabled' - A value that indicates whether mapping of Amazon Web Services Identity
-- and Access Management (IAM) accounts to database accounts is enabled.
--
-- 'engineVersion', 'clusterPendingModifiedValues_engineVersion' - The database engine version.
newClusterPendingModifiedValues ::
  ClusterPendingModifiedValues
newClusterPendingModifiedValues =
  ClusterPendingModifiedValues'
    { dbClusterIdentifier =
        Prelude.Nothing,
      pendingCloudwatchLogsExports =
        Prelude.Nothing,
      masterUserPassword = Prelude.Nothing,
      iAMDatabaseAuthenticationEnabled =
        Prelude.Nothing,
      engineVersion = Prelude.Nothing
    }

-- | The DBClusterIdentifier value for the DB cluster.
clusterPendingModifiedValues_dbClusterIdentifier :: Lens.Lens' ClusterPendingModifiedValues (Prelude.Maybe Prelude.Text)
clusterPendingModifiedValues_dbClusterIdentifier = Lens.lens (\ClusterPendingModifiedValues' {dbClusterIdentifier} -> dbClusterIdentifier) (\s@ClusterPendingModifiedValues' {} a -> s {dbClusterIdentifier = a} :: ClusterPendingModifiedValues)

-- | Undocumented member.
clusterPendingModifiedValues_pendingCloudwatchLogsExports :: Lens.Lens' ClusterPendingModifiedValues (Prelude.Maybe PendingCloudwatchLogsExports)
clusterPendingModifiedValues_pendingCloudwatchLogsExports = Lens.lens (\ClusterPendingModifiedValues' {pendingCloudwatchLogsExports} -> pendingCloudwatchLogsExports) (\s@ClusterPendingModifiedValues' {} a -> s {pendingCloudwatchLogsExports = a} :: ClusterPendingModifiedValues)

-- | The master credentials for the DB cluster.
clusterPendingModifiedValues_masterUserPassword :: Lens.Lens' ClusterPendingModifiedValues (Prelude.Maybe Prelude.Text)
clusterPendingModifiedValues_masterUserPassword = Lens.lens (\ClusterPendingModifiedValues' {masterUserPassword} -> masterUserPassword) (\s@ClusterPendingModifiedValues' {} a -> s {masterUserPassword = a} :: ClusterPendingModifiedValues)

-- | A value that indicates whether mapping of Amazon Web Services Identity
-- and Access Management (IAM) accounts to database accounts is enabled.
clusterPendingModifiedValues_iAMDatabaseAuthenticationEnabled :: Lens.Lens' ClusterPendingModifiedValues (Prelude.Maybe Prelude.Bool)
clusterPendingModifiedValues_iAMDatabaseAuthenticationEnabled = Lens.lens (\ClusterPendingModifiedValues' {iAMDatabaseAuthenticationEnabled} -> iAMDatabaseAuthenticationEnabled) (\s@ClusterPendingModifiedValues' {} a -> s {iAMDatabaseAuthenticationEnabled = a} :: ClusterPendingModifiedValues)

-- | The database engine version.
clusterPendingModifiedValues_engineVersion :: Lens.Lens' ClusterPendingModifiedValues (Prelude.Maybe Prelude.Text)
clusterPendingModifiedValues_engineVersion = Lens.lens (\ClusterPendingModifiedValues' {engineVersion} -> engineVersion) (\s@ClusterPendingModifiedValues' {} a -> s {engineVersion = a} :: ClusterPendingModifiedValues)

instance Core.FromXML ClusterPendingModifiedValues where
  parseXML x =
    ClusterPendingModifiedValues'
      Prelude.<$> (x Core..@? "DBClusterIdentifier")
      Prelude.<*> (x Core..@? "PendingCloudwatchLogsExports")
      Prelude.<*> (x Core..@? "MasterUserPassword")
      Prelude.<*> (x Core..@? "IAMDatabaseAuthenticationEnabled")
      Prelude.<*> (x Core..@? "EngineVersion")

instance
  Prelude.Hashable
    ClusterPendingModifiedValues
  where
  hashWithSalt _salt ClusterPendingModifiedValues' {..} =
    _salt `Prelude.hashWithSalt` dbClusterIdentifier
      `Prelude.hashWithSalt` pendingCloudwatchLogsExports
      `Prelude.hashWithSalt` masterUserPassword
      `Prelude.hashWithSalt` iAMDatabaseAuthenticationEnabled
      `Prelude.hashWithSalt` engineVersion

instance Prelude.NFData ClusterPendingModifiedValues where
  rnf ClusterPendingModifiedValues' {..} =
    Prelude.rnf dbClusterIdentifier
      `Prelude.seq` Prelude.rnf pendingCloudwatchLogsExports
      `Prelude.seq` Prelude.rnf masterUserPassword
      `Prelude.seq` Prelude.rnf iAMDatabaseAuthenticationEnabled
      `Prelude.seq` Prelude.rnf engineVersion
