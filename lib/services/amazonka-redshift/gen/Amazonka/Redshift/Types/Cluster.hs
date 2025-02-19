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
-- Module      : Amazonka.Redshift.Types.Cluster
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Redshift.Types.Cluster where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.Redshift.Internal
import Amazonka.Redshift.Types.AquaConfiguration
import Amazonka.Redshift.Types.ClusterIamRole
import Amazonka.Redshift.Types.ClusterNode
import Amazonka.Redshift.Types.ClusterParameterGroupStatus
import Amazonka.Redshift.Types.ClusterSecurityGroupMembership
import Amazonka.Redshift.Types.ClusterSnapshotCopyStatus
import Amazonka.Redshift.Types.DataTransferProgress
import Amazonka.Redshift.Types.DeferredMaintenanceWindow
import Amazonka.Redshift.Types.ElasticIpStatus
import Amazonka.Redshift.Types.Endpoint
import Amazonka.Redshift.Types.HsmStatus
import Amazonka.Redshift.Types.PendingModifiedValues
import Amazonka.Redshift.Types.ReservedNodeExchangeStatus
import Amazonka.Redshift.Types.ResizeInfo
import Amazonka.Redshift.Types.RestoreStatus
import Amazonka.Redshift.Types.ScheduleState
import Amazonka.Redshift.Types.Tag
import Amazonka.Redshift.Types.VpcSecurityGroupMembership

