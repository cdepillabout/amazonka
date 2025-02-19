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
-- Module      : Amazonka.Glue.Types.StartingPosition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Glue.Types.StartingPosition
  ( StartingPosition
      ( ..,
        StartingPosition_Earliest,
        StartingPosition_Latest,
        StartingPosition_Trim_horizon
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype StartingPosition = StartingPosition'
  { fromStartingPosition ::
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

pattern StartingPosition_Earliest :: StartingPosition
pattern StartingPosition_Earliest = StartingPosition' "earliest"

pattern StartingPosition_Latest :: StartingPosition
pattern StartingPosition_Latest = StartingPosition' "latest"

pattern StartingPosition_Trim_horizon :: StartingPosition
pattern StartingPosition_Trim_horizon = StartingPosition' "trim_horizon"

{-# COMPLETE
  StartingPosition_Earliest,
  StartingPosition_Latest,
  StartingPosition_Trim_horizon,
  StartingPosition'
  #-}
