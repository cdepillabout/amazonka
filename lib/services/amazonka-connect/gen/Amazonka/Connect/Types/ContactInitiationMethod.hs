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
-- Module      : Amazonka.Connect.Types.ContactInitiationMethod
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Connect.Types.ContactInitiationMethod
  ( ContactInitiationMethod
      ( ..,
        ContactInitiationMethod_API,
        ContactInitiationMethod_CALLBACK,
        ContactInitiationMethod_INBOUND,
        ContactInitiationMethod_OUTBOUND,
        ContactInitiationMethod_QUEUE_TRANSFER,
        ContactInitiationMethod_TRANSFER
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype ContactInitiationMethod = ContactInitiationMethod'
  { fromContactInitiationMethod ::
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

pattern ContactInitiationMethod_API :: ContactInitiationMethod
pattern ContactInitiationMethod_API = ContactInitiationMethod' "API"

pattern ContactInitiationMethod_CALLBACK :: ContactInitiationMethod
pattern ContactInitiationMethod_CALLBACK = ContactInitiationMethod' "CALLBACK"

pattern ContactInitiationMethod_INBOUND :: ContactInitiationMethod
pattern ContactInitiationMethod_INBOUND = ContactInitiationMethod' "INBOUND"

pattern ContactInitiationMethod_OUTBOUND :: ContactInitiationMethod
pattern ContactInitiationMethod_OUTBOUND = ContactInitiationMethod' "OUTBOUND"

pattern ContactInitiationMethod_QUEUE_TRANSFER :: ContactInitiationMethod
pattern ContactInitiationMethod_QUEUE_TRANSFER = ContactInitiationMethod' "QUEUE_TRANSFER"

pattern ContactInitiationMethod_TRANSFER :: ContactInitiationMethod
pattern ContactInitiationMethod_TRANSFER = ContactInitiationMethod' "TRANSFER"

{-# COMPLETE
  ContactInitiationMethod_API,
  ContactInitiationMethod_CALLBACK,
  ContactInitiationMethod_INBOUND,
  ContactInitiationMethod_OUTBOUND,
  ContactInitiationMethod_QUEUE_TRANSFER,
  ContactInitiationMethod_TRANSFER,
  ContactInitiationMethod'
  #-}
