{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.GameLift.Types.RuntimeConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.GameLift.Types.RuntimeConfiguration where

import qualified Amazonka.Core as Core
import Amazonka.GameLift.Types.ServerProcess
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A collection of server process configurations that describe the set of
-- processes to run on each instance in a fleet. Server processes run
-- either an executable in a custom game build or a Realtime Servers
-- script. GameLift launches the configured processes, manages their life
-- cycle, and replaces them as needed. Each instance checks regularly for
-- an updated runtime configuration.
--
-- A GameLift instance is limited to 50 processes running concurrently. To
-- calculate the total number of processes in a runtime configuration, add
-- the values of the @ConcurrentExecutions@ parameter for each
-- ServerProcess. Learn more about
-- <https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-multiprocess.html Running Multiple Processes on a Fleet>.
--
-- __Related actions__
--
-- DescribeRuntimeConfiguration | UpdateRuntimeConfiguration
--
-- /See:/ 'newRuntimeConfiguration' smart constructor.
data RuntimeConfiguration = RuntimeConfiguration'
  { -- | The number of game sessions in status @ACTIVATING@ to allow on an
    -- instance. This setting limits the instance resources that can be used
    -- for new game activations at any one time.
    maxConcurrentGameSessionActivations :: Prelude.Maybe Prelude.Natural,
    -- | The maximum amount of time (in seconds) allowed to launch a new game
    -- session and have it report ready to host players. During this time, the
    -- game session is in status @ACTIVATING@. If the game session does not
    -- become active before the timeout, it is ended and the game session
    -- status is changed to @TERMINATED@.
    gameSessionActivationTimeoutSeconds :: Prelude.Maybe Prelude.Natural,
    -- | A collection of server process configurations that identify what server
    -- processes to run on each instance in a fleet.
    serverProcesses :: Prelude.Maybe (Prelude.NonEmpty ServerProcess)
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RuntimeConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'maxConcurrentGameSessionActivations', 'runtimeConfiguration_maxConcurrentGameSessionActivations' - The number of game sessions in status @ACTIVATING@ to allow on an
-- instance. This setting limits the instance resources that can be used
-- for new game activations at any one time.
--
-- 'gameSessionActivationTimeoutSeconds', 'runtimeConfiguration_gameSessionActivationTimeoutSeconds' - The maximum amount of time (in seconds) allowed to launch a new game
-- session and have it report ready to host players. During this time, the
-- game session is in status @ACTIVATING@. If the game session does not
-- become active before the timeout, it is ended and the game session
-- status is changed to @TERMINATED@.
--
-- 'serverProcesses', 'runtimeConfiguration_serverProcesses' - A collection of server process configurations that identify what server
-- processes to run on each instance in a fleet.
newRuntimeConfiguration ::
  RuntimeConfiguration
newRuntimeConfiguration =
  RuntimeConfiguration'
    { maxConcurrentGameSessionActivations =
        Prelude.Nothing,
      gameSessionActivationTimeoutSeconds =
        Prelude.Nothing,
      serverProcesses = Prelude.Nothing
    }

-- | The number of game sessions in status @ACTIVATING@ to allow on an
-- instance. This setting limits the instance resources that can be used
-- for new game activations at any one time.
runtimeConfiguration_maxConcurrentGameSessionActivations :: Lens.Lens' RuntimeConfiguration (Prelude.Maybe Prelude.Natural)
runtimeConfiguration_maxConcurrentGameSessionActivations = Lens.lens (\RuntimeConfiguration' {maxConcurrentGameSessionActivations} -> maxConcurrentGameSessionActivations) (\s@RuntimeConfiguration' {} a -> s {maxConcurrentGameSessionActivations = a} :: RuntimeConfiguration)

-- | The maximum amount of time (in seconds) allowed to launch a new game
-- session and have it report ready to host players. During this time, the
-- game session is in status @ACTIVATING@. If the game session does not
-- become active before the timeout, it is ended and the game session
-- status is changed to @TERMINATED@.
runtimeConfiguration_gameSessionActivationTimeoutSeconds :: Lens.Lens' RuntimeConfiguration (Prelude.Maybe Prelude.Natural)
runtimeConfiguration_gameSessionActivationTimeoutSeconds = Lens.lens (\RuntimeConfiguration' {gameSessionActivationTimeoutSeconds} -> gameSessionActivationTimeoutSeconds) (\s@RuntimeConfiguration' {} a -> s {gameSessionActivationTimeoutSeconds = a} :: RuntimeConfiguration)

-- | A collection of server process configurations that identify what server
-- processes to run on each instance in a fleet.
runtimeConfiguration_serverProcesses :: Lens.Lens' RuntimeConfiguration (Prelude.Maybe (Prelude.NonEmpty ServerProcess))
runtimeConfiguration_serverProcesses = Lens.lens (\RuntimeConfiguration' {serverProcesses} -> serverProcesses) (\s@RuntimeConfiguration' {} a -> s {serverProcesses = a} :: RuntimeConfiguration) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON RuntimeConfiguration where
  parseJSON =
    Core.withObject
      "RuntimeConfiguration"
      ( \x ->
          RuntimeConfiguration'
            Prelude.<$> (x Core..:? "MaxConcurrentGameSessionActivations")
            Prelude.<*> (x Core..:? "GameSessionActivationTimeoutSeconds")
            Prelude.<*> (x Core..:? "ServerProcesses")
      )

instance Prelude.Hashable RuntimeConfiguration where
  hashWithSalt _salt RuntimeConfiguration' {..} =
    _salt
      `Prelude.hashWithSalt` maxConcurrentGameSessionActivations
      `Prelude.hashWithSalt` gameSessionActivationTimeoutSeconds
      `Prelude.hashWithSalt` serverProcesses

instance Prelude.NFData RuntimeConfiguration where
  rnf RuntimeConfiguration' {..} =
    Prelude.rnf maxConcurrentGameSessionActivations
      `Prelude.seq` Prelude.rnf gameSessionActivationTimeoutSeconds
      `Prelude.seq` Prelude.rnf serverProcesses

instance Core.ToJSON RuntimeConfiguration where
  toJSON RuntimeConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("MaxConcurrentGameSessionActivations" Core..=)
              Prelude.<$> maxConcurrentGameSessionActivations,
            ("GameSessionActivationTimeoutSeconds" Core..=)
              Prelude.<$> gameSessionActivationTimeoutSeconds,
            ("ServerProcesses" Core..=)
              Prelude.<$> serverProcesses
          ]
      )
