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
-- Module      : Amazonka.WellArchitected.UpdateLensReview
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update lens review.
module Amazonka.WellArchitected.UpdateLensReview
  ( -- * Creating a Request
    UpdateLensReview (..),
    newUpdateLensReview,

    -- * Request Lenses
    updateLensReview_pillarNotes,
    updateLensReview_lensNotes,
    updateLensReview_workloadId,
    updateLensReview_lensAlias,

    -- * Destructuring the Response
    UpdateLensReviewResponse (..),
    newUpdateLensReviewResponse,

    -- * Response Lenses
    updateLensReviewResponse_lensReview,
    updateLensReviewResponse_workloadId,
    updateLensReviewResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.WellArchitected.Types

-- | Input for update lens review.
--
-- /See:/ 'newUpdateLensReview' smart constructor.
data UpdateLensReview = UpdateLensReview'
  { pillarNotes :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    lensNotes :: Prelude.Maybe Prelude.Text,
    workloadId :: Prelude.Text,
    lensAlias :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateLensReview' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'pillarNotes', 'updateLensReview_pillarNotes' - Undocumented member.
--
-- 'lensNotes', 'updateLensReview_lensNotes' - Undocumented member.
--
-- 'workloadId', 'updateLensReview_workloadId' - Undocumented member.
--
-- 'lensAlias', 'updateLensReview_lensAlias' - Undocumented member.
newUpdateLensReview ::
  -- | 'workloadId'
  Prelude.Text ->
  -- | 'lensAlias'
  Prelude.Text ->
  UpdateLensReview
newUpdateLensReview pWorkloadId_ pLensAlias_ =
  UpdateLensReview'
    { pillarNotes = Prelude.Nothing,
      lensNotes = Prelude.Nothing,
      workloadId = pWorkloadId_,
      lensAlias = pLensAlias_
    }

-- | Undocumented member.
updateLensReview_pillarNotes :: Lens.Lens' UpdateLensReview (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
updateLensReview_pillarNotes = Lens.lens (\UpdateLensReview' {pillarNotes} -> pillarNotes) (\s@UpdateLensReview' {} a -> s {pillarNotes = a} :: UpdateLensReview) Prelude.. Lens.mapping Lens.coerced

-- | Undocumented member.
updateLensReview_lensNotes :: Lens.Lens' UpdateLensReview (Prelude.Maybe Prelude.Text)
updateLensReview_lensNotes = Lens.lens (\UpdateLensReview' {lensNotes} -> lensNotes) (\s@UpdateLensReview' {} a -> s {lensNotes = a} :: UpdateLensReview)

-- | Undocumented member.
updateLensReview_workloadId :: Lens.Lens' UpdateLensReview Prelude.Text
updateLensReview_workloadId = Lens.lens (\UpdateLensReview' {workloadId} -> workloadId) (\s@UpdateLensReview' {} a -> s {workloadId = a} :: UpdateLensReview)

-- | Undocumented member.
updateLensReview_lensAlias :: Lens.Lens' UpdateLensReview Prelude.Text
updateLensReview_lensAlias = Lens.lens (\UpdateLensReview' {lensAlias} -> lensAlias) (\s@UpdateLensReview' {} a -> s {lensAlias = a} :: UpdateLensReview)

instance Core.AWSRequest UpdateLensReview where
  type
    AWSResponse UpdateLensReview =
      UpdateLensReviewResponse
  request = Request.patchJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateLensReviewResponse'
            Prelude.<$> (x Core..?> "LensReview")
            Prelude.<*> (x Core..?> "WorkloadId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateLensReview where
  hashWithSalt _salt UpdateLensReview' {..} =
    _salt `Prelude.hashWithSalt` pillarNotes
      `Prelude.hashWithSalt` lensNotes
      `Prelude.hashWithSalt` workloadId
      `Prelude.hashWithSalt` lensAlias

instance Prelude.NFData UpdateLensReview where
  rnf UpdateLensReview' {..} =
    Prelude.rnf pillarNotes
      `Prelude.seq` Prelude.rnf lensNotes
      `Prelude.seq` Prelude.rnf workloadId
      `Prelude.seq` Prelude.rnf lensAlias

instance Core.ToHeaders UpdateLensReview where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateLensReview where
  toJSON UpdateLensReview' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("PillarNotes" Core..=) Prelude.<$> pillarNotes,
            ("LensNotes" Core..=) Prelude.<$> lensNotes
          ]
      )

instance Core.ToPath UpdateLensReview where
  toPath UpdateLensReview' {..} =
    Prelude.mconcat
      [ "/workloads/",
        Core.toBS workloadId,
        "/lensReviews/",
        Core.toBS lensAlias
      ]

instance Core.ToQuery UpdateLensReview where
  toQuery = Prelude.const Prelude.mempty

-- | Output of a update lens review call.
--
-- /See:/ 'newUpdateLensReviewResponse' smart constructor.
data UpdateLensReviewResponse = UpdateLensReviewResponse'
  { lensReview :: Prelude.Maybe LensReview,
    workloadId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateLensReviewResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lensReview', 'updateLensReviewResponse_lensReview' - Undocumented member.
--
-- 'workloadId', 'updateLensReviewResponse_workloadId' - Undocumented member.
--
-- 'httpStatus', 'updateLensReviewResponse_httpStatus' - The response's http status code.
newUpdateLensReviewResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateLensReviewResponse
newUpdateLensReviewResponse pHttpStatus_ =
  UpdateLensReviewResponse'
    { lensReview =
        Prelude.Nothing,
      workloadId = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
updateLensReviewResponse_lensReview :: Lens.Lens' UpdateLensReviewResponse (Prelude.Maybe LensReview)
updateLensReviewResponse_lensReview = Lens.lens (\UpdateLensReviewResponse' {lensReview} -> lensReview) (\s@UpdateLensReviewResponse' {} a -> s {lensReview = a} :: UpdateLensReviewResponse)

-- | Undocumented member.
updateLensReviewResponse_workloadId :: Lens.Lens' UpdateLensReviewResponse (Prelude.Maybe Prelude.Text)
updateLensReviewResponse_workloadId = Lens.lens (\UpdateLensReviewResponse' {workloadId} -> workloadId) (\s@UpdateLensReviewResponse' {} a -> s {workloadId = a} :: UpdateLensReviewResponse)

-- | The response's http status code.
updateLensReviewResponse_httpStatus :: Lens.Lens' UpdateLensReviewResponse Prelude.Int
updateLensReviewResponse_httpStatus = Lens.lens (\UpdateLensReviewResponse' {httpStatus} -> httpStatus) (\s@UpdateLensReviewResponse' {} a -> s {httpStatus = a} :: UpdateLensReviewResponse)

instance Prelude.NFData UpdateLensReviewResponse where
  rnf UpdateLensReviewResponse' {..} =
    Prelude.rnf lensReview
      `Prelude.seq` Prelude.rnf workloadId
      `Prelude.seq` Prelude.rnf httpStatus