-- | Describes a cluster.
--
-- /See:/ 'newCluster' smart constructor.
data Cluster = Cluster'
  { -- | The list of tags for the cluster.
    tags :: Prelude.Maybe [Tag],
    -- | The unique identifier of the cluster.
    clusterIdentifier :: Prelude.Maybe Prelude.Text,
    -- | The AQUA (Advanced Query Accelerator) configuration of the cluster.
    aquaConfiguration :: Prelude.Maybe AquaConfiguration,
    -- | The public key for the cluster.
    clusterPublicKey :: Prelude.Maybe Prelude.Text,
    -- | The default number of days to retain a manual snapshot. If the value is
    -- -1, the snapshot is retained indefinitely. This setting doesn\'t change
    -- the retention period of existing snapshots.
    --
    -- The value must be either -1 or an integer between 1 and 3,653.
    manualSnapshotRetentionPeriod :: Prelude.Maybe Prelude.Int,
    -- | The admin user name for the cluster. This name is used to connect to the
    -- database that is specified in the __DBName__ parameter.
    masterUsername :: Prelude.Maybe Prelude.Text,
    -- | Describes the status of the Availability Zone relocation operation.
    availabilityZoneRelocationStatus :: Prelude.Maybe Prelude.Text,
    -- | The list of cluster parameter groups that are associated with this
    -- cluster. Each parameter group in the list is returned with its status.
    clusterParameterGroups :: Prelude.Maybe [ClusterParameterGroupStatus],
    -- | A boolean value that, if @true@, indicates that major version upgrades
    -- will be applied automatically to the cluster during the maintenance
    -- window.
    allowVersionUpgrade :: Prelude.Maybe Prelude.Bool,
    -- | The status of next expected snapshot for clusters having a valid
    -- snapshot schedule and backups enabled. Possible values are the
    -- following:
    --
    -- -   OnTrack - The next snapshot is expected to be taken on time.
    --
    -- -   Pending - The next snapshot is pending to be taken.
    expectedNextSnapshotScheduleTimeStatus :: Prelude.Maybe Prelude.Text,
    -- | The name of the subnet group that is associated with the cluster. This
    -- parameter is valid only when the cluster is in a VPC.
    clusterSubnetGroupName :: Prelude.Maybe Prelude.Text,
    -- | A unique identifier for the cluster snapshot schedule.
    snapshotScheduleIdentifier :: Prelude.Maybe Prelude.Text,
    -- | The date and time in UTC when system maintenance can begin.
    nextMaintenanceWindowStartTime :: Prelude.Maybe Core.ISO8601,
    -- | The status of the elastic IP (EIP) address.
    elasticIpStatus :: Prelude.Maybe ElasticIpStatus,
    -- | The nodes in the cluster.
    clusterNodes :: Prelude.Maybe [ClusterNode],
    -- | The version ID of the Amazon Redshift engine that is running on the
    -- cluster.
    clusterVersion :: Prelude.Maybe Prelude.Text,
    -- | Cluster operations that are waiting to be started.
    pendingActions :: Prelude.Maybe [Prelude.Text],
    -- | The specific revision number of the database in the cluster.
    clusterRevisionNumber :: Prelude.Maybe Prelude.Text,
    -- | The name of the maintenance track for the cluster.
    maintenanceTrackName :: Prelude.Maybe Prelude.Text,
    -- | A list of Identity and Access Management (IAM) roles that can be used by
    -- the cluster to access other Amazon Web Services services.
    iamRoles :: Prelude.Maybe [ClusterIamRole],
    -- | The name of the Availability Zone in which the cluster is located.
    availabilityZone :: Prelude.Maybe Prelude.Text,
    -- | The node type for the nodes in the cluster.
    nodeType :: Prelude.Maybe Prelude.Text,
    -- | A boolean value that, if @true@, indicates that the cluster can be
    -- accessed from a public network.
    publiclyAccessible :: Prelude.Maybe Prelude.Bool,
    -- | The status of a modify operation, if any, initiated for the cluster.
    modifyStatus :: Prelude.Maybe Prelude.Text,
    -- | A value that returns the destination region and retention period that
    -- are configured for cross-region snapshot copy.
    clusterSnapshotCopyStatus :: Prelude.Maybe ClusterSnapshotCopyStatus,
    -- | The namespace Amazon Resource Name (ARN) of the cluster.
    clusterNamespaceArn :: Prelude.Maybe Prelude.Text,
    -- | The current state of the cluster snapshot schedule.
    snapshotScheduleState :: Prelude.Maybe ScheduleState,
    -- | A value that reports whether the Amazon Redshift cluster has finished
    -- applying any hardware security module (HSM) settings changes specified
    -- in a modify cluster command.
    --
    -- Values: active, applying
    hsmStatus :: Prelude.Maybe HsmStatus,
    -- | The current state of the cluster. Possible values are the following:
    --
    -- -   @available@
    --
    -- -   @available, prep-for-resize@
    --
    -- -   @available, resize-cleanup@
    --
    -- -   @cancelling-resize@
    --
    -- -   @creating@
    --
    -- -   @deleting@
    --
    -- -   @final-snapshot@
    --
    -- -   @hardware-failure@
    --
    -- -   @incompatible-hsm@
    --
    -- -   @incompatible-network@
    --
    -- -   @incompatible-parameters@
    --
    -- -   @incompatible-restore@
    --
    -- -   @modifying@
    --
    -- -   @paused@
    --
    -- -   @rebooting@
    --
    -- -   @renaming@
    --
    -- -   @resizing@
    --
    -- -   @rotating-keys@
    --
    -- -   @storage-full@
    --
    -- -   @updating-hsm@
    clusterStatus :: Prelude.Maybe Prelude.Text,
    -- | Returns the following:
    --
    -- -   AllowCancelResize: a boolean value indicating if the resize
    --     operation can be cancelled.
    --
    -- -   ResizeType: Returns ClassicResize
    resizeInfo :: Prelude.Maybe ResizeInfo,
    -- | Describes a group of @DeferredMaintenanceWindow@ objects.
    deferredMaintenanceWindows :: Prelude.Maybe [DeferredMaintenanceWindow],
    -- | A boolean value that, if @true@, indicates that data in the cluster is
    -- encrypted at rest.
    encrypted :: Prelude.Maybe Prelude.Bool,
    dataTransferProgress :: Prelude.Maybe DataTransferProgress,
    -- | The number of compute nodes in the cluster.
    numberOfNodes :: Prelude.Maybe Prelude.Int,
    -- | The Key Management Service (KMS) key ID of the encryption key used to
    -- encrypt data in the cluster.
    kmsKeyId :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) for the IAM role set as default for the
    -- cluster.
    defaultIamRoleArn :: Prelude.Maybe Prelude.Text,
    -- | The date and time when the next snapshot is expected to be taken for
    -- clusters with a valid snapshot schedule and backups enabled.
    expectedNextSnapshotScheduleTime :: Prelude.Maybe Core.ISO8601,
    -- | The number of nodes that you can resize the cluster to with the elastic
    -- resize method.
    elasticResizeNumberOfNodeOptions :: Prelude.Maybe Prelude.Text,
    -- | A value that, if present, indicates that changes to the cluster are
    -- pending. Specific pending changes are identified by subelements.
    pendingModifiedValues :: Prelude.Maybe PendingModifiedValues,
    -- | An option that specifies whether to create the cluster with enhanced VPC
    -- routing enabled. To create a cluster that uses enhanced VPC routing, the
    -- cluster must be in a VPC. For more information, see
    -- <https://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html Enhanced VPC Routing>
    -- in the Amazon Redshift Cluster Management Guide.
    --
    -- If this option is @true@, enhanced VPC routing is enabled.
    --
    -- Default: false
    enhancedVpcRouting :: Prelude.Maybe Prelude.Bool,
    -- | The weekly time range, in Universal Coordinated Time (UTC), during which
    -- system maintenance can occur.
    preferredMaintenanceWindow :: Prelude.Maybe Prelude.Text,
    -- | A list of cluster security group that are associated with the cluster.
    -- Each security group is represented by an element that contains
    -- @ClusterSecurityGroup.Name@ and @ClusterSecurityGroup.Status@
    -- subelements.
    --
    -- Cluster security groups are used when the cluster is not created in an
    -- Amazon Virtual Private Cloud (VPC). Clusters that are created in a VPC
    -- use VPC security groups, which are listed by the __VpcSecurityGroups__
    -- parameter.
    clusterSecurityGroups :: Prelude.Maybe [ClusterSecurityGroupMembership],
    -- | The connection endpoint.
    endpoint :: Prelude.Maybe Endpoint,
    -- | The identifier of the VPC the cluster is in, if the cluster is in a VPC.
    vpcId :: Prelude.Maybe Prelude.Text,
    -- | The number of days that automatic cluster snapshots are retained.
    automatedSnapshotRetentionPeriod :: Prelude.Maybe Prelude.Int,
    -- | The date and time that the cluster was created.
    clusterCreateTime :: Prelude.Maybe Core.ISO8601,
    -- | The status of the reserved-node exchange request. Statuses include
    -- in-progress and requested.
    reservedNodeExchangeStatus :: Prelude.Maybe ReservedNodeExchangeStatus,
    -- | The total storage capacity of the cluster in megabytes.
    totalStorageCapacityInMegaBytes :: Prelude.Maybe Prelude.Integer,
    -- | The name of the initial database that was created when the cluster was
    -- created. This same name is returned for the life of the cluster. If an
    -- initial database was not specified, a database named @dev@dev was
    -- created by default.
    dbName :: Prelude.Maybe Prelude.Text,
    -- | A value that describes the status of a cluster restore action. This
    -- parameter returns null if the cluster was not created by restoring a
    -- snapshot.
    restoreStatus :: Prelude.Maybe RestoreStatus,
    -- | The availability status of the cluster for queries. Possible values are
    -- the following:
    --
    -- -   Available - The cluster is available for queries.
    --
    -- -   Unavailable - The cluster is not available for queries.
    --
    -- -   Maintenance - The cluster is intermittently available for queries
    --     due to maintenance activities.
    --
    -- -   Modifying - The cluster is intermittently available for queries due
    --     to changes that modify the cluster.
    --
    -- -   Failed - The cluster failed and is not available for queries.
    clusterAvailabilityStatus :: Prelude.Maybe Prelude.Text,
    -- | A list of Amazon Virtual Private Cloud (Amazon VPC) security groups that
    -- are associated with the cluster. This parameter is returned only if the
    -- cluster is in a VPC.
    vpcSecurityGroups :: Prelude.Maybe [VpcSecurityGroupMembership]
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
-- 'tags', 'cluster_tags' - The list of tags for the cluster.
--
-- 'clusterIdentifier', 'cluster_clusterIdentifier' - The unique identifier of the cluster.
--
-- 'aquaConfiguration', 'cluster_aquaConfiguration' - The AQUA (Advanced Query Accelerator) configuration of the cluster.
--
-- 'clusterPublicKey', 'cluster_clusterPublicKey' - The public key for the cluster.
--
-- 'manualSnapshotRetentionPeriod', 'cluster_manualSnapshotRetentionPeriod' - The default number of days to retain a manual snapshot. If the value is
-- -1, the snapshot is retained indefinitely. This setting doesn\'t change
-- the retention period of existing snapshots.
--
-- The value must be either -1 or an integer between 1 and 3,653.
--
-- 'masterUsername', 'cluster_masterUsername' - The admin user name for the cluster. This name is used to connect to the
-- database that is specified in the __DBName__ parameter.
--
-- 'availabilityZoneRelocationStatus', 'cluster_availabilityZoneRelocationStatus' - Describes the status of the Availability Zone relocation operation.
--
-- 'clusterParameterGroups', 'cluster_clusterParameterGroups' - The list of cluster parameter groups that are associated with this
-- cluster. Each parameter group in the list is returned with its status.
--
-- 'allowVersionUpgrade', 'cluster_allowVersionUpgrade' - A boolean value that, if @true@, indicates that major version upgrades
-- will be applied automatically to the cluster during the maintenance
-- window.
--
-- 'expectedNextSnapshotScheduleTimeStatus', 'cluster_expectedNextSnapshotScheduleTimeStatus' - The status of next expected snapshot for clusters having a valid
-- snapshot schedule and backups enabled. Possible values are the
-- following:
--
-- -   OnTrack - The next snapshot is expected to be taken on time.
--
-- -   Pending - The next snapshot is pending to be taken.
--
-- 'clusterSubnetGroupName', 'cluster_clusterSubnetGroupName' - The name of the subnet group that is associated with the cluster. This
-- parameter is valid only when the cluster is in a VPC.
--
-- 'snapshotScheduleIdentifier', 'cluster_snapshotScheduleIdentifier' - A unique identifier for the cluster snapshot schedule.
--
-- 'nextMaintenanceWindowStartTime', 'cluster_nextMaintenanceWindowStartTime' - The date and time in UTC when system maintenance can begin.
--
-- 'elasticIpStatus', 'cluster_elasticIpStatus' - The status of the elastic IP (EIP) address.
--
-- 'clusterNodes', 'cluster_clusterNodes' - The nodes in the cluster.
--
-- 'clusterVersion', 'cluster_clusterVersion' - The version ID of the Amazon Redshift engine that is running on the
-- cluster.
--
-- 'pendingActions', 'cluster_pendingActions' - Cluster operations that are waiting to be started.
--
-- 'clusterRevisionNumber', 'cluster_clusterRevisionNumber' - The specific revision number of the database in the cluster.
--
-- 'maintenanceTrackName', 'cluster_maintenanceTrackName' - The name of the maintenance track for the cluster.
--
-- 'iamRoles', 'cluster_iamRoles' - A list of Identity and Access Management (IAM) roles that can be used by
-- the cluster to access other Amazon Web Services services.
--
-- 'availabilityZone', 'cluster_availabilityZone' - The name of the Availability Zone in which the cluster is located.
--
-- 'nodeType', 'cluster_nodeType' - The node type for the nodes in the cluster.
--
-- 'publiclyAccessible', 'cluster_publiclyAccessible' - A boolean value that, if @true@, indicates that the cluster can be
-- accessed from a public network.
--
-- 'modifyStatus', 'cluster_modifyStatus' - The status of a modify operation, if any, initiated for the cluster.
--
-- 'clusterSnapshotCopyStatus', 'cluster_clusterSnapshotCopyStatus' - A value that returns the destination region and retention period that
-- are configured for cross-region snapshot copy.
--
-- 'clusterNamespaceArn', 'cluster_clusterNamespaceArn' - The namespace Amazon Resource Name (ARN) of the cluster.
--
-- 'snapshotScheduleState', 'cluster_snapshotScheduleState' - The current state of the cluster snapshot schedule.
--
-- 'hsmStatus', 'cluster_hsmStatus' - A value that reports whether the Amazon Redshift cluster has finished
-- applying any hardware security module (HSM) settings changes specified
-- in a modify cluster command.
--
-- Values: active, applying
--
-- 'clusterStatus', 'cluster_clusterStatus' - The current state of the cluster. Possible values are the following:
--
-- -   @available@
--
-- -   @available, prep-for-resize@
--
-- -   @available, resize-cleanup@
--
-- -   @cancelling-resize@
--
-- -   @creating@
--
-- -   @deleting@
--
-- -   @final-snapshot@
--
-- -   @hardware-failure@
--
-- -   @incompatible-hsm@
--
-- -   @incompatible-network@
--
-- -   @incompatible-parameters@
--
-- -   @incompatible-restore@
--
-- -   @modifying@
--
-- -   @paused@
--
-- -   @rebooting@
--
-- -   @renaming@
--
-- -   @resizing@
--
-- -   @rotating-keys@
--
-- -   @storage-full@
--
-- -   @updating-hsm@
--
-- 'resizeInfo', 'cluster_resizeInfo' - Returns the following:
--
-- -   AllowCancelResize: a boolean value indicating if the resize
--     operation can be cancelled.
--
-- -   ResizeType: Returns ClassicResize
--
-- 'deferredMaintenanceWindows', 'cluster_deferredMaintenanceWindows' - Describes a group of @DeferredMaintenanceWindow@ objects.
--
-- 'encrypted', 'cluster_encrypted' - A boolean value that, if @true@, indicates that data in the cluster is
-- encrypted at rest.
--
-- 'dataTransferProgress', 'cluster_dataTransferProgress' -
--
-- 'numberOfNodes', 'cluster_numberOfNodes' - The number of compute nodes in the cluster.
--
-- 'kmsKeyId', 'cluster_kmsKeyId' - The Key Management Service (KMS) key ID of the encryption key used to
-- encrypt data in the cluster.
--
-- 'defaultIamRoleArn', 'cluster_defaultIamRoleArn' - The Amazon Resource Name (ARN) for the IAM role set as default for the
-- cluster.
--
-- 'expectedNextSnapshotScheduleTime', 'cluster_expectedNextSnapshotScheduleTime' - The date and time when the next snapshot is expected to be taken for
-- clusters with a valid snapshot schedule and backups enabled.
--
-- 'elasticResizeNumberOfNodeOptions', 'cluster_elasticResizeNumberOfNodeOptions' - The number of nodes that you can resize the cluster to with the elastic
-- resize method.
--
-- 'pendingModifiedValues', 'cluster_pendingModifiedValues' - A value that, if present, indicates that changes to the cluster are
-- pending. Specific pending changes are identified by subelements.
--
-- 'enhancedVpcRouting', 'cluster_enhancedVpcRouting' - An option that specifies whether to create the cluster with enhanced VPC
-- routing enabled. To create a cluster that uses enhanced VPC routing, the
-- cluster must be in a VPC. For more information, see
-- <https://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html Enhanced VPC Routing>
-- in the Amazon Redshift Cluster Management Guide.
--
-- If this option is @true@, enhanced VPC routing is enabled.
--
-- Default: false
--
-- 'preferredMaintenanceWindow', 'cluster_preferredMaintenanceWindow' - The weekly time range, in Universal Coordinated Time (UTC), during which
-- system maintenance can occur.
--
-- 'clusterSecurityGroups', 'cluster_clusterSecurityGroups' - A list of cluster security group that are associated with the cluster.
-- Each security group is represented by an element that contains
-- @ClusterSecurityGroup.Name@ and @ClusterSecurityGroup.Status@
-- subelements.
--
-- Cluster security groups are used when the cluster is not created in an
-- Amazon Virtual Private Cloud (VPC). Clusters that are created in a VPC
-- use VPC security groups, which are listed by the __VpcSecurityGroups__
-- parameter.
--
-- 'endpoint', 'cluster_endpoint' - The connection endpoint.
--
-- 'vpcId', 'cluster_vpcId' - The identifier of the VPC the cluster is in, if the cluster is in a VPC.
--
-- 'automatedSnapshotRetentionPeriod', 'cluster_automatedSnapshotRetentionPeriod' - The number of days that automatic cluster snapshots are retained.
--
-- 'clusterCreateTime', 'cluster_clusterCreateTime' - The date and time that the cluster was created.
--
-- 'reservedNodeExchangeStatus', 'cluster_reservedNodeExchangeStatus' - The status of the reserved-node exchange request. Statuses include
-- in-progress and requested.
--
-- 'totalStorageCapacityInMegaBytes', 'cluster_totalStorageCapacityInMegaBytes' - The total storage capacity of the cluster in megabytes.
--
-- 'dbName', 'cluster_dbName' - The name of the initial database that was created when the cluster was
-- created. This same name is returned for the life of the cluster. If an
-- initial database was not specified, a database named @dev@dev was
-- created by default.
--
-- 'restoreStatus', 'cluster_restoreStatus' - A value that describes the status of a cluster restore action. This
-- parameter returns null if the cluster was not created by restoring a
-- snapshot.
--
-- 'clusterAvailabilityStatus', 'cluster_clusterAvailabilityStatus' - The availability status of the cluster for queries. Possible values are
-- the following:
--
-- -   Available - The cluster is available for queries.
--
-- -   Unavailable - The cluster is not available for queries.
--
-- -   Maintenance - The cluster is intermittently available for queries
--     due to maintenance activities.
--
-- -   Modifying - The cluster is intermittently available for queries due
--     to changes that modify the cluster.
--
-- -   Failed - The cluster failed and is not available for queries.
--
-- 'vpcSecurityGroups', 'cluster_vpcSecurityGroups' - A list of Amazon Virtual Private Cloud (Amazon VPC) security groups that
-- are associated with the cluster. This parameter is returned only if the
-- cluster is in a VPC.
newCluster ::
  Cluster
