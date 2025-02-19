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
-- Module      : Amazonka.AuditManager.BatchImportEvidenceToAssessmentControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Uploads one or more pieces of evidence to a control in an Audit Manager
-- assessment.
module Amazonka.AuditManager.BatchImportEvidenceToAssessmentControl
  ( -- * Creating a Request
    BatchImportEvidenceToAssessmentControl (..),
    newBatchImportEvidenceToAssessmentControl,

    -- * Request Lenses
    batchImportEvidenceToAssessmentControl_assessmentId,
    batchImportEvidenceToAssessmentControl_controlSetId,
    batchImportEvidenceToAssessmentControl_controlId,
    batchImportEvidenceToAssessmentControl_manualEvidence,

    -- * Destructuring the Response
    BatchImportEvidenceToAssessmentControlResponse (..),
    newBatchImportEvidenceToAssessmentControlResponse,

    -- * Response Lenses
    batchImportEvidenceToAssessmentControlResponse_errors,
    batchImportEvidenceToAssessmentControlResponse_httpStatus,
  )
where

import Amazonka.AuditManager.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newBatchImportEvidenceToAssessmentControl' smart constructor.
data BatchImportEvidenceToAssessmentControl = BatchImportEvidenceToAssessmentControl'
  { -- | The identifier for the assessment.
    assessmentId :: Prelude.Text,
    -- | The identifier for the control set.
    controlSetId :: Prelude.Text,
    -- | The identifier for the control.
    controlId :: Prelude.Text,
    -- | The list of manual evidence objects.
    manualEvidence :: Prelude.NonEmpty ManualEvidence
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchImportEvidenceToAssessmentControl' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'assessmentId', 'batchImportEvidenceToAssessmentControl_assessmentId' - The identifier for the assessment.
--
-- 'controlSetId', 'batchImportEvidenceToAssessmentControl_controlSetId' - The identifier for the control set.
--
-- 'controlId', 'batchImportEvidenceToAssessmentControl_controlId' - The identifier for the control.
--
-- 'manualEvidence', 'batchImportEvidenceToAssessmentControl_manualEvidence' - The list of manual evidence objects.
newBatchImportEvidenceToAssessmentControl ::
  -- | 'assessmentId'
  Prelude.Text ->
  -- | 'controlSetId'
  Prelude.Text ->
  -- | 'controlId'
  Prelude.Text ->
  -- | 'manualEvidence'
  Prelude.NonEmpty ManualEvidence ->
  BatchImportEvidenceToAssessmentControl
newBatchImportEvidenceToAssessmentControl
  pAssessmentId_
  pControlSetId_
  pControlId_
  pManualEvidence_ =
    BatchImportEvidenceToAssessmentControl'
      { assessmentId =
          pAssessmentId_,
        controlSetId = pControlSetId_,
        controlId = pControlId_,
        manualEvidence =
          Lens.coerced
            Lens.# pManualEvidence_
      }

-- | The identifier for the assessment.
batchImportEvidenceToAssessmentControl_assessmentId :: Lens.Lens' BatchImportEvidenceToAssessmentControl Prelude.Text
batchImportEvidenceToAssessmentControl_assessmentId = Lens.lens (\BatchImportEvidenceToAssessmentControl' {assessmentId} -> assessmentId) (\s@BatchImportEvidenceToAssessmentControl' {} a -> s {assessmentId = a} :: BatchImportEvidenceToAssessmentControl)

-- | The identifier for the control set.
batchImportEvidenceToAssessmentControl_controlSetId :: Lens.Lens' BatchImportEvidenceToAssessmentControl Prelude.Text
batchImportEvidenceToAssessmentControl_controlSetId = Lens.lens (\BatchImportEvidenceToAssessmentControl' {controlSetId} -> controlSetId) (\s@BatchImportEvidenceToAssessmentControl' {} a -> s {controlSetId = a} :: BatchImportEvidenceToAssessmentControl)

-- | The identifier for the control.
batchImportEvidenceToAssessmentControl_controlId :: Lens.Lens' BatchImportEvidenceToAssessmentControl Prelude.Text
batchImportEvidenceToAssessmentControl_controlId = Lens.lens (\BatchImportEvidenceToAssessmentControl' {controlId} -> controlId) (\s@BatchImportEvidenceToAssessmentControl' {} a -> s {controlId = a} :: BatchImportEvidenceToAssessmentControl)

-- | The list of manual evidence objects.
batchImportEvidenceToAssessmentControl_manualEvidence :: Lens.Lens' BatchImportEvidenceToAssessmentControl (Prelude.NonEmpty ManualEvidence)
batchImportEvidenceToAssessmentControl_manualEvidence = Lens.lens (\BatchImportEvidenceToAssessmentControl' {manualEvidence} -> manualEvidence) (\s@BatchImportEvidenceToAssessmentControl' {} a -> s {manualEvidence = a} :: BatchImportEvidenceToAssessmentControl) Prelude.. Lens.coerced

instance
  Core.AWSRequest
    BatchImportEvidenceToAssessmentControl
  where
  type
    AWSResponse
      BatchImportEvidenceToAssessmentControl =
      BatchImportEvidenceToAssessmentControlResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          BatchImportEvidenceToAssessmentControlResponse'
            Prelude.<$> (x Core..?> "errors" Core..!@ Prelude.mempty)
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    BatchImportEvidenceToAssessmentControl
  where
  hashWithSalt
    _salt
    BatchImportEvidenceToAssessmentControl' {..} =
      _salt `Prelude.hashWithSalt` assessmentId
        `Prelude.hashWithSalt` controlSetId
        `Prelude.hashWithSalt` controlId
        `Prelude.hashWithSalt` manualEvidence

instance
  Prelude.NFData
    BatchImportEvidenceToAssessmentControl
  where
  rnf BatchImportEvidenceToAssessmentControl' {..} =
    Prelude.rnf assessmentId
      `Prelude.seq` Prelude.rnf controlSetId
      `Prelude.seq` Prelude.rnf controlId
      `Prelude.seq` Prelude.rnf manualEvidence

instance
  Core.ToHeaders
    BatchImportEvidenceToAssessmentControl
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance
  Core.ToJSON
    BatchImportEvidenceToAssessmentControl
  where
  toJSON BatchImportEvidenceToAssessmentControl' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("manualEvidence" Core..= manualEvidence)
          ]
      )

