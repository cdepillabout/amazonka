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
-- Module      : Amazonka.LexModels.Types.BuiltinSlotTypeMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.LexModels.Types.BuiltinSlotTypeMetadata where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.LexModels.Types.Locale
import qualified Amazonka.Prelude as Prelude

-- | Provides information about a built in slot type.
--
-- /See:/ 'newBuiltinSlotTypeMetadata' smart constructor.
data BuiltinSlotTypeMetadata = BuiltinSlotTypeMetadata'
  { -- | A list of target locales for the slot.
    supportedLocales :: Prelude.Maybe [Locale],
    -- | A unique identifier for the built-in slot type. To find the signature
    -- for a slot type, see
    -- <https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/slot-type-reference Slot Type Reference>
    -- in the /Alexa Skills Kit/.
    signature :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BuiltinSlotTypeMetadata' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'supportedLocales', 'builtinSlotTypeMetadata_supportedLocales' - A list of target locales for the slot.
--
-- 'signature', 'builtinSlotTypeMetadata_signature' - A unique identifier for the built-in slot type. To find the signature
-- for a slot type, see
-- <https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/slot-type-reference Slot Type Reference>
-- in the /Alexa Skills Kit/.
newBuiltinSlotTypeMetadata ::
  BuiltinSlotTypeMetadata
newBuiltinSlotTypeMetadata =
  BuiltinSlotTypeMetadata'
    { supportedLocales =
        Prelude.Nothing,
      signature = Prelude.Nothing
    }

-- | A list of target locales for the slot.
builtinSlotTypeMetadata_supportedLocales :: Lens.Lens' BuiltinSlotTypeMetadata (Prelude.Maybe [Locale])
builtinSlotTypeMetadata_supportedLocales = Lens.lens (\BuiltinSlotTypeMetadata' {supportedLocales} -> supportedLocales) (\s@BuiltinSlotTypeMetadata' {} a -> s {supportedLocales = a} :: BuiltinSlotTypeMetadata) Prelude.. Lens.mapping Lens.coerced

-- | A unique identifier for the built-in slot type. To find the signature
-- for a slot type, see
-- <https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/slot-type-reference Slot Type Reference>
-- in the /Alexa Skills Kit/.
builtinSlotTypeMetadata_signature :: Lens.Lens' BuiltinSlotTypeMetadata (Prelude.Maybe Prelude.Text)
builtinSlotTypeMetadata_signature = Lens.lens (\BuiltinSlotTypeMetadata' {signature} -> signature) (\s@BuiltinSlotTypeMetadata' {} a -> s {signature = a} :: BuiltinSlotTypeMetadata)

instance Core.FromJSON BuiltinSlotTypeMetadata where
  parseJSON =
    Core.withObject
      "BuiltinSlotTypeMetadata"
      ( \x ->
          BuiltinSlotTypeMetadata'
            Prelude.<$> ( x Core..:? "supportedLocales"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "signature")
      )

instance Prelude.Hashable BuiltinSlotTypeMetadata where
  hashWithSalt _salt BuiltinSlotTypeMetadata' {..} =
    _salt `Prelude.hashWithSalt` supportedLocales
      `Prelude.hashWithSalt` signature

instance Prelude.NFData BuiltinSlotTypeMetadata where
  rnf BuiltinSlotTypeMetadata' {..} =
    Prelude.rnf supportedLocales
      `Prelude.seq` Prelude.rnf signature