newCluster =
  Cluster'
    { tags = Prelude.Nothing,
      clusterIdentifier = Prelude.Nothing,
      aquaConfiguration = Prelude.Nothing,
      clusterPublicKey = Prelude.Nothing,
      manualSnapshotRetentionPeriod = Prelude.Nothing,
      masterUsername = Prelude.Nothing,
      availabilityZoneRelocationStatus = Prelude.Nothing,
      clusterParameterGroups = Prelude.Nothing,
      allowVersionUpgrade = Prelude.Nothing,
      expectedNextSnapshotScheduleTimeStatus =
        Prelude.Nothing,
      clusterSubnetGroupName = Prelude.Nothing,
      snapshotScheduleIdentifier = Prelude.Nothing,
      nextMaintenanceWindowStartTime = Prelude.Nothing,
      elasticIpStatus = Prelude.Nothing,
      clusterNodes = Prelude.Nothing,
      clusterVersion = Prelude.Nothing,
      pendingActions = Prelude.Nothing,
      clusterRevisionNumber = Prelude.Nothing,
      maintenanceTrackName = Prelude.Nothing,
      iamRoles = Prelude.Nothing,
      availabilityZone = Prelude.Nothing,
      nodeType = Prelude.Nothing,
      publiclyAccessible = Prelude.Nothing,
      modifyStatus = Prelude.Nothing,
      clusterSnapshotCopyStatus = Prelude.Nothing,
      clusterNamespaceArn = Prelude.Nothing,
      snapshotScheduleState = Prelude.Nothing,
      hsmStatus = Prelude.Nothing,
      clusterStatus = Prelude.Nothing,
      resizeInfo = Prelude.Nothing,
      deferredMaintenanceWindows = Prelude.Nothing,
      encrypted = Prelude.Nothing,
      dataTransferProgress = Prelude.Nothing,
      numberOfNodes = Prelude.Nothing,
      kmsKeyId = Prelude.Nothing,
      defaultIamRoleArn = Prelude.Nothing,
      expectedNextSnapshotScheduleTime = Prelude.Nothing,
      elasticResizeNumberOfNodeOptions = Prelude.Nothing,
      pendingModifiedValues = Prelude.Nothing,
      enhancedVpcRouting = Prelude.Nothing,
      preferredMaintenanceWindow = Prelude.Nothing,
      clusterSecurityGroups = Prelude.Nothing,
      endpoint = Prelude.Nothing,
      vpcId = Prelude.Nothing,
      automatedSnapshotRetentionPeriod = Prelude.Nothing,
      clusterCreateTime = Prelude.Nothing,
      reservedNodeExchangeStatus = Prelude.Nothing,
      totalStorageCapacityInMegaBytes = Prelude.Nothing,
      dbName = Prelude.Nothing,
      restoreStatus = Prelude.Nothing,
      clusterAvailabilityStatus = Prelude.Nothing,
      vpcSecurityGroups = Prelude.Nothing
    }

