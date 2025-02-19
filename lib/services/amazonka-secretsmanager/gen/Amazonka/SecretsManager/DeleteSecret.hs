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
-- Module      : Amazonka.SecretsManager.DeleteSecret
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a secret and all of its versions. You can specify a recovery
-- window during which you can restore the secret. The minimum recovery
-- window is 7 days. The default recovery window is 30 days. Secrets
-- Manager attaches a @DeletionDate@ stamp to the secret that specifies the
-- end of the recovery window. At the end of the recovery window, Secrets
-- Manager deletes the secret permanently.
--
-- You can\'t delete a primary secret that is replicated to other Regions.
-- You must first delete the replicas using RemoveRegionsFromReplication,
-- and then delete the primary secret. When you delete a replica, it is
-- deleted immediately.
--
-- You can\'t directly delete a version of a secret. Instead, you remove
-- all staging labels from the version using UpdateSecretVersionStage. This
-- marks the version as deprecated, and then Secrets Manager can
-- automatically delete the version in the background.
--
-- To determine whether an application still uses a secret, you can create
-- an Amazon CloudWatch alarm to alert you to any attempts to access a
-- secret during the recovery window. For more information, see
-- <https://docs.aws.amazon.com/secretsmanager/latest/userguide/monitoring_cloudwatch_deleted-secrets.html Monitor secrets scheduled for deletion>.
--
-- Secrets Manager performs the permanent secret deletion at the end of the
-- waiting period as a background task with low priority. There is no
-- guarantee of a specific time after the recovery window for the permanent
-- delete to occur.
--
-- At any time before recovery window ends, you can use RestoreSecret to
-- remove the @DeletionDate@ and cancel the deletion of the secret.
--
-- When a secret is scheduled for deletion, you cannot retrieve the secret
-- value. You must first cancel the deletion with RestoreSecret and then
-- you can retrieve the secret.
--
-- __Required permissions:__ @secretsmanager:DeleteSecret@. For more
-- information, see
-- <https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions IAM policy actions for Secrets Manager>
-- and
-- <https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html Authentication and access control in Secrets Manager>.
module Amazonka.SecretsManager.DeleteSecret
  ( -- * Creating a Request
    DeleteSecret (..),
    newDeleteSecret,

    -- * Request Lenses
    deleteSecret_recoveryWindowInDays,
    deleteSecret_forceDeleteWithoutRecovery,
    deleteSecret_secretId,

    -- * Destructuring the Response
    DeleteSecretResponse (..),
    newDeleteSecretResponse,

    -- * Response Lenses
    deleteSecretResponse_name,
    deleteSecretResponse_arn,
    deleteSecretResponse_deletionDate,
    deleteSecretResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.SecretsManager.Types

-- | /See:/ 'newDeleteSecret' smart constructor.
data DeleteSecret = DeleteSecret'
  { -- | The number of days from 7 to 30 that Secrets Manager waits before
    -- permanently deleting the secret. You can\'t use both this parameter and
    -- @ForceDeleteWithoutRecovery@ in the same call. If you don\'t use either,
    -- then Secrets Manager defaults to a 30 day recovery window.
    recoveryWindowInDays :: Prelude.Maybe Prelude.Integer,
    -- | Specifies whether to delete the secret without any recovery window. You
    -- can\'t use both this parameter and @RecoveryWindowInDays@ in the same
    -- call. If you don\'t use either, then Secrets Manager defaults to a 30
    -- day recovery window.
    --
    -- Secrets Manager performs the actual deletion with an asynchronous
    -- background process, so there might be a short delay before the secret is
    -- permanently deleted. If you delete a secret and then immediately create
    -- a secret with the same name, use appropriate back off and retry logic.
    --
    -- Use this parameter with caution. This parameter causes the operation to
    -- skip the normal recovery window before the permanent deletion that
    -- Secrets Manager would normally impose with the @RecoveryWindowInDays@
    -- parameter. If you delete a secret with the @ForceDeleteWithouRecovery@
    -- parameter, then you have no opportunity to recover the secret. You lose
    -- the secret permanently.
    forceDeleteWithoutRecovery :: Prelude.Maybe Prelude.Bool,
    -- | The ARN or name of the secret to delete.
    --
    -- For an ARN, we recommend that you specify a complete ARN rather than a
    -- partial ARN. See
    -- <https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen Finding a secret from a partial ARN>.
    secretId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteSecret' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'recoveryWindowInDays', 'deleteSecret_recoveryWindowInDays' - The number of days from 7 to 30 that Secrets Manager waits before
-- permanently deleting the secret. You can\'t use both this parameter and
-- @ForceDeleteWithoutRecovery@ in the same call. If you don\'t use either,
-- then Secrets Manager defaults to a 30 day recovery window.
--
-- 'forceDeleteWithoutRecovery', 'deleteSecret_forceDeleteWithoutRecovery' - Specifies whether to delete the secret without any recovery window. You
-- can\'t use both this parameter and @RecoveryWindowInDays@ in the same
-- call. If you don\'t use either, then Secrets Manager defaults to a 30
-- day recovery window.
--
-- Secrets Manager performs the actual deletion with an asynchronous
-- background process, so there might be a short delay before the secret is
-- permanently deleted. If you delete a secret and then immediately create
-- a secret with the same name, use appropriate back off and retry logic.
--
-- Use this parameter with caution. This parameter causes the operation to
-- skip the normal recovery window before the permanent deletion that
-- Secrets Manager would normally impose with the @RecoveryWindowInDays@
-- parameter. If you delete a secret with the @ForceDeleteWithouRecovery@
-- parameter, then you have no opportunity to recover the secret. You lose
-- the secret permanently.
--
-- 'secretId', 'deleteSecret_secretId' - The ARN or name of the secret to delete.
--
-- For an ARN, we recommend that you specify a complete ARN rather than a
-- partial ARN. See
-- <https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen Finding a secret from a partial ARN>.
newDeleteSecret ::
  -- | 'secretId'
  Prelude.Text ->
  DeleteSecret
newDeleteSecret pSecretId_ =
  DeleteSecret'
    { recoveryWindowInDays =
        Prelude.Nothing,
      forceDeleteWithoutRecovery = Prelude.Nothing,
      secretId = pSecretId_
    }

-- | The number of days from 7 to 30 that Secrets Manager waits before
-- permanently deleting the secret. You can\'t use both this parameter and
-- @ForceDeleteWithoutRecovery@ in the same call. If you don\'t use either,
-- then Secrets Manager defaults to a 30 day recovery window.
deleteSecret_recoveryWindowInDays :: Lens.Lens' DeleteSecret (Prelude.Maybe Prelude.Integer)
deleteSecret_recoveryWindowInDays = Lens.lens (\DeleteSecret' {recoveryWindowInDays} -> recoveryWindowInDays) (\s@DeleteSecret' {} a -> s {recoveryWindowInDays = a} :: DeleteSecret)

-- | Specifies whether to delete the secret without any recovery window. You
-- can\'t use both this parameter and @RecoveryWindowInDays@ in the same
-- call. If you don\'t use either, then Secrets Manager defaults to a 30
-- day recovery window.
--
-- Secrets Manager performs the actual deletion with an asynchronous
-- background process, so there might be a short delay before the secret is
-- permanently deleted. If you delete a secret and then immediately create
-- a secret with the same name, use appropriate back off and retry logic.
--
-- Use this parameter with caution. This parameter causes the operation to
-- skip the normal recovery window before the permanent deletion that
-- Secrets Manager would normally impose with the @RecoveryWindowInDays@
-- parameter. If you delete a secret with the @ForceDeleteWithouRecovery@
-- parameter, then you have no opportunity to recover the secret. You lose
-- the secret permanently.
deleteSecret_forceDeleteWithoutRecovery :: Lens.Lens' DeleteSecret (Prelude.Maybe Prelude.Bool)
deleteSecret_forceDeleteWithoutRecovery = Lens.lens (\DeleteSecret' {forceDeleteWithoutRecovery} -> forceDeleteWithoutRecovery) (\s@DeleteSecret' {} a -> s {forceDeleteWithoutRecovery = a} :: DeleteSecret)

-- | The ARN or name of the secret to delete.
--
-- For an ARN, we recommend that you specify a complete ARN rather than a
-- partial ARN. See
-- <https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen Finding a secret from a partial ARN>.
deleteSecret_secretId :: Lens.Lens' DeleteSecret Prelude.Text
deleteSecret_secretId = Lens.lens (\DeleteSecret' {secretId} -> secretId) (\s@DeleteSecret' {} a -> s {secretId = a} :: DeleteSecret)

instance Core.AWSRequest DeleteSecret where
  type AWSResponse DeleteSecret = DeleteSecretResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteSecretResponse'
            Prelude.<$> (x Core..?> "Name")
            Prelude.<*> (x Core..?> "ARN")
            Prelude.<*> (x Core..?> "DeletionDate")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteSecret where
  hashWithSalt _salt DeleteSecret' {..} =
    _salt `Prelude.hashWithSalt` recoveryWindowInDays
      `Prelude.hashWithSalt` forceDeleteWithoutRecovery
      `Prelude.hashWithSalt` secretId

instance Prelude.NFData DeleteSecret where
  rnf DeleteSecret' {..} =
    Prelude.rnf recoveryWindowInDays
      `Prelude.seq` Prelude.rnf forceDeleteWithoutRecovery
      `Prelude.seq` Prelude.rnf secretId

instance Core.ToHeaders DeleteSecret where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "secretsmanager.DeleteSecret" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteSecret where
  toJSON DeleteSecret' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("RecoveryWindowInDays" Core..=)
              Prelude.<$> recoveryWindowInDays,
            ("ForceDeleteWithoutRecovery" Core..=)
              Prelude.<$> forceDeleteWithoutRecovery,
            Prelude.Just ("SecretId" Core..= secretId)
          ]
      )

