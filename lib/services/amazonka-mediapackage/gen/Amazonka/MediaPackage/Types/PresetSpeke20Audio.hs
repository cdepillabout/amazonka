{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.MediaPackage.Types.PresetSpeke20Audio
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaPackage.Types.PresetSpeke20Audio
  ( PresetSpeke20Audio
      ( ..,
        PresetSpeke20Audio_PRESET_AUDIO_1,
        PresetSpeke20Audio_PRESET_AUDIO_2,
        PresetSpeke20Audio_PRESET_AUDIO_3,
        PresetSpeke20Audio_SHARED,
        PresetSpeke20Audio_UNENCRYPTED
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype PresetSpeke20Audio = PresetSpeke20Audio'
  { fromPresetSpeke20Audio ::
      Core.Text
  }
  deriving stock
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Generic
    )
  deriving newtype
    ( Prelude.Hashable,
      Prelude.NFData,
      Core.FromText,
      Core.ToText,
      Core.ToByteString,
      Core.ToLog,
      Core.ToHeader,
      Core.ToQuery,
      Core.FromJSON,
      Core.FromJSONKey,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromXML,
      Core.ToXML
    )

pattern PresetSpeke20Audio_PRESET_AUDIO_1 :: PresetSpeke20Audio
pattern PresetSpeke20Audio_PRESET_AUDIO_1 = PresetSpeke20Audio' "PRESET-AUDIO-1"

pattern PresetSpeke20Audio_PRESET_AUDIO_2 :: PresetSpeke20Audio
pattern PresetSpeke20Audio_PRESET_AUDIO_2 = PresetSpeke20Audio' "PRESET-AUDIO-2"

pattern PresetSpeke20Audio_PRESET_AUDIO_3 :: PresetSpeke20Audio
pattern PresetSpeke20Audio_PRESET_AUDIO_3 = PresetSpeke20Audio' "PRESET-AUDIO-3"

pattern PresetSpeke20Audio_SHARED :: PresetSpeke20Audio
pattern PresetSpeke20Audio_SHARED = PresetSpeke20Audio' "SHARED"

pattern PresetSpeke20Audio_UNENCRYPTED :: PresetSpeke20Audio
pattern PresetSpeke20Audio_UNENCRYPTED = PresetSpeke20Audio' "UNENCRYPTED"

{-# COMPLETE
  PresetSpeke20Audio_PRESET_AUDIO_1,
  PresetSpeke20Audio_PRESET_AUDIO_2,
  PresetSpeke20Audio_PRESET_AUDIO_3,
  PresetSpeke20Audio_SHARED,
  PresetSpeke20Audio_UNENCRYPTED,
  PresetSpeke20Audio'
  #-}
