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
-- Module      : Amazonka.MediaConvert.Types.BurninSubtitleBackgroundColor
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaConvert.Types.BurninSubtitleBackgroundColor
  ( BurninSubtitleBackgroundColor
      ( ..,
        BurninSubtitleBackgroundColor_AUTO,
        BurninSubtitleBackgroundColor_BLACK,
        BurninSubtitleBackgroundColor_NONE,
        BurninSubtitleBackgroundColor_WHITE
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

-- | Specify the color of the rectangle behind the captions. Leave background
-- color (BackgroundColor) blank and set Style passthrough
-- (StylePassthrough) to enabled to use the background color data from your
-- input captions, if present.
newtype BurninSubtitleBackgroundColor = BurninSubtitleBackgroundColor'
  { fromBurninSubtitleBackgroundColor ::
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

pattern BurninSubtitleBackgroundColor_AUTO :: BurninSubtitleBackgroundColor
pattern BurninSubtitleBackgroundColor_AUTO = BurninSubtitleBackgroundColor' "AUTO"

pattern BurninSubtitleBackgroundColor_BLACK :: BurninSubtitleBackgroundColor
pattern BurninSubtitleBackgroundColor_BLACK = BurninSubtitleBackgroundColor' "BLACK"

pattern BurninSubtitleBackgroundColor_NONE :: BurninSubtitleBackgroundColor
pattern BurninSubtitleBackgroundColor_NONE = BurninSubtitleBackgroundColor' "NONE"

pattern BurninSubtitleBackgroundColor_WHITE :: BurninSubtitleBackgroundColor
pattern BurninSubtitleBackgroundColor_WHITE = BurninSubtitleBackgroundColor' "WHITE"

{-# COMPLETE
  BurninSubtitleBackgroundColor_AUTO,
  BurninSubtitleBackgroundColor_BLACK,
  BurninSubtitleBackgroundColor_NONE,
  BurninSubtitleBackgroundColor_WHITE,
  BurninSubtitleBackgroundColor'
  #-}