instance Core.ToPath DeleteSecret where
  toPath = Prelude.const "/"

instance Core.ToQuery DeleteSecret where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteSecretResponse' smart constructor.
data DeleteSecretResponse = DeleteSecretResponse'
  { -- | The name of the secret.
    name :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the secret.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The date and time after which this secret Secrets Manager can
    -- permanently delete this secret, and it can no longer be restored. This
    -- value is the date and time of the delete request plus the number of days
    -- in @RecoveryWindowInDays@.
    deletionDate :: Prelude.Maybe Core.POSIX,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteSecretResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'deleteSecretResponse_name' - The name of the secret.
--
-- 'arn', 'deleteSecretResponse_arn' - The ARN of the secret.
--
-- 'deletionDate', 'deleteSecretResponse_deletionDate' - The date and time after which this secret Secrets Manager can
-- permanently delete this secret, and it can no longer be restored. This
-- value is the date and time of the delete request plus the number of days
-- in @RecoveryWindowInDays@.
--
-- 'httpStatus', 'deleteSecretResponse_httpStatus' - The response's http status code.
newDeleteSecretResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteSecretResponse
newDeleteSecretResponse pHttpStatus_ =
  DeleteSecretResponse'
    { name = Prelude.Nothing,
      arn = Prelude.Nothing,
      deletionDate = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The name of the secret.
deleteSecretResponse_name :: Lens.Lens' DeleteSecretResponse (Prelude.Maybe Prelude.Text)
deleteSecretResponse_name = Lens.lens (\DeleteSecretResponse' {name} -> name) (\s@DeleteSecretResponse' {} a -> s {name = a} :: DeleteSecretResponse)

-- | The ARN of the secret.
deleteSecretResponse_arn :: Lens.Lens' DeleteSecretResponse (Prelude.Maybe Prelude.Text)
deleteSecretResponse_arn = Lens.lens (\DeleteSecretResponse' {arn} -> arn) (\s@DeleteSecretResponse' {} a -> s {arn = a} :: DeleteSecretResponse)

-- | The date and time after which this secret Secrets Manager can
-- permanently delete this secret, and it can no longer be restored. This
-- value is the date and time of the delete request plus the number of days
-- in @RecoveryWindowInDays@.
deleteSecretResponse_deletionDate :: Lens.Lens' DeleteSecretResponse (Prelude.Maybe Prelude.UTCTime)
deleteSecretResponse_deletionDate = Lens.lens (\DeleteSecretResponse' {deletionDate} -> deletionDate) (\s@DeleteSecretResponse' {} a -> s {deletionDate = a} :: DeleteSecretResponse) Prelude.. Lens.mapping Core._Time

-- | The response's http status code.
deleteSecretResponse_httpStatus :: Lens.Lens' DeleteSecretResponse Prelude.Int
deleteSecretResponse_httpStatus = Lens.lens (\DeleteSecretResponse' {httpStatus} -> httpStatus) (\s@DeleteSecretResponse' {} a -> s {httpStatus = a} :: DeleteSecretResponse)

instance Prelude.NFData DeleteSecretResponse where
  rnf DeleteSecretResponse' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf deletionDate
      `Prelude.seq` Prelude.rnf httpStatus
