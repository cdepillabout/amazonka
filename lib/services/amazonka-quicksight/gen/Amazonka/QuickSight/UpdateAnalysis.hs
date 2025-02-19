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
-- Module      : Amazonka.QuickSight.UpdateAnalysis
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an analysis in Amazon QuickSight
module Amazonka.QuickSight.UpdateAnalysis
  ( -- * Creating a Request
    UpdateAnalysis (..),
    newUpdateAnalysis,

    -- * Request Lenses
    updateAnalysis_themeArn,
    updateAnalysis_parameters,
    updateAnalysis_awsAccountId,
    updateAnalysis_analysisId,
    updateAnalysis_name,
    updateAnalysis_sourceEntity,

    -- * Destructuring the Response
    UpdateAnalysisResponse (..),
    newUpdateAnalysisResponse,

    -- * Response Lenses
    updateAnalysisResponse_analysisId,
    updateAnalysisResponse_requestId,
    updateAnalysisResponse_arn,
    updateAnalysisResponse_updateStatus,
    updateAnalysisResponse_status,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.QuickSight.Types
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateAnalysis' smart constructor.
data UpdateAnalysis = UpdateAnalysis'
  { -- | The Amazon Resource Name (ARN) for the theme to apply to the analysis
    -- that you\'re creating. To see the theme in the Amazon QuickSight
    -- console, make sure that you have access to it.
    themeArn :: Prelude.Maybe Prelude.Text,
    -- | The parameter names and override values that you want to use. An
    -- analysis can have any parameter type, and some parameters might accept
    -- multiple values.
    parameters :: Prelude.Maybe Parameters,
    -- | The ID of the Amazon Web Services account that contains the analysis
    -- that you\'re updating.
    awsAccountId :: Prelude.Text,
    -- | The ID for the analysis that you\'re updating. This ID displays in the
    -- URL of the analysis.
    analysisId :: Prelude.Text,
    -- | A descriptive name for the analysis that you\'re updating. This name
    -- displays for the analysis in the Amazon QuickSight console.
    name :: Prelude.Text,
    -- | A source entity to use for the analysis that you\'re updating. This
    -- metadata structure contains details that describe a source template and
    -- one or more datasets.
    sourceEntity :: AnalysisSourceEntity
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateAnalysis' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'themeArn', 'updateAnalysis_themeArn' - The Amazon Resource Name (ARN) for the theme to apply to the analysis
-- that you\'re creating. To see the theme in the Amazon QuickSight
-- console, make sure that you have access to it.
--
-- 'parameters', 'updateAnalysis_parameters' - The parameter names and override values that you want to use. An
-- analysis can have any parameter type, and some parameters might accept
-- multiple values.
--
-- 'awsAccountId', 'updateAnalysis_awsAccountId' - The ID of the Amazon Web Services account that contains the analysis
-- that you\'re updating.
--
-- 'analysisId', 'updateAnalysis_analysisId' - The ID for the analysis that you\'re updating. This ID displays in the
-- URL of the analysis.
--
-- 'name', 'updateAnalysis_name' - A descriptive name for the analysis that you\'re updating. This name
-- displays for the analysis in the Amazon QuickSight console.
--
-- 'sourceEntity', 'updateAnalysis_sourceEntity' - A source entity to use for the analysis that you\'re updating. This
-- metadata structure contains details that describe a source template and
-- one or more datasets.
newUpdateAnalysis ::
  -- | 'awsAccountId'
  Prelude.Text ->
  -- | 'analysisId'
  Prelude.Text ->
  -- | 'name'
  Prelude.Text ->
  -- | 'sourceEntity'
  AnalysisSourceEntity ->
  UpdateAnalysis
newUpdateAnalysis
  pAwsAccountId_
  pAnalysisId_
  pName_
  pSourceEntity_ =
    UpdateAnalysis'
      { themeArn = Prelude.Nothing,
        parameters = Prelude.Nothing,
        awsAccountId = pAwsAccountId_,
        analysisId = pAnalysisId_,
        name = pName_,
        sourceEntity = pSourceEntity_
      }

-- | The Amazon Resource Name (ARN) for the theme to apply to the analysis
-- that you\'re creating. To see the theme in the Amazon QuickSight
-- console, make sure that you have access to it.
updateAnalysis_themeArn :: Lens.Lens' UpdateAnalysis (Prelude.Maybe Prelude.Text)
updateAnalysis_themeArn = Lens.lens (\UpdateAnalysis' {themeArn} -> themeArn) (\s@UpdateAnalysis' {} a -> s {themeArn = a} :: UpdateAnalysis)

-- | The parameter names and override values that you want to use. An
-- analysis can have any parameter type, and some parameters might accept
-- multiple values.
updateAnalysis_parameters :: Lens.Lens' UpdateAnalysis (Prelude.Maybe Parameters)
updateAnalysis_parameters = Lens.lens (\UpdateAnalysis' {parameters} -> parameters) (\s@UpdateAnalysis' {} a -> s {parameters = a} :: UpdateAnalysis)

-- | The ID of the Amazon Web Services account that contains the analysis
-- that you\'re updating.
updateAnalysis_awsAccountId :: Lens.Lens' UpdateAnalysis Prelude.Text
updateAnalysis_awsAccountId = Lens.lens (\UpdateAnalysis' {awsAccountId} -> awsAccountId) (\s@UpdateAnalysis' {} a -> s {awsAccountId = a} :: UpdateAnalysis)

-- | The ID for the analysis that you\'re updating. This ID displays in the
-- URL of the analysis.
updateAnalysis_analysisId :: Lens.Lens' UpdateAnalysis Prelude.Text
updateAnalysis_analysisId = Lens.lens (\UpdateAnalysis' {analysisId} -> analysisId) (\s@UpdateAnalysis' {} a -> s {analysisId = a} :: UpdateAnalysis)

-- | A descriptive name for the analysis that you\'re updating. This name
-- displays for the analysis in the Amazon QuickSight console.
updateAnalysis_name :: Lens.Lens' UpdateAnalysis Prelude.Text
updateAnalysis_name = Lens.lens (\UpdateAnalysis' {name} -> name) (\s@UpdateAnalysis' {} a -> s {name = a} :: UpdateAnalysis)

-- | A source entity to use for the analysis that you\'re updating. This
-- metadata structure contains details that describe a source template and
-- one or more datasets.
updateAnalysis_sourceEntity :: Lens.Lens' UpdateAnalysis AnalysisSourceEntity
updateAnalysis_sourceEntity = Lens.lens (\UpdateAnalysis' {sourceEntity} -> sourceEntity) (\s@UpdateAnalysis' {} a -> s {sourceEntity = a} :: UpdateAnalysis)

instance Core.AWSRequest UpdateAnalysis where
  type
    AWSResponse UpdateAnalysis =
      UpdateAnalysisResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateAnalysisResponse'
            Prelude.<$> (x Core..?> "AnalysisId")
            Prelude.<*> (x Core..?> "RequestId")
            Prelude.<*> (x Core..?> "Arn")
            Prelude.<*> (x Core..?> "UpdateStatus")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateAnalysis where
  hashWithSalt _salt UpdateAnalysis' {..} =
    _salt `Prelude.hashWithSalt` themeArn
      `Prelude.hashWithSalt` parameters
      `Prelude.hashWithSalt` awsAccountId
      `Prelude.hashWithSalt` analysisId
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` sourceEntity

instance Prelude.NFData UpdateAnalysis where
  rnf UpdateAnalysis' {..} =
    Prelude.rnf themeArn
      `Prelude.seq` Prelude.rnf parameters
      `Prelude.seq` Prelude.rnf awsAccountId
      `Prelude.seq` Prelude.rnf analysisId
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf sourceEntity

instance Core.ToHeaders UpdateAnalysis where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateAnalysis where
  toJSON UpdateAnalysis' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ThemeArn" Core..=) Prelude.<$> themeArn,
            ("Parameters" Core..=) Prelude.<$> parameters,
            Prelude.Just ("Name" Core..= name),
            Prelude.Just ("SourceEntity" Core..= sourceEntity)
          ]
      )

instance Core.ToPath UpdateAnalysis where
  toPath UpdateAnalysis' {..} =
    Prelude.mconcat
      [ "/accounts/",
        Core.toBS awsAccountId,
        "/analyses/",
        Core.toBS analysisId
      ]

instance Core.ToQuery UpdateAnalysis where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateAnalysisResponse' smart constructor.
data UpdateAnalysisResponse = UpdateAnalysisResponse'
  { -- | The ID of the analysis.
    analysisId :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Web Services request ID for this operation.
    requestId :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the analysis that you\'re updating.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The update status of the last update that was made to the analysis.
    updateStatus :: Prelude.Maybe ResourceStatus,
    -- | The HTTP status of the request.
    status :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateAnalysisResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'analysisId', 'updateAnalysisResponse_analysisId' - The ID of the analysis.
--
-- 'requestId', 'updateAnalysisResponse_requestId' - The Amazon Web Services request ID for this operation.
--
-- 'arn', 'updateAnalysisResponse_arn' - The ARN of the analysis that you\'re updating.
--
-- 'updateStatus', 'updateAnalysisResponse_updateStatus' - The update status of the last update that was made to the analysis.
--
-- 'status', 'updateAnalysisResponse_status' - The HTTP status of the request.
newUpdateAnalysisResponse ::
  -- | 'status'
  Prelude.Int ->
  UpdateAnalysisResponse
newUpdateAnalysisResponse pStatus_ =
  UpdateAnalysisResponse'
    { analysisId =
        Prelude.Nothing,
      requestId = Prelude.Nothing,
      arn = Prelude.Nothing,
      updateStatus = Prelude.Nothing,
      status = pStatus_
    }

-- | The ID of the analysis.
updateAnalysisResponse_analysisId :: Lens.Lens' UpdateAnalysisResponse (Prelude.Maybe Prelude.Text)
updateAnalysisResponse_analysisId = Lens.lens (\UpdateAnalysisResponse' {analysisId} -> analysisId) (\s@UpdateAnalysisResponse' {} a -> s {analysisId = a} :: UpdateAnalysisResponse)

-- | The Amazon Web Services request ID for this operation.
updateAnalysisResponse_requestId :: Lens.Lens' UpdateAnalysisResponse (Prelude.Maybe Prelude.Text)
updateAnalysisResponse_requestId = Lens.lens (\UpdateAnalysisResponse' {requestId} -> requestId) (\s@UpdateAnalysisResponse' {} a -> s {requestId = a} :: UpdateAnalysisResponse)

-- | The ARN of the analysis that you\'re updating.
updateAnalysisResponse_arn :: Lens.Lens' UpdateAnalysisResponse (Prelude.Maybe Prelude.Text)
updateAnalysisResponse_arn = Lens.lens (\UpdateAnalysisResponse' {arn} -> arn) (\s@UpdateAnalysisResponse' {} a -> s {arn = a} :: UpdateAnalysisResponse)

-- | The update status of the last update that was made to the analysis.
updateAnalysisResponse_updateStatus :: Lens.Lens' UpdateAnalysisResponse (Prelude.Maybe ResourceStatus)
updateAnalysisResponse_updateStatus = Lens.lens (\UpdateAnalysisResponse' {updateStatus} -> updateStatus) (\s@UpdateAnalysisResponse' {} a -> s {updateStatus = a} :: UpdateAnalysisResponse)

-- | The HTTP status of the request.
updateAnalysisResponse_status :: Lens.Lens' UpdateAnalysisResponse Prelude.Int
updateAnalysisResponse_status = Lens.lens (\UpdateAnalysisResponse' {status} -> status) (\s@UpdateAnalysisResponse' {} a -> s {status = a} :: UpdateAnalysisResponse)

instance Prelude.NFData UpdateAnalysisResponse where
  rnf UpdateAnalysisResponse' {..} =
    Prelude.rnf analysisId
      `Prelude.seq` Prelude.rnf requestId
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf updateStatus
      `Prelude.seq` Prelude.rnf status
