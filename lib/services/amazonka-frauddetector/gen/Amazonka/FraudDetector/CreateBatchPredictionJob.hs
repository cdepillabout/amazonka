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
-- Module      : Amazonka.FraudDetector.CreateBatchPredictionJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a batch prediction job.
module Amazonka.FraudDetector.CreateBatchPredictionJob
  ( -- * Creating a Request
    CreateBatchPredictionJob (..),
    newCreateBatchPredictionJob,

    -- * Request Lenses
    createBatchPredictionJob_tags,
    createBatchPredictionJob_detectorVersion,
    createBatchPredictionJob_jobId,
    createBatchPredictionJob_inputPath,
    createBatchPredictionJob_outputPath,
    createBatchPredictionJob_eventTypeName,
    createBatchPredictionJob_detectorName,
    createBatchPredictionJob_iamRoleArn,

    -- * Destructuring the Response
    CreateBatchPredictionJobResponse (..),
    newCreateBatchPredictionJobResponse,

    -- * Response Lenses
    createBatchPredictionJobResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.FraudDetector.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateBatchPredictionJob' smart constructor.
data CreateBatchPredictionJob = CreateBatchPredictionJob'
  { -- | A collection of key and value pairs.
    tags :: Prelude.Maybe [Tag],
    -- | The detector version.
    detectorVersion :: Prelude.Maybe Prelude.Text,
    -- | The ID of the batch prediction job.
    jobId :: Prelude.Text,
    -- | The Amazon S3 location of your training file.
    inputPath :: Prelude.Text,
    -- | The Amazon S3 location of your output file.
    outputPath :: Prelude.Text,
    -- | The name of the event type.
    eventTypeName :: Prelude.Text,
    -- | The name of the detector.
    detectorName :: Prelude.Text,
    -- | The ARN of the IAM role to use for this job request.
    iamRoleArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateBatchPredictionJob' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createBatchPredictionJob_tags' - A collection of key and value pairs.
--
-- 'detectorVersion', 'createBatchPredictionJob_detectorVersion' - The detector version.
--
-- 'jobId', 'createBatchPredictionJob_jobId' - The ID of the batch prediction job.
--
-- 'inputPath', 'createBatchPredictionJob_inputPath' - The Amazon S3 location of your training file.
--
-- 'outputPath', 'createBatchPredictionJob_outputPath' - The Amazon S3 location of your output file.
--
-- 'eventTypeName', 'createBatchPredictionJob_eventTypeName' - The name of the event type.
--
-- 'detectorName', 'createBatchPredictionJob_detectorName' - The name of the detector.
--
-- 'iamRoleArn', 'createBatchPredictionJob_iamRoleArn' - The ARN of the IAM role to use for this job request.
newCreateBatchPredictionJob ::
  -- | 'jobId'
  Prelude.Text ->
  -- | 'inputPath'
  Prelude.Text ->
  -- | 'outputPath'
  Prelude.Text ->
  -- | 'eventTypeName'
  Prelude.Text ->
  -- | 'detectorName'
  Prelude.Text ->
  -- | 'iamRoleArn'
  Prelude.Text ->
  CreateBatchPredictionJob
newCreateBatchPredictionJob
  pJobId_
  pInputPath_
  pOutputPath_
  pEventTypeName_
  pDetectorName_
  pIamRoleArn_ =
    CreateBatchPredictionJob'
      { tags = Prelude.Nothing,
        detectorVersion = Prelude.Nothing,
        jobId = pJobId_,
        inputPath = pInputPath_,
        outputPath = pOutputPath_,
        eventTypeName = pEventTypeName_,
        detectorName = pDetectorName_,
        iamRoleArn = pIamRoleArn_
      }

-- | A collection of key and value pairs.
createBatchPredictionJob_tags :: Lens.Lens' CreateBatchPredictionJob (Prelude.Maybe [Tag])
createBatchPredictionJob_tags = Lens.lens (\CreateBatchPredictionJob' {tags} -> tags) (\s@CreateBatchPredictionJob' {} a -> s {tags = a} :: CreateBatchPredictionJob) Prelude.. Lens.mapping Lens.coerced

-- | The detector version.
createBatchPredictionJob_detectorVersion :: Lens.Lens' CreateBatchPredictionJob (Prelude.Maybe Prelude.Text)
createBatchPredictionJob_detectorVersion = Lens.lens (\CreateBatchPredictionJob' {detectorVersion} -> detectorVersion) (\s@CreateBatchPredictionJob' {} a -> s {detectorVersion = a} :: CreateBatchPredictionJob)

-- | The ID of the batch prediction job.
createBatchPredictionJob_jobId :: Lens.Lens' CreateBatchPredictionJob Prelude.Text
createBatchPredictionJob_jobId = Lens.lens (\CreateBatchPredictionJob' {jobId} -> jobId) (\s@CreateBatchPredictionJob' {} a -> s {jobId = a} :: CreateBatchPredictionJob)

-- | The Amazon S3 location of your training file.
createBatchPredictionJob_inputPath :: Lens.Lens' CreateBatchPredictionJob Prelude.Text
createBatchPredictionJob_inputPath = Lens.lens (\CreateBatchPredictionJob' {inputPath} -> inputPath) (\s@CreateBatchPredictionJob' {} a -> s {inputPath = a} :: CreateBatchPredictionJob)

-- | The Amazon S3 location of your output file.
createBatchPredictionJob_outputPath :: Lens.Lens' CreateBatchPredictionJob Prelude.Text
createBatchPredictionJob_outputPath = Lens.lens (\CreateBatchPredictionJob' {outputPath} -> outputPath) (\s@CreateBatchPredictionJob' {} a -> s {outputPath = a} :: CreateBatchPredictionJob)

-- | The name of the event type.
createBatchPredictionJob_eventTypeName :: Lens.Lens' CreateBatchPredictionJob Prelude.Text
createBatchPredictionJob_eventTypeName = Lens.lens (\CreateBatchPredictionJob' {eventTypeName} -> eventTypeName) (\s@CreateBatchPredictionJob' {} a -> s {eventTypeName = a} :: CreateBatchPredictionJob)

-- | The name of the detector.
createBatchPredictionJob_detectorName :: Lens.Lens' CreateBatchPredictionJob Prelude.Text
createBatchPredictionJob_detectorName = Lens.lens (\CreateBatchPredictionJob' {detectorName} -> detectorName) (\s@CreateBatchPredictionJob' {} a -> s {detectorName = a} :: CreateBatchPredictionJob)

-- | The ARN of the IAM role to use for this job request.
createBatchPredictionJob_iamRoleArn :: Lens.Lens' CreateBatchPredictionJob Prelude.Text
createBatchPredictionJob_iamRoleArn = Lens.lens (\CreateBatchPredictionJob' {iamRoleArn} -> iamRoleArn) (\s@CreateBatchPredictionJob' {} a -> s {iamRoleArn = a} :: CreateBatchPredictionJob)

instance Core.AWSRequest CreateBatchPredictionJob where
  type
    AWSResponse CreateBatchPredictionJob =
      CreateBatchPredictionJobResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          CreateBatchPredictionJobResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateBatchPredictionJob where
  hashWithSalt _salt CreateBatchPredictionJob' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` detectorVersion
      `Prelude.hashWithSalt` jobId
      `Prelude.hashWithSalt` inputPath
      `Prelude.hashWithSalt` outputPath
      `Prelude.hashWithSalt` eventTypeName
      `Prelude.hashWithSalt` detectorName
      `Prelude.hashWithSalt` iamRoleArn

instance Prelude.NFData CreateBatchPredictionJob where
  rnf CreateBatchPredictionJob' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf detectorVersion
      `Prelude.seq` Prelude.rnf jobId
      `Prelude.seq` Prelude.rnf inputPath
      `Prelude.seq` Prelude.rnf outputPath
      `Prelude.seq` Prelude.rnf eventTypeName
      `Prelude.seq` Prelude.rnf detectorName
      `Prelude.seq` Prelude.rnf iamRoleArn

instance Core.ToHeaders CreateBatchPredictionJob where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSHawksNestServiceFacade.CreateBatchPredictionJob" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateBatchPredictionJob where
  toJSON CreateBatchPredictionJob' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("tags" Core..=) Prelude.<$> tags,
            ("detectorVersion" Core..=)
              Prelude.<$> detectorVersion,
            Prelude.Just ("jobId" Core..= jobId),
            Prelude.Just ("inputPath" Core..= inputPath),
            Prelude.Just ("outputPath" Core..= outputPath),
            Prelude.Just ("eventTypeName" Core..= eventTypeName),
            Prelude.Just ("detectorName" Core..= detectorName),
            Prelude.Just ("iamRoleArn" Core..= iamRoleArn)
          ]
      )

instance Core.ToPath CreateBatchPredictionJob where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateBatchPredictionJob where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateBatchPredictionJobResponse' smart constructor.
data CreateBatchPredictionJobResponse = CreateBatchPredictionJobResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateBatchPredictionJobResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'createBatchPredictionJobResponse_httpStatus' - The response's http status code.
newCreateBatchPredictionJobResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateBatchPredictionJobResponse
newCreateBatchPredictionJobResponse pHttpStatus_ =
  CreateBatchPredictionJobResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
createBatchPredictionJobResponse_httpStatus :: Lens.Lens' CreateBatchPredictionJobResponse Prelude.Int
createBatchPredictionJobResponse_httpStatus = Lens.lens (\CreateBatchPredictionJobResponse' {httpStatus} -> httpStatus) (\s@CreateBatchPredictionJobResponse' {} a -> s {httpStatus = a} :: CreateBatchPredictionJobResponse)

instance
  Prelude.NFData
    CreateBatchPredictionJobResponse
  where
  rnf CreateBatchPredictionJobResponse' {..} =
    Prelude.rnf httpStatus
