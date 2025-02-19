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
-- Module      : Amazonka.StorageGateway.UpdateFileSystemAssociation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a file system association. This operation is only supported in
-- the FSx File Gateways.
module Amazonka.StorageGateway.UpdateFileSystemAssociation
  ( -- * Creating a Request
    UpdateFileSystemAssociation (..),
    newUpdateFileSystemAssociation,

    -- * Request Lenses
    updateFileSystemAssociation_password,
    updateFileSystemAssociation_userName,
    updateFileSystemAssociation_cacheAttributes,
    updateFileSystemAssociation_auditDestinationARN,
    updateFileSystemAssociation_fileSystemAssociationARN,

    -- * Destructuring the Response
    UpdateFileSystemAssociationResponse (..),
    newUpdateFileSystemAssociationResponse,

    -- * Response Lenses
    updateFileSystemAssociationResponse_fileSystemAssociationARN,
    updateFileSystemAssociationResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.StorageGateway.Types

-- | /See:/ 'newUpdateFileSystemAssociation' smart constructor.
data UpdateFileSystemAssociation = UpdateFileSystemAssociation'
  { -- | The password of the user credential.
    password :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The user name of the user credential that has permission to access the
    -- root share D$ of the Amazon FSx file system. The user account must
    -- belong to the Amazon FSx delegated admin user group.
    userName :: Prelude.Maybe Prelude.Text,
    cacheAttributes :: Prelude.Maybe CacheAttributes,
    -- | The Amazon Resource Name (ARN) of the storage used for the audit logs.
    auditDestinationARN :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the file system association that you
    -- want to update.
    fileSystemAssociationARN :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateFileSystemAssociation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'password', 'updateFileSystemAssociation_password' - The password of the user credential.
--
-- 'userName', 'updateFileSystemAssociation_userName' - The user name of the user credential that has permission to access the
-- root share D$ of the Amazon FSx file system. The user account must
-- belong to the Amazon FSx delegated admin user group.
--
-- 'cacheAttributes', 'updateFileSystemAssociation_cacheAttributes' - Undocumented member.
--
-- 'auditDestinationARN', 'updateFileSystemAssociation_auditDestinationARN' - The Amazon Resource Name (ARN) of the storage used for the audit logs.
--
-- 'fileSystemAssociationARN', 'updateFileSystemAssociation_fileSystemAssociationARN' - The Amazon Resource Name (ARN) of the file system association that you
-- want to update.
newUpdateFileSystemAssociation ::
  -- | 'fileSystemAssociationARN'
  Prelude.Text ->
  UpdateFileSystemAssociation
newUpdateFileSystemAssociation
  pFileSystemAssociationARN_ =
    UpdateFileSystemAssociation'
      { password =
          Prelude.Nothing,
        userName = Prelude.Nothing,
        cacheAttributes = Prelude.Nothing,
        auditDestinationARN = Prelude.Nothing,
        fileSystemAssociationARN =
          pFileSystemAssociationARN_
      }

-- | The password of the user credential.
updateFileSystemAssociation_password :: Lens.Lens' UpdateFileSystemAssociation (Prelude.Maybe Prelude.Text)
updateFileSystemAssociation_password = Lens.lens (\UpdateFileSystemAssociation' {password} -> password) (\s@UpdateFileSystemAssociation' {} a -> s {password = a} :: UpdateFileSystemAssociation) Prelude.. Lens.mapping Core._Sensitive

-- | The user name of the user credential that has permission to access the
-- root share D$ of the Amazon FSx file system. The user account must
-- belong to the Amazon FSx delegated admin user group.
updateFileSystemAssociation_userName :: Lens.Lens' UpdateFileSystemAssociation (Prelude.Maybe Prelude.Text)
updateFileSystemAssociation_userName = Lens.lens (\UpdateFileSystemAssociation' {userName} -> userName) (\s@UpdateFileSystemAssociation' {} a -> s {userName = a} :: UpdateFileSystemAssociation)

-- | Undocumented member.
updateFileSystemAssociation_cacheAttributes :: Lens.Lens' UpdateFileSystemAssociation (Prelude.Maybe CacheAttributes)
updateFileSystemAssociation_cacheAttributes = Lens.lens (\UpdateFileSystemAssociation' {cacheAttributes} -> cacheAttributes) (\s@UpdateFileSystemAssociation' {} a -> s {cacheAttributes = a} :: UpdateFileSystemAssociation)

-- | The Amazon Resource Name (ARN) of the storage used for the audit logs.
updateFileSystemAssociation_auditDestinationARN :: Lens.Lens' UpdateFileSystemAssociation (Prelude.Maybe Prelude.Text)
updateFileSystemAssociation_auditDestinationARN = Lens.lens (\UpdateFileSystemAssociation' {auditDestinationARN} -> auditDestinationARN) (\s@UpdateFileSystemAssociation' {} a -> s {auditDestinationARN = a} :: UpdateFileSystemAssociation)

-- | The Amazon Resource Name (ARN) of the file system association that you
-- want to update.
updateFileSystemAssociation_fileSystemAssociationARN :: Lens.Lens' UpdateFileSystemAssociation Prelude.Text
updateFileSystemAssociation_fileSystemAssociationARN = Lens.lens (\UpdateFileSystemAssociation' {fileSystemAssociationARN} -> fileSystemAssociationARN) (\s@UpdateFileSystemAssociation' {} a -> s {fileSystemAssociationARN = a} :: UpdateFileSystemAssociation)

instance Core.AWSRequest UpdateFileSystemAssociation where
  type
    AWSResponse UpdateFileSystemAssociation =
      UpdateFileSystemAssociationResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateFileSystemAssociationResponse'
            Prelude.<$> (x Core..?> "FileSystemAssociationARN")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateFileSystemAssociation where
  hashWithSalt _salt UpdateFileSystemAssociation' {..} =
    _salt `Prelude.hashWithSalt` password
      `Prelude.hashWithSalt` userName
      `Prelude.hashWithSalt` cacheAttributes
      `Prelude.hashWithSalt` auditDestinationARN
      `Prelude.hashWithSalt` fileSystemAssociationARN

instance Prelude.NFData UpdateFileSystemAssociation where
  rnf UpdateFileSystemAssociation' {..} =
    Prelude.rnf password
      `Prelude.seq` Prelude.rnf userName
      `Prelude.seq` Prelude.rnf cacheAttributes
      `Prelude.seq` Prelude.rnf auditDestinationARN
      `Prelude.seq` Prelude.rnf fileSystemAssociationARN

instance Core.ToHeaders UpdateFileSystemAssociation where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "StorageGateway_20130630.UpdateFileSystemAssociation" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateFileSystemAssociation where
  toJSON UpdateFileSystemAssociation' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Password" Core..=) Prelude.<$> password,
            ("UserName" Core..=) Prelude.<$> userName,
            ("CacheAttributes" Core..=)
              Prelude.<$> cacheAttributes,
            ("AuditDestinationARN" Core..=)
              Prelude.<$> auditDestinationARN,
            Prelude.Just
              ( "FileSystemAssociationARN"
                  Core..= fileSystemAssociationARN
              )
          ]
      )

