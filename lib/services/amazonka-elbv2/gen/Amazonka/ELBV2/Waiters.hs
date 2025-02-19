{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.ELBV2.Waiters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ELBV2.Waiters where

import qualified Amazonka.Core as Core
import Amazonka.ELBV2.DescribeLoadBalancers
import Amazonka.ELBV2.DescribeTargetHealth
import Amazonka.ELBV2.Lens
import Amazonka.ELBV2.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Polls 'Amazonka.ELBV2.DescribeTargetHealth' every 15 seconds until a successful state is reached. An error is returned after 40 failed checks.
newTargetInService :: Core.Wait DescribeTargetHealth
newTargetInService =
  Core.Wait
    { Core._waitName = "TargetInService",
      Core._waitAttempts = 40,
      Core._waitDelay = 15,
      Core._waitAcceptors =
        [ Core.matchAll
            "healthy"
            Core.AcceptSuccess
            ( Lens.folding
                ( Lens.concatOf
                    ( describeTargetHealthResponse_targetHealthDescriptions
                        Prelude.. Lens._Just
                    )
                )
                Prelude.. targetHealthDescription_targetHealth
                Prelude.. Lens._Just
                Prelude.. targetHealth_state
                Prelude.. Lens._Just
                Prelude.. Lens.to Core.toTextCI
            ),
          Core.matchError "InvalidInstance" Core.AcceptRetry
        ]
    }

-- | Polls 'Amazonka.ELBV2.DescribeLoadBalancers' every 15 seconds until a successful state is reached. An error is returned after 40 failed checks.
newLoadBalancerExists :: Core.Wait DescribeLoadBalancers
newLoadBalancerExists =
  Core.Wait
    { Core._waitName = "LoadBalancerExists",
      Core._waitAttempts = 40,
      Core._waitDelay = 15,
      Core._waitAcceptors =
        [ Core.matchStatus 200 Core.AcceptSuccess,
          Core.matchError
            "LoadBalancerNotFound"
            Core.AcceptRetry
        ]
    }

-- | Polls 'Amazonka.ELBV2.DescribeLoadBalancers' every 15 seconds until a successful state is reached. An error is returned after 40 failed checks.
newLoadBalancerAvailable :: Core.Wait DescribeLoadBalancers
newLoadBalancerAvailable =
  Core.Wait
    { Core._waitName = "LoadBalancerAvailable",
      Core._waitAttempts = 40,
      Core._waitDelay = 15,
      Core._waitAcceptors =
        [ Core.matchAll
            "active"
            Core.AcceptSuccess
            ( Lens.folding
                ( Lens.concatOf
                    ( describeLoadBalancersResponse_loadBalancers
                        Prelude.. Lens._Just
                    )
                )
                Prelude.. loadBalancer_state
                Prelude.. Lens._Just
                Prelude.. loadBalancerState_code
                Prelude.. Lens._Just
                Prelude.. Lens.to Core.toTextCI
            ),
          Core.matchAny
            "provisioning"
            Core.AcceptRetry
            ( Lens.folding
                ( Lens.concatOf
                    ( describeLoadBalancersResponse_loadBalancers
                        Prelude.. Lens._Just
                    )
                )
                Prelude.. loadBalancer_state
                Prelude.. Lens._Just
                Prelude.. loadBalancerState_code
                Prelude.. Lens._Just
                Prelude.. Lens.to Core.toTextCI
            ),
          Core.matchError
            "LoadBalancerNotFound"
            Core.AcceptRetry
        ]
    }

-- | Polls 'Amazonka.ELBV2.DescribeTargetHealth' every 15 seconds until a successful state is reached. An error is returned after 40 failed checks.
newTargetDeregistered :: Core.Wait DescribeTargetHealth
newTargetDeregistered =
  Core.Wait
    { Core._waitName = "TargetDeregistered",
      Core._waitAttempts = 40,
      Core._waitDelay = 15,
      Core._waitAcceptors =
        [ Core.matchError "InvalidTarget" Core.AcceptSuccess,
          Core.matchAll
            "unused"
            Core.AcceptSuccess
            ( Lens.folding
                ( Lens.concatOf
                    ( describeTargetHealthResponse_targetHealthDescriptions
                        Prelude.. Lens._Just
                    )
                )
                Prelude.. targetHealthDescription_targetHealth
                Prelude.. Lens._Just
                Prelude.. targetHealth_state
                Prelude.. Lens._Just
                Prelude.. Lens.to Core.toTextCI
            )
        ]
    }

-- | Polls 'Amazonka.ELBV2.DescribeLoadBalancers' every 15 seconds until a successful state is reached. An error is returned after 40 failed checks.
newLoadBalancersDeleted :: Core.Wait DescribeLoadBalancers
newLoadBalancersDeleted =
  Core.Wait
    { Core._waitName = "LoadBalancersDeleted",
      Core._waitAttempts = 40,
      Core._waitDelay = 15,
      Core._waitAcceptors =
        [ Core.matchAll
            "active"
            Core.AcceptRetry
            ( Lens.folding
                ( Lens.concatOf
                    ( describeLoadBalancersResponse_loadBalancers
                        Prelude.. Lens._Just
                    )
                )
                Prelude.. loadBalancer_state
                Prelude.. Lens._Just
                Prelude.. loadBalancerState_code
                Prelude.. Lens._Just
                Prelude.. Lens.to Core.toTextCI
            ),
          Core.matchError
            "LoadBalancerNotFound"
            Core.AcceptSuccess
        ]
    }
