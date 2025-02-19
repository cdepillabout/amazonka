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
-- Module      : Amazonka.LakeFormation.Types.TransactionStatusFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.LakeFormation.Types.TransactionStatusFilter
  ( TransactionStatusFilter
      ( ..,
        TransactionStatusFilter_ABORTED,
        TransactionStatusFilter_ACTIVE,
        TransactionStatusFilter_ALL,
        TransactionStatusFilter_COMMITTED,
        TransactionStatusFilter_COMPLETED
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype TransactionStatusFilter = TransactionStatusFilter'
  { fromTransactionStatusFilter ::
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

pattern TransactionStatusFilter_ABORTED :: TransactionStatusFilter
pattern TransactionStatusFilter_ABORTED = TransactionStatusFilter' "ABORTED"

pattern TransactionStatusFilter_ACTIVE :: TransactionStatusFilter
pattern TransactionStatusFilter_ACTIVE = TransactionStatusFilter' "ACTIVE"

pattern TransactionStatusFilter_ALL :: TransactionStatusFilter
pattern TransactionStatusFilter_ALL = TransactionStatusFilter' "ALL"

pattern TransactionStatusFilter_COMMITTED :: TransactionStatusFilter
pattern TransactionStatusFilter_COMMITTED = TransactionStatusFilter' "COMMITTED"

pattern TransactionStatusFilter_COMPLETED :: TransactionStatusFilter
pattern TransactionStatusFilter_COMPLETED = TransactionStatusFilter' "COMPLETED"

{-# COMPLETE
  TransactionStatusFilter_ABORTED,
  TransactionStatusFilter_ACTIVE,
  TransactionStatusFilter_ALL,
  TransactionStatusFilter_COMMITTED,
  TransactionStatusFilter_COMPLETED,
  TransactionStatusFilter'
  #-}
