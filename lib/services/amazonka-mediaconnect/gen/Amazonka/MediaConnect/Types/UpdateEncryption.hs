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
-- Module      : Amazonka.MediaConnect.Types.UpdateEncryption
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaConnect.Types.UpdateEncryption where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MediaConnect.Types.Algorithm
import Amazonka.MediaConnect.Types.KeyType
import qualified Amazonka.Prelude as Prelude

-- | Information about the encryption of the flow.
--
-- /See:/ 'newUpdateEncryption' smart constructor.
data UpdateEncryption = UpdateEncryption'
  { -- | An identifier for the content. The service sends this value to the key
    -- server to identify the current endpoint. The resource ID is also known
    -- as the content ID. This parameter is required for SPEKE encryption and
    -- is not valid for static key encryption.
    resourceId :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the role that you created during setup (when you set up AWS
    -- Elemental MediaConnect as a trusted entity).
    roleArn :: Prelude.Maybe Prelude.Text,
    -- | The value of one of the devices that you configured with your digital
    -- rights management (DRM) platform key provider. This parameter is
    -- required for SPEKE encryption and is not valid for static key
    -- encryption.
    deviceId :: Prelude.Maybe Prelude.Text,
    -- | A 128-bit, 16-byte hex value represented by a 32-character string, to be
    -- used with the key for encrypting content. This parameter is not valid
    -- for static key encryption.
    constantInitializationVector :: Prelude.Maybe Prelude.Text,
    -- | The type of key that is used for the encryption. If no keyType is
    -- provided, the service will use the default setting (static-key).
    keyType :: Prelude.Maybe KeyType,
    -- | The URL from the API Gateway proxy that you set up to talk to your key
    -- server. This parameter is required for SPEKE encryption and is not valid
    -- for static key encryption.
    url :: Prelude.Maybe Prelude.Text,
    -- | The AWS Region that the API Gateway proxy endpoint was created in. This
    -- parameter is required for SPEKE encryption and is not valid for static
    -- key encryption.
    region :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the secret that you created in AWS Secrets Manager to store
    -- the encryption key. This parameter is required for static key encryption
    -- and is not valid for SPEKE encryption.
    secretArn :: Prelude.Maybe Prelude.Text,
    -- | The type of algorithm that is used for the encryption (such as aes128,
    -- aes192, or aes256).
    algorithm :: Prelude.Maybe Algorithm
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateEncryption' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceId', 'updateEncryption_resourceId' - An identifier for the content. The service sends this value to the key
-- server to identify the current endpoint. The resource ID is also known
-- as the content ID. This parameter is required for SPEKE encryption and
-- is not valid for static key encryption.
--
-- 'roleArn', 'updateEncryption_roleArn' - The ARN of the role that you created during setup (when you set up AWS
-- Elemental MediaConnect as a trusted entity).
--
-- 'deviceId', 'updateEncryption_deviceId' - The value of one of the devices that you configured with your digital
-- rights management (DRM) platform key provider. This parameter is
-- required for SPEKE encryption and is not valid for static key
-- encryption.
--
-- 'constantInitializationVector', 'updateEncryption_constantInitializationVector' - A 128-bit, 16-byte hex value represented by a 32-character string, to be
-- used with the key for encrypting content. This parameter is not valid
-- for static key encryption.
--
-- 'keyType', 'updateEncryption_keyType' - The type of key that is used for the encryption. If no keyType is
-- provided, the service will use the default setting (static-key).
--
-- 'url', 'updateEncryption_url' - The URL from the API Gateway proxy that you set up to talk to your key
-- server. This parameter is required for SPEKE encryption and is not valid
-- for static key encryption.
--
-- 'region', 'updateEncryption_region' - The AWS Region that the API Gateway proxy endpoint was created in. This
-- parameter is required for SPEKE encryption and is not valid for static
-- key encryption.
--
-- 'secretArn', 'updateEncryption_secretArn' - The ARN of the secret that you created in AWS Secrets Manager to store
-- the encryption key. This parameter is required for static key encryption
-- and is not valid for SPEKE encryption.
--
-- 'algorithm', 'updateEncryption_algorithm' - The type of algorithm that is used for the encryption (such as aes128,
-- aes192, or aes256).
newUpdateEncryption ::
  UpdateEncryption
newUpdateEncryption =
  UpdateEncryption'
    { resourceId = Prelude.Nothing,
      roleArn = Prelude.Nothing,
      deviceId = Prelude.Nothing,
      constantInitializationVector = Prelude.Nothing,
      keyType = Prelude.Nothing,
      url = Prelude.Nothing,
      region = Prelude.Nothing,
      secretArn = Prelude.Nothing,
      algorithm = Prelude.Nothing
    }

-- | An identifier for the content. The service sends this value to the key
-- server to identify the current endpoint. The resource ID is also known
-- as the content ID. This parameter is required for SPEKE encryption and
-- is not valid for static key encryption.
updateEncryption_resourceId :: Lens.Lens' UpdateEncryption (Prelude.Maybe Prelude.Text)
updateEncryption_resourceId = Lens.lens (\UpdateEncryption' {resourceId} -> resourceId) (\s@UpdateEncryption' {} a -> s {resourceId = a} :: UpdateEncryption)

-- | The ARN of the role that you created during setup (when you set up AWS
-- Elemental MediaConnect as a trusted entity).
updateEncryption_roleArn :: Lens.Lens' UpdateEncryption (Prelude.Maybe Prelude.Text)
updateEncryption_roleArn = Lens.lens (\UpdateEncryption' {roleArn} -> roleArn) (\s@UpdateEncryption' {} a -> s {roleArn = a} :: UpdateEncryption)

-- | The value of one of the devices that you configured with your digital
-- rights management (DRM) platform key provider. This parameter is
-- required for SPEKE encryption and is not valid for static key
-- encryption.
updateEncryption_deviceId :: Lens.Lens' UpdateEncryption (Prelude.Maybe Prelude.Text)
updateEncryption_deviceId = Lens.lens (\UpdateEncryption' {deviceId} -> deviceId) (\s@UpdateEncryption' {} a -> s {deviceId = a} :: UpdateEncryption)

-- | A 128-bit, 16-byte hex value represented by a 32-character string, to be
-- used with the key for encrypting content. This parameter is not valid
-- for static key encryption.
updateEncryption_constantInitializationVector :: Lens.Lens' UpdateEncryption (Prelude.Maybe Prelude.Text)
updateEncryption_constantInitializationVector = Lens.lens (\UpdateEncryption' {constantInitializationVector} -> constantInitializationVector) (\s@UpdateEncryption' {} a -> s {constantInitializationVector = a} :: UpdateEncryption)

-- | The type of key that is used for the encryption. If no keyType is
-- provided, the service will use the default setting (static-key).
updateEncryption_keyType :: Lens.Lens' UpdateEncryption (Prelude.Maybe KeyType)
updateEncryption_keyType = Lens.lens (\UpdateEncryption' {keyType} -> keyType) (\s@UpdateEncryption' {} a -> s {keyType = a} :: UpdateEncryption)

-- | The URL from the API Gateway proxy that you set up to talk to your key
-- server. This parameter is required for SPEKE encryption and is not valid
-- for static key encryption.
updateEncryption_url :: Lens.Lens' UpdateEncryption (Prelude.Maybe Prelude.Text)
updateEncryption_url = Lens.lens (\UpdateEncryption' {url} -> url) (\s@UpdateEncryption' {} a -> s {url = a} :: UpdateEncryption)

-- | The AWS Region that the API Gateway proxy endpoint was created in. This
-- parameter is required for SPEKE encryption and is not valid for static
-- key encryption.
updateEncryption_region :: Lens.Lens' UpdateEncryption (Prelude.Maybe Prelude.Text)
updateEncryption_region = Lens.lens (\UpdateEncryption' {region} -> region) (\s@UpdateEncryption' {} a -> s {region = a} :: UpdateEncryption)

-- | The ARN of the secret that you created in AWS Secrets Manager to store
-- the encryption key. This parameter is required for static key encryption
-- and is not valid for SPEKE encryption.
updateEncryption_secretArn :: Lens.Lens' UpdateEncryption (Prelude.Maybe Prelude.Text)
updateEncryption_secretArn = Lens.lens (\UpdateEncryption' {secretArn} -> secretArn) (\s@UpdateEncryption' {} a -> s {secretArn = a} :: UpdateEncryption)

-- | The type of algorithm that is used for the encryption (such as aes128,
-- aes192, or aes256).
updateEncryption_algorithm :: Lens.Lens' UpdateEncryption (Prelude.Maybe Algorithm)
updateEncryption_algorithm = Lens.lens (\UpdateEncryption' {algorithm} -> algorithm) (\s@UpdateEncryption' {} a -> s {algorithm = a} :: UpdateEncryption)

instance Prelude.Hashable UpdateEncryption where
  hashWithSalt _salt UpdateEncryption' {..} =
    _salt `Prelude.hashWithSalt` resourceId
      `Prelude.hashWithSalt` roleArn
      `Prelude.hashWithSalt` deviceId
      `Prelude.hashWithSalt` constantInitializationVector
      `Prelude.hashWithSalt` keyType
      `Prelude.hashWithSalt` url
      `Prelude.hashWithSalt` region
      `Prelude.hashWithSalt` secretArn
      `Prelude.hashWithSalt` algorithm

instance Prelude.NFData UpdateEncryption where
  rnf UpdateEncryption' {..} =
    Prelude.rnf resourceId
      `Prelude.seq` Prelude.rnf roleArn
      `Prelude.seq` Prelude.rnf deviceId
      `Prelude.seq` Prelude.rnf constantInitializationVector
      `Prelude.seq` Prelude.rnf keyType
      `Prelude.seq` Prelude.rnf url
      `Prelude.seq` Prelude.rnf region
      `Prelude.seq` Prelude.rnf secretArn
      `Prelude.seq` Prelude.rnf algorithm

instance Core.ToJSON UpdateEncryption where
  toJSON UpdateEncryption' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("resourceId" Core..=) Prelude.<$> resourceId,
            ("roleArn" Core..=) Prelude.<$> roleArn,
            ("deviceId" Core..=) Prelude.<$> deviceId,
            ("constantInitializationVector" Core..=)
              Prelude.<$> constantInitializationVector,
            ("keyType" Core..=) Prelude.<$> keyType,
            ("url" Core..=) Prelude.<$> url,
            ("region" Core..=) Prelude.<$> region,
            ("secretArn" Core..=) Prelude.<$> secretArn,
            ("algorithm" Core..=) Prelude.<$> algorithm
          ]
      )
