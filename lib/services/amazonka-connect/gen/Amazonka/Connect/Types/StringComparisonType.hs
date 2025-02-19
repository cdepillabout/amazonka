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
-- Module      : Amazonka.Connect.Types.StringComparisonType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Connect.Types.StringComparisonType
  ( StringComparisonType
      ( ..,
        StringComparisonType_CONTAINS,
        StringComparisonType_EXACT,
        StringComparisonType_STARTS_WITH
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype StringComparisonType = StringComparisonType'
  { fromStringComparisonType ::
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

pattern StringComparisonType_CONTAINS :: StringComparisonType
pattern StringComparisonType_CONTAINS = StringComparisonType' "CONTAINS"

pattern StringComparisonType_EXACT :: StringComparisonType
pattern StringComparisonType_EXACT = StringComparisonType' "EXACT"

pattern StringComparisonType_STARTS_WITH :: StringComparisonType
pattern StringComparisonType_STARTS_WITH = StringComparisonType' "STARTS_WITH"

{-# COMPLETE
  StringComparisonType_CONTAINS,
  StringComparisonType_EXACT,
  StringComparisonType_STARTS_WITH,
  StringComparisonType'
  #-}
