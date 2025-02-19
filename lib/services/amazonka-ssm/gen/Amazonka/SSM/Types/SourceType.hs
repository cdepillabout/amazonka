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
-- Module      : Amazonka.SSM.Types.SourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SSM.Types.SourceType
  ( SourceType
      ( ..,
        SourceType_AWS__EC2__Instance,
        SourceType_AWS__IoT__Thing,
        SourceType_AWS__SSM__ManagedInstance
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype SourceType = SourceType'
  { fromSourceType ::
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

pattern SourceType_AWS__EC2__Instance :: SourceType
pattern SourceType_AWS__EC2__Instance = SourceType' "AWS::EC2::Instance"

pattern SourceType_AWS__IoT__Thing :: SourceType
pattern SourceType_AWS__IoT__Thing = SourceType' "AWS::IoT::Thing"

pattern SourceType_AWS__SSM__ManagedInstance :: SourceType
pattern SourceType_AWS__SSM__ManagedInstance = SourceType' "AWS::SSM::ManagedInstance"

{-# COMPLETE
  SourceType_AWS__EC2__Instance,
  SourceType_AWS__IoT__Thing,
  SourceType_AWS__SSM__ManagedInstance,
  SourceType'
  #-}
