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
-- Module      : Amazonka.WorkSpaces.Types.SamlStatusEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.WorkSpaces.Types.SamlStatusEnum
  ( SamlStatusEnum
      ( ..,
        SamlStatusEnum_DISABLED,
        SamlStatusEnum_ENABLED,
        SamlStatusEnum_ENABLED_WITH_DIRECTORY_LOGIN_FALLBACK
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype SamlStatusEnum = SamlStatusEnum'
  { fromSamlStatusEnum ::
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

pattern SamlStatusEnum_DISABLED :: SamlStatusEnum
pattern SamlStatusEnum_DISABLED = SamlStatusEnum' "DISABLED"

pattern SamlStatusEnum_ENABLED :: SamlStatusEnum
pattern SamlStatusEnum_ENABLED = SamlStatusEnum' "ENABLED"

pattern SamlStatusEnum_ENABLED_WITH_DIRECTORY_LOGIN_FALLBACK :: SamlStatusEnum
pattern SamlStatusEnum_ENABLED_WITH_DIRECTORY_LOGIN_FALLBACK = SamlStatusEnum' "ENABLED_WITH_DIRECTORY_LOGIN_FALLBACK"

{-# COMPLETE
  SamlStatusEnum_DISABLED,
  SamlStatusEnum_ENABLED,
  SamlStatusEnum_ENABLED_WITH_DIRECTORY_LOGIN_FALLBACK,
  SamlStatusEnum'
  #-}
