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
-- Module      : Amazonka.Location.Types.RouteMatrixErrorCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Location.Types.RouteMatrixErrorCode
  ( RouteMatrixErrorCode
      ( ..,
        RouteMatrixErrorCode_DeparturePositionNotFound,
        RouteMatrixErrorCode_DestinationPositionNotFound,
        RouteMatrixErrorCode_OtherValidationError,
        RouteMatrixErrorCode_PositionsNotFound,
        RouteMatrixErrorCode_RouteNotFound,
        RouteMatrixErrorCode_RouteTooLong
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype RouteMatrixErrorCode = RouteMatrixErrorCode'
  { fromRouteMatrixErrorCode ::
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

pattern RouteMatrixErrorCode_DeparturePositionNotFound :: RouteMatrixErrorCode
pattern RouteMatrixErrorCode_DeparturePositionNotFound = RouteMatrixErrorCode' "DeparturePositionNotFound"

pattern RouteMatrixErrorCode_DestinationPositionNotFound :: RouteMatrixErrorCode
pattern RouteMatrixErrorCode_DestinationPositionNotFound = RouteMatrixErrorCode' "DestinationPositionNotFound"

pattern RouteMatrixErrorCode_OtherValidationError :: RouteMatrixErrorCode
pattern RouteMatrixErrorCode_OtherValidationError = RouteMatrixErrorCode' "OtherValidationError"

pattern RouteMatrixErrorCode_PositionsNotFound :: RouteMatrixErrorCode
pattern RouteMatrixErrorCode_PositionsNotFound = RouteMatrixErrorCode' "PositionsNotFound"

pattern RouteMatrixErrorCode_RouteNotFound :: RouteMatrixErrorCode
pattern RouteMatrixErrorCode_RouteNotFound = RouteMatrixErrorCode' "RouteNotFound"

pattern RouteMatrixErrorCode_RouteTooLong :: RouteMatrixErrorCode
pattern RouteMatrixErrorCode_RouteTooLong = RouteMatrixErrorCode' "RouteTooLong"

{-# COMPLETE
  RouteMatrixErrorCode_DeparturePositionNotFound,
  RouteMatrixErrorCode_DestinationPositionNotFound,
  RouteMatrixErrorCode_OtherValidationError,
  RouteMatrixErrorCode_PositionsNotFound,
  RouteMatrixErrorCode_RouteNotFound,
  RouteMatrixErrorCode_RouteTooLong,
  RouteMatrixErrorCode'
  #-}
