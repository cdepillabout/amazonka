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
-- Module      : Amazonka.KMS.Types.KeyUsageType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.KMS.Types.KeyUsageType
  ( KeyUsageType
      ( ..,
        KeyUsageType_ENCRYPT_DECRYPT,
        KeyUsageType_GENERATE_VERIFY_MAC,
        KeyUsageType_SIGN_VERIFY
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype KeyUsageType = KeyUsageType'
  { fromKeyUsageType ::
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

pattern KeyUsageType_ENCRYPT_DECRYPT :: KeyUsageType
pattern KeyUsageType_ENCRYPT_DECRYPT = KeyUsageType' "ENCRYPT_DECRYPT"

pattern KeyUsageType_GENERATE_VERIFY_MAC :: KeyUsageType
pattern KeyUsageType_GENERATE_VERIFY_MAC = KeyUsageType' "GENERATE_VERIFY_MAC"

pattern KeyUsageType_SIGN_VERIFY :: KeyUsageType
pattern KeyUsageType_SIGN_VERIFY = KeyUsageType' "SIGN_VERIFY"

{-# COMPLETE
  KeyUsageType_ENCRYPT_DECRYPT,
  KeyUsageType_GENERATE_VERIFY_MAC,
  KeyUsageType_SIGN_VERIFY,
  KeyUsageType'
  #-}
