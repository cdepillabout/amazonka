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
-- Module      : Amazonka.Organizations.Types.AccountStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Organizations.Types.AccountStatus
  ( AccountStatus
      ( ..,
        AccountStatus_ACTIVE,
        AccountStatus_PENDING_CLOSURE,
        AccountStatus_SUSPENDED
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype AccountStatus = AccountStatus'
  { fromAccountStatus ::
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

pattern AccountStatus_ACTIVE :: AccountStatus
pattern AccountStatus_ACTIVE = AccountStatus' "ACTIVE"

pattern AccountStatus_PENDING_CLOSURE :: AccountStatus
pattern AccountStatus_PENDING_CLOSURE = AccountStatus' "PENDING_CLOSURE"

pattern AccountStatus_SUSPENDED :: AccountStatus
pattern AccountStatus_SUSPENDED = AccountStatus' "SUSPENDED"

{-# COMPLETE
  AccountStatus_ACTIVE,
  AccountStatus_PENDING_CLOSURE,
  AccountStatus_SUSPENDED,
  AccountStatus'
  #-}
