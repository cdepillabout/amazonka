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
-- Module      : Amazonka.AppFlow.Types.AuthenticationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.AppFlow.Types.AuthenticationType
  ( AuthenticationType
      ( ..,
        AuthenticationType_APIKEY,
        AuthenticationType_BASIC,
        AuthenticationType_CUSTOM,
        AuthenticationType_OAUTH2
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype AuthenticationType = AuthenticationType'
  { fromAuthenticationType ::
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

pattern AuthenticationType_APIKEY :: AuthenticationType
pattern AuthenticationType_APIKEY = AuthenticationType' "APIKEY"

pattern AuthenticationType_BASIC :: AuthenticationType
pattern AuthenticationType_BASIC = AuthenticationType' "BASIC"

pattern AuthenticationType_CUSTOM :: AuthenticationType
pattern AuthenticationType_CUSTOM = AuthenticationType' "CUSTOM"

pattern AuthenticationType_OAUTH2 :: AuthenticationType
pattern AuthenticationType_OAUTH2 = AuthenticationType' "OAUTH2"

{-# COMPLETE
  AuthenticationType_APIKEY,
  AuthenticationType_BASIC,
  AuthenticationType_CUSTOM,
  AuthenticationType_OAUTH2,
  AuthenticationType'
  #-}
