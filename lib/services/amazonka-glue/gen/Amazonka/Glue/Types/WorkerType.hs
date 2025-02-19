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
-- Module      : Amazonka.Glue.Types.WorkerType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Glue.Types.WorkerType
  ( WorkerType
      ( ..,
        WorkerType_G_025X,
        WorkerType_G_1X,
        WorkerType_G_2X,
        WorkerType_Standard
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype WorkerType = WorkerType'
  { fromWorkerType ::
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

pattern WorkerType_G_025X :: WorkerType
pattern WorkerType_G_025X = WorkerType' "G.025X"

pattern WorkerType_G_1X :: WorkerType
pattern WorkerType_G_1X = WorkerType' "G.1X"

pattern WorkerType_G_2X :: WorkerType
pattern WorkerType_G_2X = WorkerType' "G.2X"

pattern WorkerType_Standard :: WorkerType
pattern WorkerType_Standard = WorkerType' "Standard"

{-# COMPLETE
  WorkerType_G_025X,
  WorkerType_G_1X,
  WorkerType_G_2X,
  WorkerType_Standard,
  WorkerType'
  #-}
