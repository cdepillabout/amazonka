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
-- Module      : Amazonka.Lightsail.CreateKeyPair
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a custom SSH key pair that you can use with an Amazon Lightsail
-- instance.
--
-- Use the
-- <https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_DownloadDefaultKeyPair.html DownloadDefaultKeyPair>
-- action to create a Lightsail default key pair in an Amazon Web Services
-- Region where a default key pair does not currently exist.
--
-- The @create key pair@ operation supports tag-based access control via
-- request tags. For more information, see the
-- <https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-controlling-access-using-tags Amazon Lightsail Developer Guide>.
module Amazonka.Lightsail.CreateKeyPair
  ( -- * Creating a Request
    CreateKeyPair (..),
    newCreateKeyPair,

    -- * Request Lenses
    createKeyPair_tags,
    createKeyPair_keyPairName,

    -- * Destructuring the Response
    CreateKeyPairResponse (..),
    newCreateKeyPairResponse,

    -- * Response Lenses
    createKeyPairResponse_publicKeyBase64,
    createKeyPairResponse_keyPair,
    createKeyPairResponse_privateKeyBase64,
    createKeyPairResponse_operation,
    createKeyPairResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.Lightsail.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateKeyPair' smart constructor.
data CreateKeyPair = CreateKeyPair'
  { -- | The tag keys and optional values to add to the resource during create.
    --
    -- Use the @TagResource@ action to tag a resource after it\'s created.
    tags :: Prelude.Maybe [Tag],
    -- | The name for your new key pair.
    keyPairName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateKeyPair' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createKeyPair_tags' - The tag keys and optional values to add to the resource during create.
--
-- Use the @TagResource@ action to tag a resource after it\'s created.
--
-- 'keyPairName', 'createKeyPair_keyPairName' - The name for your new key pair.
newCreateKeyPair ::
  -- | 'keyPairName'
  Prelude.Text ->
  CreateKeyPair
newCreateKeyPair pKeyPairName_ =
  CreateKeyPair'
    { tags = Prelude.Nothing,
      keyPairName = pKeyPairName_
    }

-- | The tag keys and optional values to add to the resource during create.
--
-- Use the @TagResource@ action to tag a resource after it\'s created.
createKeyPair_tags :: Lens.Lens' CreateKeyPair (Prelude.Maybe [Tag])
createKeyPair_tags = Lens.lens (\CreateKeyPair' {tags} -> tags) (\s@CreateKeyPair' {} a -> s {tags = a} :: CreateKeyPair) Prelude.. Lens.mapping Lens.coerced

-- | The name for your new key pair.
createKeyPair_keyPairName :: Lens.Lens' CreateKeyPair Prelude.Text
createKeyPair_keyPairName = Lens.lens (\CreateKeyPair' {keyPairName} -> keyPairName) (\s@CreateKeyPair' {} a -> s {keyPairName = a} :: CreateKeyPair)

instance Core.AWSRequest CreateKeyPair where
  type
    AWSResponse CreateKeyPair =
      CreateKeyPairResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateKeyPairResponse'
            Prelude.<$> (x Core..?> "publicKeyBase64")
            Prelude.<*> (x Core..?> "keyPair")
            Prelude.<*> (x Core..?> "privateKeyBase64")
            Prelude.<*> (x Core..?> "operation")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateKeyPair where
  hashWithSalt _salt CreateKeyPair' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` keyPairName

instance Prelude.NFData CreateKeyPair where
  rnf CreateKeyPair' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf keyPairName

instance Core.ToHeaders CreateKeyPair where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "Lightsail_20161128.CreateKeyPair" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateKeyPair where
  toJSON CreateKeyPair' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("tags" Core..=) Prelude.<$> tags,
            Prelude.Just ("keyPairName" Core..= keyPairName)
          ]
      )

