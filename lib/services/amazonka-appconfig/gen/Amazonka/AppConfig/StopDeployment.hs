{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.AppConfig.StopDeployment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops a deployment. This API action works only on deployments that have
-- a status of @DEPLOYING@. This action moves the deployment to a status of
-- @ROLLED_BACK@.
module Amazonka.AppConfig.StopDeployment
  ( -- * Creating a Request
    StopDeployment (..),
    newStopDeployment,

    -- * Request Lenses
    stopDeployment_applicationId,
    stopDeployment_environmentId,
    stopDeployment_deploymentNumber,

    -- * Destructuring the Response
    Deployment (..),
    newDeployment,

    -- * Response Lenses
    deployment_deploymentStrategyId,
    deployment_growthType,
    deployment_state,
    deployment_deploymentDurationInMinutes,
    deployment_deploymentNumber,
    deployment_description,
    deployment_finalBakeTimeInMinutes,
    deployment_startedAt,
    deployment_configurationName,
    deployment_growthFactor,
    deployment_appliedExtensions,
    deployment_eventLog,
    deployment_configurationVersion,
    deployment_environmentId,
    deployment_percentageComplete,
    deployment_configurationLocationUri,
    deployment_applicationId,
    deployment_completedAt,
    deployment_configurationProfileId,
  )
where

import Amazonka.AppConfig.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newStopDeployment' smart constructor.
data StopDeployment = StopDeployment'
  { -- | The application ID.
    applicationId :: Prelude.Text,
    -- | The environment ID.
    environmentId :: Prelude.Text,
    -- | The sequence number of the deployment.
    deploymentNumber :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StopDeployment' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'applicationId', 'stopDeployment_applicationId' - The application ID.
--
-- 'environmentId', 'stopDeployment_environmentId' - The environment ID.
--
-- 'deploymentNumber', 'stopDeployment_deploymentNumber' - The sequence number of the deployment.
newStopDeployment ::
  -- | 'applicationId'
  Prelude.Text ->
  -- | 'environmentId'
  Prelude.Text ->
  -- | 'deploymentNumber'
  Prelude.Int ->
  StopDeployment
newStopDeployment
  pApplicationId_
  pEnvironmentId_
  pDeploymentNumber_ =
    StopDeployment'
      { applicationId = pApplicationId_,
        environmentId = pEnvironmentId_,
        deploymentNumber = pDeploymentNumber_
      }

-- | The application ID.
stopDeployment_applicationId :: Lens.Lens' StopDeployment Prelude.Text
stopDeployment_applicationId = Lens.lens (\StopDeployment' {applicationId} -> applicationId) (\s@StopDeployment' {} a -> s {applicationId = a} :: StopDeployment)

-- | The environment ID.
stopDeployment_environmentId :: Lens.Lens' StopDeployment Prelude.Text
stopDeployment_environmentId = Lens.lens (\StopDeployment' {environmentId} -> environmentId) (\s@StopDeployment' {} a -> s {environmentId = a} :: StopDeployment)

-- | The sequence number of the deployment.
stopDeployment_deploymentNumber :: Lens.Lens' StopDeployment Prelude.Int
stopDeployment_deploymentNumber = Lens.lens (\StopDeployment' {deploymentNumber} -> deploymentNumber) (\s@StopDeployment' {} a -> s {deploymentNumber = a} :: StopDeployment)

instance Core.AWSRequest StopDeployment where
  type AWSResponse StopDeployment = Deployment
  request = Request.delete defaultService
  response =
    Response.receiveJSON
      (\s h x -> Core.eitherParseJSON x)

instance Prelude.Hashable StopDeployment where
  hashWithSalt _salt StopDeployment' {..} =
    _salt `Prelude.hashWithSalt` applicationId
      `Prelude.hashWithSalt` environmentId
      `Prelude.hashWithSalt` deploymentNumber

instance Prelude.NFData StopDeployment where
  rnf StopDeployment' {..} =
    Prelude.rnf applicationId
      `Prelude.seq` Prelude.rnf environmentId
      `Prelude.seq` Prelude.rnf deploymentNumber

instance Core.ToHeaders StopDeployment where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath StopDeployment where
  toPath StopDeployment' {..} =
    Prelude.mconcat
      [ "/applications/",
        Core.toBS applicationId,
        "/environments/",
        Core.toBS environmentId,
        "/deployments/",
        Core.toBS deploymentNumber
      ]

instance Core.ToQuery StopDeployment where
  toQuery = Prelude.const Prelude.mempty
