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
-- Module      : Amazonka.SageMaker.Types.BlueGreenUpdatePolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SageMaker.Types.BlueGreenUpdatePolicy where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.SageMaker.Types.TrafficRoutingConfig

-- | Update policy for a blue\/green deployment. If this update policy is
-- specified, SageMaker creates a new fleet during the deployment while
-- maintaining the old fleet. SageMaker flips traffic to the new fleet
-- according to the specified traffic routing configuration. Only one
-- update policy should be used in the deployment configuration. If no
-- update policy is specified, SageMaker uses a blue\/green deployment
-- strategy with all at once traffic shifting by default.
--
-- /See:/ 'newBlueGreenUpdatePolicy' smart constructor.
data BlueGreenUpdatePolicy = BlueGreenUpdatePolicy'
  { -- | Additional waiting time in seconds after the completion of an endpoint
    -- deployment before terminating the old endpoint fleet. Default is 0.
    terminationWaitInSeconds :: Prelude.Maybe Prelude.Natural,
    -- | Maximum execution timeout for the deployment. Note that the timeout
    -- value should be larger than the total waiting time specified in
    -- @TerminationWaitInSeconds@ and @WaitIntervalInSeconds@.
    maximumExecutionTimeoutInSeconds :: Prelude.Maybe Prelude.Natural,
    -- | Defines the traffic routing strategy to shift traffic from the old fleet
    -- to the new fleet during an endpoint deployment.
    trafficRoutingConfiguration :: TrafficRoutingConfig
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BlueGreenUpdatePolicy' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'terminationWaitInSeconds', 'blueGreenUpdatePolicy_terminationWaitInSeconds' - Additional waiting time in seconds after the completion of an endpoint
-- deployment before terminating the old endpoint fleet. Default is 0.
--
-- 'maximumExecutionTimeoutInSeconds', 'blueGreenUpdatePolicy_maximumExecutionTimeoutInSeconds' - Maximum execution timeout for the deployment. Note that the timeout
-- value should be larger than the total waiting time specified in
-- @TerminationWaitInSeconds@ and @WaitIntervalInSeconds@.
--
-- 'trafficRoutingConfiguration', 'blueGreenUpdatePolicy_trafficRoutingConfiguration' - Defines the traffic routing strategy to shift traffic from the old fleet
-- to the new fleet during an endpoint deployment.
newBlueGreenUpdatePolicy ::
  -- | 'trafficRoutingConfiguration'
  TrafficRoutingConfig ->
  BlueGreenUpdatePolicy
newBlueGreenUpdatePolicy
  pTrafficRoutingConfiguration_ =
    BlueGreenUpdatePolicy'
      { terminationWaitInSeconds =
          Prelude.Nothing,
        maximumExecutionTimeoutInSeconds = Prelude.Nothing,
        trafficRoutingConfiguration =
          pTrafficRoutingConfiguration_
      }

-- | Additional waiting time in seconds after the completion of an endpoint
-- deployment before terminating the old endpoint fleet. Default is 0.
blueGreenUpdatePolicy_terminationWaitInSeconds :: Lens.Lens' BlueGreenUpdatePolicy (Prelude.Maybe Prelude.Natural)
blueGreenUpdatePolicy_terminationWaitInSeconds = Lens.lens (\BlueGreenUpdatePolicy' {terminationWaitInSeconds} -> terminationWaitInSeconds) (\s@BlueGreenUpdatePolicy' {} a -> s {terminationWaitInSeconds = a} :: BlueGreenUpdatePolicy)

-- | Maximum execution timeout for the deployment. Note that the timeout
-- value should be larger than the total waiting time specified in
-- @TerminationWaitInSeconds@ and @WaitIntervalInSeconds@.
blueGreenUpdatePolicy_maximumExecutionTimeoutInSeconds :: Lens.Lens' BlueGreenUpdatePolicy (Prelude.Maybe Prelude.Natural)
blueGreenUpdatePolicy_maximumExecutionTimeoutInSeconds = Lens.lens (\BlueGreenUpdatePolicy' {maximumExecutionTimeoutInSeconds} -> maximumExecutionTimeoutInSeconds) (\s@BlueGreenUpdatePolicy' {} a -> s {maximumExecutionTimeoutInSeconds = a} :: BlueGreenUpdatePolicy)

-- | Defines the traffic routing strategy to shift traffic from the old fleet
-- to the new fleet during an endpoint deployment.
blueGreenUpdatePolicy_trafficRoutingConfiguration :: Lens.Lens' BlueGreenUpdatePolicy TrafficRoutingConfig
blueGreenUpdatePolicy_trafficRoutingConfiguration = Lens.lens (\BlueGreenUpdatePolicy' {trafficRoutingConfiguration} -> trafficRoutingConfiguration) (\s@BlueGreenUpdatePolicy' {} a -> s {trafficRoutingConfiguration = a} :: BlueGreenUpdatePolicy)

instance Core.FromJSON BlueGreenUpdatePolicy where
  parseJSON =
    Core.withObject
      "BlueGreenUpdatePolicy"
      ( \x ->
          BlueGreenUpdatePolicy'
            Prelude.<$> (x Core..:? "TerminationWaitInSeconds")
            Prelude.<*> (x Core..:? "MaximumExecutionTimeoutInSeconds")
            Prelude.<*> (x Core..: "TrafficRoutingConfiguration")
      )

instance Prelude.Hashable BlueGreenUpdatePolicy where
  hashWithSalt _salt BlueGreenUpdatePolicy' {..} =
    _salt
      `Prelude.hashWithSalt` terminationWaitInSeconds
      `Prelude.hashWithSalt` maximumExecutionTimeoutInSeconds
      `Prelude.hashWithSalt` trafficRoutingConfiguration

instance Prelude.NFData BlueGreenUpdatePolicy where
  rnf BlueGreenUpdatePolicy' {..} =
    Prelude.rnf terminationWaitInSeconds
      `Prelude.seq` Prelude.rnf maximumExecutionTimeoutInSeconds
      `Prelude.seq` Prelude.rnf trafficRoutingConfiguration

instance Core.ToJSON BlueGreenUpdatePolicy where
  toJSON BlueGreenUpdatePolicy' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("TerminationWaitInSeconds" Core..=)
              Prelude.<$> terminationWaitInSeconds,
            ("MaximumExecutionTimeoutInSeconds" Core..=)
              Prelude.<$> maximumExecutionTimeoutInSeconds,
            Prelude.Just
              ( "TrafficRoutingConfiguration"
                  Core..= trafficRoutingConfiguration
              )
          ]
      )