instance Core.ToPath CreateKeyPair where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateKeyPair where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateKeyPairResponse' smart constructor.
data CreateKeyPairResponse = CreateKeyPairResponse'
  { -- | A base64-encoded public key of the @ssh-rsa@ type.
    publicKeyBase64 :: Prelude.Maybe Prelude.Text,
    -- | An array of key-value pairs containing information about the new key
    -- pair you just created.
    keyPair :: Prelude.Maybe KeyPair,
    -- | A base64-encoded RSA private key.
    privateKeyBase64 :: Prelude.Maybe Prelude.Text,
    -- | An array of objects that describe the result of the action, such as the
    -- status of the request, the timestamp of the request, and the resources
    -- affected by the request.
    operation :: Prelude.Maybe Operation,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateKeyPairResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'publicKeyBase64', 'createKeyPairResponse_publicKeyBase64' - A base64-encoded public key of the @ssh-rsa@ type.
--
-- 'keyPair', 'createKeyPairResponse_keyPair' - An array of key-value pairs containing information about the new key
-- pair you just created.
--
-- 'privateKeyBase64', 'createKeyPairResponse_privateKeyBase64' - A base64-encoded RSA private key.
--
-- 'operation', 'createKeyPairResponse_operation' - An array of objects that describe the result of the action, such as the
-- status of the request, the timestamp of the request, and the resources
-- affected by the request.
--
-- 'httpStatus', 'createKeyPairResponse_httpStatus' - The response's http status code.
newCreateKeyPairResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateKeyPairResponse
newCreateKeyPairResponse pHttpStatus_ =
  CreateKeyPairResponse'
    { publicKeyBase64 =
        Prelude.Nothing,
      keyPair = Prelude.Nothing,
      privateKeyBase64 = Prelude.Nothing,
      operation = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A base64-encoded public key of the @ssh-rsa@ type.
createKeyPairResponse_publicKeyBase64 :: Lens.Lens' CreateKeyPairResponse (Prelude.Maybe Prelude.Text)
createKeyPairResponse_publicKeyBase64 = Lens.lens (\CreateKeyPairResponse' {publicKeyBase64} -> publicKeyBase64) (\s@CreateKeyPairResponse' {} a -> s {publicKeyBase64 = a} :: CreateKeyPairResponse)

-- | An array of key-value pairs containing information about the new key
-- pair you just created.
createKeyPairResponse_keyPair :: Lens.Lens' CreateKeyPairResponse (Prelude.Maybe KeyPair)
createKeyPairResponse_keyPair = Lens.lens (\CreateKeyPairResponse' {keyPair} -> keyPair) (\s@CreateKeyPairResponse' {} a -> s {keyPair = a} :: CreateKeyPairResponse)

-- | A base64-encoded RSA private key.
createKeyPairResponse_privateKeyBase64 :: Lens.Lens' CreateKeyPairResponse (Prelude.Maybe Prelude.Text)
createKeyPairResponse_privateKeyBase64 = Lens.lens (\CreateKeyPairResponse' {privateKeyBase64} -> privateKeyBase64) (\s@CreateKeyPairResponse' {} a -> s {privateKeyBase64 = a} :: CreateKeyPairResponse)

-- | An array of objects that describe the result of the action, such as the
-- status of the request, the timestamp of the request, and the resources
-- affected by the request.
createKeyPairResponse_operation :: Lens.Lens' CreateKeyPairResponse (Prelude.Maybe Operation)
createKeyPairResponse_operation = Lens.lens (\CreateKeyPairResponse' {operation} -> operation) (\s@CreateKeyPairResponse' {} a -> s {operation = a} :: CreateKeyPairResponse)

-- | The response's http status code.
createKeyPairResponse_httpStatus :: Lens.Lens' CreateKeyPairResponse Prelude.Int
createKeyPairResponse_httpStatus = Lens.lens (\CreateKeyPairResponse' {httpStatus} -> httpStatus) (\s@CreateKeyPairResponse' {} a -> s {httpStatus = a} :: CreateKeyPairResponse)

instance Prelude.NFData CreateKeyPairResponse where
  rnf CreateKeyPairResponse' {..} =
    Prelude.rnf publicKeyBase64
      `Prelude.seq` Prelude.rnf keyPair
      `Prelude.seq` Prelude.rnf privateKeyBase64
      `Prelude.seq` Prelude.rnf operation
      `Prelude.seq` Prelude.rnf httpStatus
