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
-- Module      : Amazonka.LookoutVision.Types.ModelPackagingDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.LookoutVision.Types.ModelPackagingDescription where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.LookoutVision.Types.ModelPackagingConfiguration
import Amazonka.LookoutVision.Types.ModelPackagingJobStatus
import Amazonka.LookoutVision.Types.ModelPackagingOutputDetails
import qualified Amazonka.Prelude as Prelude

-- | Information about a model packaging job. For more information, see
-- DescribeModelPackagingJob.
--
-- /See:/ 'newModelPackagingDescription' smart constructor.
data ModelPackagingDescription = ModelPackagingDescription'
  { -- | The Unix timestamp for the time and date that the model packaging job
    -- was last updated.
    lastUpdatedTimestamp :: Prelude.Maybe Core.POSIX,
    -- | The name of the model packaging job.
    jobName :: Prelude.Maybe Prelude.Text,
    -- | Information about the output of the model packaging job. For more
    -- information, see DescribeModelPackagingJob.
    modelPackagingOutputDetails :: Prelude.Maybe ModelPackagingOutputDetails,
    -- | The version of the model used in the model packaging job.
    modelVersion :: Prelude.Maybe Prelude.Text,
    -- | The status of the model packaging job.
    status :: Prelude.Maybe ModelPackagingJobStatus,
    -- | The Unix timestamp for the time and date that the model packaging job
    -- was created.
    creationTimestamp :: Prelude.Maybe Core.POSIX,
    -- | The description for the model packaging job.
    modelPackagingJobDescription :: Prelude.Maybe Prelude.Text,
    -- | The AWS service used to package the job. Currently Lookout for Vision
    -- can package jobs with AWS IoT Greengrass.
    modelPackagingMethod :: Prelude.Maybe Prelude.Text,
    -- | The name of the project that\'s associated with a model that\'s in the
    -- model package.
    projectName :: Prelude.Maybe Prelude.Text,
    -- | The status message for the model packaging job.
    statusMessage :: Prelude.Maybe Prelude.Text,
    -- | The configuration information used in the model packaging job.
    modelPackagingConfiguration :: Prelude.Maybe ModelPackagingConfiguration
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ModelPackagingDescription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lastUpdatedTimestamp', 'modelPackagingDescription_lastUpdatedTimestamp' - The Unix timestamp for the time and date that the model packaging job
-- was last updated.
--
-- 'jobName', 'modelPackagingDescription_jobName' - The name of the model packaging job.
--
-- 'modelPackagingOutputDetails', 'modelPackagingDescription_modelPackagingOutputDetails' - Information about the output of the model packaging job. For more
-- information, see DescribeModelPackagingJob.
--
-- 'modelVersion', 'modelPackagingDescription_modelVersion' - The version of the model used in the model packaging job.
--
-- 'status', 'modelPackagingDescription_status' - The status of the model packaging job.
--
-- 'creationTimestamp', 'modelPackagingDescription_creationTimestamp' - The Unix timestamp for the time and date that the model packaging job
-- was created.
--
-- 'modelPackagingJobDescription', 'modelPackagingDescription_modelPackagingJobDescription' - The description for the model packaging job.
--
-- 'modelPackagingMethod', 'modelPackagingDescription_modelPackagingMethod' - The AWS service used to package the job. Currently Lookout for Vision
-- can package jobs with AWS IoT Greengrass.
--
-- 'projectName', 'modelPackagingDescription_projectName' - The name of the project that\'s associated with a model that\'s in the
-- model package.
--
-- 'statusMessage', 'modelPackagingDescription_statusMessage' - The status message for the model packaging job.
--
-- 'modelPackagingConfiguration', 'modelPackagingDescription_modelPackagingConfiguration' - The configuration information used in the model packaging job.
newModelPackagingDescription ::
  ModelPackagingDescription
newModelPackagingDescription =
  ModelPackagingDescription'
    { lastUpdatedTimestamp =
        Prelude.Nothing,
      jobName = Prelude.Nothing,
      modelPackagingOutputDetails = Prelude.Nothing,
      modelVersion = Prelude.Nothing,
      status = Prelude.Nothing,
      creationTimestamp = Prelude.Nothing,
      modelPackagingJobDescription = Prelude.Nothing,
      modelPackagingMethod = Prelude.Nothing,
      projectName = Prelude.Nothing,
      statusMessage = Prelude.Nothing,
      modelPackagingConfiguration = Prelude.Nothing
    }

-- | The Unix timestamp for the time and date that the model packaging job
-- was last updated.
modelPackagingDescription_lastUpdatedTimestamp :: Lens.Lens' ModelPackagingDescription (Prelude.Maybe Prelude.UTCTime)
modelPackagingDescription_lastUpdatedTimestamp = Lens.lens (\ModelPackagingDescription' {lastUpdatedTimestamp} -> lastUpdatedTimestamp) (\s@ModelPackagingDescription' {} a -> s {lastUpdatedTimestamp = a} :: ModelPackagingDescription) Prelude.. Lens.mapping Core._Time

-- | The name of the model packaging job.
modelPackagingDescription_jobName :: Lens.Lens' ModelPackagingDescription (Prelude.Maybe Prelude.Text)
modelPackagingDescription_jobName = Lens.lens (\ModelPackagingDescription' {jobName} -> jobName) (\s@ModelPackagingDescription' {} a -> s {jobName = a} :: ModelPackagingDescription)

-- | Information about the output of the model packaging job. For more
-- information, see DescribeModelPackagingJob.
modelPackagingDescription_modelPackagingOutputDetails :: Lens.Lens' ModelPackagingDescription (Prelude.Maybe ModelPackagingOutputDetails)
modelPackagingDescription_modelPackagingOutputDetails = Lens.lens (\ModelPackagingDescription' {modelPackagingOutputDetails} -> modelPackagingOutputDetails) (\s@ModelPackagingDescription' {} a -> s {modelPackagingOutputDetails = a} :: ModelPackagingDescription)

-- | The version of the model used in the model packaging job.
modelPackagingDescription_modelVersion :: Lens.Lens' ModelPackagingDescription (Prelude.Maybe Prelude.Text)
modelPackagingDescription_modelVersion = Lens.lens (\ModelPackagingDescription' {modelVersion} -> modelVersion) (\s@ModelPackagingDescription' {} a -> s {modelVersion = a} :: ModelPackagingDescription)

-- | The status of the model packaging job.
modelPackagingDescription_status :: Lens.Lens' ModelPackagingDescription (Prelude.Maybe ModelPackagingJobStatus)
modelPackagingDescription_status = Lens.lens (\ModelPackagingDescription' {status} -> status) (\s@ModelPackagingDescription' {} a -> s {status = a} :: ModelPackagingDescription)

-- | The Unix timestamp for the time and date that the model packaging job
-- was created.
modelPackagingDescription_creationTimestamp :: Lens.Lens' ModelPackagingDescription (Prelude.Maybe Prelude.UTCTime)
modelPackagingDescription_creationTimestamp = Lens.lens (\ModelPackagingDescription' {creationTimestamp} -> creationTimestamp) (\s@ModelPackagingDescription' {} a -> s {creationTimestamp = a} :: ModelPackagingDescription) Prelude.. Lens.mapping Core._Time

-- | The description for the model packaging job.
modelPackagingDescription_modelPackagingJobDescription :: Lens.Lens' ModelPackagingDescription (Prelude.Maybe Prelude.Text)
modelPackagingDescription_modelPackagingJobDescription = Lens.lens (\ModelPackagingDescription' {modelPackagingJobDescription} -> modelPackagingJobDescription) (\s@ModelPackagingDescription' {} a -> s {modelPackagingJobDescription = a} :: ModelPackagingDescription)

-- | The AWS service used to package the job. Currently Lookout for Vision
-- can package jobs with AWS IoT Greengrass.
modelPackagingDescription_modelPackagingMethod :: Lens.Lens' ModelPackagingDescription (Prelude.Maybe Prelude.Text)
modelPackagingDescription_modelPackagingMethod = Lens.lens (\ModelPackagingDescription' {modelPackagingMethod} -> modelPackagingMethod) (\s@ModelPackagingDescription' {} a -> s {modelPackagingMethod = a} :: ModelPackagingDescription)

-- | The name of the project that\'s associated with a model that\'s in the
-- model package.
modelPackagingDescription_projectName :: Lens.Lens' ModelPackagingDescription (Prelude.Maybe Prelude.Text)
modelPackagingDescription_projectName = Lens.lens (\ModelPackagingDescription' {projectName} -> projectName) (\s@ModelPackagingDescription' {} a -> s {projectName = a} :: ModelPackagingDescription)

-- | The status message for the model packaging job.
modelPackagingDescription_statusMessage :: Lens.Lens' ModelPackagingDescription (Prelude.Maybe Prelude.Text)
modelPackagingDescription_statusMessage = Lens.lens (\ModelPackagingDescription' {statusMessage} -> statusMessage) (\s@ModelPackagingDescription' {} a -> s {statusMessage = a} :: ModelPackagingDescription)

-- | The configuration information used in the model packaging job.
modelPackagingDescription_modelPackagingConfiguration :: Lens.Lens' ModelPackagingDescription (Prelude.Maybe ModelPackagingConfiguration)
modelPackagingDescription_modelPackagingConfiguration = Lens.lens (\ModelPackagingDescription' {modelPackagingConfiguration} -> modelPackagingConfiguration) (\s@ModelPackagingDescription' {} a -> s {modelPackagingConfiguration = a} :: ModelPackagingDescription)

instance Core.FromJSON ModelPackagingDescription where
  parseJSON =
    Core.withObject
      "ModelPackagingDescription"
      ( \x ->
          ModelPackagingDescription'
            Prelude.<$> (x Core..:? "LastUpdatedTimestamp")
            Prelude.<*> (x Core..:? "JobName")
            Prelude.<*> (x Core..:? "ModelPackagingOutputDetails")
            Prelude.<*> (x Core..:? "ModelVersion")
            Prelude.<*> (x Core..:? "Status")
            Prelude.<*> (x Core..:? "CreationTimestamp")
            Prelude.<*> (x Core..:? "ModelPackagingJobDescription")
            Prelude.<*> (x Core..:? "ModelPackagingMethod")
            Prelude.<*> (x Core..:? "ProjectName")
            Prelude.<*> (x Core..:? "StatusMessage")
            Prelude.<*> (x Core..:? "ModelPackagingConfiguration")
      )

instance Prelude.Hashable ModelPackagingDescription where
  hashWithSalt _salt ModelPackagingDescription' {..} =
    _salt `Prelude.hashWithSalt` lastUpdatedTimestamp
      `Prelude.hashWithSalt` jobName
      `Prelude.hashWithSalt` modelPackagingOutputDetails
      `Prelude.hashWithSalt` modelVersion
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` creationTimestamp
      `Prelude.hashWithSalt` modelPackagingJobDescription
      `Prelude.hashWithSalt` modelPackagingMethod
      `Prelude.hashWithSalt` projectName
      `Prelude.hashWithSalt` statusMessage
      `Prelude.hashWithSalt` modelPackagingConfiguration

instance Prelude.NFData ModelPackagingDescription where
  rnf ModelPackagingDescription' {..} =
    Prelude.rnf lastUpdatedTimestamp
      `Prelude.seq` Prelude.rnf jobName
      `Prelude.seq` Prelude.rnf modelPackagingOutputDetails
      `Prelude.seq` Prelude.rnf modelVersion
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf creationTimestamp
      `Prelude.seq` Prelude.rnf modelPackagingJobDescription
      `Prelude.seq` Prelude.rnf modelPackagingMethod
      `Prelude.seq` Prelude.rnf projectName
      `Prelude.seq` Prelude.rnf statusMessage
      `Prelude.seq` Prelude.rnf modelPackagingConfiguration
