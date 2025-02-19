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
-- Module      : Amazonka.Kafka.Types.Cluster
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Kafka.Types.Cluster where

import qualified Amazonka.Core as Core
import Amazonka.Kafka.Types.ClusterState
import Amazonka.Kafka.Types.ClusterType
import Amazonka.Kafka.Types.Provisioned
import Amazonka.Kafka.Types.Serverless
import Amazonka.Kafka.Types.StateInfo
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Returns information about a cluster.
--
-- /See:/ 'newCluster' smart constructor.
data Cluster = Cluster'
  { -- | The Amazon Resource Name (ARN) that uniquely identifies the cluster.
    clusterArn :: Prelude.Maybe Prelude.Text,
    -- | Tags attached to the cluster.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | Information about the serverless cluster.
    serverless :: Prelude.Maybe Serverless,
    -- | State Info for the Amazon MSK cluster.
    stateInfo :: Prelude.Maybe StateInfo,
    -- | The state of the cluster. The possible states are ACTIVE, CREATING,
    -- DELETING, FAILED, HEALING, MAINTENANCE, REBOOTING_BROKER, and UPDATING.
    state :: Prelude.Maybe ClusterState,
    -- | The current version of the MSK cluster.
    currentVersion :: Prelude.Maybe Prelude.Text,
    -- | Information about the provisioned cluster.
    provisioned :: Prelude.Maybe Provisioned,
    -- | The time when the cluster was created.
    creationTime :: Prelude.Maybe Core.POSIX,
    -- | The Amazon Resource Name (ARN) that uniquely identifies a cluster
    -- operation.
    activeOperationArn :: Prelude.Maybe Prelude.Text,
    -- | Cluster Type.
    clusterType :: Prelude.Maybe ClusterType,
    -- | The name of the cluster.
    clusterName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Cluster' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clusterArn', 'cluster_clusterArn' - The Amazon Resource Name (ARN) that uniquely identifies the cluster.
--
-- 'tags', 'cluster_tags' - Tags attached to the cluster.
--
-- 'serverless', 'cluster_serverless' - Information about the serverless cluster.
--
-- 'stateInfo', 'cluster_stateInfo' - State Info for the Amazon MSK cluster.
--
-- 'state', 'cluster_state' - The state of the cluster. The possible states are ACTIVE, CREATING,
-- DELETING, FAILED, HEALING, MAINTENANCE, REBOOTING_BROKER, and UPDATING.
--
-- 'currentVersion', 'cluster_currentVersion' - The current version of the MSK cluster.
--
-- 'provisioned', 'cluster_provisioned' - Information about the provisioned cluster.
--
-- 'creationTime', 'cluster_creationTime' - The time when the cluster was created.
--
-- 'activeOperationArn', 'cluster_activeOperationArn' - The Amazon Resource Name (ARN) that uniquely identifies a cluster
-- operation.
--
-- 'clusterType', 'cluster_clusterType' - Cluster Type.
--
-- 'clusterName', 'cluster_clusterName' - The name of the cluster.
newCluster ::
  Cluster
newCluster =
  Cluster'
    { clusterArn = Prelude.Nothing,
      tags = Prelude.Nothing,
      serverless = Prelude.Nothing,
      stateInfo = Prelude.Nothing,
      state = Prelude.Nothing,
      currentVersion = Prelude.Nothing,
      provisioned = Prelude.Nothing,
      creationTime = Prelude.Nothing,
      activeOperationArn = Prelude.Nothing,
      clusterType = Prelude.Nothing,
      clusterName = Prelude.Nothing
    }

-- | The Amazon Resource Name (ARN) that uniquely identifies the cluster.
cluster_clusterArn :: Lens.Lens' Cluster (Prelude.Maybe Prelude.Text)
cluster_clusterArn = Lens.lens (\Cluster' {clusterArn} -> clusterArn) (\s@Cluster' {} a -> s {clusterArn = a} :: Cluster)

-- | Tags attached to the cluster.
cluster_tags :: Lens.Lens' Cluster (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
cluster_tags = Lens.lens (\Cluster' {tags} -> tags) (\s@Cluster' {} a -> s {tags = a} :: Cluster) Prelude.. Lens.mapping Lens.coerced

-- | Information about the serverless cluster.
cluster_serverless :: Lens.Lens' Cluster (Prelude.Maybe Serverless)
cluster_serverless = Lens.lens (\Cluster' {serverless} -> serverless) (\s@Cluster' {} a -> s {serverless = a} :: Cluster)

-- | State Info for the Amazon MSK cluster.
cluster_stateInfo :: Lens.Lens' Cluster (Prelude.Maybe StateInfo)
cluster_stateInfo = Lens.lens (\Cluster' {stateInfo} -> stateInfo) (\s@Cluster' {} a -> s {stateInfo = a} :: Cluster)

-- | The state of the cluster. The possible states are ACTIVE, CREATING,
-- DELETING, FAILED, HEALING, MAINTENANCE, REBOOTING_BROKER, and UPDATING.
cluster_state :: Lens.Lens' Cluster (Prelude.Maybe ClusterState)
cluster_state = Lens.lens (\Cluster' {state} -> state) (\s@Cluster' {} a -> s {state = a} :: Cluster)

-- | The current version of the MSK cluster.
cluster_currentVersion :: Lens.Lens' Cluster (Prelude.Maybe Prelude.Text)
cluster_currentVersion = Lens.lens (\Cluster' {currentVersion} -> currentVersion) (\s@Cluster' {} a -> s {currentVersion = a} :: Cluster)

-- | Information about the provisioned cluster.
cluster_provisioned :: Lens.Lens' Cluster (Prelude.Maybe Provisioned)
cluster_provisioned = Lens.lens (\Cluster' {provisioned} -> provisioned) (\s@Cluster' {} a -> s {provisioned = a} :: Cluster)

-- | The time when the cluster was created.
cluster_creationTime :: Lens.Lens' Cluster (Prelude.Maybe Prelude.UTCTime)
cluster_creationTime = Lens.lens (\Cluster' {creationTime} -> creationTime) (\s@Cluster' {} a -> s {creationTime = a} :: Cluster) Prelude.. Lens.mapping Core._Time

-- | The Amazon Resource Name (ARN) that uniquely identifies a cluster
-- operation.
cluster_activeOperationArn :: Lens.Lens' Cluster (Prelude.Maybe Prelude.Text)
cluster_activeOperationArn = Lens.lens (\Cluster' {activeOperationArn} -> activeOperationArn) (\s@Cluster' {} a -> s {activeOperationArn = a} :: Cluster)

-- | Cluster Type.
cluster_clusterType :: Lens.Lens' Cluster (Prelude.Maybe ClusterType)
cluster_clusterType = Lens.lens (\Cluster' {clusterType} -> clusterType) (\s@Cluster' {} a -> s {clusterType = a} :: Cluster)

-- | The name of the cluster.
cluster_clusterName :: Lens.Lens' Cluster (Prelude.Maybe Prelude.Text)
cluster_clusterName = Lens.lens (\Cluster' {clusterName} -> clusterName) (\s@Cluster' {} a -> s {clusterName = a} :: Cluster)

instance Core.FromJSON Cluster where
  parseJSON =
    Core.withObject
      "Cluster"
      ( \x ->
          Cluster'
            Prelude.<$> (x Core..:? "clusterArn")
            Prelude.<*> (x Core..:? "tags" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "serverless")
            Prelude.<*> (x Core..:? "stateInfo")
            Prelude.<*> (x Core..:? "state")
            Prelude.<*> (x Core..:? "currentVersion")
            Prelude.<*> (x Core..:? "provisioned")
            Prelude.<*> (x Core..:? "creationTime")
            Prelude.<*> (x Core..:? "activeOperationArn")
            Prelude.<*> (x Core..:? "clusterType")
            Prelude.<*> (x Core..:? "clusterName")
      )

instance Prelude.Hashable Cluster where
  hashWithSalt _salt Cluster' {..} =
    _salt `Prelude.hashWithSalt` clusterArn
      `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` serverless
      `Prelude.hashWithSalt` stateInfo
      `Prelude.hashWithSalt` state
      `Prelude.hashWithSalt` currentVersion
      `Prelude.hashWithSalt` provisioned
      `Prelude.hashWithSalt` creationTime
      `Prelude.hashWithSalt` activeOperationArn
      `Prelude.hashWithSalt` clusterType
      `Prelude.hashWithSalt` clusterName

instance Prelude.NFData Cluster where
  rnf Cluster' {..} =
    Prelude.rnf clusterArn
      `Prelude.seq` Prelude.rnf tags
      `Prelude.seq` Prelude.rnf serverless
      `Prelude.seq` Prelude.rnf stateInfo
      `Prelude.seq` Prelude.rnf state
      `Prelude.seq` Prelude.rnf currentVersion
      `Prelude.seq` Prelude.rnf provisioned
      `Prelude.seq` Prelude.rnf creationTime
      `Prelude.seq` Prelude.rnf activeOperationArn
      `Prelude.seq` Prelude.rnf clusterType
      `Prelude.seq` Prelude.rnf clusterName
