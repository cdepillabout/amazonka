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
-- Module      : Amazonka.PinpointSMSVoice.Types.PlainTextMessageType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.PinpointSMSVoice.Types.PlainTextMessageType where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | An object that defines a message that contains unformatted text.
--
-- /See:/ 'newPlainTextMessageType' smart constructor.
data PlainTextMessageType = PlainTextMessageType'
  { -- | The name of the voice that you want to use to deliver the message. For a
    -- complete list of supported voices, see the Amazon Polly Developer Guide.
    voiceId :: Prelude.Maybe Prelude.Text,
    -- | The language to use when delivering the message. For a complete list of
    -- supported languages, see the Amazon Polly Developer Guide.
    languageCode :: Prelude.Maybe Prelude.Text,
    -- | The plain (not SSML-formatted) text to deliver to the recipient.
    text :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PlainTextMessageType' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'voiceId', 'plainTextMessageType_voiceId' - The name of the voice that you want to use to deliver the message. For a
-- complete list of supported voices, see the Amazon Polly Developer Guide.
--
-- 'languageCode', 'plainTextMessageType_languageCode' - The language to use when delivering the message. For a complete list of
-- supported languages, see the Amazon Polly Developer Guide.
--
-- 'text', 'plainTextMessageType_text' - The plain (not SSML-formatted) text to deliver to the recipient.
newPlainTextMessageType ::
  PlainTextMessageType
newPlainTextMessageType =
  PlainTextMessageType'
    { voiceId = Prelude.Nothing,
      languageCode = Prelude.Nothing,
      text = Prelude.Nothing
    }

-- | The name of the voice that you want to use to deliver the message. For a
-- complete list of supported voices, see the Amazon Polly Developer Guide.
plainTextMessageType_voiceId :: Lens.Lens' PlainTextMessageType (Prelude.Maybe Prelude.Text)
plainTextMessageType_voiceId = Lens.lens (\PlainTextMessageType' {voiceId} -> voiceId) (\s@PlainTextMessageType' {} a -> s {voiceId = a} :: PlainTextMessageType)

-- | The language to use when delivering the message. For a complete list of
-- supported languages, see the Amazon Polly Developer Guide.
plainTextMessageType_languageCode :: Lens.Lens' PlainTextMessageType (Prelude.Maybe Prelude.Text)
plainTextMessageType_languageCode = Lens.lens (\PlainTextMessageType' {languageCode} -> languageCode) (\s@PlainTextMessageType' {} a -> s {languageCode = a} :: PlainTextMessageType)

-- | The plain (not SSML-formatted) text to deliver to the recipient.
plainTextMessageType_text :: Lens.Lens' PlainTextMessageType (Prelude.Maybe Prelude.Text)
plainTextMessageType_text = Lens.lens (\PlainTextMessageType' {text} -> text) (\s@PlainTextMessageType' {} a -> s {text = a} :: PlainTextMessageType)

instance Prelude.Hashable PlainTextMessageType where
  hashWithSalt _salt PlainTextMessageType' {..} =
    _salt `Prelude.hashWithSalt` voiceId
      `Prelude.hashWithSalt` languageCode
      `Prelude.hashWithSalt` text

instance Prelude.NFData PlainTextMessageType where
  rnf PlainTextMessageType' {..} =
    Prelude.rnf voiceId
      `Prelude.seq` Prelude.rnf languageCode
      `Prelude.seq` Prelude.rnf text

instance Core.ToJSON PlainTextMessageType where
  toJSON PlainTextMessageType' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("VoiceId" Core..=) Prelude.<$> voiceId,
            ("LanguageCode" Core..=) Prelude.<$> languageCode,
            ("Text" Core..=) Prelude.<$> text
          ]
      )
