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
-- Module      : Amazonka.SSMIncidents.Types.ItemType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SSMIncidents.Types.ItemType
  ( ItemType
      ( ..,
        ItemType_ANALYSIS,
        ItemType_ATTACHMENT,
        ItemType_AUTOMATION,
        ItemType_INCIDENT,
        ItemType_INVOLVED_RESOURCE,
        ItemType_METRIC,
        ItemType_OTHER,
        ItemType_PARENT
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype ItemType = ItemType'
  { fromItemType ::
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

pattern ItemType_ANALYSIS :: ItemType
pattern ItemType_ANALYSIS = ItemType' "ANALYSIS"

pattern ItemType_ATTACHMENT :: ItemType
pattern ItemType_ATTACHMENT = ItemType' "ATTACHMENT"

pattern ItemType_AUTOMATION :: ItemType
pattern ItemType_AUTOMATION = ItemType' "AUTOMATION"

pattern ItemType_INCIDENT :: ItemType
pattern ItemType_INCIDENT = ItemType' "INCIDENT"

pattern ItemType_INVOLVED_RESOURCE :: ItemType
pattern ItemType_INVOLVED_RESOURCE = ItemType' "INVOLVED_RESOURCE"

pattern ItemType_METRIC :: ItemType
pattern ItemType_METRIC = ItemType' "METRIC"

pattern ItemType_OTHER :: ItemType
pattern ItemType_OTHER = ItemType' "OTHER"

pattern ItemType_PARENT :: ItemType
pattern ItemType_PARENT = ItemType' "PARENT"

{-# COMPLETE
  ItemType_ANALYSIS,
  ItemType_ATTACHMENT,
  ItemType_AUTOMATION,
  ItemType_INCIDENT,
  ItemType_INVOLVED_RESOURCE,
  ItemType_METRIC,
  ItemType_OTHER,
  ItemType_PARENT,
  ItemType'
  #-}