-- | The list of tags for the cluster.
cluster_tags :: Lens.Lens' Cluster (Prelude.Maybe [Tag])
cluster_tags = Lens.lens (\Cluster' {tags} -> tags) (\s@Cluster' {} a -> s {tags = a} :: Cluster) Prelude.. Lens.mapping Lens.coerced

-- | The unique identifier of the cluster.
cluster_clusterIdentifier :: Lens.Lens' Cluster (Prelude.Maybe Prelude.Text)
cluster_clusterIdentifier = Lens.lens (\Cluster' {clusterIdentifier} -> clusterIdentifier) (\s@Cluster' {} a -> s {clusterIdentifier = a} :: Cluster)

-- | The AQUA (Advanced Query Accelerator) configuration of the cluster.
cluster_aquaConfiguration :: Lens.Lens' Cluster (Prelude.Maybe AquaConfiguration)
cluster_aquaConfiguration = Lens.lens (\Cluster' {aquaConfiguration} -> aquaConfiguration) (\s@Cluster' {} a -> s {aquaConfiguration = a} :: Cluster)

-- | The public key for the cluster.
cluster_clusterPublicKey :: Lens.Lens' Cluster (Prelude.Maybe Prelude.Text)
cluster_clusterPublicKey = Lens.lens (\Cluster' {clusterPublicKey} -> clusterPublicKey) (\s@Cluster' {} a -> s {clusterPublicKey = a} :: Cluster)

-- | The default number of days to retain a manual snapshot. If the value is
-- -1, the snapshot is retained indefinitely. This setting doesn\'t change
-- the retention period of existing snapshots.
--
-- The value must be either -1 or an integer between 1 and 3,653.
cluster_manualSnapshotRetentionPeriod :: Lens.Lens' Cluster (Prelude.Maybe Prelude.Int)
cluster_manualSnapshotRetentionPeriod = Lens.lens (\Cluster' {manualSnapshotRetentionPeriod} -> manualSnapshotRetentionPeriod) (\s@Cluster' {} a -> s {manualSnapshotRetentionPeriod = a} :: Cluster)

-- | The admin user name for the cluster. This name is used to connect to the
-- database that is specified in the __DBName__ parameter.
cluster_masterUsername :: Lens.Lens' Cluster (Prelude.Maybe Prelude.Text)
cluster_masterUsername = Lens.lens (\Cluster' {masterUsername} -> masterUsername) (\s@Cluster' {} a -> s {masterUsername = a} :: Cluster)

-- | Describes the status of the Availability Zone relocation operation.
cluster_availabilityZoneRelocationStatus :: Lens.Lens' Cluster (Prelude.Maybe Prelude.Text)
cluster_availabilityZoneRelocationStatus = Lens.lens (\Cluster' {availabilityZoneRelocationStatus} -> availabilityZoneRelocationStatus) (\s@Cluster' {} a -> s {availabilityZoneRelocationStatus = a} :: Cluster)

-- | The list of cluster parameter groups that are associated with this
-- cluster. Each parameter group in the list is returned with its status.
cluster_clusterParameterGroups :: Lens.Lens' Cluster (Prelude.Maybe [ClusterParameterGroupStatus])
cluster_clusterParameterGroups = Lens.lens (\Cluster' {clusterParameterGroups} -> clusterParameterGroups) (\s@Cluster' {} a -> s {clusterParameterGroups = a} :: Cluster) Prelude.. Lens.mapping Lens.coerced

-- | A boolean value that, if @true@, indicates that major version upgrades
-- will be applied automatically to the cluster during the maintenance
-- window.
cluster_allowVersionUpgrade :: Lens.Lens' Cluster (Prelude.Maybe Prelude.Bool)
cluster_allowVersionUpgrade = Lens.lens (\Cluster' {allowVersionUpgrade} -> allowVersionUpgrade) (\s@Cluster' {} a -> s {allowVersionUpgrade = a} :: Cluster)

-- | The status of next expected snapshot for clusters having a valid
-- snapshot schedule and backups enabled. Possible values are the
-- following:
--
-- -   OnTrack - The next snapshot is expected to be taken on time.
--
-- -   Pending - The next snapshot is pending to be taken.
cluster_expectedNextSnapshotScheduleTimeStatus :: Lens.Lens' Cluster (Prelude.Maybe Prelude.Text)
cluster_expectedNextSnapshotScheduleTimeStatus = Lens.lens (\Cluster' {expectedNextSnapshotScheduleTimeStatus} -> expectedNextSnapshotScheduleTimeStatus) (\s@Cluster' {} a -> s {expectedNextSnapshotScheduleTimeStatus = a} :: Cluster)

-- | The name of the subnet group that is associated with the cluster. This
-- parameter is valid only when the cluster is in a VPC.
cluster_clusterSubnetGroupName :: Lens.Lens' Cluster (Prelude.Maybe Prelude.Text)
cluster_clusterSubnetGroupName = Lens.lens (\Cluster' {clusterSubnetGroupName} -> clusterSubnetGroupName) (\s@Cluster' {} a -> s {clusterSubnetGroupName = a} :: Cluster)

