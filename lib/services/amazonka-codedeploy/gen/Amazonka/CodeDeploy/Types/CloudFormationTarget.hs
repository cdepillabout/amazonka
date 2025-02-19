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
-- Module      : Amazonka.CodeDeploy.Types.CloudFormationTarget
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CodeDeploy.Types.CloudFormationTarget where

import Amazonka.CodeDeploy.Types.LifecycleEvent
import Amazonka.CodeDeploy.Types.TargetStatus
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Information about the target to be updated by an AWS CloudFormation
-- blue\/green deployment. This target type is used for all deployments
-- initiated by a CloudFormation stack update.
--
-- /See:/ 'newCloudFormationTarget' smart constructor.
data CloudFormationTarget = CloudFormationTarget'
  { -- | The resource type for the AWS CloudFormation blue\/green deployment.
    resourceType :: Prelude.Maybe Prelude.Text,
    -- | The unique ID of a deployment target that has a type
    -- of @CloudFormationTarget@.
    targetId :: Prelude.Maybe Prelude.Text,
    -- | The lifecycle events of the AWS CloudFormation blue\/green deployment to
    -- this target application.
    lifecycleEvents :: Prelude.Maybe [LifecycleEvent],
    -- | The date and time when the target application was updated by an AWS
    -- CloudFormation blue\/green deployment.
    lastUpdatedAt :: Prelude.Maybe Core.POSIX,
    -- | The percentage of production traffic that the target version of an AWS
    -- CloudFormation blue\/green deployment receives.
    targetVersionWeight :: Prelude.Maybe Prelude.Double,
    -- | The unique ID of an AWS CloudFormation blue\/green deployment.
    deploymentId :: Prelude.Maybe Prelude.Text,
    -- | The status of an AWS CloudFormation blue\/green deployment\'s target
    -- application.
    status :: Prelude.Maybe TargetStatus
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CloudFormationTarget' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceType', 'cloudFormationTarget_resourceType' - The resource type for the AWS CloudFormation blue\/green deployment.
--
-- 'targetId', 'cloudFormationTarget_targetId' - The unique ID of a deployment target that has a type
-- of @CloudFormationTarget@.
--
-- 'lifecycleEvents', 'cloudFormationTarget_lifecycleEvents' - The lifecycle events of the AWS CloudFormation blue\/green deployment to
-- this target application.
--
-- 'lastUpdatedAt', 'cloudFormationTarget_lastUpdatedAt' - The date and time when the target application was updated by an AWS
-- CloudFormation blue\/green deployment.
--
-- 'targetVersionWeight', 'cloudFormationTarget_targetVersionWeight' - The percentage of production traffic that the target version of an AWS
-- CloudFormation blue\/green deployment receives.
--
-- 'deploymentId', 'cloudFormationTarget_deploymentId' - The unique ID of an AWS CloudFormation blue\/green deployment.
--
-- 'status', 'cloudFormationTarget_status' - The status of an AWS CloudFormation blue\/green deployment\'s target
-- application.
newCloudFormationTarget ::
  CloudFormationTarget
newCloudFormationTarget =
  CloudFormationTarget'
    { resourceType =
        Prelude.Nothing,
      targetId = Prelude.Nothing,
      lifecycleEvents = Prelude.Nothing,
      lastUpdatedAt = Prelude.Nothing,
      targetVersionWeight = Prelude.Nothing,
      deploymentId = Prelude.Nothing,
      status = Prelude.Nothing
    }

-- | The resource type for the AWS CloudFormation blue\/green deployment.
cloudFormationTarget_resourceType :: Lens.Lens' CloudFormationTarget (Prelude.Maybe Prelude.Text)
cloudFormationTarget_resourceType = Lens.lens (\CloudFormationTarget' {resourceType} -> resourceType) (\s@CloudFormationTarget' {} a -> s {resourceType = a} :: CloudFormationTarget)

-- | The unique ID of a deployment target that has a type
-- of @CloudFormationTarget@.
cloudFormationTarget_targetId :: Lens.Lens' CloudFormationTarget (Prelude.Maybe Prelude.Text)
cloudFormationTarget_targetId = Lens.lens (\CloudFormationTarget' {targetId} -> targetId) (\s@CloudFormationTarget' {} a -> s {targetId = a} :: CloudFormationTarget)

-- | The lifecycle events of the AWS CloudFormation blue\/green deployment to
-- this target application.
cloudFormationTarget_lifecycleEvents :: Lens.Lens' CloudFormationTarget (Prelude.Maybe [LifecycleEvent])
cloudFormationTarget_lifecycleEvents = Lens.lens (\CloudFormationTarget' {lifecycleEvents} -> lifecycleEvents) (\s@CloudFormationTarget' {} a -> s {lifecycleEvents = a} :: CloudFormationTarget) Prelude.. Lens.mapping Lens.coerced

-- | The date and time when the target application was updated by an AWS
-- CloudFormation blue\/green deployment.
cloudFormationTarget_lastUpdatedAt :: Lens.Lens' CloudFormationTarget (Prelude.Maybe Prelude.UTCTime)
cloudFormationTarget_lastUpdatedAt = Lens.lens (\CloudFormationTarget' {lastUpdatedAt} -> lastUpdatedAt) (\s@CloudFormationTarget' {} a -> s {lastUpdatedAt = a} :: CloudFormationTarget) Prelude.. Lens.mapping Core._Time

-- | The percentage of production traffic that the target version of an AWS
-- CloudFormation blue\/green deployment receives.
cloudFormationTarget_targetVersionWeight :: Lens.Lens' CloudFormationTarget (Prelude.Maybe Prelude.Double)
cloudFormationTarget_targetVersionWeight = Lens.lens (\CloudFormationTarget' {targetVersionWeight} -> targetVersionWeight) (\s@CloudFormationTarget' {} a -> s {targetVersionWeight = a} :: CloudFormationTarget)

-- | The unique ID of an AWS CloudFormation blue\/green deployment.
cloudFormationTarget_deploymentId :: Lens.Lens' CloudFormationTarget (Prelude.Maybe Prelude.Text)
cloudFormationTarget_deploymentId = Lens.lens (\CloudFormationTarget' {deploymentId} -> deploymentId) (\s@CloudFormationTarget' {} a -> s {deploymentId = a} :: CloudFormationTarget)

-- | The status of an AWS CloudFormation blue\/green deployment\'s target
-- application.
cloudFormationTarget_status :: Lens.Lens' CloudFormationTarget (Prelude.Maybe TargetStatus)
cloudFormationTarget_status = Lens.lens (\CloudFormationTarget' {status} -> status) (\s@CloudFormationTarget' {} a -> s {status = a} :: CloudFormationTarget)

instance Core.FromJSON CloudFormationTarget where
  parseJSON =
    Core.withObject
      "CloudFormationTarget"
      ( \x ->
          CloudFormationTarget'
            Prelude.<$> (x Core..:? "resourceType")
            Prelude.<*> (x Core..:? "targetId")
            Prelude.<*> ( x Core..:? "lifecycleEvents"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "lastUpdatedAt")
            Prelude.<*> (x Core..:? "targetVersionWeight")
            Prelude.<*> (x Core..:? "deploymentId")
            Prelude.<*> (x Core..:? "status")
      )

instance Prelude.Hashable CloudFormationTarget where
  hashWithSalt _salt CloudFormationTarget' {..} =
    _salt `Prelude.hashWithSalt` resourceType
      `Prelude.hashWithSalt` targetId
      `Prelude.hashWithSalt` lifecycleEvents
      `Prelude.hashWithSalt` lastUpdatedAt
      `Prelude.hashWithSalt` targetVersionWeight
      `Prelude.hashWithSalt` deploymentId
      `Prelude.hashWithSalt` status

instance Prelude.NFData CloudFormationTarget where
  rnf CloudFormationTarget' {..} =
    Prelude.rnf resourceType
      `Prelude.seq` Prelude.rnf targetId
      `Prelude.seq` Prelude.rnf lifecycleEvents
      `Prelude.seq` Prelude.rnf lastUpdatedAt
      `Prelude.seq` Prelude.rnf targetVersionWeight
      `Prelude.seq` Prelude.rnf deploymentId
      `Prelude.seq` Prelude.rnf status
