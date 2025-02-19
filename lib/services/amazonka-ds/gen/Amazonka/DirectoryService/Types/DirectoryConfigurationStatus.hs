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
-- Module      : Amazonka.DirectoryService.Types.DirectoryConfigurationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DirectoryService.Types.DirectoryConfigurationStatus
  ( DirectoryConfigurationStatus
      ( ..,
        DirectoryConfigurationStatus_Default,
        DirectoryConfigurationStatus_Failed,
        DirectoryConfigurationStatus_Requested,
        DirectoryConfigurationStatus_Updated,
        DirectoryConfigurationStatus_Updating
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype DirectoryConfigurationStatus = DirectoryConfigurationStatus'
  { fromDirectoryConfigurationStatus ::
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

pattern DirectoryConfigurationStatus_Default :: DirectoryConfigurationStatus
pattern DirectoryConfigurationStatus_Default = DirectoryConfigurationStatus' "Default"

pattern DirectoryConfigurationStatus_Failed :: DirectoryConfigurationStatus
pattern DirectoryConfigurationStatus_Failed = DirectoryConfigurationStatus' "Failed"

pattern DirectoryConfigurationStatus_Requested :: DirectoryConfigurationStatus
pattern DirectoryConfigurationStatus_Requested = DirectoryConfigurationStatus' "Requested"

pattern DirectoryConfigurationStatus_Updated :: DirectoryConfigurationStatus
pattern DirectoryConfigurationStatus_Updated = DirectoryConfigurationStatus' "Updated"

pattern DirectoryConfigurationStatus_Updating :: DirectoryConfigurationStatus
pattern DirectoryConfigurationStatus_Updating = DirectoryConfigurationStatus' "Updating"

{-# COMPLETE
  DirectoryConfigurationStatus_Default,
  DirectoryConfigurationStatus_Failed,
  DirectoryConfigurationStatus_Requested,
  DirectoryConfigurationStatus_Updated,
  DirectoryConfigurationStatus_Updating,
  DirectoryConfigurationStatus'
  #-}