-- | A unique identifier for the cluster snapshot schedule.
cluster_snapshotScheduleIdentifier :: Lens.Lens' Cluster (Prelude.Maybe Prelude.Text)
cluster_snapshotScheduleIdentifier = Lens.lens (\Cluster' {snapshotScheduleIdentifier} -> snapshotScheduleIdentifier) (\s@Cluster' {} a -> s {snapshotScheduleIdentifier = a} :: Cluster)

-- | The date and time in UTC when system maintenance can begin.
cluster_nextMaintenanceWindowStartTime :: Lens.Lens' Cluster (Prelude.Maybe Prelude.UTCTime)
cluster_nextMaintenanceWindowStartTime = Lens.lens (\Cluster' {nextMaintenanceWindowStartTime} -> nextMaintenanceWindowStartTime) (\s@Cluster' {} a -> s {nextMaintenanceWindowStartTime = a} :: Cluster) Prelude.. Lens.mapping Core._Time

-- | The status of the elastic IP (EIP) address.
cluster_elasticIpStatus :: Lens.Lens' Cluster (Prelude.Maybe ElasticIpStatus)
cluster_elasticIpStatus = Lens.lens (\Cluster' {elasticIpStatus} -> elasticIpStatus) (\s@Cluster' {} a -> s {elasticIpStatus = a} :: Cluster)

-- | The nodes in the cluster.
cluster_clusterNodes :: Lens.Lens' Cluster (Prelude.Maybe [ClusterNode])
cluster_clusterNodes = Lens.lens (\Cluster' {clusterNodes} -> clusterNodes) (\s@Cluster' {} a -> s {clusterNodes = a} :: Cluster) Prelude.. Lens.mapping Lens.coerced

-- | The version ID of the Amazon Redshift engine that is running on the
-- cluster.
cluster_clusterVersion :: Lens.Lens' Cluster (Prelude.Maybe Prelude.Text)
cluster_clusterVersion = Lens.lens (\Cluster' {clusterVersion} -> clusterVersion) (\s@Cluster' {} a -> s {clusterVersion = a} :: Cluster)

-- | Cluster operations that are waiting to be started.
cluster_pendingActions :: Lens.Lens' Cluster (Prelude.Maybe [Prelude.Text])
cluster_pendingActions = Lens.lens (\Cluster' {pendingActions} -> pendingActions) (\s@Cluster' {} a -> s {pendingActions = a} :: Cluster) Prelude.. Lens.mapping Lens.coerced

-- | The specific revision number of the database in the cluster.
cluster_clusterRevisionNumber :: Lens.Lens' Cluster (Prelude.Maybe Prelude.Text)
cluster_clusterRevisionNumber = Lens.lens (\Cluster' {clusterRevisionNumber} -> clusterRevisionNumber) (\s@Cluster' {} a -> s {clusterRevisionNumber = a} :: Cluster)

-- | The name of the maintenance track for the cluster.
cluster_maintenanceTrackName :: Lens.Lens' Cluster (Prelude.Maybe Prelude.Text)
cluster_maintenanceTrackName = Lens.lens (\Cluster' {maintenanceTrackName} -> maintenanceTrackName) (\s@Cluster' {} a -> s {maintenanceTrackName = a} :: Cluster)

-- | A list of Identity and Access Management (IAM) roles that can be used by
-- the cluster to access other Amazon Web Services services.
cluster_iamRoles :: Lens.Lens' Cluster (Prelude.Maybe [ClusterIamRole])
cluster_iamRoles = Lens.lens (\Cluster' {iamRoles} -> iamRoles) (\s@Cluster' {} a -> s {iamRoles = a} :: Cluster) Prelude.. Lens.mapping Lens.coerced

-- | The name of the Availability Zone in which the cluster is located.
cluster_availabilityZone :: Lens.Lens' Cluster (Prelude.Maybe Prelude.Text)
cluster_availabilityZone = Lens.lens (\Cluster' {availabilityZone} -> availabilityZone) (\s@Cluster' {} a -> s {availabilityZone = a} :: Cluster)

-- | The node type for the nodes in the cluster.
cluster_nodeType :: Lens.Lens' Cluster (Prelude.Maybe Prelude.Text)
cluster_nodeType = Lens.lens (\Cluster' {nodeType} -> nodeType) (\s@Cluster' {} a -> s {nodeType = a} :: Cluster)

-- | A boolean value that, if @true@, indicates that the cluster can be
-- accessed from a public network.
cluster_publiclyAccessible :: Lens.Lens' Cluster (Prelude.Maybe Prelude.Bool)
cluster_publiclyAccessible = Lens.lens (\Cluster' {publiclyAccessible} -> publiclyAccessible) (\s@Cluster' {} a -> s {publiclyAccessible = a} :: Cluster)

-- | The status of a modify operation, if any, initiated for the cluster.
cluster_modifyStatus :: Lens.Lens' Cluster (Prelude.Maybe Prelude.Text)
cluster_modifyStatus = Lens.lens (\Cluster' {modifyStatus} -> modifyStatus) (\s@Cluster' {} a -> s {modifyStatus = a} :: Cluster)

-- | A value that returns the destination region and retention period that
-- are configured for cross-region snapshot copy.
cluster_clusterSnapshotCopyStatus :: Lens.Lens' Cluster (Prelude.Maybe ClusterSnapshotCopyStatus)
cluster_clusterSnapshotCopyStatus = Lens.lens (\Cluster' {clusterSnapshotCopyStatus} -> clusterSnapshotCopyStatus) (\s@Cluster' {} a -> s {clusterSnapshotCopyStatus = a} :: Cluster)

-- | The namespace Amazon Resource Name (ARN) of the cluster.
cluster_clusterNamespaceArn :: Lens.Lens' Cluster (Prelude.Maybe Prelude.Text)
cluster_clusterNamespaceArn = Lens.lens (\Cluster' {clusterNamespaceArn} -> clusterNamespaceArn) (\s@Cluster' {} a -> s {clusterNamespaceArn = a} :: Cluster)

-- | The current state of the cluster snapshot schedule.
cluster_snapshotScheduleState :: Lens.Lens' Cluster (Prelude.Maybe ScheduleState)
cluster_snapshotScheduleState = Lens.lens (\Cluster' {snapshotScheduleState} -> snapshotScheduleState) (\s@Cluster' {} a -> s {snapshotScheduleState = a} :: Cluster)

-- | A value that reports whether the Amazon Redshift cluster has finished
-- applying any hardware security module (HSM) settings changes specified
-- in a modify cluster command.
--
-- Values: active, applying
cluster_hsmStatus :: Lens.Lens' Cluster (Prelude.Maybe HsmStatus)
cluster_hsmStatus = Lens.lens (\Cluster' {hsmStatus} -> hsmStatus) (\s@Cluster' {} a -> s {hsmStatus = a} :: Cluster)

-- | The current state of the cluster. Possible values are the following:
--
-- -   @available@
--
-- -   @available, prep-for-resize@
--
-- -   @available, resize-cleanup@
--
-- -   @cancelling-resize@
--
-- -   @creating@
--
-- -   @deleting@
--
-- -   @final-snapshot@
--
-- -   @hardware-failure@
--
-- -   @incompatible-hsm@
--
-- -   @incompatible-network@
--
-- -   @incompatible-parameters@
--
-- -   @incompatible-restore@
--
-- -   @modifying@
--
-- -   @paused@
--
-- -   @rebooting@
--
-- -   @renaming@
--
-- -   @resizing@
--
-- -   @rotating-keys@
--
-- -   @storage-full@
--
-- -   @updating-hsm@
cluster_clusterStatus :: Lens.Lens' Cluster (Prelude.Maybe Prelude.Text)
cluster_clusterStatus = Lens.lens (\Cluster' {clusterStatus} -> clusterStatus) (\s@Cluster' {} a -> s {clusterStatus = a} :: Cluster)

