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
-- Module      : Amazonka.LookoutEquipment.CreateInferenceScheduler
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a scheduled inference. Scheduling an inference is setting up a
-- continuous real-time inference plan to analyze new measurement data.
-- When setting up the schedule, you provide an S3 bucket location for the
-- input data, assign it a delimiter between separate entries in the data,
-- set an offset delay if desired, and set the frequency of inferencing.
-- You must also provide an S3 bucket location for the output data.
module Amazonka.LookoutEquipment.CreateInferenceScheduler
  ( -- * Creating a Request
    CreateInferenceScheduler (..),
    newCreateInferenceScheduler,

    -- * Request Lenses
    createInferenceScheduler_tags,
    createInferenceScheduler_serverSideKmsKeyId,
    createInferenceScheduler_dataDelayOffsetInMinutes,
    createInferenceScheduler_modelName,
    createInferenceScheduler_inferenceSchedulerName,
    createInferenceScheduler_dataUploadFrequency,
    createInferenceScheduler_dataInputConfiguration,
    createInferenceScheduler_dataOutputConfiguration,
    createInferenceScheduler_roleArn,
    createInferenceScheduler_clientToken,

    -- * Destructuring the Response
    CreateInferenceSchedulerResponse (..),
    newCreateInferenceSchedulerResponse,

    -- * Response Lenses
    createInferenceSchedulerResponse_inferenceSchedulerName,
    createInferenceSchedulerResponse_status,
    createInferenceSchedulerResponse_inferenceSchedulerArn,
    createInferenceSchedulerResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.LookoutEquipment.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateInferenceScheduler' smart constructor.
data CreateInferenceScheduler = CreateInferenceScheduler'
  { -- | Any tags associated with the inference scheduler.
    tags :: Prelude.Maybe [Tag],
    -- | Provides the identifier of the KMS key used to encrypt inference
    -- scheduler data by Amazon Lookout for Equipment.
    serverSideKmsKeyId :: Prelude.Maybe Prelude.Text,
    -- | A period of time (in minutes) by which inference on the data is delayed
    -- after the data starts. For instance, if you select an offset delay time
    -- of five minutes, inference will not begin on the data until the first
    -- data measurement after the five minute mark. For example, if five
    -- minutes is selected, the inference scheduler will wake up at the
    -- configured frequency with the additional five minute delay time to check
    -- the customer S3 bucket. The customer can upload data at the same
    -- frequency and they don\'t need to stop and restart the scheduler when
    -- uploading new data.
    dataDelayOffsetInMinutes :: Prelude.Maybe Prelude.Natural,
    -- | The name of the previously trained ML model being used to create the
    -- inference scheduler.
    modelName :: Prelude.Text,
    -- | The name of the inference scheduler being created.
    inferenceSchedulerName :: Prelude.Text,
    -- | How often data is uploaded to the source S3 bucket for the input data.
    -- The value chosen is the length of time between data uploads. For
    -- instance, if you select 5 minutes, Amazon Lookout for Equipment will
    -- upload the real-time data to the source bucket once every 5 minutes.
    -- This frequency also determines how often Amazon Lookout for Equipment
    -- starts a scheduled inference on your data. In this example, it starts
    -- once every 5 minutes.
    dataUploadFrequency :: DataUploadFrequency,
    -- | Specifies configuration information for the input data for the inference
    -- scheduler, including delimiter, format, and dataset location.
    dataInputConfiguration :: InferenceInputConfiguration,
    -- | Specifies configuration information for the output results for the
    -- inference scheduler, including the S3 location for the output.
    dataOutputConfiguration :: InferenceOutputConfiguration,
    -- | The Amazon Resource Name (ARN) of a role with permission to access the
    -- data source being used for the inference.
    roleArn :: Prelude.Text,
    -- | A unique identifier for the request. If you do not set the client
    -- request token, Amazon Lookout for Equipment generates one.
    clientToken :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateInferenceScheduler' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createInferenceScheduler_tags' - Any tags associated with the inference scheduler.
--
-- 'serverSideKmsKeyId', 'createInferenceScheduler_serverSideKmsKeyId' - Provides the identifier of the KMS key used to encrypt inference
-- scheduler data by Amazon Lookout for Equipment.
--
-- 'dataDelayOffsetInMinutes', 'createInferenceScheduler_dataDelayOffsetInMinutes' - A period of time (in minutes) by which inference on the data is delayed
-- after the data starts. For instance, if you select an offset delay time
-- of five minutes, inference will not begin on the data until the first
-- data measurement after the five minute mark. For example, if five
-- minutes is selected, the inference scheduler will wake up at the
-- configured frequency with the additional five minute delay time to check
-- the customer S3 bucket. The customer can upload data at the same
-- frequency and they don\'t need to stop and restart the scheduler when
-- uploading new data.
--
-- 'modelName', 'createInferenceScheduler_modelName' - The name of the previously trained ML model being used to create the
-- inference scheduler.
--
-- 'inferenceSchedulerName', 'createInferenceScheduler_inferenceSchedulerName' - The name of the inference scheduler being created.
--
-- 'dataUploadFrequency', 'createInferenceScheduler_dataUploadFrequency' - How often data is uploaded to the source S3 bucket for the input data.
-- The value chosen is the length of time between data uploads. For
-- instance, if you select 5 minutes, Amazon Lookout for Equipment will
-- upload the real-time data to the source bucket once every 5 minutes.
-- This frequency also determines how often Amazon Lookout for Equipment
-- starts a scheduled inference on your data. In this example, it starts
-- once every 5 minutes.
--
-- 'dataInputConfiguration', 'createInferenceScheduler_dataInputConfiguration' - Specifies configuration information for the input data for the inference
-- scheduler, including delimiter, format, and dataset location.
--
-- 'dataOutputConfiguration', 'createInferenceScheduler_dataOutputConfiguration' - Specifies configuration information for the output results for the
-- inference scheduler, including the S3 location for the output.
--
-- 'roleArn', 'createInferenceScheduler_roleArn' - The Amazon Resource Name (ARN) of a role with permission to access the
-- data source being used for the inference.
--
-- 'clientToken', 'createInferenceScheduler_clientToken' - A unique identifier for the request. If you do not set the client
-- request token, Amazon Lookout for Equipment generates one.
newCreateInferenceScheduler ::
  -- | 'modelName'
  Prelude.Text ->
  -- | 'inferenceSchedulerName'
  Prelude.Text ->
  -- | 'dataUploadFrequency'
  DataUploadFrequency ->
  -- | 'dataInputConfiguration'
  InferenceInputConfiguration ->
  -- | 'dataOutputConfiguration'
  InferenceOutputConfiguration ->
  -- | 'roleArn'
  Prelude.Text ->
  -- | 'clientToken'
  Prelude.Text ->
  CreateInferenceScheduler
newCreateInferenceScheduler
  pModelName_
  pInferenceSchedulerName_
  pDataUploadFrequency_
  pDataInputConfiguration_
  pDataOutputConfiguration_
  pRoleArn_
  pClientToken_ =
    CreateInferenceScheduler'
      { tags = Prelude.Nothing,
        serverSideKmsKeyId = Prelude.Nothing,
        dataDelayOffsetInMinutes = Prelude.Nothing,
        modelName = pModelName_,
        inferenceSchedulerName = pInferenceSchedulerName_,
        dataUploadFrequency = pDataUploadFrequency_,
        dataInputConfiguration = pDataInputConfiguration_,
        dataOutputConfiguration =
          pDataOutputConfiguration_,
        roleArn = pRoleArn_,
        clientToken = pClientToken_
      }

-- | Any tags associated with the inference scheduler.
createInferenceScheduler_tags :: Lens.Lens' CreateInferenceScheduler (Prelude.Maybe [Tag])
createInferenceScheduler_tags = Lens.lens (\CreateInferenceScheduler' {tags} -> tags) (\s@CreateInferenceScheduler' {} a -> s {tags = a} :: CreateInferenceScheduler) Prelude.. Lens.mapping Lens.coerced

-- | Provides the identifier of the KMS key used to encrypt inference
-- scheduler data by Amazon Lookout for Equipment.
createInferenceScheduler_serverSideKmsKeyId :: Lens.Lens' CreateInferenceScheduler (Prelude.Maybe Prelude.Text)
createInferenceScheduler_serverSideKmsKeyId = Lens.lens (\CreateInferenceScheduler' {serverSideKmsKeyId} -> serverSideKmsKeyId) (\s@CreateInferenceScheduler' {} a -> s {serverSideKmsKeyId = a} :: CreateInferenceScheduler)

-- | A period of time (in minutes) by which inference on the data is delayed
-- after the data starts. For instance, if you select an offset delay time
-- of five minutes, inference will not begin on the data until the first
-- data measurement after the five minute mark. For example, if five
-- minutes is selected, the inference scheduler will wake up at the
-- configured frequency with the additional five minute delay time to check
-- the customer S3 bucket. The customer can upload data at the same
-- frequency and they don\'t need to stop and restart the scheduler when
-- uploading new data.
createInferenceScheduler_dataDelayOffsetInMinutes :: Lens.Lens' CreateInferenceScheduler (Prelude.Maybe Prelude.Natural)
createInferenceScheduler_dataDelayOffsetInMinutes = Lens.lens (\CreateInferenceScheduler' {dataDelayOffsetInMinutes} -> dataDelayOffsetInMinutes) (\s@CreateInferenceScheduler' {} a -> s {dataDelayOffsetInMinutes = a} :: CreateInferenceScheduler)

-- | The name of the previously trained ML model being used to create the
-- inference scheduler.
createInferenceScheduler_modelName :: Lens.Lens' CreateInferenceScheduler Prelude.Text
createInferenceScheduler_modelName = Lens.lens (\CreateInferenceScheduler' {modelName} -> modelName) (\s@CreateInferenceScheduler' {} a -> s {modelName = a} :: CreateInferenceScheduler)

-- | The name of the inference scheduler being created.
createInferenceScheduler_inferenceSchedulerName :: Lens.Lens' CreateInferenceScheduler Prelude.Text
createInferenceScheduler_inferenceSchedulerName = Lens.lens (\CreateInferenceScheduler' {inferenceSchedulerName} -> inferenceSchedulerName) (\s@CreateInferenceScheduler' {} a -> s {inferenceSchedulerName = a} :: CreateInferenceScheduler)

-- | How often data is uploaded to the source S3 bucket for the input data.
-- The value chosen is the length of time between data uploads. For
-- instance, if you select 5 minutes, Amazon Lookout for Equipment will
-- upload the real-time data to the source bucket once every 5 minutes.
-- This frequency also determines how often Amazon Lookout for Equipment
-- starts a scheduled inference on your data. In this example, it starts
-- once every 5 minutes.
createInferenceScheduler_dataUploadFrequency :: Lens.Lens' CreateInferenceScheduler DataUploadFrequency
createInferenceScheduler_dataUploadFrequency = Lens.lens (\CreateInferenceScheduler' {dataUploadFrequency} -> dataUploadFrequency) (\s@CreateInferenceScheduler' {} a -> s {dataUploadFrequency = a} :: CreateInferenceScheduler)

-- | Specifies configuration information for the input data for the inference
-- scheduler, including delimiter, format, and dataset location.
createInferenceScheduler_dataInputConfiguration :: Lens.Lens' CreateInferenceScheduler InferenceInputConfiguration
createInferenceScheduler_dataInputConfiguration = Lens.lens (\CreateInferenceScheduler' {dataInputConfiguration} -> dataInputConfiguration) (\s@CreateInferenceScheduler' {} a -> s {dataInputConfiguration = a} :: CreateInferenceScheduler)

-- | Specifies configuration information for the output results for the
-- inference scheduler, including the S3 location for the output.
createInferenceScheduler_dataOutputConfiguration :: Lens.Lens' CreateInferenceScheduler InferenceOutputConfiguration
createInferenceScheduler_dataOutputConfiguration = Lens.lens (\CreateInferenceScheduler' {dataOutputConfiguration} -> dataOutputConfiguration) (\s@CreateInferenceScheduler' {} a -> s {dataOutputConfiguration = a} :: CreateInferenceScheduler)

-- | The Amazon Resource Name (ARN) of a role with permission to access the
-- data source being used for the inference.
createInferenceScheduler_roleArn :: Lens.Lens' CreateInferenceScheduler Prelude.Text
createInferenceScheduler_roleArn = Lens.lens (\CreateInferenceScheduler' {roleArn} -> roleArn) (\s@CreateInferenceScheduler' {} a -> s {roleArn = a} :: CreateInferenceScheduler)

-- | A unique identifier for the request. If you do not set the client
-- request token, Amazon Lookout for Equipment generates one.
createInferenceScheduler_clientToken :: Lens.Lens' CreateInferenceScheduler Prelude.Text
createInferenceScheduler_clientToken = Lens.lens (\CreateInferenceScheduler' {clientToken} -> clientToken) (\s@CreateInferenceScheduler' {} a -> s {clientToken = a} :: CreateInferenceScheduler)

instance Core.AWSRequest CreateInferenceScheduler where
  type
    AWSResponse CreateInferenceScheduler =
      CreateInferenceSchedulerResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateInferenceSchedulerResponse'
            Prelude.<$> (x Core..?> "InferenceSchedulerName")
            Prelude.<*> (x Core..?> "Status")
            Prelude.<*> (x Core..?> "InferenceSchedulerArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateInferenceScheduler where
  hashWithSalt _salt CreateInferenceScheduler' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` serverSideKmsKeyId
      `Prelude.hashWithSalt` dataDelayOffsetInMinutes
      `Prelude.hashWithSalt` modelName
      `Prelude.hashWithSalt` inferenceSchedulerName
      `Prelude.hashWithSalt` dataUploadFrequency
      `Prelude.hashWithSalt` dataInputConfiguration
      `Prelude.hashWithSalt` dataOutputConfiguration
      `Prelude.hashWithSalt` roleArn
      `Prelude.hashWithSalt` clientToken

instance Prelude.NFData CreateInferenceScheduler where
  rnf CreateInferenceScheduler' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf serverSideKmsKeyId
      `Prelude.seq` Prelude.rnf dataDelayOffsetInMinutes
      `Prelude.seq` Prelude.rnf modelName
      `Prelude.seq` Prelude.rnf inferenceSchedulerName
      `Prelude.seq` Prelude.rnf dataUploadFrequency
      `Prelude.seq` Prelude.rnf dataInputConfiguration
      `Prelude.seq` Prelude.rnf dataOutputConfiguration
      `Prelude.seq` Prelude.rnf roleArn
      `Prelude.seq` Prelude.rnf clientToken

instance Core.ToHeaders CreateInferenceScheduler where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSLookoutEquipmentFrontendService.CreateInferenceScheduler" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateInferenceScheduler where
  toJSON CreateInferenceScheduler' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Tags" Core..=) Prelude.<$> tags,
            ("ServerSideKmsKeyId" Core..=)
              Prelude.<$> serverSideKmsKeyId,
            ("DataDelayOffsetInMinutes" Core..=)
              Prelude.<$> dataDelayOffsetInMinutes,
            Prelude.Just ("ModelName" Core..= modelName),
            Prelude.Just
              ( "InferenceSchedulerName"
                  Core..= inferenceSchedulerName
              ),
            Prelude.Just
              ("DataUploadFrequency" Core..= dataUploadFrequency),
            Prelude.Just
              ( "DataInputConfiguration"
                  Core..= dataInputConfiguration
              ),
            Prelude.Just
              ( "DataOutputConfiguration"
                  Core..= dataOutputConfiguration
              ),
            Prelude.Just ("RoleArn" Core..= roleArn),
            Prelude.Just ("ClientToken" Core..= clientToken)
          ]
      )

instance Core.ToPath CreateInferenceScheduler where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateInferenceScheduler where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateInferenceSchedulerResponse' smart constructor.
data CreateInferenceSchedulerResponse = CreateInferenceSchedulerResponse'
  { -- | The name of inference scheduler being created.
    inferenceSchedulerName :: Prelude.Maybe Prelude.Text,
    -- | Indicates the status of the @CreateInferenceScheduler@ operation.
    status :: Prelude.Maybe InferenceSchedulerStatus,
    -- | The Amazon Resource Name (ARN) of the inference scheduler being created.
    inferenceSchedulerArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateInferenceSchedulerResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'inferenceSchedulerName', 'createInferenceSchedulerResponse_inferenceSchedulerName' - The name of inference scheduler being created.
--
-- 'status', 'createInferenceSchedulerResponse_status' - Indicates the status of the @CreateInferenceScheduler@ operation.
--
-- 'inferenceSchedulerArn', 'createInferenceSchedulerResponse_inferenceSchedulerArn' - The Amazon Resource Name (ARN) of the inference scheduler being created.
--
-- 'httpStatus', 'createInferenceSchedulerResponse_httpStatus' - The response's http status code.
newCreateInferenceSchedulerResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateInferenceSchedulerResponse
newCreateInferenceSchedulerResponse pHttpStatus_ =
  CreateInferenceSchedulerResponse'
    { inferenceSchedulerName =
        Prelude.Nothing,
      status = Prelude.Nothing,
      inferenceSchedulerArn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The name of inference scheduler being created.
createInferenceSchedulerResponse_inferenceSchedulerName :: Lens.Lens' CreateInferenceSchedulerResponse (Prelude.Maybe Prelude.Text)
createInferenceSchedulerResponse_inferenceSchedulerName = Lens.lens (\CreateInferenceSchedulerResponse' {inferenceSchedulerName} -> inferenceSchedulerName) (\s@CreateInferenceSchedulerResponse' {} a -> s {inferenceSchedulerName = a} :: CreateInferenceSchedulerResponse)

-- | Indicates the status of the @CreateInferenceScheduler@ operation.
createInferenceSchedulerResponse_status :: Lens.Lens' CreateInferenceSchedulerResponse (Prelude.Maybe InferenceSchedulerStatus)
createInferenceSchedulerResponse_status = Lens.lens (\CreateInferenceSchedulerResponse' {status} -> status) (\s@CreateInferenceSchedulerResponse' {} a -> s {status = a} :: CreateInferenceSchedulerResponse)

-- | The Amazon Resource Name (ARN) of the inference scheduler being created.
createInferenceSchedulerResponse_inferenceSchedulerArn :: Lens.Lens' CreateInferenceSchedulerResponse (Prelude.Maybe Prelude.Text)
createInferenceSchedulerResponse_inferenceSchedulerArn = Lens.lens (\CreateInferenceSchedulerResponse' {inferenceSchedulerArn} -> inferenceSchedulerArn) (\s@CreateInferenceSchedulerResponse' {} a -> s {inferenceSchedulerArn = a} :: CreateInferenceSchedulerResponse)

-- | The response's http status code.
createInferenceSchedulerResponse_httpStatus :: Lens.Lens' CreateInferenceSchedulerResponse Prelude.Int
createInferenceSchedulerResponse_httpStatus = Lens.lens (\CreateInferenceSchedulerResponse' {httpStatus} -> httpStatus) (\s@CreateInferenceSchedulerResponse' {} a -> s {httpStatus = a} :: CreateInferenceSchedulerResponse)

instance
  Prelude.NFData
    CreateInferenceSchedulerResponse
  where
  rnf CreateInferenceSchedulerResponse' {..} =
    Prelude.rnf inferenceSchedulerName
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf inferenceSchedulerArn
      `Prelude.seq` Prelude.rnf httpStatus
