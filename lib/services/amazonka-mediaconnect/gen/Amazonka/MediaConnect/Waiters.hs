{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.MediaConnect.Waiters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaConnect.Waiters where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MediaConnect.DescribeFlow
import Amazonka.MediaConnect.Lens
import Amazonka.MediaConnect.Types
import qualified Amazonka.Prelude as Prelude

-- | Polls 'Amazonka.MediaConnect.DescribeFlow' every 3 seconds until a successful state is reached. An error is returned after 40 failed checks.
newFlowStandby :: Core.Wait DescribeFlow
newFlowStandby =
  Core.Wait
    { Core._waitName = "FlowStandby",
      Core._waitAttempts = 40,
      Core._waitDelay = 3,
      Core._waitAcceptors =
        [ Core.matchAll
            "STANDBY"
            Core.AcceptSuccess
            ( describeFlowResponse_flow Prelude.. Lens._Just
                Prelude.. flow_status
                Prelude.. Lens.to Core.toTextCI
            ),
          Core.matchAll
            "STOPPING"
            Core.AcceptRetry
            ( describeFlowResponse_flow Prelude.. Lens._Just
                Prelude.. flow_status
                Prelude.. Lens.to Core.toTextCI
            ),
          Core.matchStatus 500 Core.AcceptRetry,
          Core.matchStatus 503 Core.AcceptRetry,
          Core.matchAll
            "ERROR"
            Core.AcceptFailure
            ( describeFlowResponse_flow Prelude.. Lens._Just
                Prelude.. flow_status
                Prelude.. Lens.to Core.toTextCI
            )
        ]
    }

-- | Polls 'Amazonka.MediaConnect.DescribeFlow' every 3 seconds until a successful state is reached. An error is returned after 40 failed checks.
newFlowDeleted :: Core.Wait DescribeFlow
newFlowDeleted =
  Core.Wait
    { Core._waitName = "FlowDeleted",
      Core._waitAttempts = 40,
      Core._waitDelay = 3,
      Core._waitAcceptors =
        [ Core.matchStatus 404 Core.AcceptSuccess,
          Core.matchAll
            "DELETING"
            Core.AcceptRetry
            ( describeFlowResponse_flow Prelude.. Lens._Just
                Prelude.. flow_status
                Prelude.. Lens.to Core.toTextCI
            ),
          Core.matchStatus 500 Core.AcceptRetry,
          Core.matchStatus 503 Core.AcceptRetry,
          Core.matchAll
            "ERROR"
            Core.AcceptFailure
            ( describeFlowResponse_flow Prelude.. Lens._Just
                Prelude.. flow_status
                Prelude.. Lens.to Core.toTextCI
            )
        ]
    }

-- | Polls 'Amazonka.MediaConnect.DescribeFlow' every 3 seconds until a successful state is reached. An error is returned after 40 failed checks.
newFlowActive :: Core.Wait DescribeFlow
newFlowActive =
  Core.Wait
    { Core._waitName = "FlowActive",
      Core._waitAttempts = 40,
      Core._waitDelay = 3,
      Core._waitAcceptors =
        [ Core.matchAll
            "ACTIVE"
            Core.AcceptSuccess
            ( describeFlowResponse_flow Prelude.. Lens._Just
                Prelude.. flow_status
                Prelude.. Lens.to Core.toTextCI
            ),
          Core.matchAll
            "STARTING"
            Core.AcceptRetry
            ( describeFlowResponse_flow Prelude.. Lens._Just
                Prelude.. flow_status
                Prelude.. Lens.to Core.toTextCI
            ),
          Core.matchAll
            "UPDATING"
            Core.AcceptRetry
            ( describeFlowResponse_flow Prelude.. Lens._Just
                Prelude.. flow_status
                Prelude.. Lens.to Core.toTextCI
            ),
          Core.matchStatus 500 Core.AcceptRetry,
          Core.matchStatus 503 Core.AcceptRetry,
          Core.matchAll
            "ERROR"
            Core.AcceptFailure
            ( describeFlowResponse_flow Prelude.. Lens._Just
                Prelude.. flow_status
                Prelude.. Lens.to Core.toTextCI
            )
        ]
    }