-- | Returns the following:
--
-- -   AllowCancelResize: a boolean value indicating if the resize
--     operation can be cancelled.
--
-- -   ResizeType: Returns ClassicResize
cluster_resizeInfo :: Lens.Lens' Cluster (Prelude.Maybe ResizeInfo)
cluster_resizeInfo = Lens.lens (\Cluster' {resizeInfo} -> resizeInfo) (\s@Cluster' {} a -> s {resizeInfo = a} :: Cluster)

-- | Describes a group of @DeferredMaintenanceWindow@ objects.
cluster_deferredMaintenanceWindows :: Lens.Lens' Cluster (Prelude.Maybe [DeferredMaintenanceWindow])
cluster_deferredMaintenanceWindows = Lens.lens (\Cluster' {deferredMaintenanceWindows} -> deferredMaintenanceWindows) (\s@Cluster' {} a -> s {deferredMaintenanceWindows = a} :: Cluster) Prelude.. Lens.mapping Lens.coerced

-- | A boolean value that, if @true@, indicates that data in the cluster is
-- encrypted at rest.
cluster_encrypted :: Lens.Lens' Cluster (Prelude.Maybe Prelude.Bool)
cluster_encrypted = Lens.lens (\Cluster' {encrypted} -> encrypted) (\s@Cluster' {} a -> s {encrypted = a} :: Cluster)

-- |
cluster_dataTransferProgress :: Lens.Lens' Cluster (Prelude.Maybe DataTransferProgress)
cluster_dataTransferProgress = Lens.lens (\Cluster' {dataTransferProgress} -> dataTransferProgress) (\s@Cluster' {} a -> s {dataTransferProgress = a} :: Cluster)

-- | The number of compute nodes in the cluster.
cluster_numberOfNodes :: Lens.Lens' Cluster (Prelude.Maybe Prelude.Int)
cluster_numberOfNodes = Lens.lens (\Cluster' {numberOfNodes} -> numberOfNodes) (\s@Cluster' {} a -> s {numberOfNodes = a} :: Cluster)

-- | The Key Management Service (KMS) key ID of the encryption key used to
-- encrypt data in the cluster.
cluster_kmsKeyId :: Lens.Lens' Cluster (Prelude.Maybe Prelude.Text)
cluster_kmsKeyId = Lens.lens (\Cluster' {kmsKeyId} -> kmsKeyId) (\s@Cluster' {} a -> s {kmsKeyId = a} :: Cluster)

-- | The Amazon Resource Name (ARN) for the IAM role set as default for the
-- cluster.
cluster_defaultIamRoleArn :: Lens.Lens' Cluster (Prelude.Maybe Prelude.Text)
cluster_defaultIamRoleArn = Lens.lens (\Cluster' {defaultIamRoleArn} -> defaultIamRoleArn) (\s@Cluster' {} a -> s {defaultIamRoleArn = a} :: Cluster)

-- | The date and time when the next snapshot is expected to be taken for
-- clusters with a valid snapshot schedule and backups enabled.
cluster_expectedNextSnapshotScheduleTime :: Lens.Lens' Cluster (Prelude.Maybe Prelude.UTCTime)
cluster_expectedNextSnapshotScheduleTime = Lens.lens (\Cluster' {expectedNextSnapshotScheduleTime} -> expectedNextSnapshotScheduleTime) (\s@Cluster' {} a -> s {expectedNextSnapshotScheduleTime = a} :: Cluster) Prelude.. Lens.mapping Core._Time

-- | The number of nodes that you can resize the cluster to with the elastic
-- resize method.
cluster_elasticResizeNumberOfNodeOptions :: Lens.Lens' Cluster (Prelude.Maybe Prelude.Text)
cluster_elasticResizeNumberOfNodeOptions = Lens.lens (\Cluster' {elasticResizeNumberOfNodeOptions} -> elasticResizeNumberOfNodeOptions) (\s@Cluster' {} a -> s {elasticResizeNumberOfNodeOptions = a} :: Cluster)

-- | A value that, if present, indicates that changes to the cluster are
-- pending. Specific pending changes are identified by subelements.
cluster_pendingModifiedValues :: Lens.Lens' Cluster (Prelude.Maybe PendingModifiedValues)
cluster_pendingModifiedValues = Lens.lens (\Cluster' {pendingModifiedValues} -> pendingModifiedValues) (\s@Cluster' {} a -> s {pendingModifiedValues = a} :: Cluster)

-- | An option that specifies whether to create the cluster with enhanced VPC
-- routing enabled. To create a cluster that uses enhanced VPC routing, the
-- cluster must be in a VPC. For more information, see
-- <https://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html Enhanced VPC Routing>
-- in the Amazon Redshift Cluster Management Guide.
--
-- If this option is @true@, enhanced VPC routing is enabled.
--
-- Default: false
cluster_enhancedVpcRouting :: Lens.Lens' Cluster (Prelude.Maybe Prelude.Bool)
cluster_enhancedVpcRouting = Lens.lens (\Cluster' {enhancedVpcRouting} -> enhancedVpcRouting) (\s@Cluster' {} a -> s {enhancedVpcRouting = a} :: Cluster)

-- | The weekly time range, in Universal Coordinated Time (UTC), during which
-- system maintenance can occur.
cluster_preferredMaintenanceWindow :: Lens.Lens' Cluster (Prelude.Maybe Prelude.Text)
cluster_preferredMaintenanceWindow = Lens.lens (\Cluster' {preferredMaintenanceWindow} -> preferredMaintenanceWindow) (\s@Cluster' {} a -> s {preferredMaintenanceWindow = a} :: Cluster)

-- | A list of cluster security group that are associated with the cluster.
-- Each security group is represented by an element that contains
-- @ClusterSecurityGroup.Name@ and @ClusterSecurityGroup.Status@
-- subelements.
--
-- Cluster security groups are used when the cluster is not created in an
-- Amazon Virtual Private Cloud (VPC). Clusters that are created in a VPC
-- use VPC security groups, which are listed by the __VpcSecurityGroups__
-- parameter.
cluster_clusterSecurityGroups :: Lens.Lens' Cluster (Prelude.Maybe [ClusterSecurityGroupMembership])
cluster_clusterSecurityGroups = Lens.lens (\Cluster' {clusterSecurityGroups} -> clusterSecurityGroups) (\s@Cluster' {} a -> s {clusterSecurityGroups = a} :: Cluster) Prelude.. Lens.mapping Lens.coerced

-- | The connection endpoint.
cluster_endpoint :: Lens.Lens' Cluster (Prelude.Maybe Endpoint)
cluster_endpoint = Lens.lens (\Cluster' {endpoint} -> endpoint) (\s@Cluster' {} a -> s {endpoint = a} :: Cluster)

-- | The identifier of the VPC the cluster is in, if the cluster is in a VPC.
cluster_vpcId :: Lens.Lens' Cluster (Prelude.Maybe Prelude.Text)
cluster_vpcId = Lens.lens (\Cluster' {vpcId} -> vpcId) (\s@Cluster' {} a -> s {vpcId = a} :: Cluster)

