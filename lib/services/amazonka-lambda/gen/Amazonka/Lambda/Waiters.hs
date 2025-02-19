{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.Lambda.Waiters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Lambda.Waiters where

import qualified Amazonka.Core as Core
import Amazonka.Lambda.GetFunction
import Amazonka.Lambda.GetFunctionConfiguration
import Amazonka.Lambda.Lens
import Amazonka.Lambda.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Polls 'Amazonka.Lambda.GetFunctionConfiguration' every 5 seconds until a successful state is reached. An error is returned after 60 failed checks.
newFunctionActive :: Core.Wait GetFunctionConfiguration
newFunctionActive =
  Core.Wait
    { Core._waitName = "FunctionActive",
      Core._waitAttempts = 60,
      Core._waitDelay = 5,
      Core._waitAcceptors =
        [ Core.matchAll
            "Active"
            Core.AcceptSuccess
            ( functionConfiguration_state Prelude.. Lens._Just
                Prelude.. Lens.to Core.toTextCI
            ),
          Core.matchAll
            "Failed"
            Core.AcceptFailure
            ( functionConfiguration_state Prelude.. Lens._Just
                Prelude.. Lens.to Core.toTextCI
            ),
          Core.matchAll
            "Pending"
            Core.AcceptRetry
            ( functionConfiguration_state Prelude.. Lens._Just
                Prelude.. Lens.to Core.toTextCI
            )
        ]
    }

-- | Polls 'Amazonka.Lambda.GetFunction' every 1 seconds until a successful state is reached. An error is returned after 300 failed checks.
newFunctionUpdatedV2 :: Core.Wait GetFunction
newFunctionUpdatedV2 =
  Core.Wait
    { Core._waitName = "FunctionUpdatedV2",
      Core._waitAttempts = 300,
      Core._waitDelay = 1,
      Core._waitAcceptors =
        [ Core.matchAll
            "Successful"
            Core.AcceptSuccess
            ( getFunctionResponse_configuration
                Prelude.. Lens._Just
                Prelude.. functionConfiguration_lastUpdateStatus
                Prelude.. Lens._Just
                Prelude.. Lens.to Core.toTextCI
            ),
          Core.matchAll
            "Failed"
            Core.AcceptFailure
            ( getFunctionResponse_configuration
                Prelude.. Lens._Just
                Prelude.. functionConfiguration_lastUpdateStatus
                Prelude.. Lens._Just
                Prelude.. Lens.to Core.toTextCI
            ),
          Core.matchAll
            "InProgress"
            Core.AcceptRetry
            ( getFunctionResponse_configuration
                Prelude.. Lens._Just
                Prelude.. functionConfiguration_lastUpdateStatus
                Prelude.. Lens._Just
                Prelude.. Lens.to Core.toTextCI
            )
        ]
    }

-- | Polls 'Amazonka.Lambda.GetFunction' every 1 seconds until a successful state is reached. An error is returned after 20 failed checks.
newFunctionExists :: Core.Wait GetFunction
newFunctionExists =
  Core.Wait
    { Core._waitName = "FunctionExists",
      Core._waitAttempts = 20,
      Core._waitDelay = 1,
      Core._waitAcceptors =
        [ Core.matchStatus 200 Core.AcceptSuccess,
          Core.matchError
            "ResourceNotFoundException"
            Core.AcceptRetry
        ]
    }

-- | Polls 'Amazonka.Lambda.GetFunction' every 1 seconds until a successful state is reached. An error is returned after 300 failed checks.
newFunctionActiveV2 :: Core.Wait GetFunction
newFunctionActiveV2 =
  Core.Wait
    { Core._waitName = "FunctionActiveV2",
      Core._waitAttempts = 300,
      Core._waitDelay = 1,
      Core._waitAcceptors =
        [ Core.matchAll
            "Active"
            Core.AcceptSuccess
            ( getFunctionResponse_configuration
                Prelude.. Lens._Just
                Prelude.. functionConfiguration_state
                Prelude.. Lens._Just
                Prelude.. Lens.to Core.toTextCI
            ),
          Core.matchAll
            "Failed"
            Core.AcceptFailure
            ( getFunctionResponse_configuration
                Prelude.. Lens._Just
                Prelude.. functionConfiguration_state
                Prelude.. Lens._Just
                Prelude.. Lens.to Core.toTextCI
            ),
          Core.matchAll
            "Pending"
            Core.AcceptRetry
            ( getFunctionResponse_configuration
                Prelude.. Lens._Just
                Prelude.. functionConfiguration_state
                Prelude.. Lens._Just
                Prelude.. Lens.to Core.toTextCI
            )
        ]
    }

-- | Polls 'Amazonka.Lambda.GetFunctionConfiguration' every 5 seconds until a successful state is reached. An error is returned after 60 failed checks.
newFunctionUpdated :: Core.Wait GetFunctionConfiguration
newFunctionUpdated =
  Core.Wait
    { Core._waitName = "FunctionUpdated",
      Core._waitAttempts = 60,
      Core._waitDelay = 5,
      Core._waitAcceptors =
        [ Core.matchAll
            "Successful"
            Core.AcceptSuccess
            ( functionConfiguration_lastUpdateStatus
                Prelude.. Lens._Just
                Prelude.. Lens.to Core.toTextCI
            ),
          Core.matchAll
            "Failed"
            Core.AcceptFailure
            ( functionConfiguration_lastUpdateStatus
                Prelude.. Lens._Just
                Prelude.. Lens.to Core.toTextCI
            ),
          Core.matchAll
            "InProgress"
            Core.AcceptRetry
            ( functionConfiguration_lastUpdateStatus
                Prelude.. Lens._Just
                Prelude.. Lens.to Core.toTextCI
            )
        ]
    }
