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
-- Module      : Amazonka.WorkSpaces.Types.ClientDeviceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.WorkSpaces.Types.ClientDeviceType
  ( ClientDeviceType
      ( ..,
        ClientDeviceType_DeviceTypeAndroid,
        ClientDeviceType_DeviceTypeIos,
        ClientDeviceType_DeviceTypeLinux,
        ClientDeviceType_DeviceTypeOsx,
        ClientDeviceType_DeviceTypeWeb,
        ClientDeviceType_DeviceTypeWindows
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype ClientDeviceType = ClientDeviceType'
  { fromClientDeviceType ::
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

pattern ClientDeviceType_DeviceTypeAndroid :: ClientDeviceType
pattern ClientDeviceType_DeviceTypeAndroid = ClientDeviceType' "DeviceTypeAndroid"

pattern ClientDeviceType_DeviceTypeIos :: ClientDeviceType
pattern ClientDeviceType_DeviceTypeIos = ClientDeviceType' "DeviceTypeIos"

pattern ClientDeviceType_DeviceTypeLinux :: ClientDeviceType
pattern ClientDeviceType_DeviceTypeLinux = ClientDeviceType' "DeviceTypeLinux"

pattern ClientDeviceType_DeviceTypeOsx :: ClientDeviceType
pattern ClientDeviceType_DeviceTypeOsx = ClientDeviceType' "DeviceTypeOsx"

pattern ClientDeviceType_DeviceTypeWeb :: ClientDeviceType
pattern ClientDeviceType_DeviceTypeWeb = ClientDeviceType' "DeviceTypeWeb"

pattern ClientDeviceType_DeviceTypeWindows :: ClientDeviceType
pattern ClientDeviceType_DeviceTypeWindows = ClientDeviceType' "DeviceTypeWindows"

{-# COMPLETE
  ClientDeviceType_DeviceTypeAndroid,
  ClientDeviceType_DeviceTypeIos,
  ClientDeviceType_DeviceTypeLinux,
  ClientDeviceType_DeviceTypeOsx,
  ClientDeviceType_DeviceTypeWeb,
  ClientDeviceType_DeviceTypeWindows,
  ClientDeviceType'
  #-}
