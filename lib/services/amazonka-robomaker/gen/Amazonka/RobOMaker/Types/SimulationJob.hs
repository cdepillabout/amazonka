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
-- Module      : Amazonka.RobOMaker.Types.SimulationJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.RobOMaker.Types.SimulationJob where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.RobOMaker.Types.ComputeResponse
import Amazonka.RobOMaker.Types.DataSource
import Amazonka.RobOMaker.Types.FailureBehavior
import Amazonka.RobOMaker.Types.LoggingConfig
import Amazonka.RobOMaker.Types.NetworkInterface
import Amazonka.RobOMaker.Types.OutputLocation
import Amazonka.RobOMaker.Types.RobotApplicationConfig
import Amazonka.RobOMaker.Types.SimulationApplicationConfig
import Amazonka.RobOMaker.Types.SimulationJobErrorCode
import Amazonka.RobOMaker.Types.SimulationJobStatus
import Amazonka.RobOMaker.Types.VPCConfigResponse

-- | Information about a simulation job.
--
-- /See:/ 'newSimulationJob' smart constructor.
data SimulationJob = SimulationJob'
  { -- | A map that contains tag keys and tag values that are attached to the
    -- simulation job.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The time, in milliseconds since the epoch, when the simulation job was
    -- last started.
    lastStartedAt :: Prelude.Maybe Core.POSIX,
    -- | The name of the simulation job.
    name :: Prelude.Maybe Prelude.Text,
    -- | The IAM role that allows the simulation instance to call the AWS APIs
    -- that are specified in its associated policies on your behalf. This is
    -- how credentials are passed in to your simulation job.
    iamRole :: Prelude.Maybe Prelude.Text,
    -- | The maximum simulation job duration in seconds. The value must be 8 days
    -- (691,200 seconds) or less.
    maxJobDurationInSeconds :: Prelude.Maybe Prelude.Integer,
    -- | The failure code of the simulation job if it failed.
    failureCode :: Prelude.Maybe SimulationJobErrorCode,
    -- | A unique identifier for this @SimulationJob@ request.
    clientRequestToken :: Prelude.Maybe Prelude.Text,
    -- | The time, in milliseconds since the epoch, when the simulation job was
    -- last updated.
    lastUpdatedAt :: Prelude.Maybe Core.POSIX,
    -- | The data sources for the simulation job.
    dataSources :: Prelude.Maybe [DataSource],
    -- | VPC configuration information.
    vpcConfig :: Prelude.Maybe VPCConfigResponse,
    -- | The Amazon Resource Name (ARN) of the simulation job.
    arn :: Prelude.Maybe Prelude.Text,
    -- | Location for output files generated by the simulation job.
    outputLocation :: Prelude.Maybe OutputLocation,
    -- | Status of the simulation job.
    status :: Prelude.Maybe SimulationJobStatus,
    -- | A list of simulation applications.
    simulationApplications :: Prelude.Maybe (Prelude.NonEmpty SimulationApplicationConfig),
    -- | The simulation job execution duration in milliseconds.
    simulationTimeMillis :: Prelude.Maybe Prelude.Integer,
    -- | The failure behavior the simulation job.
    --
    -- [Continue]
    --     Leaves the host running for its maximum timeout duration after a
    --     @4XX@ error code.
    --
    -- [Fail]
    --     Stop the simulation job and terminate the instance.
    failureBehavior :: Prelude.Maybe FailureBehavior,
    -- | A list of robot applications.
    robotApplications :: Prelude.Maybe (Prelude.NonEmpty RobotApplicationConfig),
    -- | Information about a network interface.
    networkInterface :: Prelude.Maybe NetworkInterface,
    -- | The logging configuration.
    loggingConfig :: Prelude.Maybe LoggingConfig,
    -- | The reason why the simulation job failed.
    failureReason :: Prelude.Maybe Prelude.Text,
    -- | Compute information for the simulation job
    compute :: Prelude.Maybe ComputeResponse
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SimulationJob' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'simulationJob_tags' - A map that contains tag keys and tag values that are attached to the
-- simulation job.
--
-- 'lastStartedAt', 'simulationJob_lastStartedAt' - The time, in milliseconds since the epoch, when the simulation job was
-- last started.
--
-- 'name', 'simulationJob_name' - The name of the simulation job.
--
-- 'iamRole', 'simulationJob_iamRole' - The IAM role that allows the simulation instance to call the AWS APIs
-- that are specified in its associated policies on your behalf. This is
-- how credentials are passed in to your simulation job.
--
-- 'maxJobDurationInSeconds', 'simulationJob_maxJobDurationInSeconds' - The maximum simulation job duration in seconds. The value must be 8 days
-- (691,200 seconds) or less.
--
-- 'failureCode', 'simulationJob_failureCode' - The failure code of the simulation job if it failed.
--
-- 'clientRequestToken', 'simulationJob_clientRequestToken' - A unique identifier for this @SimulationJob@ request.
--
-- 'lastUpdatedAt', 'simulationJob_lastUpdatedAt' - The time, in milliseconds since the epoch, when the simulation job was
-- last updated.
--
-- 'dataSources', 'simulationJob_dataSources' - The data sources for the simulation job.
--
-- 'vpcConfig', 'simulationJob_vpcConfig' - VPC configuration information.
--
-- 'arn', 'simulationJob_arn' - The Amazon Resource Name (ARN) of the simulation job.
--
-- 'outputLocation', 'simulationJob_outputLocation' - Location for output files generated by the simulation job.
--
-- 'status', 'simulationJob_status' - Status of the simulation job.
--
-- 'simulationApplications', 'simulationJob_simulationApplications' - A list of simulation applications.
--
-- 'simulationTimeMillis', 'simulationJob_simulationTimeMillis' - The simulation job execution duration in milliseconds.
--
-- 'failureBehavior', 'simulationJob_failureBehavior' - The failure behavior the simulation job.
--
-- [Continue]
--     Leaves the host running for its maximum timeout duration after a
--     @4XX@ error code.
--
-- [Fail]
--     Stop the simulation job and terminate the instance.
--
-- 'robotApplications', 'simulationJob_robotApplications' - A list of robot applications.
--
-- 'networkInterface', 'simulationJob_networkInterface' - Information about a network interface.
--
-- 'loggingConfig', 'simulationJob_loggingConfig' - The logging configuration.
--
-- 'failureReason', 'simulationJob_failureReason' - The reason why the simulation job failed.
--
-- 'compute', 'simulationJob_compute' - Compute information for the simulation job
newSimulationJob ::
  SimulationJob
newSimulationJob =
  SimulationJob'
    { tags = Prelude.Nothing,
      lastStartedAt = Prelude.Nothing,
      name = Prelude.Nothing,
      iamRole = Prelude.Nothing,
      maxJobDurationInSeconds = Prelude.Nothing,
      failureCode = Prelude.Nothing,
      clientRequestToken = Prelude.Nothing,
      lastUpdatedAt = Prelude.Nothing,
      dataSources = Prelude.Nothing,
      vpcConfig = Prelude.Nothing,
      arn = Prelude.Nothing,
      outputLocation = Prelude.Nothing,
      status = Prelude.Nothing,
      simulationApplications = Prelude.Nothing,
      simulationTimeMillis = Prelude.Nothing,
      failureBehavior = Prelude.Nothing,
      robotApplications = Prelude.Nothing,
      networkInterface = Prelude.Nothing,
      loggingConfig = Prelude.Nothing,
      failureReason = Prelude.Nothing,
      compute = Prelude.Nothing
    }

-- | A map that contains tag keys and tag values that are attached to the
-- simulation job.
simulationJob_tags :: Lens.Lens' SimulationJob (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
simulationJob_tags = Lens.lens (\SimulationJob' {tags} -> tags) (\s@SimulationJob' {} a -> s {tags = a} :: SimulationJob) Prelude.. Lens.mapping Lens.coerced

-- | The time, in milliseconds since the epoch, when the simulation job was
-- last started.
simulationJob_lastStartedAt :: Lens.Lens' SimulationJob (Prelude.Maybe Prelude.UTCTime)
simulationJob_lastStartedAt = Lens.lens (\SimulationJob' {lastStartedAt} -> lastStartedAt) (\s@SimulationJob' {} a -> s {lastStartedAt = a} :: SimulationJob) Prelude.. Lens.mapping Core._Time

-- | The name of the simulation job.
simulationJob_name :: Lens.Lens' SimulationJob (Prelude.Maybe Prelude.Text)
simulationJob_name = Lens.lens (\SimulationJob' {name} -> name) (\s@SimulationJob' {} a -> s {name = a} :: SimulationJob)

-- | The IAM role that allows the simulation instance to call the AWS APIs
-- that are specified in its associated policies on your behalf. This is
-- how credentials are passed in to your simulation job.
simulationJob_iamRole :: Lens.Lens' SimulationJob (Prelude.Maybe Prelude.Text)
simulationJob_iamRole = Lens.lens (\SimulationJob' {iamRole} -> iamRole) (\s@SimulationJob' {} a -> s {iamRole = a} :: SimulationJob)

-- | The maximum simulation job duration in seconds. The value must be 8 days
-- (691,200 seconds) or less.
simulationJob_maxJobDurationInSeconds :: Lens.Lens' SimulationJob (Prelude.Maybe Prelude.Integer)
simulationJob_maxJobDurationInSeconds = Lens.lens (\SimulationJob' {maxJobDurationInSeconds} -> maxJobDurationInSeconds) (\s@SimulationJob' {} a -> s {maxJobDurationInSeconds = a} :: SimulationJob)

-- | The failure code of the simulation job if it failed.
simulationJob_failureCode :: Lens.Lens' SimulationJob (Prelude.Maybe SimulationJobErrorCode)
simulationJob_failureCode = Lens.lens (\SimulationJob' {failureCode} -> failureCode) (\s@SimulationJob' {} a -> s {failureCode = a} :: SimulationJob)

-- | A unique identifier for this @SimulationJob@ request.
simulationJob_clientRequestToken :: Lens.Lens' SimulationJob (Prelude.Maybe Prelude.Text)
simulationJob_clientRequestToken = Lens.lens (\SimulationJob' {clientRequestToken} -> clientRequestToken) (\s@SimulationJob' {} a -> s {clientRequestToken = a} :: SimulationJob)

-- | The time, in milliseconds since the epoch, when the simulation job was
-- last updated.
simulationJob_lastUpdatedAt :: Lens.Lens' SimulationJob (Prelude.Maybe Prelude.UTCTime)
simulationJob_lastUpdatedAt = Lens.lens (\SimulationJob' {lastUpdatedAt} -> lastUpdatedAt) (\s@SimulationJob' {} a -> s {lastUpdatedAt = a} :: SimulationJob) Prelude.. Lens.mapping Core._Time

-- | The data sources for the simulation job.
simulationJob_dataSources :: Lens.Lens' SimulationJob (Prelude.Maybe [DataSource])
simulationJob_dataSources = Lens.lens (\SimulationJob' {dataSources} -> dataSources) (\s@SimulationJob' {} a -> s {dataSources = a} :: SimulationJob) Prelude.. Lens.mapping Lens.coerced

-- | VPC configuration information.
simulationJob_vpcConfig :: Lens.Lens' SimulationJob (Prelude.Maybe VPCConfigResponse)
simulationJob_vpcConfig = Lens.lens (\SimulationJob' {vpcConfig} -> vpcConfig) (\s@SimulationJob' {} a -> s {vpcConfig = a} :: SimulationJob)

-- | The Amazon Resource Name (ARN) of the simulation job.
simulationJob_arn :: Lens.Lens' SimulationJob (Prelude.Maybe Prelude.Text)
simulationJob_arn = Lens.lens (\SimulationJob' {arn} -> arn) (\s@SimulationJob' {} a -> s {arn = a} :: SimulationJob)

-- | Location for output files generated by the simulation job.
simulationJob_outputLocation :: Lens.Lens' SimulationJob (Prelude.Maybe OutputLocation)
simulationJob_outputLocation = Lens.lens (\SimulationJob' {outputLocation} -> outputLocation) (\s@SimulationJob' {} a -> s {outputLocation = a} :: SimulationJob)

-- | Status of the simulation job.
simulationJob_status :: Lens.Lens' SimulationJob (Prelude.Maybe SimulationJobStatus)
simulationJob_status = Lens.lens (\SimulationJob' {status} -> status) (\s@SimulationJob' {} a -> s {status = a} :: SimulationJob)

-- | A list of simulation applications.
simulationJob_simulationApplications :: Lens.Lens' SimulationJob (Prelude.Maybe (Prelude.NonEmpty SimulationApplicationConfig))
simulationJob_simulationApplications = Lens.lens (\SimulationJob' {simulationApplications} -> simulationApplications) (\s@SimulationJob' {} a -> s {simulationApplications = a} :: SimulationJob) Prelude.. Lens.mapping Lens.coerced

-- | The simulation job execution duration in milliseconds.
simulationJob_simulationTimeMillis :: Lens.Lens' SimulationJob (Prelude.Maybe Prelude.Integer)
simulationJob_simulationTimeMillis = Lens.lens (\SimulationJob' {simulationTimeMillis} -> simulationTimeMillis) (\s@SimulationJob' {} a -> s {simulationTimeMillis = a} :: SimulationJob)

-- | The failure behavior the simulation job.
--
-- [Continue]
--     Leaves the host running for its maximum timeout duration after a
--     @4XX@ error code.
--
-- [Fail]
--     Stop the simulation job and terminate the instance.
simulationJob_failureBehavior :: Lens.Lens' SimulationJob (Prelude.Maybe FailureBehavior)
simulationJob_failureBehavior = Lens.lens (\SimulationJob' {failureBehavior} -> failureBehavior) (\s@SimulationJob' {} a -> s {failureBehavior = a} :: SimulationJob)

-- | A list of robot applications.
simulationJob_robotApplications :: Lens.Lens' SimulationJob (Prelude.Maybe (Prelude.NonEmpty RobotApplicationConfig))
simulationJob_robotApplications = Lens.lens (\SimulationJob' {robotApplications} -> robotApplications) (\s@SimulationJob' {} a -> s {robotApplications = a} :: SimulationJob) Prelude.. Lens.mapping Lens.coerced

-- | Information about a network interface.
simulationJob_networkInterface :: Lens.Lens' SimulationJob (Prelude.Maybe NetworkInterface)
simulationJob_networkInterface = Lens.lens (\SimulationJob' {networkInterface} -> networkInterface) (\s@SimulationJob' {} a -> s {networkInterface = a} :: SimulationJob)

-- | The logging configuration.
simulationJob_loggingConfig :: Lens.Lens' SimulationJob (Prelude.Maybe LoggingConfig)
simulationJob_loggingConfig = Lens.lens (\SimulationJob' {loggingConfig} -> loggingConfig) (\s@SimulationJob' {} a -> s {loggingConfig = a} :: SimulationJob)

-- | The reason why the simulation job failed.
simulationJob_failureReason :: Lens.Lens' SimulationJob (Prelude.Maybe Prelude.Text)
simulationJob_failureReason = Lens.lens (\SimulationJob' {failureReason} -> failureReason) (\s@SimulationJob' {} a -> s {failureReason = a} :: SimulationJob)

-- | Compute information for the simulation job
simulationJob_compute :: Lens.Lens' SimulationJob (Prelude.Maybe ComputeResponse)
simulationJob_compute = Lens.lens (\SimulationJob' {compute} -> compute) (\s@SimulationJob' {} a -> s {compute = a} :: SimulationJob)

instance Core.FromJSON SimulationJob where
  parseJSON =
    Core.withObject
      "SimulationJob"
      ( \x ->
          SimulationJob'
            Prelude.<$> (x Core..:? "tags" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "lastStartedAt")
            Prelude.<*> (x Core..:? "name")
            Prelude.<*> (x Core..:? "iamRole")
            Prelude.<*> (x Core..:? "maxJobDurationInSeconds")
            Prelude.<*> (x Core..:? "failureCode")
            Prelude.<*> (x Core..:? "clientRequestToken")
            Prelude.<*> (x Core..:? "lastUpdatedAt")
            Prelude.<*> (x Core..:? "dataSources" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "vpcConfig")
            Prelude.<*> (x Core..:? "arn")
            Prelude.<*> (x Core..:? "outputLocation")
            Prelude.<*> (x Core..:? "status")
            Prelude.<*> (x Core..:? "simulationApplications")
            Prelude.<*> (x Core..:? "simulationTimeMillis")
            Prelude.<*> (x Core..:? "failureBehavior")
            Prelude.<*> (x Core..:? "robotApplications")
            Prelude.<*> (x Core..:? "networkInterface")
            Prelude.<*> (x Core..:? "loggingConfig")
            Prelude.<*> (x Core..:? "failureReason")
            Prelude.<*> (x Core..:? "compute")
      )

instance Prelude.Hashable SimulationJob where
  hashWithSalt _salt SimulationJob' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` lastStartedAt
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` iamRole
      `Prelude.hashWithSalt` maxJobDurationInSeconds
      `Prelude.hashWithSalt` failureCode
      `Prelude.hashWithSalt` clientRequestToken
      `Prelude.hashWithSalt` lastUpdatedAt
      `Prelude.hashWithSalt` dataSources
      `Prelude.hashWithSalt` vpcConfig
      `Prelude.hashWithSalt` arn
      `Prelude.hashWithSalt` outputLocation
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` simulationApplications
      `Prelude.hashWithSalt` simulationTimeMillis
      `Prelude.hashWithSalt` failureBehavior
      `Prelude.hashWithSalt` robotApplications
      `Prelude.hashWithSalt` networkInterface
      `Prelude.hashWithSalt` loggingConfig
      `Prelude.hashWithSalt` failureReason
      `Prelude.hashWithSalt` compute

instance Prelude.NFData SimulationJob where
  rnf SimulationJob' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf lastStartedAt
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf iamRole
      `Prelude.seq` Prelude.rnf maxJobDurationInSeconds
      `Prelude.seq` Prelude.rnf failureCode
      `Prelude.seq` Prelude.rnf clientRequestToken
      `Prelude.seq` Prelude.rnf lastUpdatedAt
      `Prelude.seq` Prelude.rnf dataSources
      `Prelude.seq` Prelude.rnf vpcConfig
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf outputLocation
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf simulationApplications
      `Prelude.seq` Prelude.rnf simulationTimeMillis
      `Prelude.seq` Prelude.rnf failureBehavior
      `Prelude.seq` Prelude.rnf robotApplications
      `Prelude.seq` Prelude.rnf networkInterface
      `Prelude.seq` Prelude.rnf loggingConfig
      `Prelude.seq` Prelude.rnf failureReason
      `Prelude.seq` Prelude.rnf compute
