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
-- Module      : Amazonka.IoTSiteWise.Types.ColumnName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IoTSiteWise.Types.ColumnName
  ( ColumnName
      ( ..,
        ColumnName_ALIAS,
        ColumnName_ASSET_ID,
        ColumnName_DATA_TYPE,
        ColumnName_PROPERTY_ID,
        ColumnName_QUALITY,
        ColumnName_TIMESTAMP_NANO_OFFSET,
        ColumnName_TIMESTAMP_SECONDS,
        ColumnName_VALUE
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype ColumnName = ColumnName'
  { fromColumnName ::
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

pattern ColumnName_ALIAS :: ColumnName
pattern ColumnName_ALIAS = ColumnName' "ALIAS"

pattern ColumnName_ASSET_ID :: ColumnName
pattern ColumnName_ASSET_ID = ColumnName' "ASSET_ID"

pattern ColumnName_DATA_TYPE :: ColumnName
pattern ColumnName_DATA_TYPE = ColumnName' "DATA_TYPE"

pattern ColumnName_PROPERTY_ID :: ColumnName
pattern ColumnName_PROPERTY_ID = ColumnName' "PROPERTY_ID"

pattern ColumnName_QUALITY :: ColumnName
pattern ColumnName_QUALITY = ColumnName' "QUALITY"

pattern ColumnName_TIMESTAMP_NANO_OFFSET :: ColumnName
pattern ColumnName_TIMESTAMP_NANO_OFFSET = ColumnName' "TIMESTAMP_NANO_OFFSET"

pattern ColumnName_TIMESTAMP_SECONDS :: ColumnName
pattern ColumnName_TIMESTAMP_SECONDS = ColumnName' "TIMESTAMP_SECONDS"

pattern ColumnName_VALUE :: ColumnName
pattern ColumnName_VALUE = ColumnName' "VALUE"

{-# COMPLETE
  ColumnName_ALIAS,
  ColumnName_ASSET_ID,
  ColumnName_DATA_TYPE,
  ColumnName_PROPERTY_ID,
  ColumnName_QUALITY,
  ColumnName_TIMESTAMP_NANO_OFFSET,
  ColumnName_TIMESTAMP_SECONDS,
  ColumnName_VALUE,
  ColumnName'
  #-}