-- | The number of days that automatic cluster snapshots are retained.
cluster_automatedSnapshotRetentionPeriod :: Lens.Lens' Cluster (Prelude.Maybe Prelude.Int)
cluster_automatedSnapshotRetentionPeriod = Lens.lens (\Cluster' {automatedSnapshotRetentionPeriod} -> automatedSnapshotRetentionPeriod) (\s@Cluster' {} a -> s {automatedSnapshotRetentionPeriod = a} :: Cluster)

-- | The date and time that the cluster was created.
cluster_clusterCreateTime :: Lens.Lens' Cluster (Prelude.Maybe Prelude.UTCTime)
cluster_clusterCreateTime = Lens.lens (\Cluster' {clusterCreateTime} -> clusterCreateTime) (\s@Cluster' {} a -> s {clusterCreateTime = a} :: Cluster) Prelude.. Lens.mapping Core._Time

-- | The status of the reserved-node exchange request. Statuses include
-- in-progress and requested.
cluster_reservedNodeExchangeStatus :: Lens.Lens' Cluster (Prelude.Maybe ReservedNodeExchangeStatus)
cluster_reservedNodeExchangeStatus = Lens.lens (\Cluster' {reservedNodeExchangeStatus} -> reservedNodeExchangeStatus) (\s@Cluster' {} a -> s {reservedNodeExchangeStatus = a} :: Cluster)

-- | The total storage capacity of the cluster in megabytes.
cluster_totalStorageCapacityInMegaBytes :: Lens.Lens' Cluster (Prelude.Maybe Prelude.Integer)
cluster_totalStorageCapacityInMegaBytes = Lens.lens (\Cluster' {totalStorageCapacityInMegaBytes} -> totalStorageCapacityInMegaBytes) (\s@Cluster' {} a -> s {totalStorageCapacityInMegaBytes = a} :: Cluster)

-- | The name of the initial database that was created when the cluster was
-- created. This same name is returned for the life of the cluster. If an
-- initial database was not specified, a database named @dev@dev was
-- created by default.
cluster_dbName :: Lens.Lens' Cluster (Prelude.Maybe Prelude.Text)
cluster_dbName = Lens.lens (\Cluster' {dbName} -> dbName) (\s@Cluster' {} a -> s {dbName = a} :: Cluster)

-- | A value that describes the status of a cluster restore action. This
-- parameter returns null if the cluster was not created by restoring a
-- snapshot.
cluster_restoreStatus :: Lens.Lens' Cluster (Prelude.Maybe RestoreStatus)
cluster_restoreStatus = Lens.lens (\Cluster' {restoreStatus} -> restoreStatus) (\s@Cluster' {} a -> s {restoreStatus = a} :: Cluster)

-- | The availability status of the cluster for queries. Possible values are
-- the following:
--
-- -   Available - The cluster is available for queries.
--
-- -   Unavailable - The cluster is not available for queries.
--
-- -   Maintenance - The cluster is intermittently available for queries
--     due to maintenance activities.
--
-- -   Modifying - The cluster is intermittently available for queries due
--     to changes that modify the cluster.
--
-- -   Failed - The cluster failed and is not available for queries.
cluster_clusterAvailabilityStatus :: Lens.Lens' Cluster (Prelude.Maybe Prelude.Text)
cluster_clusterAvailabilityStatus = Lens.lens (\Cluster' {clusterAvailabilityStatus} -> clusterAvailabilityStatus) (\s@Cluster' {} a -> s {clusterAvailabilityStatus = a} :: Cluster)

-- | A list of Amazon Virtual Private Cloud (Amazon VPC) security groups that
-- are associated with the cluster. This parameter is returned only if the
-- cluster is in a VPC.
cluster_vpcSecurityGroups :: Lens.Lens' Cluster (Prelude.Maybe [VpcSecurityGroupMembership])
cluster_vpcSecurityGroups = Lens.lens (\Cluster' {vpcSecurityGroups} -> vpcSecurityGroups) (\s@Cluster' {} a -> s {vpcSecurityGroups = a} :: Cluster) Prelude.. Lens.mapping Lens.coerced

instance Core.FromXML Cluster where
  parseXML x =
    Cluster'
      Prelude.<$> ( x Core..@? "Tags" Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "Tag")
                  )
      Prelude.<*> (x Core..@? "ClusterIdentifier")
      Prelude.<*> (x Core..@? "AquaConfiguration")
      Prelude.<*> (x Core..@? "ClusterPublicKey")
      Prelude.<*> (x Core..@? "ManualSnapshotRetentionPeriod")
      Prelude.<*> (x Core..@? "MasterUsername")
      Prelude.<*> (x Core..@? "AvailabilityZoneRelocationStatus")
      Prelude.<*> ( x Core..@? "ClusterParameterGroups"
                      Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "ClusterParameterGroup")
                  )
      Prelude.<*> (x Core..@? "AllowVersionUpgrade")
      Prelude.<*> (x Core..@? "ExpectedNextSnapshotScheduleTimeStatus")
      Prelude.<*> (x Core..@? "ClusterSubnetGroupName")
      Prelude.<*> (x Core..@? "SnapshotScheduleIdentifier")
      Prelude.<*> (x Core..@? "NextMaintenanceWindowStartTime")
      Prelude.<*> (x Core..@? "ElasticIpStatus")
      Prelude.<*> ( x Core..@? "ClusterNodes" Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "member")
                  )
      Prelude.<*> (x Core..@? "ClusterVersion")
      Prelude.<*> ( x Core..@? "PendingActions" Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "member")
                  )
      Prelude.<*> (x Core..@? "ClusterRevisionNumber")
      Prelude.<*> (x Core..@? "MaintenanceTrackName")
      Prelude.<*> ( x Core..@? "IamRoles" Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "ClusterIamRole")
                  )
      Prelude.<*> (x Core..@? "AvailabilityZone")
      Prelude.<*> (x Core..@? "NodeType")
      Prelude.<*> (x Core..@? "PubliclyAccessible")
      Prelude.<*> (x Core..@? "ModifyStatus")
      Prelude.<*> (x Core..@? "ClusterSnapshotCopyStatus")
      Prelude.<*> (x Core..@? "ClusterNamespaceArn")
      Prelude.<*> (x Core..@? "SnapshotScheduleState")
      Prelude.<*> (x Core..@? "HsmStatus")
      Prelude.<*> (x Core..@? "ClusterStatus")
      Prelude.<*> (x Core..@? "ResizeInfo")
      Prelude.<*> ( x Core..@? "DeferredMaintenanceWindows"
                      Core..!@ Prelude.mempty
                      Prelude.>>= Core.may
                        (Core.parseXMLList "DeferredMaintenanceWindow")
                  )
      Prelude.<*> (x Core..@? "Encrypted")
      Prelude.<*> (x Core..@? "DataTransferProgress")
      Prelude.<*> (x Core..@? "NumberOfNodes")
      Prelude.<*> (x Core..@? "KmsKeyId")
      Prelude.<*> (x Core..@? "DefaultIamRoleArn")
      Prelude.<*> (x Core..@? "ExpectedNextSnapshotScheduleTime")
      Prelude.<*> (x Core..@? "ElasticResizeNumberOfNodeOptions")
      Prelude.<*> (x Core..@? "PendingModifiedValues")
      Prelude.<*> (x Core..@? "EnhancedVpcRouting")
      Prelude.<*> (x Core..@? "PreferredMaintenanceWindow")
      Prelude.<*> ( x Core..@? "ClusterSecurityGroups"
                      Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "ClusterSecurityGroup")
                  )
      Prelude.<*> (x Core..@? "Endpoint")
      Prelude.<*> (x Core..@? "VpcId")
      Prelude.<*> (x Core..@? "AutomatedSnapshotRetentionPeriod")
      Prelude.<*> (x Core..@? "ClusterCreateTime")
      Prelude.<*> (x Core..@? "ReservedNodeExchangeStatus")
      Prelude.<*> (x Core..@? "TotalStorageCapacityInMegaBytes")
      Prelude.<*> (x Core..@? "DBName")
      Prelude.<*> (x Core..@? "RestoreStatus")
      Prelude.<*> (x Core..@? "ClusterAvailabilityStatus")
      Prelude.<*> ( x Core..@? "VpcSecurityGroups"
                      Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "VpcSecurityGroup")
                  )

