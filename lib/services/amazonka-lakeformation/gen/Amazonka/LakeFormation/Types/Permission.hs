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
-- Module      : Amazonka.LakeFormation.Types.Permission
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.LakeFormation.Types.Permission
  ( Permission
      ( ..,
        Permission_ALL,
        Permission_ALTER,
        Permission_ASSOCIATE,
        Permission_CREATE_DATABASE,
        Permission_CREATE_TABLE,
        Permission_CREATE_TAG,
        Permission_DATA_LOCATION_ACCESS,
        Permission_DELETE,
        Permission_DESCRIBE,
        Permission_DROP,
        Permission_INSERT,
        Permission_SELECT
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype Permission = Permission'
  { fromPermission ::
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

pattern Permission_ALL :: Permission
pattern Permission_ALL = Permission' "ALL"

pattern Permission_ALTER :: Permission
pattern Permission_ALTER = Permission' "ALTER"

pattern Permission_ASSOCIATE :: Permission
pattern Permission_ASSOCIATE = Permission' "ASSOCIATE"

pattern Permission_CREATE_DATABASE :: Permission
pattern Permission_CREATE_DATABASE = Permission' "CREATE_DATABASE"

pattern Permission_CREATE_TABLE :: Permission
pattern Permission_CREATE_TABLE = Permission' "CREATE_TABLE"

pattern Permission_CREATE_TAG :: Permission
pattern Permission_CREATE_TAG = Permission' "CREATE_TAG"

pattern Permission_DATA_LOCATION_ACCESS :: Permission
pattern Permission_DATA_LOCATION_ACCESS = Permission' "DATA_LOCATION_ACCESS"

pattern Permission_DELETE :: Permission
pattern Permission_DELETE = Permission' "DELETE"

pattern Permission_DESCRIBE :: Permission
pattern Permission_DESCRIBE = Permission' "DESCRIBE"

pattern Permission_DROP :: Permission
pattern Permission_DROP = Permission' "DROP"

pattern Permission_INSERT :: Permission
pattern Permission_INSERT = Permission' "INSERT"

pattern Permission_SELECT :: Permission
pattern Permission_SELECT = Permission' "SELECT"

{-# COMPLETE
  Permission_ALL,
  Permission_ALTER,
  Permission_ASSOCIATE,
  Permission_CREATE_DATABASE,
  Permission_CREATE_TABLE,
  Permission_CREATE_TAG,
  Permission_DATA_LOCATION_ACCESS,
  Permission_DELETE,
  Permission_DESCRIBE,
  Permission_DROP,
  Permission_INSERT,
  Permission_SELECT,
  Permission'
  #-}
