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
-- Module      : Amazonka.Glue.Types.TargetFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Glue.Types.TargetFormat
  ( TargetFormat
      ( ..,
        TargetFormat_Avro,
        TargetFormat_Csv,
        TargetFormat_Json,
        TargetFormat_Orc,
        TargetFormat_Parquet
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype TargetFormat = TargetFormat'
  { fromTargetFormat ::
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

pattern TargetFormat_Avro :: TargetFormat
pattern TargetFormat_Avro = TargetFormat' "avro"

pattern TargetFormat_Csv :: TargetFormat
pattern TargetFormat_Csv = TargetFormat' "csv"

pattern TargetFormat_Json :: TargetFormat
pattern TargetFormat_Json = TargetFormat' "json"

pattern TargetFormat_Orc :: TargetFormat
pattern TargetFormat_Orc = TargetFormat' "orc"

pattern TargetFormat_Parquet :: TargetFormat
pattern TargetFormat_Parquet = TargetFormat' "parquet"

{-# COMPLETE
  TargetFormat_Avro,
  TargetFormat_Csv,
  TargetFormat_Json,
  TargetFormat_Orc,
  TargetFormat_Parquet,
  TargetFormat'
  #-}
