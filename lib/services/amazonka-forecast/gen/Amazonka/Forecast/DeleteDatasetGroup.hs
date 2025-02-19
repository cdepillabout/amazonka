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
-- Module      : Amazonka.Forecast.DeleteDatasetGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a dataset group created using the
-- <https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDatasetGroup.html CreateDatasetGroup>
-- operation. You can only delete dataset groups that have a status of
-- @ACTIVE@, @CREATE_FAILED@, or @UPDATE_FAILED@. To get the status, use
-- the
-- <https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDatasetGroup.html DescribeDatasetGroup>
-- operation.
--
-- This operation deletes only the dataset group, not the datasets in the
-- group.
module Amazonka.Forecast.DeleteDatasetGroup
  ( -- * Creating a Request
    DeleteDatasetGroup (..),
    newDeleteDatasetGroup,

    -- * Request Lenses
    deleteDatasetGroup_datasetGroupArn,

    -- * Destructuring the Response
    DeleteDatasetGroupResponse (..),
    newDeleteDatasetGroupResponse,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.Forecast.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDeleteDatasetGroup' smart constructor.
data DeleteDatasetGroup = DeleteDatasetGroup'
  { -- | The Amazon Resource Name (ARN) of the dataset group to delete.
    datasetGroupArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteDatasetGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'datasetGroupArn', 'deleteDatasetGroup_datasetGroupArn' - The Amazon Resource Name (ARN) of the dataset group to delete.
newDeleteDatasetGroup ::
  -- | 'datasetGroupArn'
  Prelude.Text ->
  DeleteDatasetGroup
newDeleteDatasetGroup pDatasetGroupArn_ =
  DeleteDatasetGroup'
    { datasetGroupArn =
        pDatasetGroupArn_
    }

-- | The Amazon Resource Name (ARN) of the dataset group to delete.
deleteDatasetGroup_datasetGroupArn :: Lens.Lens' DeleteDatasetGroup Prelude.Text
deleteDatasetGroup_datasetGroupArn = Lens.lens (\DeleteDatasetGroup' {datasetGroupArn} -> datasetGroupArn) (\s@DeleteDatasetGroup' {} a -> s {datasetGroupArn = a} :: DeleteDatasetGroup)

instance Core.AWSRequest DeleteDatasetGroup where
  type
    AWSResponse DeleteDatasetGroup =
      DeleteDatasetGroupResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveNull DeleteDatasetGroupResponse'

instance Prelude.Hashable DeleteDatasetGroup where
  hashWithSalt _salt DeleteDatasetGroup' {..} =
    _salt `Prelude.hashWithSalt` datasetGroupArn

instance Prelude.NFData DeleteDatasetGroup where
  rnf DeleteDatasetGroup' {..} =
    Prelude.rnf datasetGroupArn

instance Core.ToHeaders DeleteDatasetGroup where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonForecast.DeleteDatasetGroup" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteDatasetGroup where
  toJSON DeleteDatasetGroup' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("DatasetGroupArn" Core..= datasetGroupArn)
          ]
      )

instance Core.ToPath DeleteDatasetGroup where
  toPath = Prelude.const "/"

instance Core.ToQuery DeleteDatasetGroup where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteDatasetGroupResponse' smart constructor.
data DeleteDatasetGroupResponse = DeleteDatasetGroupResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteDatasetGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteDatasetGroupResponse ::
  DeleteDatasetGroupResponse
newDeleteDatasetGroupResponse =
  DeleteDatasetGroupResponse'

instance Prelude.NFData DeleteDatasetGroupResponse where
  rnf _ = ()
