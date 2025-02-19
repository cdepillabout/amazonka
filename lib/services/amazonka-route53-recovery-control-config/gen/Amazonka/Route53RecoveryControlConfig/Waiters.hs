{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.Route53RecoveryControlConfig.Waiters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Route53RecoveryControlConfig.Waiters where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.Route53RecoveryControlConfig.DescribeCluster
import Amazonka.Route53RecoveryControlConfig.DescribeControlPanel
import Amazonka.Route53RecoveryControlConfig.DescribeRoutingControl
import Amazonka.Route53RecoveryControlConfig.Lens
import Amazonka.Route53RecoveryControlConfig.Types

-- | Polls 'Amazonka.Route53RecoveryControlConfig.DescribeRoutingControl' every 5 seconds until a successful state is reached. An error is returned after 26 failed checks.
newRoutingControlDeleted :: Core.Wait DescribeRoutingControl
newRoutingControlDeleted =
  Core.Wait
    { Core._waitName = "RoutingControlDeleted",
      Core._waitAttempts = 26,
      Core._waitDelay = 5,
      Core._waitAcceptors =
        [ Core.matchStatus 404 Core.AcceptSuccess,
          Core.matchAll
            "PENDING_DELETION"
            Core.AcceptRetry
            ( describeRoutingControlResponse_routingControl
                Prelude.. Lens._Just
                Prelude.. routingControl_status
                Prelude.. Lens._Just
                Prelude.. Lens.to Core.toTextCI
            ),
          Core.matchStatus 500 Core.AcceptRetry
        ]
    }

-- | Polls 'Amazonka.Route53RecoveryControlConfig.DescribeCluster' every 5 seconds until a successful state is reached. An error is returned after 26 failed checks.
newClusterCreated :: Core.Wait DescribeCluster
newClusterCreated =
  Core.Wait
    { Core._waitName = "ClusterCreated",
      Core._waitAttempts = 26,
      Core._waitDelay = 5,
      Core._waitAcceptors =
        [ Core.matchAll
            "DEPLOYED"
            Core.AcceptSuccess
            ( describeClusterResponse_cluster Prelude.. Lens._Just
                Prelude.. cluster_status
                Prelude.. Lens._Just
                Prelude.. Lens.to Core.toTextCI
            ),
          Core.matchAll
            "PENDING"
            Core.AcceptRetry
            ( describeClusterResponse_cluster Prelude.. Lens._Just
                Prelude.. cluster_status
                Prelude.. Lens._Just
                Prelude.. Lens.to Core.toTextCI
            ),
          Core.matchStatus 500 Core.AcceptRetry
        ]
    }

-- | Polls 'Amazonka.Route53RecoveryControlConfig.DescribeControlPanel' every 5 seconds until a successful state is reached. An error is returned after 26 failed checks.
newControlPanelCreated :: Core.Wait DescribeControlPanel
newControlPanelCreated =
  Core.Wait
    { Core._waitName = "ControlPanelCreated",
      Core._waitAttempts = 26,
      Core._waitDelay = 5,
      Core._waitAcceptors =
        [ Core.matchAll
            "DEPLOYED"
            Core.AcceptSuccess
            ( describeControlPanelResponse_controlPanel
                Prelude.. Lens._Just
                Prelude.. controlPanel_status
                Prelude.. Lens._Just
                Prelude.. Lens.to Core.toTextCI
            ),
          Core.matchAll
            "PENDING"
            Core.AcceptRetry
            ( describeControlPanelResponse_controlPanel
                Prelude.. Lens._Just
                Prelude.. controlPanel_status
                Prelude.. Lens._Just
                Prelude.. Lens.to Core.toTextCI
            ),
          Core.matchStatus 500 Core.AcceptRetry
        ]
    }

-- | Polls 'Amazonka.Route53RecoveryControlConfig.DescribeControlPanel' every 5 seconds until a successful state is reached. An error is returned after 26 failed checks.
newControlPanelDeleted :: Core.Wait DescribeControlPanel
newControlPanelDeleted =
  Core.Wait
    { Core._waitName = "ControlPanelDeleted",
      Core._waitAttempts = 26,
      Core._waitDelay = 5,
      Core._waitAcceptors =
        [ Core.matchStatus 404 Core.AcceptSuccess,
          Core.matchAll
            "PENDING_DELETION"
            Core.AcceptRetry
            ( describeControlPanelResponse_controlPanel
                Prelude.. Lens._Just
                Prelude.. controlPanel_status
                Prelude.. Lens._Just
                Prelude.. Lens.to Core.toTextCI
            ),
          Core.matchStatus 500 Core.AcceptRetry
        ]
    }

-- | Polls 'Amazonka.Route53RecoveryControlConfig.DescribeCluster' every 5 seconds until a successful state is reached. An error is returned after 26 failed checks.
newClusterDeleted :: Core.Wait DescribeCluster
newClusterDeleted =
  Core.Wait
    { Core._waitName = "ClusterDeleted",
      Core._waitAttempts = 26,
      Core._waitDelay = 5,
      Core._waitAcceptors =
        [ Core.matchStatus 404 Core.AcceptSuccess,
          Core.matchAll
            "PENDING_DELETION"
            Core.AcceptRetry
            ( describeClusterResponse_cluster Prelude.. Lens._Just
                Prelude.. cluster_status
                Prelude.. Lens._Just
                Prelude.. Lens.to Core.toTextCI
            ),
          Core.matchStatus 500 Core.AcceptRetry
        ]
    }

-- | Polls 'Amazonka.Route53RecoveryControlConfig.DescribeRoutingControl' every 5 seconds until a successful state is reached. An error is returned after 26 failed checks.
newRoutingControlCreated :: Core.Wait DescribeRoutingControl
newRoutingControlCreated =
  Core.Wait
    { Core._waitName = "RoutingControlCreated",
      Core._waitAttempts = 26,
      Core._waitDelay = 5,
      Core._waitAcceptors =
        [ Core.matchAll
            "DEPLOYED"
            Core.AcceptSuccess
            ( describeRoutingControlResponse_routingControl
                Prelude.. Lens._Just
                Prelude.. routingControl_status
                Prelude.. Lens._Just
                Prelude.. Lens.to Core.toTextCI
            ),
          Core.matchAll
            "PENDING"
            Core.AcceptRetry
            ( describeRoutingControlResponse_routingControl
                Prelude.. Lens._Just
                Prelude.. routingControl_status
                Prelude.. Lens._Just
                Prelude.. Lens.to Core.toTextCI
            ),
          Core.matchStatus 500 Core.AcceptRetry
        ]
    }
