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
-- Module      : Amazonka.Connect.Types.HierarchyGroupMatchType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Connect.Types.HierarchyGroupMatchType
  ( HierarchyGroupMatchType
      ( ..,
        HierarchyGroupMatchType_EXACT,
        HierarchyGroupMatchType_WITH_CHILD_GROUPS
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype HierarchyGroupMatchType = HierarchyGroupMatchType'
  { fromHierarchyGroupMatchType ::
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

pattern HierarchyGroupMatchType_EXACT :: HierarchyGroupMatchType
pattern HierarchyGroupMatchType_EXACT = HierarchyGroupMatchType' "EXACT"

pattern HierarchyGroupMatchType_WITH_CHILD_GROUPS :: HierarchyGroupMatchType
pattern HierarchyGroupMatchType_WITH_CHILD_GROUPS = HierarchyGroupMatchType' "WITH_CHILD_GROUPS"

{-# COMPLETE
  HierarchyGroupMatchType_EXACT,
  HierarchyGroupMatchType_WITH_CHILD_GROUPS,
  HierarchyGroupMatchType'
  #-}
