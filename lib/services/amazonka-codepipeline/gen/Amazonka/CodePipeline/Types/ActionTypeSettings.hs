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
-- Module      : Amazonka.CodePipeline.Types.ActionTypeSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CodePipeline.Types.ActionTypeSettings where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Returns information about the settings for an action type.
--
-- /See:/ 'newActionTypeSettings' smart constructor.
data ActionTypeSettings = ActionTypeSettings'
  { -- | The URL of a sign-up page where users can sign up for an external
    -- service and perform initial configuration of the action provided by that
    -- service.
    thirdPartyConfigurationUrl :: Prelude.Maybe Prelude.Text,
    -- | The URL returned to the AWS CodePipeline console that contains a link to
    -- the page where customers can update or change the configuration of the
    -- external action.
    revisionUrlTemplate :: Prelude.Maybe Prelude.Text,
    -- | The URL returned to the AWS CodePipeline console that provides a deep
    -- link to the resources of the external system, such as the configuration
    -- page for an AWS CodeDeploy deployment group. This link is provided as
    -- part of the action display in the pipeline.
    entityUrlTemplate :: Prelude.Maybe Prelude.Text,
    -- | The URL returned to the AWS CodePipeline console that contains a link to
    -- the top-level landing page for the external system, such as the console
    -- page for AWS CodeDeploy. This link is shown on the pipeline view page in
    -- the AWS CodePipeline console and provides a link to the execution entity
    -- of the external action.
    executionUrlTemplate :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ActionTypeSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'thirdPartyConfigurationUrl', 'actionTypeSettings_thirdPartyConfigurationUrl' - The URL of a sign-up page where users can sign up for an external
-- service and perform initial configuration of the action provided by that
-- service.
--
-- 'revisionUrlTemplate', 'actionTypeSettings_revisionUrlTemplate' - The URL returned to the AWS CodePipeline console that contains a link to
-- the page where customers can update or change the configuration of the
-- external action.
--
-- 'entityUrlTemplate', 'actionTypeSettings_entityUrlTemplate' - The URL returned to the AWS CodePipeline console that provides a deep
-- link to the resources of the external system, such as the configuration
-- page for an AWS CodeDeploy deployment group. This link is provided as
-- part of the action display in the pipeline.
--
-- 'executionUrlTemplate', 'actionTypeSettings_executionUrlTemplate' - The URL returned to the AWS CodePipeline console that contains a link to
-- the top-level landing page for the external system, such as the console
-- page for AWS CodeDeploy. This link is shown on the pipeline view page in
-- the AWS CodePipeline console and provides a link to the execution entity
-- of the external action.
newActionTypeSettings ::
  ActionTypeSettings
newActionTypeSettings =
  ActionTypeSettings'
    { thirdPartyConfigurationUrl =
        Prelude.Nothing,
      revisionUrlTemplate = Prelude.Nothing,
      entityUrlTemplate = Prelude.Nothing,
      executionUrlTemplate = Prelude.Nothing
    }

-- | The URL of a sign-up page where users can sign up for an external
-- service and perform initial configuration of the action provided by that
-- service.
actionTypeSettings_thirdPartyConfigurationUrl :: Lens.Lens' ActionTypeSettings (Prelude.Maybe Prelude.Text)
actionTypeSettings_thirdPartyConfigurationUrl = Lens.lens (\ActionTypeSettings' {thirdPartyConfigurationUrl} -> thirdPartyConfigurationUrl) (\s@ActionTypeSettings' {} a -> s {thirdPartyConfigurationUrl = a} :: ActionTypeSettings)

-- | The URL returned to the AWS CodePipeline console that contains a link to
-- the page where customers can update or change the configuration of the
-- external action.
actionTypeSettings_revisionUrlTemplate :: Lens.Lens' ActionTypeSettings (Prelude.Maybe Prelude.Text)
actionTypeSettings_revisionUrlTemplate = Lens.lens (\ActionTypeSettings' {revisionUrlTemplate} -> revisionUrlTemplate) (\s@ActionTypeSettings' {} a -> s {revisionUrlTemplate = a} :: ActionTypeSettings)

-- | The URL returned to the AWS CodePipeline console that provides a deep
-- link to the resources of the external system, such as the configuration
-- page for an AWS CodeDeploy deployment group. This link is provided as
-- part of the action display in the pipeline.
actionTypeSettings_entityUrlTemplate :: Lens.Lens' ActionTypeSettings (Prelude.Maybe Prelude.Text)
actionTypeSettings_entityUrlTemplate = Lens.lens (\ActionTypeSettings' {entityUrlTemplate} -> entityUrlTemplate) (\s@ActionTypeSettings' {} a -> s {entityUrlTemplate = a} :: ActionTypeSettings)

-- | The URL returned to the AWS CodePipeline console that contains a link to
-- the top-level landing page for the external system, such as the console
-- page for AWS CodeDeploy. This link is shown on the pipeline view page in
-- the AWS CodePipeline console and provides a link to the execution entity
-- of the external action.
actionTypeSettings_executionUrlTemplate :: Lens.Lens' ActionTypeSettings (Prelude.Maybe Prelude.Text)
actionTypeSettings_executionUrlTemplate = Lens.lens (\ActionTypeSettings' {executionUrlTemplate} -> executionUrlTemplate) (\s@ActionTypeSettings' {} a -> s {executionUrlTemplate = a} :: ActionTypeSettings)

instance Core.FromJSON ActionTypeSettings where
  parseJSON =
    Core.withObject
      "ActionTypeSettings"
      ( \x ->
          ActionTypeSettings'
            Prelude.<$> (x Core..:? "thirdPartyConfigurationUrl")
            Prelude.<*> (x Core..:? "revisionUrlTemplate")
            Prelude.<*> (x Core..:? "entityUrlTemplate")
            Prelude.<*> (x Core..:? "executionUrlTemplate")
      )

instance Prelude.Hashable ActionTypeSettings where
  hashWithSalt _salt ActionTypeSettings' {..} =
    _salt
      `Prelude.hashWithSalt` thirdPartyConfigurationUrl
      `Prelude.hashWithSalt` revisionUrlTemplate
      `Prelude.hashWithSalt` entityUrlTemplate
      `Prelude.hashWithSalt` executionUrlTemplate

instance Prelude.NFData ActionTypeSettings where
  rnf ActionTypeSettings' {..} =
    Prelude.rnf thirdPartyConfigurationUrl
      `Prelude.seq` Prelude.rnf revisionUrlTemplate
      `Prelude.seq` Prelude.rnf entityUrlTemplate
      `Prelude.seq` Prelude.rnf executionUrlTemplate

instance Core.ToJSON ActionTypeSettings where
  toJSON ActionTypeSettings' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("thirdPartyConfigurationUrl" Core..=)
              Prelude.<$> thirdPartyConfigurationUrl,
            ("revisionUrlTemplate" Core..=)
              Prelude.<$> revisionUrlTemplate,
            ("entityUrlTemplate" Core..=)
              Prelude.<$> entityUrlTemplate,
            ("executionUrlTemplate" Core..=)
              Prelude.<$> executionUrlTemplate
          ]
      )
