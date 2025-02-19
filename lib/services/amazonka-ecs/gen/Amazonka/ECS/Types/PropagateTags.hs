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
-- Module      : Amazonka.ECS.Types.PropagateTags
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ECS.Types.PropagateTags
  ( PropagateTags
      ( ..,
        PropagateTags_NONE,
        PropagateTags_SERVICE,
        PropagateTags_TASK_DEFINITION
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype PropagateTags = PropagateTags'
  { fromPropagateTags ::
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

pattern PropagateTags_NONE :: PropagateTags
pattern PropagateTags_NONE = PropagateTags' "NONE"

pattern PropagateTags_SERVICE :: PropagateTags
pattern PropagateTags_SERVICE = PropagateTags' "SERVICE"

pattern PropagateTags_TASK_DEFINITION :: PropagateTags
pattern PropagateTags_TASK_DEFINITION = PropagateTags' "TASK_DEFINITION"

{-# COMPLETE
  PropagateTags_NONE,
  PropagateTags_SERVICE,
  PropagateTags_TASK_DEFINITION,
  PropagateTags'
  #-}