instance Core.ToPath UpdateFileSystemAssociation where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateFileSystemAssociation where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateFileSystemAssociationResponse' smart constructor.
data UpdateFileSystemAssociationResponse = UpdateFileSystemAssociationResponse'
  { -- | The ARN of the updated file system association.
    fileSystemAssociationARN :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateFileSystemAssociationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'fileSystemAssociationARN', 'updateFileSystemAssociationResponse_fileSystemAssociationARN' - The ARN of the updated file system association.
--
-- 'httpStatus', 'updateFileSystemAssociationResponse_httpStatus' - The response's http status code.
newUpdateFileSystemAssociationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateFileSystemAssociationResponse
newUpdateFileSystemAssociationResponse pHttpStatus_ =
  UpdateFileSystemAssociationResponse'
    { fileSystemAssociationARN =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The ARN of the updated file system association.
updateFileSystemAssociationResponse_fileSystemAssociationARN :: Lens.Lens' UpdateFileSystemAssociationResponse (Prelude.Maybe Prelude.Text)
updateFileSystemAssociationResponse_fileSystemAssociationARN = Lens.lens (\UpdateFileSystemAssociationResponse' {fileSystemAssociationARN} -> fileSystemAssociationARN) (\s@UpdateFileSystemAssociationResponse' {} a -> s {fileSystemAssociationARN = a} :: UpdateFileSystemAssociationResponse)

-- | The response's http status code.
updateFileSystemAssociationResponse_httpStatus :: Lens.Lens' UpdateFileSystemAssociationResponse Prelude.Int
updateFileSystemAssociationResponse_httpStatus = Lens.lens (\UpdateFileSystemAssociationResponse' {httpStatus} -> httpStatus) (\s@UpdateFileSystemAssociationResponse' {} a -> s {httpStatus = a} :: UpdateFileSystemAssociationResponse)

instance
  Prelude.NFData
    UpdateFileSystemAssociationResponse
  where
  rnf UpdateFileSystemAssociationResponse' {..} =
    Prelude.rnf fileSystemAssociationARN
      `Prelude.seq` Prelude.rnf httpStatus
