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
-- Module      : Amazonka.FMS.Types.ThirdPartyFirewallAssociationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.FMS.Types.ThirdPartyFirewallAssociationStatus
  ( ThirdPartyFirewallAssociationStatus
      ( ..,
        ThirdPartyFirewallAssociationStatus_NOT_EXIST,
        ThirdPartyFirewallAssociationStatus_OFFBOARDING,
        ThirdPartyFirewallAssociationStatus_OFFBOARD_COMPLETE,
        ThirdPartyFirewallAssociationStatus_ONBOARDING,
        ThirdPartyFirewallAssociationStatus_ONBOARD_COMPLETE
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype ThirdPartyFirewallAssociationStatus = ThirdPartyFirewallAssociationStatus'
  { fromThirdPartyFirewallAssociationStatus ::
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

pattern ThirdPartyFirewallAssociationStatus_NOT_EXIST :: ThirdPartyFirewallAssociationStatus
pattern ThirdPartyFirewallAssociationStatus_NOT_EXIST = ThirdPartyFirewallAssociationStatus' "NOT_EXIST"

pattern ThirdPartyFirewallAssociationStatus_OFFBOARDING :: ThirdPartyFirewallAssociationStatus
pattern ThirdPartyFirewallAssociationStatus_OFFBOARDING = ThirdPartyFirewallAssociationStatus' "OFFBOARDING"

pattern ThirdPartyFirewallAssociationStatus_OFFBOARD_COMPLETE :: ThirdPartyFirewallAssociationStatus
pattern ThirdPartyFirewallAssociationStatus_OFFBOARD_COMPLETE = ThirdPartyFirewallAssociationStatus' "OFFBOARD_COMPLETE"

pattern ThirdPartyFirewallAssociationStatus_ONBOARDING :: ThirdPartyFirewallAssociationStatus
pattern ThirdPartyFirewallAssociationStatus_ONBOARDING = ThirdPartyFirewallAssociationStatus' "ONBOARDING"

pattern ThirdPartyFirewallAssociationStatus_ONBOARD_COMPLETE :: ThirdPartyFirewallAssociationStatus
pattern ThirdPartyFirewallAssociationStatus_ONBOARD_COMPLETE = ThirdPartyFirewallAssociationStatus' "ONBOARD_COMPLETE"

{-# COMPLETE
  ThirdPartyFirewallAssociationStatus_NOT_EXIST,
  ThirdPartyFirewallAssociationStatus_OFFBOARDING,
  ThirdPartyFirewallAssociationStatus_OFFBOARD_COMPLETE,
  ThirdPartyFirewallAssociationStatus_ONBOARDING,
  ThirdPartyFirewallAssociationStatus_ONBOARD_COMPLETE,
  ThirdPartyFirewallAssociationStatus'
  #-}
