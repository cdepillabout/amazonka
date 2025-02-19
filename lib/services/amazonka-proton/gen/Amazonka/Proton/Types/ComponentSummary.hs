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
-- Module      : Amazonka.Proton.Types.ComponentSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Proton.Types.ComponentSummary where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.Proton.Types.DeploymentStatus

-- | Summary data of an Proton component resource.
--
-- For more information about components, see
-- <https://docs.aws.amazon.com/proton/latest/adminguide/ag-components.html Proton components>
-- in the /Proton Administrator Guide/.
--
-- /See:/ 'newComponentSummary' smart constructor.
data ComponentSummary = ComponentSummary'
  { -- | The time when a deployment of the component was last attempted.
    lastDeploymentAttemptedAt :: Prelude.Maybe Core.POSIX,
    -- | The message associated with the component deployment status.
    deploymentStatusMessage :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The name of the service that @serviceInstanceName@ is associated with.
    -- Provided when a component is attached to a service instance.
    serviceName :: Prelude.Maybe Prelude.Text,
    -- | The name of the service instance that this component is attached to.
    -- Provided when a component is attached to a service instance.
    serviceInstanceName :: Prelude.Maybe Prelude.Text,
    -- | The time when the component was last deployed successfully.
    lastDeploymentSucceededAt :: Prelude.Maybe Core.POSIX,
    -- | The Amazon Resource Name (ARN) of the component.
    arn :: Prelude.Text,
    -- | The time when the component was created.
    createdAt :: Core.POSIX,
    -- | The component deployment status.
    deploymentStatus :: DeploymentStatus,
    -- | The name of the Proton environment that this component is associated
    -- with.
    environmentName :: Prelude.Text,
    -- | The time when the component was last modified.
    lastModifiedAt :: Core.POSIX,
    -- | The name of the component.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ComponentSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lastDeploymentAttemptedAt', 'componentSummary_lastDeploymentAttemptedAt' - The time when a deployment of the component was last attempted.
--
-- 'deploymentStatusMessage', 'componentSummary_deploymentStatusMessage' - The message associated with the component deployment status.
--
-- 'serviceName', 'componentSummary_serviceName' - The name of the service that @serviceInstanceName@ is associated with.
-- Provided when a component is attached to a service instance.
--
-- 'serviceInstanceName', 'componentSummary_serviceInstanceName' - The name of the service instance that this component is attached to.
-- Provided when a component is attached to a service instance.
--
-- 'lastDeploymentSucceededAt', 'componentSummary_lastDeploymentSucceededAt' - The time when the component was last deployed successfully.
--
-- 'arn', 'componentSummary_arn' - The Amazon Resource Name (ARN) of the component.
--
-- 'createdAt', 'componentSummary_createdAt' - The time when the component was created.
--
-- 'deploymentStatus', 'componentSummary_deploymentStatus' - The component deployment status.
--
-- 'environmentName', 'componentSummary_environmentName' - The name of the Proton environment that this component is associated
-- with.
--
-- 'lastModifiedAt', 'componentSummary_lastModifiedAt' - The time when the component was last modified.
--
-- 'name', 'componentSummary_name' - The name of the component.
newComponentSummary ::
  -- | 'arn'
  Prelude.Text ->
  -- | 'createdAt'
  Prelude.UTCTime ->
  -- | 'deploymentStatus'
  DeploymentStatus ->
  -- | 'environmentName'
  Prelude.Text ->
  -- | 'lastModifiedAt'
  Prelude.UTCTime ->
  -- | 'name'
  Prelude.Text ->
  ComponentSummary
newComponentSummary
  pArn_
  pCreatedAt_
  pDeploymentStatus_
  pEnvironmentName_
  pLastModifiedAt_
  pName_ =
    ComponentSummary'
      { lastDeploymentAttemptedAt =
          Prelude.Nothing,
        deploymentStatusMessage = Prelude.Nothing,
        serviceName = Prelude.Nothing,
        serviceInstanceName = Prelude.Nothing,
        lastDeploymentSucceededAt = Prelude.Nothing,
        arn = pArn_,
        createdAt = Core._Time Lens.# pCreatedAt_,
        deploymentStatus = pDeploymentStatus_,
        environmentName = pEnvironmentName_,
        lastModifiedAt = Core._Time Lens.# pLastModifiedAt_,
        name = pName_
      }

-- | The time when a deployment of the component was last attempted.
componentSummary_lastDeploymentAttemptedAt :: Lens.Lens' ComponentSummary (Prelude.Maybe Prelude.UTCTime)
componentSummary_lastDeploymentAttemptedAt = Lens.lens (\ComponentSummary' {lastDeploymentAttemptedAt} -> lastDeploymentAttemptedAt) (\s@ComponentSummary' {} a -> s {lastDeploymentAttemptedAt = a} :: ComponentSummary) Prelude.. Lens.mapping Core._Time

-- | The message associated with the component deployment status.
componentSummary_deploymentStatusMessage :: Lens.Lens' ComponentSummary (Prelude.Maybe Prelude.Text)
componentSummary_deploymentStatusMessage = Lens.lens (\ComponentSummary' {deploymentStatusMessage} -> deploymentStatusMessage) (\s@ComponentSummary' {} a -> s {deploymentStatusMessage = a} :: ComponentSummary) Prelude.. Lens.mapping Core._Sensitive

-- | The name of the service that @serviceInstanceName@ is associated with.
-- Provided when a component is attached to a service instance.
componentSummary_serviceName :: Lens.Lens' ComponentSummary (Prelude.Maybe Prelude.Text)
componentSummary_serviceName = Lens.lens (\ComponentSummary' {serviceName} -> serviceName) (\s@ComponentSummary' {} a -> s {serviceName = a} :: ComponentSummary)

-- | The name of the service instance that this component is attached to.
-- Provided when a component is attached to a service instance.
componentSummary_serviceInstanceName :: Lens.Lens' ComponentSummary (Prelude.Maybe Prelude.Text)
componentSummary_serviceInstanceName = Lens.lens (\ComponentSummary' {serviceInstanceName} -> serviceInstanceName) (\s@ComponentSummary' {} a -> s {serviceInstanceName = a} :: ComponentSummary)

-- | The time when the component was last deployed successfully.
componentSummary_lastDeploymentSucceededAt :: Lens.Lens' ComponentSummary (Prelude.Maybe Prelude.UTCTime)
componentSummary_lastDeploymentSucceededAt = Lens.lens (\ComponentSummary' {lastDeploymentSucceededAt} -> lastDeploymentSucceededAt) (\s@ComponentSummary' {} a -> s {lastDeploymentSucceededAt = a} :: ComponentSummary) Prelude.. Lens.mapping Core._Time

-- | The Amazon Resource Name (ARN) of the component.
componentSummary_arn :: Lens.Lens' ComponentSummary Prelude.Text
componentSummary_arn = Lens.lens (\ComponentSummary' {arn} -> arn) (\s@ComponentSummary' {} a -> s {arn = a} :: ComponentSummary)

-- | The time when the component was created.
componentSummary_createdAt :: Lens.Lens' ComponentSummary Prelude.UTCTime
componentSummary_createdAt = Lens.lens (\ComponentSummary' {createdAt} -> createdAt) (\s@ComponentSummary' {} a -> s {createdAt = a} :: ComponentSummary) Prelude.. Core._Time

-- | The component deployment status.
componentSummary_deploymentStatus :: Lens.Lens' ComponentSummary DeploymentStatus
componentSummary_deploymentStatus = Lens.lens (\ComponentSummary' {deploymentStatus} -> deploymentStatus) (\s@ComponentSummary' {} a -> s {deploymentStatus = a} :: ComponentSummary)

-- | The name of the Proton environment that this component is associated
-- with.
componentSummary_environmentName :: Lens.Lens' ComponentSummary Prelude.Text
componentSummary_environmentName = Lens.lens (\ComponentSummary' {environmentName} -> environmentName) (\s@ComponentSummary' {} a -> s {environmentName = a} :: ComponentSummary)

-- | The time when the component was last modified.
componentSummary_lastModifiedAt :: Lens.Lens' ComponentSummary Prelude.UTCTime
componentSummary_lastModifiedAt = Lens.lens (\ComponentSummary' {lastModifiedAt} -> lastModifiedAt) (\s@ComponentSummary' {} a -> s {lastModifiedAt = a} :: ComponentSummary) Prelude.. Core._Time

-- | The name of the component.
componentSummary_name :: Lens.Lens' ComponentSummary Prelude.Text
componentSummary_name = Lens.lens (\ComponentSummary' {name} -> name) (\s@ComponentSummary' {} a -> s {name = a} :: ComponentSummary)

instance Core.FromJSON ComponentSummary where
  parseJSON =
    Core.withObject
      "ComponentSummary"
      ( \x ->
          ComponentSummary'
            Prelude.<$> (x Core..:? "lastDeploymentAttemptedAt")
            Prelude.<*> (x Core..:? "deploymentStatusMessage")
            Prelude.<*> (x Core..:? "serviceName")
            Prelude.<*> (x Core..:? "serviceInstanceName")
            Prelude.<*> (x Core..:? "lastDeploymentSucceededAt")
            Prelude.<*> (x Core..: "arn")
            Prelude.<*> (x Core..: "createdAt")
            Prelude.<*> (x Core..: "deploymentStatus")
            Prelude.<*> (x Core..: "environmentName")
            Prelude.<*> (x Core..: "lastModifiedAt")
            Prelude.<*> (x Core..: "name")
      )

instance Prelude.Hashable ComponentSummary where
  hashWithSalt _salt ComponentSummary' {..} =
    _salt
      `Prelude.hashWithSalt` lastDeploymentAttemptedAt
      `Prelude.hashWithSalt` deploymentStatusMessage
      `Prelude.hashWithSalt` serviceName
      `Prelude.hashWithSalt` serviceInstanceName
      `Prelude.hashWithSalt` lastDeploymentSucceededAt
      `Prelude.hashWithSalt` arn
      `Prelude.hashWithSalt` createdAt
      `Prelude.hashWithSalt` deploymentStatus
      `Prelude.hashWithSalt` environmentName
      `Prelude.hashWithSalt` lastModifiedAt
      `Prelude.hashWithSalt` name

instance Prelude.NFData ComponentSummary where
  rnf ComponentSummary' {..} =
    Prelude.rnf lastDeploymentAttemptedAt
      `Prelude.seq` Prelude.rnf deploymentStatusMessage
      `Prelude.seq` Prelude.rnf serviceName
      `Prelude.seq` Prelude.rnf serviceInstanceName
      `Prelude.seq` Prelude.rnf lastDeploymentSucceededAt
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf createdAt
      `Prelude.seq` Prelude.rnf deploymentStatus
      `Prelude.seq` Prelude.rnf environmentName
      `Prelude.seq` Prelude.rnf lastModifiedAt
      `Prelude.seq` Prelude.rnf name
