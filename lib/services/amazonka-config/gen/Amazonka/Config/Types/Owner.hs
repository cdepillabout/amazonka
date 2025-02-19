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
-- Module      : Amazonka.Config.Types.Owner
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Config.Types.Owner
  ( Owner
      ( ..,
        Owner_AWS,
        Owner_CUSTOM_LAMBDA,
        Owner_CUSTOM_POLICY
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype Owner = Owner' {fromOwner :: Core.Text}
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

pattern Owner_AWS :: Owner
pattern Owner_AWS = Owner' "AWS"

pattern Owner_CUSTOM_LAMBDA :: Owner
pattern Owner_CUSTOM_LAMBDA = Owner' "CUSTOM_LAMBDA"

pattern Owner_CUSTOM_POLICY :: Owner
pattern Owner_CUSTOM_POLICY = Owner' "CUSTOM_POLICY"

{-# COMPLETE
  Owner_AWS,
  Owner_CUSTOM_LAMBDA,
  Owner_CUSTOM_POLICY,
  Owner'
  #-}
