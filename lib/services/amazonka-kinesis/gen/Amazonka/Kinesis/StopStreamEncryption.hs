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
-- Module      : Amazonka.Kinesis.StopStreamEncryption
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disables server-side encryption for a specified stream.
--
-- Stopping encryption is an asynchronous operation. Upon receiving the
-- request, Kinesis Data Streams returns immediately and sets the status of
-- the stream to @UPDATING@. After the update is complete, Kinesis Data
-- Streams sets the status of the stream back to @ACTIVE@. Stopping
-- encryption normally takes a few seconds to complete, but it can take
-- minutes. You can continue to read and write data to your stream while
-- its status is @UPDATING@. Once the status of the stream is @ACTIVE@,
-- records written to the stream are no longer encrypted by Kinesis Data
-- Streams.
--
-- API Limits: You can successfully disable server-side encryption 25 times
-- in a rolling 24-hour period.
--
-- Note: It can take up to 5 seconds after the stream is in an @ACTIVE@
-- status before all records written to the stream are no longer subject to
-- encryption. After you disabled encryption, you can verify that
-- encryption is not applied by inspecting the API response from
-- @PutRecord@ or @PutRecords@.
module Amazonka.Kinesis.StopStreamEncryption
  ( -- * Creating a Request
    StopStreamEncryption (..),
    newStopStreamEncryption,

    -- * Request Lenses
    stopStreamEncryption_streamName,
    stopStreamEncryption_encryptionType,
    stopStreamEncryption_keyId,

    -- * Destructuring the Response
    StopStreamEncryptionResponse (..),
    newStopStreamEncryptionResponse,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.Kinesis.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newStopStreamEncryption' smart constructor.
data StopStreamEncryption = StopStreamEncryption'
  { -- | The name of the stream on which to stop encrypting records.
    streamName :: Prelude.Text,
    -- | The encryption type. The only valid value is @KMS@.
    encryptionType :: EncryptionType,
    -- | The GUID for the customer-managed Amazon Web Services KMS key to use for
    -- encryption. This value can be a globally unique identifier, a fully
    -- specified Amazon Resource Name (ARN) to either an alias or a key, or an
    -- alias name prefixed by \"alias\/\".You can also use a master key owned
    -- by Kinesis Data Streams by specifying the alias @aws\/kinesis@.
    --
    -- -   Key ARN example:
    --     @arn:aws:kms:us-east-1:123456789012:key\/12345678-1234-1234-1234-123456789012@
    --
    -- -   Alias ARN example:
    --     @arn:aws:kms:us-east-1:123456789012:alias\/MyAliasName@
    --
    -- -   Globally unique key ID example:
    --     @12345678-1234-1234-1234-123456789012@
    --
    -- -   Alias name example: @alias\/MyAliasName@
    --
    -- -   Master key owned by Kinesis Data Streams: @alias\/aws\/kinesis@
    keyId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StopStreamEncryption' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'streamName', 'stopStreamEncryption_streamName' - The name of the stream on which to stop encrypting records.
--
-- 'encryptionType', 'stopStreamEncryption_encryptionType' - The encryption type. The only valid value is @KMS@.
--
-- 'keyId', 'stopStreamEncryption_keyId' - The GUID for the customer-managed Amazon Web Services KMS key to use for
-- encryption. This value can be a globally unique identifier, a fully
-- specified Amazon Resource Name (ARN) to either an alias or a key, or an
-- alias name prefixed by \"alias\/\".You can also use a master key owned
-- by Kinesis Data Streams by specifying the alias @aws\/kinesis@.
--
-- -   Key ARN example:
--     @arn:aws:kms:us-east-1:123456789012:key\/12345678-1234-1234-1234-123456789012@
--
-- -   Alias ARN example:
--     @arn:aws:kms:us-east-1:123456789012:alias\/MyAliasName@
--
-- -   Globally unique key ID example:
--     @12345678-1234-1234-1234-123456789012@
--
-- -   Alias name example: @alias\/MyAliasName@
--
-- -   Master key owned by Kinesis Data Streams: @alias\/aws\/kinesis@
newStopStreamEncryption ::
  -- | 'streamName'
  Prelude.Text ->
  -- | 'encryptionType'
  EncryptionType ->
  -- | 'keyId'
  Prelude.Text ->
  StopStreamEncryption
newStopStreamEncryption
  pStreamName_
  pEncryptionType_
  pKeyId_ =
    StopStreamEncryption'
      { streamName = pStreamName_,
        encryptionType = pEncryptionType_,
        keyId = pKeyId_
      }

-- | The name of the stream on which to stop encrypting records.
stopStreamEncryption_streamName :: Lens.Lens' StopStreamEncryption Prelude.Text
stopStreamEncryption_streamName = Lens.lens (\StopStreamEncryption' {streamName} -> streamName) (\s@StopStreamEncryption' {} a -> s {streamName = a} :: StopStreamEncryption)

-- | The encryption type. The only valid value is @KMS@.
stopStreamEncryption_encryptionType :: Lens.Lens' StopStreamEncryption EncryptionType
stopStreamEncryption_encryptionType = Lens.lens (\StopStreamEncryption' {encryptionType} -> encryptionType) (\s@StopStreamEncryption' {} a -> s {encryptionType = a} :: StopStreamEncryption)

-- | The GUID for the customer-managed Amazon Web Services KMS key to use for
-- encryption. This value can be a globally unique identifier, a fully
-- specified Amazon Resource Name (ARN) to either an alias or a key, or an
-- alias name prefixed by \"alias\/\".You can also use a master key owned
-- by Kinesis Data Streams by specifying the alias @aws\/kinesis@.
--
-- -   Key ARN example:
--     @arn:aws:kms:us-east-1:123456789012:key\/12345678-1234-1234-1234-123456789012@
--
-- -   Alias ARN example:
--     @arn:aws:kms:us-east-1:123456789012:alias\/MyAliasName@
--
-- -   Globally unique key ID example:
--     @12345678-1234-1234-1234-123456789012@
--
-- -   Alias name example: @alias\/MyAliasName@
--
-- -   Master key owned by Kinesis Data Streams: @alias\/aws\/kinesis@
stopStreamEncryption_keyId :: Lens.Lens' StopStreamEncryption Prelude.Text
stopStreamEncryption_keyId = Lens.lens (\StopStreamEncryption' {keyId} -> keyId) (\s@StopStreamEncryption' {} a -> s {keyId = a} :: StopStreamEncryption)

instance Core.AWSRequest StopStreamEncryption where
  type
    AWSResponse StopStreamEncryption =
      StopStreamEncryptionResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveNull StopStreamEncryptionResponse'

instance Prelude.Hashable StopStreamEncryption where
  hashWithSalt _salt StopStreamEncryption' {..} =
    _salt `Prelude.hashWithSalt` streamName
      `Prelude.hashWithSalt` encryptionType
      `Prelude.hashWithSalt` keyId

instance Prelude.NFData StopStreamEncryption where
  rnf StopStreamEncryption' {..} =
    Prelude.rnf streamName
      `Prelude.seq` Prelude.rnf encryptionType
      `Prelude.seq` Prelude.rnf keyId

instance Core.ToHeaders StopStreamEncryption where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "Kinesis_20131202.StopStreamEncryption" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON StopStreamEncryption where
  toJSON StopStreamEncryption' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("StreamName" Core..= streamName),
            Prelude.Just
              ("EncryptionType" Core..= encryptionType),
            Prelude.Just ("KeyId" Core..= keyId)
          ]
      )

instance Core.ToPath StopStreamEncryption where
  toPath = Prelude.const "/"

instance Core.ToQuery StopStreamEncryption where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newStopStreamEncryptionResponse' smart constructor.
data StopStreamEncryptionResponse = StopStreamEncryptionResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StopStreamEncryptionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newStopStreamEncryptionResponse ::
  StopStreamEncryptionResponse
newStopStreamEncryptionResponse =
  StopStreamEncryptionResponse'

instance Prelude.NFData StopStreamEncryptionResponse where
  rnf _ = ()
