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
-- Module      : Amazonka.QLDB.Types.OutputFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.QLDB.Types.OutputFormat
  ( OutputFormat
      ( ..,
        OutputFormat_ION_BINARY,
        OutputFormat_ION_TEXT,
        OutputFormat_JSON
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype OutputFormat = OutputFormat'
  { fromOutputFormat ::
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

pattern OutputFormat_ION_BINARY :: OutputFormat
pattern OutputFormat_ION_BINARY = OutputFormat' "ION_BINARY"

pattern OutputFormat_ION_TEXT :: OutputFormat
pattern OutputFormat_ION_TEXT = OutputFormat' "ION_TEXT"

pattern OutputFormat_JSON :: OutputFormat
pattern OutputFormat_JSON = OutputFormat' "JSON"

{-# COMPLETE
  OutputFormat_ION_BINARY,
  OutputFormat_ION_TEXT,
  OutputFormat_JSON,
  OutputFormat'
  #-}
