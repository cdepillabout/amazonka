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
-- Module      : Amazonka.MediaPackage.Types.CmafEncryption
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaPackage.Types.CmafEncryption where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MediaPackage.Types.SpekeKeyProvider
import qualified Amazonka.Prelude as Prelude

-- | A Common Media Application Format (CMAF) encryption configuration.
--
-- /See:/ 'newCmafEncryption' smart constructor.
data CmafEncryption = CmafEncryption'
  { -- | An optional 128-bit, 16-byte hex value represented by a 32-character
    -- string, used in conjunction with the key for encrypting blocks. If you
    -- don\'t specify a value, then MediaPackage creates the constant
    -- initialization vector (IV).
    constantInitializationVector :: Prelude.Maybe Prelude.Text,
    -- | Time (in seconds) between each encryption key rotation.
    keyRotationIntervalSeconds :: Prelude.Maybe Prelude.Int,
    spekeKeyProvider :: SpekeKeyProvider
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CmafEncryption' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'constantInitializationVector', 'cmafEncryption_constantInitializationVector' - An optional 128-bit, 16-byte hex value represented by a 32-character
-- string, used in conjunction with the key for encrypting blocks. If you
-- don\'t specify a value, then MediaPackage creates the constant
-- initialization vector (IV).
--
-- 'keyRotationIntervalSeconds', 'cmafEncryption_keyRotationIntervalSeconds' - Time (in seconds) between each encryption key rotation.
--
-- 'spekeKeyProvider', 'cmafEncryption_spekeKeyProvider' - Undocumented member.
newCmafEncryption ::
  -- | 'spekeKeyProvider'
  SpekeKeyProvider ->
  CmafEncryption
newCmafEncryption pSpekeKeyProvider_ =
  CmafEncryption'
    { constantInitializationVector =
        Prelude.Nothing,
      keyRotationIntervalSeconds = Prelude.Nothing,
      spekeKeyProvider = pSpekeKeyProvider_
    }

-- | An optional 128-bit, 16-byte hex value represented by a 32-character
-- string, used in conjunction with the key for encrypting blocks. If you
-- don\'t specify a value, then MediaPackage creates the constant
-- initialization vector (IV).
cmafEncryption_constantInitializationVector :: Lens.Lens' CmafEncryption (Prelude.Maybe Prelude.Text)
cmafEncryption_constantInitializationVector = Lens.lens (\CmafEncryption' {constantInitializationVector} -> constantInitializationVector) (\s@CmafEncryption' {} a -> s {constantInitializationVector = a} :: CmafEncryption)

-- | Time (in seconds) between each encryption key rotation.
cmafEncryption_keyRotationIntervalSeconds :: Lens.Lens' CmafEncryption (Prelude.Maybe Prelude.Int)
cmafEncryption_keyRotationIntervalSeconds = Lens.lens (\CmafEncryption' {keyRotationIntervalSeconds} -> keyRotationIntervalSeconds) (\s@CmafEncryption' {} a -> s {keyRotationIntervalSeconds = a} :: CmafEncryption)

-- | Undocumented member.
cmafEncryption_spekeKeyProvider :: Lens.Lens' CmafEncryption SpekeKeyProvider
cmafEncryption_spekeKeyProvider = Lens.lens (\CmafEncryption' {spekeKeyProvider} -> spekeKeyProvider) (\s@CmafEncryption' {} a -> s {spekeKeyProvider = a} :: CmafEncryption)

instance Core.FromJSON CmafEncryption where
  parseJSON =
    Core.withObject
      "CmafEncryption"
      ( \x ->
          CmafEncryption'
            Prelude.<$> (x Core..:? "constantInitializationVector")
            Prelude.<*> (x Core..:? "keyRotationIntervalSeconds")
            Prelude.<*> (x Core..: "spekeKeyProvider")
      )

instance Prelude.Hashable CmafEncryption where
  hashWithSalt _salt CmafEncryption' {..} =
    _salt
      `Prelude.hashWithSalt` constantInitializationVector
      `Prelude.hashWithSalt` keyRotationIntervalSeconds
      `Prelude.hashWithSalt` spekeKeyProvider

instance Prelude.NFData CmafEncryption where
  rnf CmafEncryption' {..} =
    Prelude.rnf constantInitializationVector
      `Prelude.seq` Prelude.rnf keyRotationIntervalSeconds
      `Prelude.seq` Prelude.rnf spekeKeyProvider

instance Core.ToJSON CmafEncryption where
  toJSON CmafEncryption' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("constantInitializationVector" Core..=)
              Prelude.<$> constantInitializationVector,
            ("keyRotationIntervalSeconds" Core..=)
              Prelude.<$> keyRotationIntervalSeconds,
            Prelude.Just
              ("spekeKeyProvider" Core..= spekeKeyProvider)
          ]
      )
