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
-- Module      : Amazonka.MediaPackageVOD.Types.ScteMarkersSource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaPackageVOD.Types.ScteMarkersSource
  ( ScteMarkersSource
      ( ..,
        ScteMarkersSource_MANIFEST,
        ScteMarkersSource_SEGMENTS
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype ScteMarkersSource = ScteMarkersSource'
  { fromScteMarkersSource ::
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

pattern ScteMarkersSource_MANIFEST :: ScteMarkersSource
pattern ScteMarkersSource_MANIFEST = ScteMarkersSource' "MANIFEST"

pattern ScteMarkersSource_SEGMENTS :: ScteMarkersSource
pattern ScteMarkersSource_SEGMENTS = ScteMarkersSource' "SEGMENTS"

{-# COMPLETE
  ScteMarkersSource_MANIFEST,
  ScteMarkersSource_SEGMENTS,
  ScteMarkersSource'
  #-}
