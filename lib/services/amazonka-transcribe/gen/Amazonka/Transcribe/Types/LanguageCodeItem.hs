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
-- Module      : Amazonka.Transcribe.Types.LanguageCodeItem
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Transcribe.Types.LanguageCodeItem where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.Transcribe.Types.LanguageCode

-- | Provides information on the speech contained in a discreet utterance
-- when multi-language identification is enabled in your request. This
-- utterance represents a block of speech consisting of one language,
-- preceded or followed by a block of speech in a different language.
--
-- /See:/ 'newLanguageCodeItem' smart constructor.
data LanguageCodeItem = LanguageCodeItem'
  { -- | Provides the language code for each language identified in your media.
    languageCode :: Prelude.Maybe LanguageCode,
    -- | Provides the total time, in seconds, each identified language is spoken
    -- in your media.
    durationInSeconds :: Prelude.Maybe Prelude.Double
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'LanguageCodeItem' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'languageCode', 'languageCodeItem_languageCode' - Provides the language code for each language identified in your media.
--
-- 'durationInSeconds', 'languageCodeItem_durationInSeconds' - Provides the total time, in seconds, each identified language is spoken
-- in your media.
newLanguageCodeItem ::
  LanguageCodeItem
newLanguageCodeItem =
  LanguageCodeItem'
    { languageCode = Prelude.Nothing,
      durationInSeconds = Prelude.Nothing
    }

-- | Provides the language code for each language identified in your media.
languageCodeItem_languageCode :: Lens.Lens' LanguageCodeItem (Prelude.Maybe LanguageCode)
languageCodeItem_languageCode = Lens.lens (\LanguageCodeItem' {languageCode} -> languageCode) (\s@LanguageCodeItem' {} a -> s {languageCode = a} :: LanguageCodeItem)

-- | Provides the total time, in seconds, each identified language is spoken
-- in your media.
languageCodeItem_durationInSeconds :: Lens.Lens' LanguageCodeItem (Prelude.Maybe Prelude.Double)
languageCodeItem_durationInSeconds = Lens.lens (\LanguageCodeItem' {durationInSeconds} -> durationInSeconds) (\s@LanguageCodeItem' {} a -> s {durationInSeconds = a} :: LanguageCodeItem)

instance Core.FromJSON LanguageCodeItem where
  parseJSON =
    Core.withObject
      "LanguageCodeItem"
      ( \x ->
          LanguageCodeItem'
            Prelude.<$> (x Core..:? "LanguageCode")
            Prelude.<*> (x Core..:? "DurationInSeconds")
      )

instance Prelude.Hashable LanguageCodeItem where
  hashWithSalt _salt LanguageCodeItem' {..} =
    _salt `Prelude.hashWithSalt` languageCode
      `Prelude.hashWithSalt` durationInSeconds

instance Prelude.NFData LanguageCodeItem where
  rnf LanguageCodeItem' {..} =
    Prelude.rnf languageCode
      `Prelude.seq` Prelude.rnf durationInSeconds
