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
-- Module      : Amazonka.CostExplorer.DeleteCostCategoryDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a Cost Category. Expenses from this month going forward will no
-- longer be categorized with this Cost Category.
module Amazonka.CostExplorer.DeleteCostCategoryDefinition
  ( -- * Creating a Request
    DeleteCostCategoryDefinition (..),
    newDeleteCostCategoryDefinition,

    -- * Request Lenses
    deleteCostCategoryDefinition_costCategoryArn,

    -- * Destructuring the Response
    DeleteCostCategoryDefinitionResponse (..),
    newDeleteCostCategoryDefinitionResponse,

    -- * Response Lenses
    deleteCostCategoryDefinitionResponse_effectiveEnd,
    deleteCostCategoryDefinitionResponse_costCategoryArn,
    deleteCostCategoryDefinitionResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.CostExplorer.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDeleteCostCategoryDefinition' smart constructor.
data DeleteCostCategoryDefinition = DeleteCostCategoryDefinition'
  { -- | The unique identifier for your Cost Category.
    costCategoryArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteCostCategoryDefinition' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'costCategoryArn', 'deleteCostCategoryDefinition_costCategoryArn' - The unique identifier for your Cost Category.
newDeleteCostCategoryDefinition ::
  -- | 'costCategoryArn'
  Prelude.Text ->
  DeleteCostCategoryDefinition
newDeleteCostCategoryDefinition pCostCategoryArn_ =
  DeleteCostCategoryDefinition'
    { costCategoryArn =
        pCostCategoryArn_
    }

-- | The unique identifier for your Cost Category.
deleteCostCategoryDefinition_costCategoryArn :: Lens.Lens' DeleteCostCategoryDefinition Prelude.Text
deleteCostCategoryDefinition_costCategoryArn = Lens.lens (\DeleteCostCategoryDefinition' {costCategoryArn} -> costCategoryArn) (\s@DeleteCostCategoryDefinition' {} a -> s {costCategoryArn = a} :: DeleteCostCategoryDefinition)

instance Core.AWSRequest DeleteCostCategoryDefinition where
  type
    AWSResponse DeleteCostCategoryDefinition =
      DeleteCostCategoryDefinitionResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteCostCategoryDefinitionResponse'
            Prelude.<$> (x Core..?> "EffectiveEnd")
            Prelude.<*> (x Core..?> "CostCategoryArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DeleteCostCategoryDefinition
  where
  hashWithSalt _salt DeleteCostCategoryDefinition' {..} =
    _salt `Prelude.hashWithSalt` costCategoryArn

instance Prelude.NFData DeleteCostCategoryDefinition where
  rnf DeleteCostCategoryDefinition' {..} =
    Prelude.rnf costCategoryArn

instance Core.ToHeaders DeleteCostCategoryDefinition where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSInsightsIndexService.DeleteCostCategoryDefinition" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteCostCategoryDefinition where
  toJSON DeleteCostCategoryDefinition' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("CostCategoryArn" Core..= costCategoryArn)
          ]
      )

instance Core.ToPath DeleteCostCategoryDefinition where
  toPath = Prelude.const "/"

instance Core.ToQuery DeleteCostCategoryDefinition where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteCostCategoryDefinitionResponse' smart constructor.
data DeleteCostCategoryDefinitionResponse = DeleteCostCategoryDefinitionResponse'
  { -- | The effective end date of the Cost Category as a result of deleting it.
    -- No costs after this date is categorized by the deleted Cost Category.
    effectiveEnd :: Prelude.Maybe Prelude.Text,
    -- | The unique identifier for your Cost Category.
    costCategoryArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteCostCategoryDefinitionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'effectiveEnd', 'deleteCostCategoryDefinitionResponse_effectiveEnd' - The effective end date of the Cost Category as a result of deleting it.
-- No costs after this date is categorized by the deleted Cost Category.
--
-- 'costCategoryArn', 'deleteCostCategoryDefinitionResponse_costCategoryArn' - The unique identifier for your Cost Category.
--
-- 'httpStatus', 'deleteCostCategoryDefinitionResponse_httpStatus' - The response's http status code.
newDeleteCostCategoryDefinitionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteCostCategoryDefinitionResponse
newDeleteCostCategoryDefinitionResponse pHttpStatus_ =
  DeleteCostCategoryDefinitionResponse'
    { effectiveEnd =
        Prelude.Nothing,
      costCategoryArn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The effective end date of the Cost Category as a result of deleting it.
-- No costs after this date is categorized by the deleted Cost Category.
deleteCostCategoryDefinitionResponse_effectiveEnd :: Lens.Lens' DeleteCostCategoryDefinitionResponse (Prelude.Maybe Prelude.Text)
deleteCostCategoryDefinitionResponse_effectiveEnd = Lens.lens (\DeleteCostCategoryDefinitionResponse' {effectiveEnd} -> effectiveEnd) (\s@DeleteCostCategoryDefinitionResponse' {} a -> s {effectiveEnd = a} :: DeleteCostCategoryDefinitionResponse)

-- | The unique identifier for your Cost Category.
deleteCostCategoryDefinitionResponse_costCategoryArn :: Lens.Lens' DeleteCostCategoryDefinitionResponse (Prelude.Maybe Prelude.Text)
deleteCostCategoryDefinitionResponse_costCategoryArn = Lens.lens (\DeleteCostCategoryDefinitionResponse' {costCategoryArn} -> costCategoryArn) (\s@DeleteCostCategoryDefinitionResponse' {} a -> s {costCategoryArn = a} :: DeleteCostCategoryDefinitionResponse)

-- | The response's http status code.
deleteCostCategoryDefinitionResponse_httpStatus :: Lens.Lens' DeleteCostCategoryDefinitionResponse Prelude.Int
deleteCostCategoryDefinitionResponse_httpStatus = Lens.lens (\DeleteCostCategoryDefinitionResponse' {httpStatus} -> httpStatus) (\s@DeleteCostCategoryDefinitionResponse' {} a -> s {httpStatus = a} :: DeleteCostCategoryDefinitionResponse)

instance
  Prelude.NFData
    DeleteCostCategoryDefinitionResponse
  where
  rnf DeleteCostCategoryDefinitionResponse' {..} =
    Prelude.rnf effectiveEnd
      `Prelude.seq` Prelude.rnf costCategoryArn
      `Prelude.seq` Prelude.rnf httpStatus
