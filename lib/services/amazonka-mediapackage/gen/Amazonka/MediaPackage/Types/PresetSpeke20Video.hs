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
-- Module      : Amazonka.MediaPackage.Types.PresetSpeke20Video
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaPackage.Types.PresetSpeke20Video
  ( PresetSpeke20Video
      ( ..,
        PresetSpeke20Video_PRESET_VIDEO_1,
        PresetSpeke20Video_PRESET_VIDEO_2,
        PresetSpeke20Video_PRESET_VIDEO_3,
        PresetSpeke20Video_PRESET_VIDEO_4,
        PresetSpeke20Video_PRESET_VIDEO_5,
        PresetSpeke20Video_PRESET_VIDEO_6,
        PresetSpeke20Video_PRESET_VIDEO_7,
        PresetSpeke20Video_PRESET_VIDEO_8,
        PresetSpeke20Video_SHARED,
        PresetSpeke20Video_UNENCRYPTED
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype PresetSpeke20Video = PresetSpeke20Video'
  { fromPresetSpeke20Video ::
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

pattern PresetSpeke20Video_PRESET_VIDEO_1 :: PresetSpeke20Video
pattern PresetSpeke20Video_PRESET_VIDEO_1 = PresetSpeke20Video' "PRESET-VIDEO-1"

pattern PresetSpeke20Video_PRESET_VIDEO_2 :: PresetSpeke20Video
pattern PresetSpeke20Video_PRESET_VIDEO_2 = PresetSpeke20Video' "PRESET-VIDEO-2"

pattern PresetSpeke20Video_PRESET_VIDEO_3 :: PresetSpeke20Video
pattern PresetSpeke20Video_PRESET_VIDEO_3 = PresetSpeke20Video' "PRESET-VIDEO-3"

pattern PresetSpeke20Video_PRESET_VIDEO_4 :: PresetSpeke20Video
pattern PresetSpeke20Video_PRESET_VIDEO_4 = PresetSpeke20Video' "PRESET-VIDEO-4"

pattern PresetSpeke20Video_PRESET_VIDEO_5 :: PresetSpeke20Video
pattern PresetSpeke20Video_PRESET_VIDEO_5 = PresetSpeke20Video' "PRESET-VIDEO-5"

pattern PresetSpeke20Video_PRESET_VIDEO_6 :: PresetSpeke20Video
pattern PresetSpeke20Video_PRESET_VIDEO_6 = PresetSpeke20Video' "PRESET-VIDEO-6"

pattern PresetSpeke20Video_PRESET_VIDEO_7 :: PresetSpeke20Video
pattern PresetSpeke20Video_PRESET_VIDEO_7 = PresetSpeke20Video' "PRESET-VIDEO-7"

pattern PresetSpeke20Video_PRESET_VIDEO_8 :: PresetSpeke20Video
pattern PresetSpeke20Video_PRESET_VIDEO_8 = PresetSpeke20Video' "PRESET-VIDEO-8"

pattern PresetSpeke20Video_SHARED :: PresetSpeke20Video
pattern PresetSpeke20Video_SHARED = PresetSpeke20Video' "SHARED"

pattern PresetSpeke20Video_UNENCRYPTED :: PresetSpeke20Video
pattern PresetSpeke20Video_UNENCRYPTED = PresetSpeke20Video' "UNENCRYPTED"

{-# COMPLETE
  PresetSpeke20Video_PRESET_VIDEO_1,
  PresetSpeke20Video_PRESET_VIDEO_2,
  PresetSpeke20Video_PRESET_VIDEO_3,
  PresetSpeke20Video_PRESET_VIDEO_4,
  PresetSpeke20Video_PRESET_VIDEO_5,
  PresetSpeke20Video_PRESET_VIDEO_6,
  PresetSpeke20Video_PRESET_VIDEO_7,
  PresetSpeke20Video_PRESET_VIDEO_8,
  PresetSpeke20Video_SHARED,
  PresetSpeke20Video_UNENCRYPTED,
  PresetSpeke20Video'
  #-}
