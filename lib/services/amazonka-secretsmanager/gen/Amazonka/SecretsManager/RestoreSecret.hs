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
-- Module      : Amazonka.SecretsManager.RestoreSecret
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels the scheduled deletion of a secret by removing the @DeletedDate@
-- time stamp. You can access a secret again after it has been restored.
--
-- __Required permissions:__ @secretsmanager:RestoreSecret@. For more
-- information, see
-- <https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions IAM policy actions for Secrets Manager>
-- and
-- <https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html Authentication and access control in Secrets Manager>.
module Amazonka.SecretsManager.RestoreSecret
  ( -- * Creating a Request
    RestoreSecret (..),
    newRestoreSecret,

    -- * Request Lenses
    restoreSecret_secretId,

    -- * Destructuring the Response
    RestoreSecretResponse (..),
    newRestoreSecretResponse,

    -- * Response Lenses
    restoreSecretResponse_name,
    restoreSecretResponse_arn,
    restoreSecretResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.SecretsManager.Types

-- | /See:/ 'newRestoreSecret' smart constructor.
data RestoreSecret = RestoreSecret'
  { -- | The ARN or name of the secret to restore.
    --
    -- For an ARN, we recommend that you specify a complete ARN rather than a
    -- partial ARN. See
    -- <https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen Finding a secret from a partial ARN>.
    secretId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RestoreSecret' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'secretId', 'restoreSecret_secretId' - The ARN or name of the secret to restore.
--
-- For an ARN, we recommend that you specify a complete ARN rather than a
-- partial ARN. See
-- <https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen Finding a secret from a partial ARN>.
newRestoreSecret ::
  -- | 'secretId'
  Prelude.Text ->
  RestoreSecret
newRestoreSecret pSecretId_ =
  RestoreSecret' {secretId = pSecretId_}

-- | The ARN or name of the secret to restore.
--
-- For an ARN, we recommend that you specify a complete ARN rather than a
-- partial ARN. See
-- <https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen Finding a secret from a partial ARN>.
restoreSecret_secretId :: Lens.Lens' RestoreSecret Prelude.Text
restoreSecret_secretId = Lens.lens (\RestoreSecret' {secretId} -> secretId) (\s@RestoreSecret' {} a -> s {secretId = a} :: RestoreSecret)

instance Core.AWSRequest RestoreSecret where
  type
    AWSResponse RestoreSecret =
      RestoreSecretResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          RestoreSecretResponse'
            Prelude.<$> (x Core..?> "Name")
            Prelude.<*> (x Core..?> "ARN")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable RestoreSecret where
  hashWithSalt _salt RestoreSecret' {..} =
    _salt `Prelude.hashWithSalt` secretId

instance Prelude.NFData RestoreSecret where
  rnf RestoreSecret' {..} = Prelude.rnf secretId

instance Core.ToHeaders RestoreSecret where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "secretsmanager.RestoreSecret" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON RestoreSecret where
  toJSON RestoreSecret' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("SecretId" Core..= secretId)]
      )

instance Core.ToPath RestoreSecret where
  toPath = Prelude.const "/"

instance Core.ToQuery RestoreSecret where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newRestoreSecretResponse' smart constructor.
data RestoreSecretResponse = RestoreSecretResponse'
  { -- | The name of the secret that was restored.
    name :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the secret that was restored.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RestoreSecretResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'restoreSecretResponse_name' - The name of the secret that was restored.
--
-- 'arn', 'restoreSecretResponse_arn' - The ARN of the secret that was restored.
--
-- 'httpStatus', 'restoreSecretResponse_httpStatus' - The response's http status code.
newRestoreSecretResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  RestoreSecretResponse
newRestoreSecretResponse pHttpStatus_ =
  RestoreSecretResponse'
    { name = Prelude.Nothing,
      arn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The name of the secret that was restored.
restoreSecretResponse_name :: Lens.Lens' RestoreSecretResponse (Prelude.Maybe Prelude.Text)
restoreSecretResponse_name = Lens.lens (\RestoreSecretResponse' {name} -> name) (\s@RestoreSecretResponse' {} a -> s {name = a} :: RestoreSecretResponse)

-- | The ARN of the secret that was restored.
restoreSecretResponse_arn :: Lens.Lens' RestoreSecretResponse (Prelude.Maybe Prelude.Text)
restoreSecretResponse_arn = Lens.lens (\RestoreSecretResponse' {arn} -> arn) (\s@RestoreSecretResponse' {} a -> s {arn = a} :: RestoreSecretResponse)

-- | The response's http status code.
restoreSecretResponse_httpStatus :: Lens.Lens' RestoreSecretResponse Prelude.Int
restoreSecretResponse_httpStatus = Lens.lens (\RestoreSecretResponse' {httpStatus} -> httpStatus) (\s@RestoreSecretResponse' {} a -> s {httpStatus = a} :: RestoreSecretResponse)

instance Prelude.NFData RestoreSecretResponse where
  rnf RestoreSecretResponse' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf httpStatus
