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
-- Module      : Amazonka.MacieV2.Types.ServerSideEncryption
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MacieV2.Types.ServerSideEncryption where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MacieV2.Types.EncryptionType
import qualified Amazonka.Prelude as Prelude

-- | Provides information about the server-side encryption settings for an S3
-- bucket or S3 object.
--
-- /See:/ 'newServerSideEncryption' smart constructor.
data ServerSideEncryption = ServerSideEncryption'
  { -- | The Amazon Resource Name (ARN) or unique identifier (key ID) for the KMS
    -- key that\'s used to encrypt data in the bucket or the object. This value
    -- is null if an KMS key isn\'t used to encrypt the data.
    kmsMasterKeyId :: Prelude.Maybe Prelude.Text,
    -- | The server-side encryption algorithm that\'s used when storing data in
    -- the bucket or object. If default encryption is disabled for the bucket
    -- or the object isn\'t encrypted using server-side encryption, this value
    -- is NONE.
    encryptionType :: Prelude.Maybe EncryptionType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ServerSideEncryption' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'kmsMasterKeyId', 'serverSideEncryption_kmsMasterKeyId' - The Amazon Resource Name (ARN) or unique identifier (key ID) for the KMS
-- key that\'s used to encrypt data in the bucket or the object. This value
-- is null if an KMS key isn\'t used to encrypt the data.
--
-- 'encryptionType', 'serverSideEncryption_encryptionType' - The server-side encryption algorithm that\'s used when storing data in
-- the bucket or object. If default encryption is disabled for the bucket
-- or the object isn\'t encrypted using server-side encryption, this value
-- is NONE.
newServerSideEncryption ::
  ServerSideEncryption
newServerSideEncryption =
  ServerSideEncryption'
    { kmsMasterKeyId =
        Prelude.Nothing,
      encryptionType = Prelude.Nothing
    }

-- | The Amazon Resource Name (ARN) or unique identifier (key ID) for the KMS
-- key that\'s used to encrypt data in the bucket or the object. This value
-- is null if an KMS key isn\'t used to encrypt the data.
serverSideEncryption_kmsMasterKeyId :: Lens.Lens' ServerSideEncryption (Prelude.Maybe Prelude.Text)
serverSideEncryption_kmsMasterKeyId = Lens.lens (\ServerSideEncryption' {kmsMasterKeyId} -> kmsMasterKeyId) (\s@ServerSideEncryption' {} a -> s {kmsMasterKeyId = a} :: ServerSideEncryption)

-- | The server-side encryption algorithm that\'s used when storing data in
-- the bucket or object. If default encryption is disabled for the bucket
-- or the object isn\'t encrypted using server-side encryption, this value
-- is NONE.
serverSideEncryption_encryptionType :: Lens.Lens' ServerSideEncryption (Prelude.Maybe EncryptionType)
serverSideEncryption_encryptionType = Lens.lens (\ServerSideEncryption' {encryptionType} -> encryptionType) (\s@ServerSideEncryption' {} a -> s {encryptionType = a} :: ServerSideEncryption)

instance Core.FromJSON ServerSideEncryption where
  parseJSON =
    Core.withObject
      "ServerSideEncryption"
      ( \x ->
          ServerSideEncryption'
            Prelude.<$> (x Core..:? "kmsMasterKeyId")
            Prelude.<*> (x Core..:? "encryptionType")
      )

instance Prelude.Hashable ServerSideEncryption where
  hashWithSalt _salt ServerSideEncryption' {..} =
    _salt `Prelude.hashWithSalt` kmsMasterKeyId
      `Prelude.hashWithSalt` encryptionType

instance Prelude.NFData ServerSideEncryption where
  rnf ServerSideEncryption' {..} =
    Prelude.rnf kmsMasterKeyId
      `Prelude.seq` Prelude.rnf encryptionType
