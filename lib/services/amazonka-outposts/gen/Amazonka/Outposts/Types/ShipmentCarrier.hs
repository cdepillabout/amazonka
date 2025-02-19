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
-- Module      : Amazonka.Outposts.Types.ShipmentCarrier
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Outposts.Types.ShipmentCarrier
  ( ShipmentCarrier
      ( ..,
        ShipmentCarrier_DBS,
        ShipmentCarrier_DHL,
        ShipmentCarrier_FEDEX,
        ShipmentCarrier_UPS
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype ShipmentCarrier = ShipmentCarrier'
  { fromShipmentCarrier ::
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

pattern ShipmentCarrier_DBS :: ShipmentCarrier
pattern ShipmentCarrier_DBS = ShipmentCarrier' "DBS"

pattern ShipmentCarrier_DHL :: ShipmentCarrier
pattern ShipmentCarrier_DHL = ShipmentCarrier' "DHL"

pattern ShipmentCarrier_FEDEX :: ShipmentCarrier
pattern ShipmentCarrier_FEDEX = ShipmentCarrier' "FEDEX"

pattern ShipmentCarrier_UPS :: ShipmentCarrier
pattern ShipmentCarrier_UPS = ShipmentCarrier' "UPS"

{-# COMPLETE
  ShipmentCarrier_DBS,
  ShipmentCarrier_DHL,
  ShipmentCarrier_FEDEX,
  ShipmentCarrier_UPS,
  ShipmentCarrier'
  #-}
