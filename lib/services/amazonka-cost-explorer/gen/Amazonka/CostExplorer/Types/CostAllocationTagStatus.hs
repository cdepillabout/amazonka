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
-- Module      : Amazonka.CostExplorer.Types.CostAllocationTagStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CostExplorer.Types.CostAllocationTagStatus
  ( CostAllocationTagStatus
      ( ..,
        CostAllocationTagStatus_Active,
        CostAllocationTagStatus_Inactive
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype CostAllocationTagStatus = CostAllocationTagStatus'
  { fromCostAllocationTagStatus ::
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

pattern CostAllocationTagStatus_Active :: CostAllocationTagStatus
pattern CostAllocationTagStatus_Active = CostAllocationTagStatus' "Active"

pattern CostAllocationTagStatus_Inactive :: CostAllocationTagStatus
pattern CostAllocationTagStatus_Inactive = CostAllocationTagStatus' "Inactive"

{-# COMPLETE
  CostAllocationTagStatus_Active,
  CostAllocationTagStatus_Inactive,
  CostAllocationTagStatus'
  #-}
