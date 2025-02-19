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
-- Module      : Amazonka.AppStream.Types.FleetType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.AppStream.Types.FleetType
  ( FleetType
      ( ..,
        FleetType_ALWAYS_ON,
        FleetType_ELASTIC,
        FleetType_ON_DEMAND
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype FleetType = FleetType'
  { fromFleetType ::
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

pattern FleetType_ALWAYS_ON :: FleetType
pattern FleetType_ALWAYS_ON = FleetType' "ALWAYS_ON"

pattern FleetType_ELASTIC :: FleetType
pattern FleetType_ELASTIC = FleetType' "ELASTIC"

pattern FleetType_ON_DEMAND :: FleetType
pattern FleetType_ON_DEMAND = FleetType' "ON_DEMAND"

{-# COMPLETE
  FleetType_ALWAYS_ON,
  FleetType_ELASTIC,
  FleetType_ON_DEMAND,
  FleetType'
  #-}