instance Prelude.Hashable Cluster where
  hashWithSalt _salt Cluster' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` clusterIdentifier
      `Prelude.hashWithSalt` aquaConfiguration
      `Prelude.hashWithSalt` clusterPublicKey
      `Prelude.hashWithSalt` manualSnapshotRetentionPeriod
      `Prelude.hashWithSalt` masterUsername
      `Prelude.hashWithSalt` availabilityZoneRelocationStatus
      `Prelude.hashWithSalt` clusterParameterGroups
      `Prelude.hashWithSalt` allowVersionUpgrade
      `Prelude.hashWithSalt` expectedNextSnapshotScheduleTimeStatus
      `Prelude.hashWithSalt` clusterSubnetGroupName
      `Prelude.hashWithSalt` snapshotScheduleIdentifier
      `Prelude.hashWithSalt` nextMaintenanceWindowStartTime
      `Prelude.hashWithSalt` elasticIpStatus
      `Prelude.hashWithSalt` clusterNodes
      `Prelude.hashWithSalt` clusterVersion
      `Prelude.hashWithSalt` pendingActions
      `Prelude.hashWithSalt` clusterRevisionNumber
      `Prelude.hashWithSalt` maintenanceTrackName
      `Prelude.hashWithSalt` iamRoles
      `Prelude.hashWithSalt` availabilityZone
      `Prelude.hashWithSalt` nodeType
      `Prelude.hashWithSalt` publiclyAccessible
      `Prelude.hashWithSalt` modifyStatus
      `Prelude.hashWithSalt` clusterSnapshotCopyStatus
      `Prelude.hashWithSalt` clusterNamespaceArn
      `Prelude.hashWithSalt` snapshotScheduleState
      `Prelude.hashWithSalt` hsmStatus
      `Prelude.hashWithSalt` clusterStatus
      `Prelude.hashWithSalt` resizeInfo
      `Prelude.hashWithSalt` deferredMaintenanceWindows
      `Prelude.hashWithSalt` encrypted
      `Prelude.hashWithSalt` dataTransferProgress
      `Prelude.hashWithSalt` numberOfNodes
      `Prelude.hashWithSalt` kmsKeyId
      `Prelude.hashWithSalt` defaultIamRoleArn
      `Prelude.hashWithSalt` expectedNextSnapshotScheduleTime
      `Prelude.hashWithSalt` elasticResizeNumberOfNodeOptions
      `Prelude.hashWithSalt` pendingModifiedValues
      `Prelude.hashWithSalt` enhancedVpcRouting
      `Prelude.hashWithSalt` preferredMaintenanceWindow
      `Prelude.hashWithSalt` clusterSecurityGroups
      `Prelude.hashWithSalt` endpoint
      `Prelude.hashWithSalt` vpcId
      `Prelude.hashWithSalt` automatedSnapshotRetentionPeriod
      `Prelude.hashWithSalt` clusterCreateTime
      `Prelude.hashWithSalt` reservedNodeExchangeStatus
      `Prelude.hashWithSalt` totalStorageCapacityInMegaBytes
      `Prelude.hashWithSalt` dbName
      `Prelude.hashWithSalt` restoreStatus
      `Prelude.hashWithSalt` clusterAvailabilityStatus
      `Prelude.hashWithSalt` vpcSecurityGroups

instance Prelude.NFData Cluster where
  rnf Cluster' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf clusterIdentifier
      `Prelude.seq` Prelude.rnf aquaConfiguration
      `Prelude.seq` Prelude.rnf clusterPublicKey
      `Prelude.seq` Prelude.rnf manualSnapshotRetentionPeriod
      `Prelude.seq` Prelude.rnf masterUsername
      `Prelude.seq` Prelude.rnf availabilityZoneRelocationStatus
      `Prelude.seq` Prelude.rnf clusterParameterGroups
      `Prelude.seq` Prelude.rnf allowVersionUpgrade
      `Prelude.seq` Prelude.rnf expectedNextSnapshotScheduleTimeStatus
      `Prelude.seq` Prelude.rnf clusterSubnetGroupName
      `Prelude.seq` Prelude.rnf snapshotScheduleIdentifier
      `Prelude.seq` Prelude.rnf nextMaintenanceWindowStartTime
      `Prelude.seq` Prelude.rnf elasticIpStatus
      `Prelude.seq` Prelude.rnf clusterNodes
      `Prelude.seq` Prelude.rnf clusterVersion
      `Prelude.seq` Prelude.rnf pendingActions
      `Prelude.seq` Prelude.rnf clusterRevisionNumber
      `Prelude.seq` Prelude.rnf maintenanceTrackName
      `Prelude.seq` Prelude.rnf iamRoles
      `Prelude.seq` Prelude.rnf availabilityZone
      `Prelude.seq` Prelude.rnf nodeType
      `Prelude.seq` Prelude.rnf
        publiclyAccessible
      `Prelude.seq` Prelude.rnf
        modifyStatus
      `Prelude.seq` Prelude.rnf
        clusterSnapshotCopyStatus
      `Prelude.seq` Prelude.rnf
        clusterNamespaceArn
      `Prelude.seq` Prelude.rnf
        snapshotScheduleState
      `Prelude.seq` Prelude.rnf
        hsmStatus
      `Prelude.seq` Prelude.rnf
        clusterStatus
      `Prelude.seq` Prelude.rnf
        resizeInfo
      `Prelude.seq` Prelude.rnf
        deferredMaintenanceWindows
      `Prelude.seq` Prelude.rnf
        encrypted
      `Prelude.seq` Prelude.rnf
        dataTransferProgress
      `Prelude.seq` Prelude.rnf
        numberOfNodes
      `Prelude.seq` Prelude.rnf
        kmsKeyId
      `Prelude.seq` Prelude.rnf
        defaultIamRoleArn
      `Prelude.seq` Prelude.rnf
        expectedNextSnapshotScheduleTime
      `Prelude.seq` Prelude.rnf
        elasticResizeNumberOfNodeOptions
      `Prelude.seq` Prelude.rnf
        pendingModifiedValues
      `Prelude.seq` Prelude.rnf
        enhancedVpcRouting
      `Prelude.seq` Prelude.rnf
        preferredMaintenanceWindow
      `Prelude.seq` Prelude.rnf
        clusterSecurityGroups
      `Prelude.seq` Prelude.rnf
        endpoint
      `Prelude.seq` Prelude.rnf
        vpcId
      `Prelude.seq` Prelude.rnf
        automatedSnapshotRetentionPeriod
      `Prelude.seq` Prelude.rnf
        clusterCreateTime
      `Prelude.seq` Prelude.rnf
        reservedNodeExchangeStatus
      `Prelude.seq` Prelude.rnf
        totalStorageCapacityInMegaBytes
      `Prelude.seq` Prelude.rnf
        dbName
      `Prelude.seq` Prelude.rnf
        restoreStatus
      `Prelude.seq` Prelude.rnf
        clusterAvailabilityStatus
      `Prelude.seq` Prelude.rnf
        vpcSecurityGroups
