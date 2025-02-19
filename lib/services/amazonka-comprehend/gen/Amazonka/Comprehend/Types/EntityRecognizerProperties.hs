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
-- Module      : Amazonka.Comprehend.Types.EntityRecognizerProperties
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Comprehend.Types.EntityRecognizerProperties where

import Amazonka.Comprehend.Types.EntityRecognizerInputDataConfig
import Amazonka.Comprehend.Types.EntityRecognizerMetadata
import Amazonka.Comprehend.Types.LanguageCode
import Amazonka.Comprehend.Types.ModelStatus
import Amazonka.Comprehend.Types.VpcConfig
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes information about an entity recognizer.
--
-- /See:/ 'newEntityRecognizerProperties' smart constructor.
data EntityRecognizerProperties = EntityRecognizerProperties'
  { -- | A description of the status of the recognizer.
    message :: Prelude.Maybe Prelude.Text,
    -- | ID for the AWS Key Management Service (KMS) key that Amazon Comprehend
    -- uses to encrypt trained custom models. The ModelKmsKeyId can be either
    -- of the following formats:
    --
    -- -   KMS Key ID: @\"1234abcd-12ab-34cd-56ef-1234567890ab\"@
    --
    -- -   Amazon Resource Name (ARN) of a KMS Key:
    --     @\"arn:aws:kms:us-west-2:111122223333:key\/1234abcd-12ab-34cd-56ef-1234567890ab\"@
    modelKmsKeyId :: Prelude.Maybe Prelude.Text,
    -- | Provides information about an entity recognizer.
    recognizerMetadata :: Prelude.Maybe (Core.Sensitive EntityRecognizerMetadata),
    -- | Configuration parameters for a private Virtual Private Cloud (VPC)
    -- containing the resources you are using for your custom entity
    -- recognizer. For more information, see
    -- <https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html Amazon VPC>.
    vpcConfig :: Prelude.Maybe VpcConfig,
    -- | The time that the recognizer was submitted for processing.
    submitTime :: Prelude.Maybe Core.POSIX,
    -- | The Amazon Resource Name (ARN) that identifies the entity recognizer.
    entityRecognizerArn :: Prelude.Maybe Prelude.Text,
    -- | ID for the AWS Key Management Service (KMS) key that Amazon Comprehend
    -- uses to encrypt data on the storage volume attached to the ML compute
    -- instance(s) that process the analysis job. The VolumeKmsKeyId can be
    -- either of the following formats:
    --
    -- -   KMS Key ID: @\"1234abcd-12ab-34cd-56ef-1234567890ab\"@
    --
    -- -   Amazon Resource Name (ARN) of a KMS Key:
    --     @\"arn:aws:kms:us-west-2:111122223333:key\/1234abcd-12ab-34cd-56ef-1234567890ab\"@
    volumeKmsKeyId :: Prelude.Maybe Prelude.Text,
    -- | The time that training of the entity recognizer started.
    trainingStartTime :: Prelude.Maybe Core.POSIX,
    -- | The Amazon Resource Name (ARN) of the AWS Identity and Management (IAM)
    -- role that grants Amazon Comprehend read access to your input data.
    dataAccessRoleArn :: Prelude.Maybe Prelude.Text,
    -- | Provides the status of the entity recognizer.
    status :: Prelude.Maybe ModelStatus,
    -- | The time that the recognizer creation completed.
    endTime :: Prelude.Maybe Core.POSIX,
    -- | The language of the input documents. All documents must be in the same
    -- language. Only English (\"en\") is currently supported.
    languageCode :: Prelude.Maybe LanguageCode,
    -- | The version name you assigned to the entity recognizer.
    versionName :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the source model. This model was
    -- imported from a different AWS account to create the entity recognizer
    -- model in your AWS account.
    sourceModelArn :: Prelude.Maybe Prelude.Text,
    -- | The input data properties of an entity recognizer.
    inputDataConfig :: Prelude.Maybe EntityRecognizerInputDataConfig,
    -- | The time that training of the entity recognizer was completed.
    trainingEndTime :: Prelude.Maybe Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EntityRecognizerProperties' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'message', 'entityRecognizerProperties_message' - A description of the status of the recognizer.
--
-- 'modelKmsKeyId', 'entityRecognizerProperties_modelKmsKeyId' - ID for the AWS Key Management Service (KMS) key that Amazon Comprehend
-- uses to encrypt trained custom models. The ModelKmsKeyId can be either
-- of the following formats:
--
-- -   KMS Key ID: @\"1234abcd-12ab-34cd-56ef-1234567890ab\"@
--
-- -   Amazon Resource Name (ARN) of a KMS Key:
--     @\"arn:aws:kms:us-west-2:111122223333:key\/1234abcd-12ab-34cd-56ef-1234567890ab\"@
--
-- 'recognizerMetadata', 'entityRecognizerProperties_recognizerMetadata' - Provides information about an entity recognizer.
--
-- 'vpcConfig', 'entityRecognizerProperties_vpcConfig' - Configuration parameters for a private Virtual Private Cloud (VPC)
-- containing the resources you are using for your custom entity
-- recognizer. For more information, see
-- <https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html Amazon VPC>.
--
-- 'submitTime', 'entityRecognizerProperties_submitTime' - The time that the recognizer was submitted for processing.
--
-- 'entityRecognizerArn', 'entityRecognizerProperties_entityRecognizerArn' - The Amazon Resource Name (ARN) that identifies the entity recognizer.
--
-- 'volumeKmsKeyId', 'entityRecognizerProperties_volumeKmsKeyId' - ID for the AWS Key Management Service (KMS) key that Amazon Comprehend
-- uses to encrypt data on the storage volume attached to the ML compute
-- instance(s) that process the analysis job. The VolumeKmsKeyId can be
-- either of the following formats:
--
-- -   KMS Key ID: @\"1234abcd-12ab-34cd-56ef-1234567890ab\"@
--
-- -   Amazon Resource Name (ARN) of a KMS Key:
--     @\"arn:aws:kms:us-west-2:111122223333:key\/1234abcd-12ab-34cd-56ef-1234567890ab\"@
--
-- 'trainingStartTime', 'entityRecognizerProperties_trainingStartTime' - The time that training of the entity recognizer started.
--
-- 'dataAccessRoleArn', 'entityRecognizerProperties_dataAccessRoleArn' - The Amazon Resource Name (ARN) of the AWS Identity and Management (IAM)
-- role that grants Amazon Comprehend read access to your input data.
--
-- 'status', 'entityRecognizerProperties_status' - Provides the status of the entity recognizer.
--
-- 'endTime', 'entityRecognizerProperties_endTime' - The time that the recognizer creation completed.
--
-- 'languageCode', 'entityRecognizerProperties_languageCode' - The language of the input documents. All documents must be in the same
-- language. Only English (\"en\") is currently supported.
--
-- 'versionName', 'entityRecognizerProperties_versionName' - The version name you assigned to the entity recognizer.
--
-- 'sourceModelArn', 'entityRecognizerProperties_sourceModelArn' - The Amazon Resource Name (ARN) of the source model. This model was
-- imported from a different AWS account to create the entity recognizer
-- model in your AWS account.
--
-- 'inputDataConfig', 'entityRecognizerProperties_inputDataConfig' - The input data properties of an entity recognizer.
--
-- 'trainingEndTime', 'entityRecognizerProperties_trainingEndTime' - The time that training of the entity recognizer was completed.
newEntityRecognizerProperties ::
  EntityRecognizerProperties
newEntityRecognizerProperties =
  EntityRecognizerProperties'
    { message =
        Prelude.Nothing,
      modelKmsKeyId = Prelude.Nothing,
      recognizerMetadata = Prelude.Nothing,
      vpcConfig = Prelude.Nothing,
      submitTime = Prelude.Nothing,
      entityRecognizerArn = Prelude.Nothing,
      volumeKmsKeyId = Prelude.Nothing,
      trainingStartTime = Prelude.Nothing,
      dataAccessRoleArn = Prelude.Nothing,
      status = Prelude.Nothing,
      endTime = Prelude.Nothing,
      languageCode = Prelude.Nothing,
      versionName = Prelude.Nothing,
      sourceModelArn = Prelude.Nothing,
      inputDataConfig = Prelude.Nothing,
      trainingEndTime = Prelude.Nothing
    }

-- | A description of the status of the recognizer.
entityRecognizerProperties_message :: Lens.Lens' EntityRecognizerProperties (Prelude.Maybe Prelude.Text)
entityRecognizerProperties_message = Lens.lens (\EntityRecognizerProperties' {message} -> message) (\s@EntityRecognizerProperties' {} a -> s {message = a} :: EntityRecognizerProperties)

-- | ID for the AWS Key Management Service (KMS) key that Amazon Comprehend
-- uses to encrypt trained custom models. The ModelKmsKeyId can be either
-- of the following formats:
--
-- -   KMS Key ID: @\"1234abcd-12ab-34cd-56ef-1234567890ab\"@
--
-- -   Amazon Resource Name (ARN) of a KMS Key:
--     @\"arn:aws:kms:us-west-2:111122223333:key\/1234abcd-12ab-34cd-56ef-1234567890ab\"@
entityRecognizerProperties_modelKmsKeyId :: Lens.Lens' EntityRecognizerProperties (Prelude.Maybe Prelude.Text)
entityRecognizerProperties_modelKmsKeyId = Lens.lens (\EntityRecognizerProperties' {modelKmsKeyId} -> modelKmsKeyId) (\s@EntityRecognizerProperties' {} a -> s {modelKmsKeyId = a} :: EntityRecognizerProperties)

-- | Provides information about an entity recognizer.
entityRecognizerProperties_recognizerMetadata :: Lens.Lens' EntityRecognizerProperties (Prelude.Maybe EntityRecognizerMetadata)
entityRecognizerProperties_recognizerMetadata = Lens.lens (\EntityRecognizerProperties' {recognizerMetadata} -> recognizerMetadata) (\s@EntityRecognizerProperties' {} a -> s {recognizerMetadata = a} :: EntityRecognizerProperties) Prelude.. Lens.mapping Core._Sensitive

-- | Configuration parameters for a private Virtual Private Cloud (VPC)
-- containing the resources you are using for your custom entity
-- recognizer. For more information, see
-- <https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html Amazon VPC>.
entityRecognizerProperties_vpcConfig :: Lens.Lens' EntityRecognizerProperties (Prelude.Maybe VpcConfig)
entityRecognizerProperties_vpcConfig = Lens.lens (\EntityRecognizerProperties' {vpcConfig} -> vpcConfig) (\s@EntityRecognizerProperties' {} a -> s {vpcConfig = a} :: EntityRecognizerProperties)

-- | The time that the recognizer was submitted for processing.
entityRecognizerProperties_submitTime :: Lens.Lens' EntityRecognizerProperties (Prelude.Maybe Prelude.UTCTime)
entityRecognizerProperties_submitTime = Lens.lens (\EntityRecognizerProperties' {submitTime} -> submitTime) (\s@EntityRecognizerProperties' {} a -> s {submitTime = a} :: EntityRecognizerProperties) Prelude.. Lens.mapping Core._Time

-- | The Amazon Resource Name (ARN) that identifies the entity recognizer.
entityRecognizerProperties_entityRecognizerArn :: Lens.Lens' EntityRecognizerProperties (Prelude.Maybe Prelude.Text)
entityRecognizerProperties_entityRecognizerArn = Lens.lens (\EntityRecognizerProperties' {entityRecognizerArn} -> entityRecognizerArn) (\s@EntityRecognizerProperties' {} a -> s {entityRecognizerArn = a} :: EntityRecognizerProperties)

-- | ID for the AWS Key Management Service (KMS) key that Amazon Comprehend
-- uses to encrypt data on the storage volume attached to the ML compute
-- instance(s) that process the analysis job. The VolumeKmsKeyId can be
-- either of the following formats:
--
-- -   KMS Key ID: @\"1234abcd-12ab-34cd-56ef-1234567890ab\"@
--
-- -   Amazon Resource Name (ARN) of a KMS Key:
--     @\"arn:aws:kms:us-west-2:111122223333:key\/1234abcd-12ab-34cd-56ef-1234567890ab\"@
entityRecognizerProperties_volumeKmsKeyId :: Lens.Lens' EntityRecognizerProperties (Prelude.Maybe Prelude.Text)
entityRecognizerProperties_volumeKmsKeyId = Lens.lens (\EntityRecognizerProperties' {volumeKmsKeyId} -> volumeKmsKeyId) (\s@EntityRecognizerProperties' {} a -> s {volumeKmsKeyId = a} :: EntityRecognizerProperties)

-- | The time that training of the entity recognizer started.
entityRecognizerProperties_trainingStartTime :: Lens.Lens' EntityRecognizerProperties (Prelude.Maybe Prelude.UTCTime)
entityRecognizerProperties_trainingStartTime = Lens.lens (\EntityRecognizerProperties' {trainingStartTime} -> trainingStartTime) (\s@EntityRecognizerProperties' {} a -> s {trainingStartTime = a} :: EntityRecognizerProperties) Prelude.. Lens.mapping Core._Time

-- | The Amazon Resource Name (ARN) of the AWS Identity and Management (IAM)
-- role that grants Amazon Comprehend read access to your input data.
entityRecognizerProperties_dataAccessRoleArn :: Lens.Lens' EntityRecognizerProperties (Prelude.Maybe Prelude.Text)
entityRecognizerProperties_dataAccessRoleArn = Lens.lens (\EntityRecognizerProperties' {dataAccessRoleArn} -> dataAccessRoleArn) (\s@EntityRecognizerProperties' {} a -> s {dataAccessRoleArn = a} :: EntityRecognizerProperties)

-- | Provides the status of the entity recognizer.
entityRecognizerProperties_status :: Lens.Lens' EntityRecognizerProperties (Prelude.Maybe ModelStatus)
entityRecognizerProperties_status = Lens.lens (\EntityRecognizerProperties' {status} -> status) (\s@EntityRecognizerProperties' {} a -> s {status = a} :: EntityRecognizerProperties)

-- | The time that the recognizer creation completed.
entityRecognizerProperties_endTime :: Lens.Lens' EntityRecognizerProperties (Prelude.Maybe Prelude.UTCTime)
entityRecognizerProperties_endTime = Lens.lens (\EntityRecognizerProperties' {endTime} -> endTime) (\s@EntityRecognizerProperties' {} a -> s {endTime = a} :: EntityRecognizerProperties) Prelude.. Lens.mapping Core._Time

-- | The language of the input documents. All documents must be in the same
-- language. Only English (\"en\") is currently supported.
entityRecognizerProperties_languageCode :: Lens.Lens' EntityRecognizerProperties (Prelude.Maybe LanguageCode)
entityRecognizerProperties_languageCode = Lens.lens (\EntityRecognizerProperties' {languageCode} -> languageCode) (\s@EntityRecognizerProperties' {} a -> s {languageCode = a} :: EntityRecognizerProperties)

-- | The version name you assigned to the entity recognizer.
entityRecognizerProperties_versionName :: Lens.Lens' EntityRecognizerProperties (Prelude.Maybe Prelude.Text)
entityRecognizerProperties_versionName = Lens.lens (\EntityRecognizerProperties' {versionName} -> versionName) (\s@EntityRecognizerProperties' {} a -> s {versionName = a} :: EntityRecognizerProperties)

-- | The Amazon Resource Name (ARN) of the source model. This model was
-- imported from a different AWS account to create the entity recognizer
-- model in your AWS account.
entityRecognizerProperties_sourceModelArn :: Lens.Lens' EntityRecognizerProperties (Prelude.Maybe Prelude.Text)
entityRecognizerProperties_sourceModelArn = Lens.lens (\EntityRecognizerProperties' {sourceModelArn} -> sourceModelArn) (\s@EntityRecognizerProperties' {} a -> s {sourceModelArn = a} :: EntityRecognizerProperties)

-- | The input data properties of an entity recognizer.
entityRecognizerProperties_inputDataConfig :: Lens.Lens' EntityRecognizerProperties (Prelude.Maybe EntityRecognizerInputDataConfig)
entityRecognizerProperties_inputDataConfig = Lens.lens (\EntityRecognizerProperties' {inputDataConfig} -> inputDataConfig) (\s@EntityRecognizerProperties' {} a -> s {inputDataConfig = a} :: EntityRecognizerProperties)

-- | The time that training of the entity recognizer was completed.
entityRecognizerProperties_trainingEndTime :: Lens.Lens' EntityRecognizerProperties (Prelude.Maybe Prelude.UTCTime)
entityRecognizerProperties_trainingEndTime = Lens.lens (\EntityRecognizerProperties' {trainingEndTime} -> trainingEndTime) (\s@EntityRecognizerProperties' {} a -> s {trainingEndTime = a} :: EntityRecognizerProperties) Prelude.. Lens.mapping Core._Time

instance Core.FromJSON EntityRecognizerProperties where
  parseJSON =
    Core.withObject
      "EntityRecognizerProperties"
      ( \x ->
          EntityRecognizerProperties'
            Prelude.<$> (x Core..:? "Message")
            Prelude.<*> (x Core..:? "ModelKmsKeyId")
            Prelude.<*> (x Core..:? "RecognizerMetadata")
            Prelude.<*> (x Core..:? "VpcConfig")
            Prelude.<*> (x Core..:? "SubmitTime")
            Prelude.<*> (x Core..:? "EntityRecognizerArn")
            Prelude.<*> (x Core..:? "VolumeKmsKeyId")
            Prelude.<*> (x Core..:? "TrainingStartTime")
            Prelude.<*> (x Core..:? "DataAccessRoleArn")
            Prelude.<*> (x Core..:? "Status")
            Prelude.<*> (x Core..:? "EndTime")
            Prelude.<*> (x Core..:? "LanguageCode")
            Prelude.<*> (x Core..:? "VersionName")
            Prelude.<*> (x Core..:? "SourceModelArn")
            Prelude.<*> (x Core..:? "InputDataConfig")
            Prelude.<*> (x Core..:? "TrainingEndTime")
      )

instance Prelude.Hashable EntityRecognizerProperties where
  hashWithSalt _salt EntityRecognizerProperties' {..} =
    _salt `Prelude.hashWithSalt` message
      `Prelude.hashWithSalt` modelKmsKeyId
      `Prelude.hashWithSalt` recognizerMetadata
      `Prelude.hashWithSalt` vpcConfig
      `Prelude.hashWithSalt` submitTime
      `Prelude.hashWithSalt` entityRecognizerArn
      `Prelude.hashWithSalt` volumeKmsKeyId
      `Prelude.hashWithSalt` trainingStartTime
      `Prelude.hashWithSalt` dataAccessRoleArn
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` endTime
      `Prelude.hashWithSalt` languageCode
      `Prelude.hashWithSalt` versionName
      `Prelude.hashWithSalt` sourceModelArn
      `Prelude.hashWithSalt` inputDataConfig
      `Prelude.hashWithSalt` trainingEndTime

instance Prelude.NFData EntityRecognizerProperties where
  rnf EntityRecognizerProperties' {..} =
    Prelude.rnf message
      `Prelude.seq` Prelude.rnf modelKmsKeyId
      `Prelude.seq` Prelude.rnf recognizerMetadata
      `Prelude.seq` Prelude.rnf vpcConfig
      `Prelude.seq` Prelude.rnf submitTime
      `Prelude.seq` Prelude.rnf entityRecognizerArn
      `Prelude.seq` Prelude.rnf volumeKmsKeyId
      `Prelude.seq` Prelude.rnf trainingStartTime
      `Prelude.seq` Prelude.rnf dataAccessRoleArn
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf endTime
      `Prelude.seq` Prelude.rnf languageCode
      `Prelude.seq` Prelude.rnf versionName
      `Prelude.seq` Prelude.rnf sourceModelArn
      `Prelude.seq` Prelude.rnf inputDataConfig
      `Prelude.seq` Prelude.rnf trainingEndTime
