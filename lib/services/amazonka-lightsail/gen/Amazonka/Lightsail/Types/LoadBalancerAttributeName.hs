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
-- Module      : Amazonka.Lightsail.Types.LoadBalancerAttributeName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Lightsail.Types.LoadBalancerAttributeName
  ( LoadBalancerAttributeName
      ( ..,
        LoadBalancerAttributeName_HealthCheckPath,
        LoadBalancerAttributeName_HttpsRedirectionEnabled,
        LoadBalancerAttributeName_SessionStickinessEnabled,
        LoadBalancerAttributeName_SessionStickiness_LB_CookieDurationSeconds,
        LoadBalancerAttributeName_TlsPolicyName
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype LoadBalancerAttributeName = LoadBalancerAttributeName'
  { fromLoadBalancerAttributeName ::
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

pattern LoadBalancerAttributeName_HealthCheckPath :: LoadBalancerAttributeName
pattern LoadBalancerAttributeName_HealthCheckPath = LoadBalancerAttributeName' "HealthCheckPath"

pattern LoadBalancerAttributeName_HttpsRedirectionEnabled :: LoadBalancerAttributeName
pattern LoadBalancerAttributeName_HttpsRedirectionEnabled = LoadBalancerAttributeName' "HttpsRedirectionEnabled"

pattern LoadBalancerAttributeName_SessionStickinessEnabled :: LoadBalancerAttributeName
pattern LoadBalancerAttributeName_SessionStickinessEnabled = LoadBalancerAttributeName' "SessionStickinessEnabled"

pattern LoadBalancerAttributeName_SessionStickiness_LB_CookieDurationSeconds :: LoadBalancerAttributeName
pattern LoadBalancerAttributeName_SessionStickiness_LB_CookieDurationSeconds = LoadBalancerAttributeName' "SessionStickiness_LB_CookieDurationSeconds"

pattern LoadBalancerAttributeName_TlsPolicyName :: LoadBalancerAttributeName
pattern LoadBalancerAttributeName_TlsPolicyName = LoadBalancerAttributeName' "TlsPolicyName"

{-# COMPLETE
  LoadBalancerAttributeName_HealthCheckPath,
  LoadBalancerAttributeName_HttpsRedirectionEnabled,
  LoadBalancerAttributeName_SessionStickinessEnabled,
  LoadBalancerAttributeName_SessionStickiness_LB_CookieDurationSeconds,
  LoadBalancerAttributeName_TlsPolicyName,
  LoadBalancerAttributeName'
  #-}
