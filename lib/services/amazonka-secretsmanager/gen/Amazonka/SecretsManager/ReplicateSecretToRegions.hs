{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.SecretsManager.ReplicateSecretToRegions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Replicates the secret to a new Regions. See
-- <https://docs.aws.amazon.com/secretsmanager/latest/userguide/create-manage-multi-region-secrets.html Multi-Region secrets>.
--
-- __Required permissions:__ @secretsmanager:ReplicateSecretToRegions@. For
-- more information, see
-- <https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions IAM policy actions for Secrets Manager>
-- and
-- <https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html Authentication and access control in Secrets Manager>.
module Amazonka.SecretsManager.ReplicateSecretToRegions
  ( -- * Creating a Request
    ReplicateSecretToRegions (..),
    newReplicateSecretToRegions,

    -- * Request Lenses
    replicateSecretToRegions_forceOverwriteReplicaSecret,
    replicateSecretToRegions_secretId,
    replicateSecretToRegions_addReplicaRegions,

    -- * Destructuring the Response
    ReplicateSecretToRegionsResponse (..),
    newReplicateSecretToRegionsResponse,

    -- * Response Lenses
    replicateSecretToRegionsResponse_replicationStatus,
    replicateSecretToRegionsResponse_arn,
    replicateSecretToRegionsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.SecretsManager.Types

-- | /See:/ 'newReplicateSecretToRegions' smart constructor.
data ReplicateSecretToRegions = ReplicateSecretToRegions'
  { -- | Specifies whether to overwrite a secret with the same name in the
    -- destination Region.
    forceOverwriteReplicaSecret :: Prelude.Maybe Prelude.Bool,
    -- | The ARN or name of the secret to replicate.
    secretId :: Prelude.Text,
    -- | A list of Regions in which to replicate the secret.
    addReplicaRegions :: Prelude.NonEmpty ReplicaRegionType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ReplicateSecretToRegions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'forceOverwriteReplicaSecret', 'replicateSecretToRegions_forceOverwriteReplicaSecret' - Specifies whether to overwrite a secret with the same name in the
-- destination Region.
--
-- 'secretId', 'replicateSecretToRegions_secretId' - The ARN or name of the secret to replicate.
--
-- 'addReplicaRegions', 'replicateSecretToRegions_addReplicaRegions' - A list of Regions in which to replicate the secret.
newReplicateSecretToRegions ::
  -- | 'secretId'
  Prelude.Text ->
  -- | 'addReplicaRegions'
  Prelude.NonEmpty ReplicaRegionType ->
  ReplicateSecretToRegions
newReplicateSecretToRegions
  pSecretId_
  pAddReplicaRegions_ =
    ReplicateSecretToRegions'
      { forceOverwriteReplicaSecret =
          Prelude.Nothing,
        secretId = pSecretId_,
        addReplicaRegions =
          Lens.coerced Lens.# pAddReplicaRegions_
      }

-- | Specifies whether to overwrite a secret with the same name in the
-- destination Region.
replicateSecretToRegions_forceOverwriteReplicaSecret :: Lens.Lens' ReplicateSecretToRegions (Prelude.Maybe Prelude.Bool)
replicateSecretToRegions_forceOverwriteReplicaSecret = Lens.lens (\ReplicateSecretToRegions' {forceOverwriteReplicaSecret} -> forceOverwriteReplicaSecret) (\s@ReplicateSecretToRegions' {} a -> s {forceOverwriteReplicaSecret = a} :: ReplicateSecretToRegions)

-- | The ARN or name of the secret to replicate.
replicateSecretToRegions_secretId :: Lens.Lens' ReplicateSecretToRegions Prelude.Text
replicateSecretToRegions_secretId = Lens.lens (\ReplicateSecretToRegions' {secretId} -> secretId) (\s@ReplicateSecretToRegions' {} a -> s {secretId = a} :: ReplicateSecretToRegions)

-- | A list of Regions in which to replicate the secret.
replicateSecretToRegions_addReplicaRegions :: Lens.Lens' ReplicateSecretToRegions (Prelude.NonEmpty ReplicaRegionType)
replicateSecretToRegions_addReplicaRegions = Lens.lens (\ReplicateSecretToRegions' {addReplicaRegions} -> addReplicaRegions) (\s@ReplicateSecretToRegions' {} a -> s {addReplicaRegions = a} :: ReplicateSecretToRegions) Prelude.. Lens.coerced

instance Core.AWSRequest ReplicateSecretToRegions where
  type
    AWSResponse ReplicateSecretToRegions =
      ReplicateSecretToRegionsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ReplicateSecretToRegionsResponse'
            Prelude.<$> ( x Core..?> "ReplicationStatus"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "ARN")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ReplicateSecretToRegions where
  hashWithSalt _salt ReplicateSecretToRegions' {..} =
    _salt
      `Prelude.hashWithSalt` forceOverwriteReplicaSecret
      `Prelude.hashWithSalt` secretId
      `Prelude.hashWithSalt` addReplicaRegions

instance Prelude.NFData ReplicateSecretToRegions where
  rnf ReplicateSecretToRegions' {..} =
    Prelude.rnf forceOverwriteReplicaSecret
      `Prelude.seq` Prelude.rnf secretId
      `Prelude.seq` Prelude.rnf addReplicaRegions

instance Core.ToHeaders ReplicateSecretToRegions where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "secretsmanager.ReplicateSecretToRegions" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ReplicateSecretToRegions where
  toJSON ReplicateSecretToRegions' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ForceOverwriteReplicaSecret" Core..=)
              Prelude.<$> forceOverwriteReplicaSecret,
            Prelude.Just ("SecretId" Core..= secretId),
            Prelude.Just
              ("AddReplicaRegions" Core..= addReplicaRegions)
          ]
      )

instance Core.ToPath ReplicateSecretToRegions where
  toPath = Prelude.const "/"

instance Core.ToQuery ReplicateSecretToRegions where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newReplicateSecretToRegionsResponse' smart constructor.
data ReplicateSecretToRegionsResponse = ReplicateSecretToRegionsResponse'
  { -- | The status of replication.
    replicationStatus :: Prelude.Maybe [ReplicationStatusType],
    -- | The ARN of the primary secret.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ReplicateSecretToRegionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'replicationStatus', 'replicateSecretToRegionsResponse_replicationStatus' - The status of replication.
--
-- 'arn', 'replicateSecretToRegionsResponse_arn' - The ARN of the primary secret.
--
-- 'httpStatus', 'replicateSecretToRegionsResponse_httpStatus' - The response's http status code.
newReplicateSecretToRegionsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ReplicateSecretToRegionsResponse
newReplicateSecretToRegionsResponse pHttpStatus_ =
  ReplicateSecretToRegionsResponse'
    { replicationStatus =
        Prelude.Nothing,
      arn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The status of replication.
replicateSecretToRegionsResponse_replicationStatus :: Lens.Lens' ReplicateSecretToRegionsResponse (Prelude.Maybe [ReplicationStatusType])
replicateSecretToRegionsResponse_replicationStatus = Lens.lens (\ReplicateSecretToRegionsResponse' {replicationStatus} -> replicationStatus) (\s@ReplicateSecretToRegionsResponse' {} a -> s {replicationStatus = a} :: ReplicateSecretToRegionsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The ARN of the primary secret.
replicateSecretToRegionsResponse_arn :: Lens.Lens' ReplicateSecretToRegionsResponse (Prelude.Maybe Prelude.Text)
replicateSecretToRegionsResponse_arn = Lens.lens (\ReplicateSecretToRegionsResponse' {arn} -> arn) (\s@ReplicateSecretToRegionsResponse' {} a -> s {arn = a} :: ReplicateSecretToRegionsResponse)

-- | The response's http status code.
replicateSecretToRegionsResponse_httpStatus :: Lens.Lens' ReplicateSecretToRegionsResponse Prelude.Int
replicateSecretToRegionsResponse_httpStatus = Lens.lens (\ReplicateSecretToRegionsResponse' {httpStatus} -> httpStatus) (\s@ReplicateSecretToRegionsResponse' {} a -> s {httpStatus = a} :: ReplicateSecretToRegionsResponse)

instance
  Prelude.NFData
    ReplicateSecretToRegionsResponse
  where
  rnf ReplicateSecretToRegionsResponse' {..} =
    Prelude.rnf replicationStatus
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf httpStatus
