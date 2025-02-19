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
-- Module      : Amazonka.Signer.Types.SigningPlatformOverrides
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Signer.Types.SigningPlatformOverrides where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.Signer.Types.ImageFormat
import Amazonka.Signer.Types.SigningConfigurationOverrides

-- | Any overrides that are applied to the signing configuration of a code
-- signing platform.
--
-- /See:/ 'newSigningPlatformOverrides' smart constructor.
data SigningPlatformOverrides = SigningPlatformOverrides'
  { -- | A signed image is a JSON object. When overriding the default signing
    -- platform configuration, a customer can select either of two signing
    -- formats, @JSONEmbedded@ or @JSONDetached@. (A third format value,
    -- @JSON@, is reserved for future use.) With @JSONEmbedded@, the signing
    -- image has the payload embedded in it. With @JSONDetached@, the payload
    -- is not be embedded in the signing image.
    signingImageFormat :: Prelude.Maybe ImageFormat,
    -- | A signing configuration that overrides the default encryption or hash
    -- algorithm of a signing job.
    signingConfiguration :: Prelude.Maybe SigningConfigurationOverrides
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SigningPlatformOverrides' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'signingImageFormat', 'signingPlatformOverrides_signingImageFormat' - A signed image is a JSON object. When overriding the default signing
-- platform configuration, a customer can select either of two signing
-- formats, @JSONEmbedded@ or @JSONDetached@. (A third format value,
-- @JSON@, is reserved for future use.) With @JSONEmbedded@, the signing
-- image has the payload embedded in it. With @JSONDetached@, the payload
-- is not be embedded in the signing image.
--
-- 'signingConfiguration', 'signingPlatformOverrides_signingConfiguration' - A signing configuration that overrides the default encryption or hash
-- algorithm of a signing job.
newSigningPlatformOverrides ::
  SigningPlatformOverrides
newSigningPlatformOverrides =
  SigningPlatformOverrides'
    { signingImageFormat =
        Prelude.Nothing,
      signingConfiguration = Prelude.Nothing
    }

-- | A signed image is a JSON object. When overriding the default signing
-- platform configuration, a customer can select either of two signing
-- formats, @JSONEmbedded@ or @JSONDetached@. (A third format value,
-- @JSON@, is reserved for future use.) With @JSONEmbedded@, the signing
-- image has the payload embedded in it. With @JSONDetached@, the payload
-- is not be embedded in the signing image.
signingPlatformOverrides_signingImageFormat :: Lens.Lens' SigningPlatformOverrides (Prelude.Maybe ImageFormat)
signingPlatformOverrides_signingImageFormat = Lens.lens (\SigningPlatformOverrides' {signingImageFormat} -> signingImageFormat) (\s@SigningPlatformOverrides' {} a -> s {signingImageFormat = a} :: SigningPlatformOverrides)

-- | A signing configuration that overrides the default encryption or hash
-- algorithm of a signing job.
signingPlatformOverrides_signingConfiguration :: Lens.Lens' SigningPlatformOverrides (Prelude.Maybe SigningConfigurationOverrides)
signingPlatformOverrides_signingConfiguration = Lens.lens (\SigningPlatformOverrides' {signingConfiguration} -> signingConfiguration) (\s@SigningPlatformOverrides' {} a -> s {signingConfiguration = a} :: SigningPlatformOverrides)

instance Core.FromJSON SigningPlatformOverrides where
  parseJSON =
    Core.withObject
      "SigningPlatformOverrides"
      ( \x ->
          SigningPlatformOverrides'
            Prelude.<$> (x Core..:? "signingImageFormat")
            Prelude.<*> (x Core..:? "signingConfiguration")
      )

instance Prelude.Hashable SigningPlatformOverrides where
  hashWithSalt _salt SigningPlatformOverrides' {..} =
    _salt `Prelude.hashWithSalt` signingImageFormat
      `Prelude.hashWithSalt` signingConfiguration

instance Prelude.NFData SigningPlatformOverrides where
  rnf SigningPlatformOverrides' {..} =
    Prelude.rnf signingImageFormat
      `Prelude.seq` Prelude.rnf signingConfiguration

instance Core.ToJSON SigningPlatformOverrides where
  toJSON SigningPlatformOverrides' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("signingImageFormat" Core..=)
              Prelude.<$> signingImageFormat,
            ("signingConfiguration" Core..=)
              Prelude.<$> signingConfiguration
          ]
      )
