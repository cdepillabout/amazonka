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
-- Module      : Amazonka.EKS.Types.Cluster
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EKS.Types.Cluster where

import qualified Amazonka.Core as Core
import Amazonka.EKS.Types.Certificate
import Amazonka.EKS.Types.ClusterStatus
import Amazonka.EKS.Types.ConnectorConfigResponse
import Amazonka.EKS.Types.EncryptionConfig
import Amazonka.EKS.Types.Identity
import Amazonka.EKS.Types.KubernetesNetworkConfigResponse
import Amazonka.EKS.Types.Logging
import Amazonka.EKS.Types.VpcConfigResponse
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | An object representing an Amazon EKS cluster.
--
-- /See:/ 'newCluster' smart constructor.
data Cluster = Cluster'
  { -- | The encryption configuration for the cluster.
    encryptionConfig :: Prelude.Maybe [EncryptionConfig],
    -- | The metadata that you apply to the cluster to assist with categorization
    -- and organization. Each tag consists of a key and an optional value. You
    -- define both. Cluster tags do not propagate to any other resources
    -- associated with the cluster.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The name of the cluster.
    name :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the IAM role that provides permissions
    -- for the Kubernetes control plane to make calls to Amazon Web Services
    -- API operations on your behalf.
    roleArn :: Prelude.Maybe Prelude.Text,
    -- | Unique, case-sensitive identifier that you provide to ensure the
    -- idempotency of the request.
    clientRequestToken :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the cluster.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The current status of the cluster.
    status :: Prelude.Maybe ClusterStatus,
    -- | The logging configuration for your cluster.
    logging :: Prelude.Maybe Logging,
    -- | The identity provider information for the cluster.
    identity :: Prelude.Maybe Identity,
    -- | The Kubernetes network configuration for the cluster.
    kubernetesNetworkConfig :: Prelude.Maybe KubernetesNetworkConfigResponse,
    -- | The configuration used to connect to a cluster for registration.
    connectorConfig :: Prelude.Maybe ConnectorConfigResponse,
    -- | The platform version of your Amazon EKS cluster. For more information,
    -- see
    -- <https://docs.aws.amazon.com/eks/latest/userguide/platform-versions.html Platform Versions>
    -- in the //Amazon EKS User Guide// .
    platformVersion :: Prelude.Maybe Prelude.Text,
    -- | The @certificate-authority-data@ for your cluster.
    certificateAuthority :: Prelude.Maybe Certificate,
    -- | The endpoint for your Kubernetes API server.
    endpoint :: Prelude.Maybe Prelude.Text,
    -- | The VPC configuration used by the cluster control plane. Amazon EKS VPC
    -- resources have specific requirements to work properly with Kubernetes.
    -- For more information, see
    -- <https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html Cluster VPC Considerations>
    -- and
    -- <https://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html Cluster Security Group Considerations>
    -- in the /Amazon EKS User Guide/.
    resourcesVpcConfig :: Prelude.Maybe VpcConfigResponse,
    -- | The Unix epoch timestamp in seconds for when the cluster was created.
    createdAt :: Prelude.Maybe Core.POSIX,
    -- | The Kubernetes server version for the cluster.
    version :: Prelude.Maybe Prelude.Text
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
-- 'encryptionConfig', 'cluster_encryptionConfig' - The encryption configuration for the cluster.
--
-- 'tags', 'cluster_tags' - The metadata that you apply to the cluster to assist with categorization
-- and organization. Each tag consists of a key and an optional value. You
-- define both. Cluster tags do not propagate to any other resources
-- associated with the cluster.
--
-- 'name', 'cluster_name' - The name of the cluster.
--
-- 'roleArn', 'cluster_roleArn' - The Amazon Resource Name (ARN) of the IAM role that provides permissions
-- for the Kubernetes control plane to make calls to Amazon Web Services
-- API operations on your behalf.
--
-- 'clientRequestToken', 'cluster_clientRequestToken' - Unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request.
--
-- 'arn', 'cluster_arn' - The Amazon Resource Name (ARN) of the cluster.
--
-- 'status', 'cluster_status' - The current status of the cluster.
--
-- 'logging', 'cluster_logging' - The logging configuration for your cluster.
--
-- 'identity', 'cluster_identity' - The identity provider information for the cluster.
--
-- 'kubernetesNetworkConfig', 'cluster_kubernetesNetworkConfig' - The Kubernetes network configuration for the cluster.
--
-- 'connectorConfig', 'cluster_connectorConfig' - The configuration used to connect to a cluster for registration.
--
-- 'platformVersion', 'cluster_platformVersion' - The platform version of your Amazon EKS cluster. For more information,
-- see
-- <https://docs.aws.amazon.com/eks/latest/userguide/platform-versions.html Platform Versions>
-- in the //Amazon EKS User Guide// .
--
-- 'certificateAuthority', 'cluster_certificateAuthority' - The @certificate-authority-data@ for your cluster.
--
-- 'endpoint', 'cluster_endpoint' - The endpoint for your Kubernetes API server.
--
-- 'resourcesVpcConfig', 'cluster_resourcesVpcConfig' - The VPC configuration used by the cluster control plane. Amazon EKS VPC
-- resources have specific requirements to work properly with Kubernetes.
-- For more information, see
-- <https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html Cluster VPC Considerations>
-- and
-- <https://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html Cluster Security Group Considerations>
-- in the /Amazon EKS User Guide/.
--
-- 'createdAt', 'cluster_createdAt' - The Unix epoch timestamp in seconds for when the cluster was created.
--
-- 'version', 'cluster_version' - The Kubernetes server version for the cluster.
newCluster ::
  Cluster
newCluster =
  Cluster'
    { encryptionConfig = Prelude.Nothing,
      tags = Prelude.Nothing,
      name = Prelude.Nothing,
      roleArn = Prelude.Nothing,
      clientRequestToken = Prelude.Nothing,
      arn = Prelude.Nothing,
      status = Prelude.Nothing,
      logging = Prelude.Nothing,
      identity = Prelude.Nothing,
      kubernetesNetworkConfig = Prelude.Nothing,
      connectorConfig = Prelude.Nothing,
      platformVersion = Prelude.Nothing,
      certificateAuthority = Prelude.Nothing,
      endpoint = Prelude.Nothing,
      resourcesVpcConfig = Prelude.Nothing,
      createdAt = Prelude.Nothing,
      version = Prelude.Nothing
    }

-- | The encryption configuration for the cluster.
cluster_encryptionConfig :: Lens.Lens' Cluster (Prelude.Maybe [EncryptionConfig])
cluster_encryptionConfig = Lens.lens (\Cluster' {encryptionConfig} -> encryptionConfig) (\s@Cluster' {} a -> s {encryptionConfig = a} :: Cluster) Prelude.. Lens.mapping Lens.coerced

-- | The metadata that you apply to the cluster to assist with categorization
-- and organization. Each tag consists of a key and an optional value. You
-- define both. Cluster tags do not propagate to any other resources
-- associated with the cluster.
cluster_tags :: Lens.Lens' Cluster (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
cluster_tags = Lens.lens (\Cluster' {tags} -> tags) (\s@Cluster' {} a -> s {tags = a} :: Cluster) Prelude.. Lens.mapping Lens.coerced

-- | The name of the cluster.
cluster_name :: Lens.Lens' Cluster (Prelude.Maybe Prelude.Text)
cluster_name = Lens.lens (\Cluster' {name} -> name) (\s@Cluster' {} a -> s {name = a} :: Cluster)

-- | The Amazon Resource Name (ARN) of the IAM role that provides permissions
-- for the Kubernetes control plane to make calls to Amazon Web Services
-- API operations on your behalf.
cluster_roleArn :: Lens.Lens' Cluster (Prelude.Maybe Prelude.Text)
cluster_roleArn = Lens.lens (\Cluster' {roleArn} -> roleArn) (\s@Cluster' {} a -> s {roleArn = a} :: Cluster)

-- | Unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request.
cluster_clientRequestToken :: Lens.Lens' Cluster (Prelude.Maybe Prelude.Text)
cluster_clientRequestToken = Lens.lens (\Cluster' {clientRequestToken} -> clientRequestToken) (\s@Cluster' {} a -> s {clientRequestToken = a} :: Cluster)

-- | The Amazon Resource Name (ARN) of the cluster.
cluster_arn :: Lens.Lens' Cluster (Prelude.Maybe Prelude.Text)
cluster_arn = Lens.lens (\Cluster' {arn} -> arn) (\s@Cluster' {} a -> s {arn = a} :: Cluster)

-- | The current status of the cluster.
cluster_status :: Lens.Lens' Cluster (Prelude.Maybe ClusterStatus)
cluster_status = Lens.lens (\Cluster' {status} -> status) (\s@Cluster' {} a -> s {status = a} :: Cluster)

-- | The logging configuration for your cluster.
cluster_logging :: Lens.Lens' Cluster (Prelude.Maybe Logging)
cluster_logging = Lens.lens (\Cluster' {logging} -> logging) (\s@Cluster' {} a -> s {logging = a} :: Cluster)

-- | The identity provider information for the cluster.
cluster_identity :: Lens.Lens' Cluster (Prelude.Maybe Identity)
cluster_identity = Lens.lens (\Cluster' {identity} -> identity) (\s@Cluster' {} a -> s {identity = a} :: Cluster)

-- | The Kubernetes network configuration for the cluster.
cluster_kubernetesNetworkConfig :: Lens.Lens' Cluster (Prelude.Maybe KubernetesNetworkConfigResponse)
cluster_kubernetesNetworkConfig = Lens.lens (\Cluster' {kubernetesNetworkConfig} -> kubernetesNetworkConfig) (\s@Cluster' {} a -> s {kubernetesNetworkConfig = a} :: Cluster)

-- | The configuration used to connect to a cluster for registration.
cluster_connectorConfig :: Lens.Lens' Cluster (Prelude.Maybe ConnectorConfigResponse)
cluster_connectorConfig = Lens.lens (\Cluster' {connectorConfig} -> connectorConfig) (\s@Cluster' {} a -> s {connectorConfig = a} :: Cluster)

-- | The platform version of your Amazon EKS cluster. For more information,
-- see
-- <https://docs.aws.amazon.com/eks/latest/userguide/platform-versions.html Platform Versions>
-- in the //Amazon EKS User Guide// .
cluster_platformVersion :: Lens.Lens' Cluster (Prelude.Maybe Prelude.Text)
cluster_platformVersion = Lens.lens (\Cluster' {platformVersion} -> platformVersion) (\s@Cluster' {} a -> s {platformVersion = a} :: Cluster)

-- | The @certificate-authority-data@ for your cluster.
cluster_certificateAuthority :: Lens.Lens' Cluster (Prelude.Maybe Certificate)
cluster_certificateAuthority = Lens.lens (\Cluster' {certificateAuthority} -> certificateAuthority) (\s@Cluster' {} a -> s {certificateAuthority = a} :: Cluster)

-- | The endpoint for your Kubernetes API server.
cluster_endpoint :: Lens.Lens' Cluster (Prelude.Maybe Prelude.Text)
cluster_endpoint = Lens.lens (\Cluster' {endpoint} -> endpoint) (\s@Cluster' {} a -> s {endpoint = a} :: Cluster)

-- | The VPC configuration used by the cluster control plane. Amazon EKS VPC
-- resources have specific requirements to work properly with Kubernetes.
-- For more information, see
-- <https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html Cluster VPC Considerations>
-- and
-- <https://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html Cluster Security Group Considerations>
-- in the /Amazon EKS User Guide/.
cluster_resourcesVpcConfig :: Lens.Lens' Cluster (Prelude.Maybe VpcConfigResponse)
cluster_resourcesVpcConfig = Lens.lens (\Cluster' {resourcesVpcConfig} -> resourcesVpcConfig) (\s@Cluster' {} a -> s {resourcesVpcConfig = a} :: Cluster)

-- | The Unix epoch timestamp in seconds for when the cluster was created.
cluster_createdAt :: Lens.Lens' Cluster (Prelude.Maybe Prelude.UTCTime)
cluster_createdAt = Lens.lens (\Cluster' {createdAt} -> createdAt) (\s@Cluster' {} a -> s {createdAt = a} :: Cluster) Prelude.. Lens.mapping Core._Time

-- | The Kubernetes server version for the cluster.
cluster_version :: Lens.Lens' Cluster (Prelude.Maybe Prelude.Text)
cluster_version = Lens.lens (\Cluster' {version} -> version) (\s@Cluster' {} a -> s {version = a} :: Cluster)

instance Core.FromJSON Cluster where
  parseJSON =
    Core.withObject
      "Cluster"
      ( \x ->
          Cluster'
            Prelude.<$> ( x Core..:? "encryptionConfig"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "tags" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "name")
            Prelude.<*> (x Core..:? "roleArn")
            Prelude.<*> (x Core..:? "clientRequestToken")
            Prelude.<*> (x Core..:? "arn")
            Prelude.<*> (x Core..:? "status")
            Prelude.<*> (x Core..:? "logging")
            Prelude.<*> (x Core..:? "identity")
            Prelude.<*> (x Core..:? "kubernetesNetworkConfig")
            Prelude.<*> (x Core..:? "connectorConfig")
            Prelude.<*> (x Core..:? "platformVersion")
            Prelude.<*> (x Core..:? "certificateAuthority")
            Prelude.<*> (x Core..:? "endpoint")
            Prelude.<*> (x Core..:? "resourcesVpcConfig")
            Prelude.<*> (x Core..:? "createdAt")
            Prelude.<*> (x Core..:? "version")
      )

instance Prelude.Hashable Cluster where
  hashWithSalt _salt Cluster' {..} =
    _salt `Prelude.hashWithSalt` encryptionConfig
      `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` roleArn
      `Prelude.hashWithSalt` clientRequestToken
      `Prelude.hashWithSalt` arn
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` logging
      `Prelude.hashWithSalt` identity
      `Prelude.hashWithSalt` kubernetesNetworkConfig
      `Prelude.hashWithSalt` connectorConfig
      `Prelude.hashWithSalt` platformVersion
      `Prelude.hashWithSalt` certificateAuthority
      `Prelude.hashWithSalt` endpoint
      `Prelude.hashWithSalt` resourcesVpcConfig
      `Prelude.hashWithSalt` createdAt
      `Prelude.hashWithSalt` version

instance Prelude.NFData Cluster where
  rnf Cluster' {..} =
    Prelude.rnf encryptionConfig
      `Prelude.seq` Prelude.rnf tags
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf roleArn
      `Prelude.seq` Prelude.rnf clientRequestToken
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf logging
      `Prelude.seq` Prelude.rnf identity
      `Prelude.seq` Prelude.rnf kubernetesNetworkConfig
      `Prelude.seq` Prelude.rnf connectorConfig
      `Prelude.seq` Prelude.rnf platformVersion
      `Prelude.seq` Prelude.rnf certificateAuthority
      `Prelude.seq` Prelude.rnf endpoint
      `Prelude.seq` Prelude.rnf resourcesVpcConfig
      `Prelude.seq` Prelude.rnf createdAt
      `Prelude.seq` Prelude.rnf version
