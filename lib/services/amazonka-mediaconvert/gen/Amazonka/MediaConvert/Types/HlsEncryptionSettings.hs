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
-- Module      : Amazonka.MediaConvert.Types.HlsEncryptionSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaConvert.Types.HlsEncryptionSettings where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MediaConvert.Types.HlsEncryptionType
import Amazonka.MediaConvert.Types.HlsInitializationVectorInManifest
import Amazonka.MediaConvert.Types.HlsKeyProviderType
import Amazonka.MediaConvert.Types.HlsOfflineEncrypted
import Amazonka.MediaConvert.Types.SpekeKeyProvider
import Amazonka.MediaConvert.Types.StaticKeyProvider
import qualified Amazonka.Prelude as Prelude

-- | Settings for HLS encryption
--
-- /See:/ 'newHlsEncryptionSettings' smart constructor.
data HlsEncryptionSettings = HlsEncryptionSettings'
  { -- | Specify whether your DRM encryption key is static or from a key provider
    -- that follows the SPEKE standard. For more information about SPEKE, see
    -- https:\/\/docs.aws.amazon.com\/speke\/latest\/documentation\/what-is-speke.html.
    type' :: Prelude.Maybe HlsKeyProviderType,
    -- | The Initialization Vector is a 128-bit number used in conjunction with
    -- the key for encrypting blocks. If set to INCLUDE, Initialization Vector
    -- is listed in the manifest. Otherwise Initialization Vector is not in the
    -- manifest.
    initializationVectorInManifest :: Prelude.Maybe HlsInitializationVectorInManifest,
    -- | If your output group type is HLS, DASH, or Microsoft Smooth, use these
    -- settings when doing DRM encryption with a SPEKE-compliant key provider.
    -- If your output group type is CMAF, use the SpekeKeyProviderCmaf settings
    -- instead.
    spekeKeyProvider :: Prelude.Maybe SpekeKeyProvider,
    -- | This is a 128-bit, 16-byte hex value represented by a 32-character text
    -- string. If this parameter is not set then the Initialization Vector will
    -- follow the segment number by default.
    constantInitializationVector :: Prelude.Maybe Prelude.Text,
    -- | Encrypts the segments with the given encryption scheme. Leave blank to
    -- disable. Selecting \'Disabled\' in the web interface also disables
    -- encryption.
    encryptionMethod :: Prelude.Maybe HlsEncryptionType,
    -- | Use these settings to set up encryption with a static key provider.
    staticKeyProvider :: Prelude.Maybe StaticKeyProvider,
    -- | Enable this setting to insert the EXT-X-SESSION-KEY element into the
    -- master playlist. This allows for offline Apple HLS FairPlay content
    -- protection.
    offlineEncrypted :: Prelude.Maybe HlsOfflineEncrypted
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'HlsEncryptionSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'type'', 'hlsEncryptionSettings_type' - Specify whether your DRM encryption key is static or from a key provider
-- that follows the SPEKE standard. For more information about SPEKE, see
-- https:\/\/docs.aws.amazon.com\/speke\/latest\/documentation\/what-is-speke.html.
--
-- 'initializationVectorInManifest', 'hlsEncryptionSettings_initializationVectorInManifest' - The Initialization Vector is a 128-bit number used in conjunction with
-- the key for encrypting blocks. If set to INCLUDE, Initialization Vector
-- is listed in the manifest. Otherwise Initialization Vector is not in the
-- manifest.
--
-- 'spekeKeyProvider', 'hlsEncryptionSettings_spekeKeyProvider' - If your output group type is HLS, DASH, or Microsoft Smooth, use these
-- settings when doing DRM encryption with a SPEKE-compliant key provider.
-- If your output group type is CMAF, use the SpekeKeyProviderCmaf settings
-- instead.
--
-- 'constantInitializationVector', 'hlsEncryptionSettings_constantInitializationVector' - This is a 128-bit, 16-byte hex value represented by a 32-character text
-- string. If this parameter is not set then the Initialization Vector will
-- follow the segment number by default.
--
-- 'encryptionMethod', 'hlsEncryptionSettings_encryptionMethod' - Encrypts the segments with the given encryption scheme. Leave blank to
-- disable. Selecting \'Disabled\' in the web interface also disables
-- encryption.
--
-- 'staticKeyProvider', 'hlsEncryptionSettings_staticKeyProvider' - Use these settings to set up encryption with a static key provider.
--
-- 'offlineEncrypted', 'hlsEncryptionSettings_offlineEncrypted' - Enable this setting to insert the EXT-X-SESSION-KEY element into the
-- master playlist. This allows for offline Apple HLS FairPlay content
-- protection.
newHlsEncryptionSettings ::
  HlsEncryptionSettings
newHlsEncryptionSettings =
  HlsEncryptionSettings'
    { type' = Prelude.Nothing,
      initializationVectorInManifest = Prelude.Nothing,
      spekeKeyProvider = Prelude.Nothing,
      constantInitializationVector = Prelude.Nothing,
      encryptionMethod = Prelude.Nothing,
      staticKeyProvider = Prelude.Nothing,
      offlineEncrypted = Prelude.Nothing
    }

-- | Specify whether your DRM encryption key is static or from a key provider
-- that follows the SPEKE standard. For more information about SPEKE, see
-- https:\/\/docs.aws.amazon.com\/speke\/latest\/documentation\/what-is-speke.html.
hlsEncryptionSettings_type :: Lens.Lens' HlsEncryptionSettings (Prelude.Maybe HlsKeyProviderType)
hlsEncryptionSettings_type = Lens.lens (\HlsEncryptionSettings' {type'} -> type') (\s@HlsEncryptionSettings' {} a -> s {type' = a} :: HlsEncryptionSettings)

-- | The Initialization Vector is a 128-bit number used in conjunction with
-- the key for encrypting blocks. If set to INCLUDE, Initialization Vector
-- is listed in the manifest. Otherwise Initialization Vector is not in the
-- manifest.
hlsEncryptionSettings_initializationVectorInManifest :: Lens.Lens' HlsEncryptionSettings (Prelude.Maybe HlsInitializationVectorInManifest)
hlsEncryptionSettings_initializationVectorInManifest = Lens.lens (\HlsEncryptionSettings' {initializationVectorInManifest} -> initializationVectorInManifest) (\s@HlsEncryptionSettings' {} a -> s {initializationVectorInManifest = a} :: HlsEncryptionSettings)

-- | If your output group type is HLS, DASH, or Microsoft Smooth, use these
-- settings when doing DRM encryption with a SPEKE-compliant key provider.
-- If your output group type is CMAF, use the SpekeKeyProviderCmaf settings
-- instead.
hlsEncryptionSettings_spekeKeyProvider :: Lens.Lens' HlsEncryptionSettings (Prelude.Maybe SpekeKeyProvider)
hlsEncryptionSettings_spekeKeyProvider = Lens.lens (\HlsEncryptionSettings' {spekeKeyProvider} -> spekeKeyProvider) (\s@HlsEncryptionSettings' {} a -> s {spekeKeyProvider = a} :: HlsEncryptionSettings)

-- | This is a 128-bit, 16-byte hex value represented by a 32-character text
-- string. If this parameter is not set then the Initialization Vector will
-- follow the segment number by default.
hlsEncryptionSettings_constantInitializationVector :: Lens.Lens' HlsEncryptionSettings (Prelude.Maybe Prelude.Text)
hlsEncryptionSettings_constantInitializationVector = Lens.lens (\HlsEncryptionSettings' {constantInitializationVector} -> constantInitializationVector) (\s@HlsEncryptionSettings' {} a -> s {constantInitializationVector = a} :: HlsEncryptionSettings)

-- | Encrypts the segments with the given encryption scheme. Leave blank to
-- disable. Selecting \'Disabled\' in the web interface also disables
-- encryption.
hlsEncryptionSettings_encryptionMethod :: Lens.Lens' HlsEncryptionSettings (Prelude.Maybe HlsEncryptionType)
hlsEncryptionSettings_encryptionMethod = Lens.lens (\HlsEncryptionSettings' {encryptionMethod} -> encryptionMethod) (\s@HlsEncryptionSettings' {} a -> s {encryptionMethod = a} :: HlsEncryptionSettings)

-- | Use these settings to set up encryption with a static key provider.
hlsEncryptionSettings_staticKeyProvider :: Lens.Lens' HlsEncryptionSettings (Prelude.Maybe StaticKeyProvider)
hlsEncryptionSettings_staticKeyProvider = Lens.lens (\HlsEncryptionSettings' {staticKeyProvider} -> staticKeyProvider) (\s@HlsEncryptionSettings' {} a -> s {staticKeyProvider = a} :: HlsEncryptionSettings)

-- | Enable this setting to insert the EXT-X-SESSION-KEY element into the
-- master playlist. This allows for offline Apple HLS FairPlay content
-- protection.
hlsEncryptionSettings_offlineEncrypted :: Lens.Lens' HlsEncryptionSettings (Prelude.Maybe HlsOfflineEncrypted)
hlsEncryptionSettings_offlineEncrypted = Lens.lens (\HlsEncryptionSettings' {offlineEncrypted} -> offlineEncrypted) (\s@HlsEncryptionSettings' {} a -> s {offlineEncrypted = a} :: HlsEncryptionSettings)

instance Core.FromJSON HlsEncryptionSettings where
  parseJSON =
    Core.withObject
      "HlsEncryptionSettings"
      ( \x ->
          HlsEncryptionSettings'
            Prelude.<$> (x Core..:? "type")
            Prelude.<*> (x Core..:? "initializationVectorInManifest")
            Prelude.<*> (x Core..:? "spekeKeyProvider")
            Prelude.<*> (x Core..:? "constantInitializationVector")
            Prelude.<*> (x Core..:? "encryptionMethod")
            Prelude.<*> (x Core..:? "staticKeyProvider")
            Prelude.<*> (x Core..:? "offlineEncrypted")
      )

instance Prelude.Hashable HlsEncryptionSettings where
  hashWithSalt _salt HlsEncryptionSettings' {..} =
    _salt `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` initializationVectorInManifest
      `Prelude.hashWithSalt` spekeKeyProvider
      `Prelude.hashWithSalt` constantInitializationVector
      `Prelude.hashWithSalt` encryptionMethod
      `Prelude.hashWithSalt` staticKeyProvider
      `Prelude.hashWithSalt` offlineEncrypted

instance Prelude.NFData HlsEncryptionSettings where
  rnf HlsEncryptionSettings' {..} =
    Prelude.rnf type'
      `Prelude.seq` Prelude.rnf initializationVectorInManifest
      `Prelude.seq` Prelude.rnf spekeKeyProvider
      `Prelude.seq` Prelude.rnf constantInitializationVector
      `Prelude.seq` Prelude.rnf encryptionMethod
      `Prelude.seq` Prelude.rnf staticKeyProvider
      `Prelude.seq` Prelude.rnf offlineEncrypted

instance Core.ToJSON HlsEncryptionSettings where
  toJSON HlsEncryptionSettings' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("type" Core..=) Prelude.<$> type',
            ("initializationVectorInManifest" Core..=)
              Prelude.<$> initializationVectorInManifest,
            ("spekeKeyProvider" Core..=)
              Prelude.<$> spekeKeyProvider,
            ("constantInitializationVector" Core..=)
              Prelude.<$> constantInitializationVector,
            ("encryptionMethod" Core..=)
              Prelude.<$> encryptionMethod,
            ("staticKeyProvider" Core..=)
              Prelude.<$> staticKeyProvider,
            ("offlineEncrypted" Core..=)
              Prelude.<$> offlineEncrypted
          ]
      )
