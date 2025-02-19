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
-- Module      : Amazonka.ConnectParticipant.CompleteAttachmentUpload
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Allows you to confirm that the attachment has been uploaded using the
-- pre-signed URL provided in StartAttachmentUpload API.
--
-- The Amazon Connect Participant Service APIs do not use
-- <https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html Signature Version 4 authentication>.
module Amazonka.ConnectParticipant.CompleteAttachmentUpload
  ( -- * Creating a Request
    CompleteAttachmentUpload (..),
    newCompleteAttachmentUpload,

    -- * Request Lenses
    completeAttachmentUpload_attachmentIds,
    completeAttachmentUpload_clientToken,
    completeAttachmentUpload_connectionToken,

    -- * Destructuring the Response
    CompleteAttachmentUploadResponse (..),
    newCompleteAttachmentUploadResponse,

    -- * Response Lenses
    completeAttachmentUploadResponse_httpStatus,
  )
where

import Amazonka.ConnectParticipant.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCompleteAttachmentUpload' smart constructor.
data CompleteAttachmentUpload = CompleteAttachmentUpload'
  { -- | A list of unique identifiers for the attachments.
    attachmentIds :: Prelude.NonEmpty Prelude.Text,
    -- | A unique, case-sensitive identifier that you provide to ensure the
    -- idempotency of the request.
    clientToken :: Prelude.Text,
    -- | The authentication token associated with the participant\'s connection.
    connectionToken :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CompleteAttachmentUpload' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'attachmentIds', 'completeAttachmentUpload_attachmentIds' - A list of unique identifiers for the attachments.
--
-- 'clientToken', 'completeAttachmentUpload_clientToken' - A unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request.
--
-- 'connectionToken', 'completeAttachmentUpload_connectionToken' - The authentication token associated with the participant\'s connection.
newCompleteAttachmentUpload ::
  -- | 'attachmentIds'
  Prelude.NonEmpty Prelude.Text ->
  -- | 'clientToken'
  Prelude.Text ->
  -- | 'connectionToken'
  Prelude.Text ->
  CompleteAttachmentUpload
newCompleteAttachmentUpload
  pAttachmentIds_
  pClientToken_
  pConnectionToken_ =
    CompleteAttachmentUpload'
      { attachmentIds =
          Lens.coerced Lens.# pAttachmentIds_,
        clientToken = pClientToken_,
        connectionToken = pConnectionToken_
      }

-- | A list of unique identifiers for the attachments.
completeAttachmentUpload_attachmentIds :: Lens.Lens' CompleteAttachmentUpload (Prelude.NonEmpty Prelude.Text)
completeAttachmentUpload_attachmentIds = Lens.lens (\CompleteAttachmentUpload' {attachmentIds} -> attachmentIds) (\s@CompleteAttachmentUpload' {} a -> s {attachmentIds = a} :: CompleteAttachmentUpload) Prelude.. Lens.coerced

-- | A unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request.
completeAttachmentUpload_clientToken :: Lens.Lens' CompleteAttachmentUpload Prelude.Text
completeAttachmentUpload_clientToken = Lens.lens (\CompleteAttachmentUpload' {clientToken} -> clientToken) (\s@CompleteAttachmentUpload' {} a -> s {clientToken = a} :: CompleteAttachmentUpload)

-- | The authentication token associated with the participant\'s connection.
completeAttachmentUpload_connectionToken :: Lens.Lens' CompleteAttachmentUpload Prelude.Text
completeAttachmentUpload_connectionToken = Lens.lens (\CompleteAttachmentUpload' {connectionToken} -> connectionToken) (\s@CompleteAttachmentUpload' {} a -> s {connectionToken = a} :: CompleteAttachmentUpload)

instance Core.AWSRequest CompleteAttachmentUpload where
  type
    AWSResponse CompleteAttachmentUpload =
      CompleteAttachmentUploadResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          CompleteAttachmentUploadResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CompleteAttachmentUpload where
  hashWithSalt _salt CompleteAttachmentUpload' {..} =
    _salt `Prelude.hashWithSalt` attachmentIds
      `Prelude.hashWithSalt` clientToken
      `Prelude.hashWithSalt` connectionToken

instance Prelude.NFData CompleteAttachmentUpload where
  rnf CompleteAttachmentUpload' {..} =
    Prelude.rnf attachmentIds
      `Prelude.seq` Prelude.rnf clientToken
      `Prelude.seq` Prelude.rnf connectionToken

instance Core.ToHeaders CompleteAttachmentUpload where
  toHeaders CompleteAttachmentUpload' {..} =
    Prelude.mconcat
      [ "X-Amz-Bearer" Core.=# connectionToken,
        "Content-Type"
          Core.=# ("application/x-amz-json-1.1" :: Prelude.ByteString)
      ]

instance Core.ToJSON CompleteAttachmentUpload where
  toJSON CompleteAttachmentUpload' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("AttachmentIds" Core..= attachmentIds),
            Prelude.Just ("ClientToken" Core..= clientToken)
          ]
      )

instance Core.ToPath CompleteAttachmentUpload where
  toPath =
    Prelude.const
      "/participant/complete-attachment-upload"

instance Core.ToQuery CompleteAttachmentUpload where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCompleteAttachmentUploadResponse' smart constructor.
data CompleteAttachmentUploadResponse = CompleteAttachmentUploadResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CompleteAttachmentUploadResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'completeAttachmentUploadResponse_httpStatus' - The response's http status code.
newCompleteAttachmentUploadResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CompleteAttachmentUploadResponse
newCompleteAttachmentUploadResponse pHttpStatus_ =
  CompleteAttachmentUploadResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
completeAttachmentUploadResponse_httpStatus :: Lens.Lens' CompleteAttachmentUploadResponse Prelude.Int
completeAttachmentUploadResponse_httpStatus = Lens.lens (\CompleteAttachmentUploadResponse' {httpStatus} -> httpStatus) (\s@CompleteAttachmentUploadResponse' {} a -> s {httpStatus = a} :: CompleteAttachmentUploadResponse)

instance
  Prelude.NFData
    CompleteAttachmentUploadResponse
  where
  rnf CompleteAttachmentUploadResponse' {..} =
    Prelude.rnf httpStatus