instance
  Core.ToPath
    BatchImportEvidenceToAssessmentControl
  where
  toPath BatchImportEvidenceToAssessmentControl' {..} =
    Prelude.mconcat
      [ "/assessments/",
        Core.toBS assessmentId,
        "/controlSets/",
        Core.toBS controlSetId,
        "/controls/",
        Core.toBS controlId,
        "/evidence"
      ]

instance
  Core.ToQuery
    BatchImportEvidenceToAssessmentControl
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newBatchImportEvidenceToAssessmentControlResponse' smart constructor.
data BatchImportEvidenceToAssessmentControlResponse = BatchImportEvidenceToAssessmentControlResponse'
  { -- | A list of errors that the @BatchImportEvidenceToAssessmentControl@ API
    -- returned.
    errors :: Prelude.Maybe [BatchImportEvidenceToAssessmentControlError],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchImportEvidenceToAssessmentControlResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'errors', 'batchImportEvidenceToAssessmentControlResponse_errors' - A list of errors that the @BatchImportEvidenceToAssessmentControl@ API
-- returned.
--
-- 'httpStatus', 'batchImportEvidenceToAssessmentControlResponse_httpStatus' - The response's http status code.
newBatchImportEvidenceToAssessmentControlResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  BatchImportEvidenceToAssessmentControlResponse
newBatchImportEvidenceToAssessmentControlResponse
  pHttpStatus_ =
    BatchImportEvidenceToAssessmentControlResponse'
      { errors =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | A list of errors that the @BatchImportEvidenceToAssessmentControl@ API
-- returned.
batchImportEvidenceToAssessmentControlResponse_errors :: Lens.Lens' BatchImportEvidenceToAssessmentControlResponse (Prelude.Maybe [BatchImportEvidenceToAssessmentControlError])
batchImportEvidenceToAssessmentControlResponse_errors = Lens.lens (\BatchImportEvidenceToAssessmentControlResponse' {errors} -> errors) (\s@BatchImportEvidenceToAssessmentControlResponse' {} a -> s {errors = a} :: BatchImportEvidenceToAssessmentControlResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
batchImportEvidenceToAssessmentControlResponse_httpStatus :: Lens.Lens' BatchImportEvidenceToAssessmentControlResponse Prelude.Int
batchImportEvidenceToAssessmentControlResponse_httpStatus = Lens.lens (\BatchImportEvidenceToAssessmentControlResponse' {httpStatus} -> httpStatus) (\s@BatchImportEvidenceToAssessmentControlResponse' {} a -> s {httpStatus = a} :: BatchImportEvidenceToAssessmentControlResponse)

instance
  Prelude.NFData
    BatchImportEvidenceToAssessmentControlResponse
  where
  rnf
    BatchImportEvidenceToAssessmentControlResponse' {..} =
      Prelude.rnf errors
        `Prelude.seq` Prelude.rnf httpStatus
