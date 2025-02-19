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
-- Module      : Amazonka.LakeFormation.DeleteDataCellsFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a data cell filter.
module Amazonka.LakeFormation.DeleteDataCellsFilter
  ( -- * Creating a Request
    DeleteDataCellsFilter (..),
    newDeleteDataCellsFilter,

    -- * Request Lenses
    deleteDataCellsFilter_tableName,
    deleteDataCellsFilter_name,
    deleteDataCellsFilter_databaseName,
    deleteDataCellsFilter_tableCatalogId,

    -- * Destructuring the Response
    DeleteDataCellsFilterResponse (..),
    newDeleteDataCellsFilterResponse,

    -- * Response Lenses
    deleteDataCellsFilterResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.LakeFormation.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDeleteDataCellsFilter' smart constructor.
data DeleteDataCellsFilter = DeleteDataCellsFilter'
  { -- | A table in the database.
    tableName :: Prelude.Maybe Prelude.Text,
    -- | The name given by the user to the data filter cell.
    name :: Prelude.Maybe Prelude.Text,
    -- | A database in the Glue Data Catalog.
    databaseName :: Prelude.Maybe Prelude.Text,
    -- | The ID of the catalog to which the table belongs.
    tableCatalogId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteDataCellsFilter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tableName', 'deleteDataCellsFilter_tableName' - A table in the database.
--
-- 'name', 'deleteDataCellsFilter_name' - The name given by the user to the data filter cell.
--
-- 'databaseName', 'deleteDataCellsFilter_databaseName' - A database in the Glue Data Catalog.
--
-- 'tableCatalogId', 'deleteDataCellsFilter_tableCatalogId' - The ID of the catalog to which the table belongs.
newDeleteDataCellsFilter ::
  DeleteDataCellsFilter
newDeleteDataCellsFilter =
  DeleteDataCellsFilter'
    { tableName = Prelude.Nothing,
      name = Prelude.Nothing,
      databaseName = Prelude.Nothing,
      tableCatalogId = Prelude.Nothing
    }

-- | A table in the database.
deleteDataCellsFilter_tableName :: Lens.Lens' DeleteDataCellsFilter (Prelude.Maybe Prelude.Text)
deleteDataCellsFilter_tableName = Lens.lens (\DeleteDataCellsFilter' {tableName} -> tableName) (\s@DeleteDataCellsFilter' {} a -> s {tableName = a} :: DeleteDataCellsFilter)

-- | The name given by the user to the data filter cell.
deleteDataCellsFilter_name :: Lens.Lens' DeleteDataCellsFilter (Prelude.Maybe Prelude.Text)
deleteDataCellsFilter_name = Lens.lens (\DeleteDataCellsFilter' {name} -> name) (\s@DeleteDataCellsFilter' {} a -> s {name = a} :: DeleteDataCellsFilter)

-- | A database in the Glue Data Catalog.
deleteDataCellsFilter_databaseName :: Lens.Lens' DeleteDataCellsFilter (Prelude.Maybe Prelude.Text)
deleteDataCellsFilter_databaseName = Lens.lens (\DeleteDataCellsFilter' {databaseName} -> databaseName) (\s@DeleteDataCellsFilter' {} a -> s {databaseName = a} :: DeleteDataCellsFilter)

-- | The ID of the catalog to which the table belongs.
deleteDataCellsFilter_tableCatalogId :: Lens.Lens' DeleteDataCellsFilter (Prelude.Maybe Prelude.Text)
deleteDataCellsFilter_tableCatalogId = Lens.lens (\DeleteDataCellsFilter' {tableCatalogId} -> tableCatalogId) (\s@DeleteDataCellsFilter' {} a -> s {tableCatalogId = a} :: DeleteDataCellsFilter)

instance Core.AWSRequest DeleteDataCellsFilter where
  type
    AWSResponse DeleteDataCellsFilter =
      DeleteDataCellsFilterResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteDataCellsFilterResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteDataCellsFilter where
  hashWithSalt _salt DeleteDataCellsFilter' {..} =
    _salt `Prelude.hashWithSalt` tableName
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` databaseName
      `Prelude.hashWithSalt` tableCatalogId

instance Prelude.NFData DeleteDataCellsFilter where
  rnf DeleteDataCellsFilter' {..} =
    Prelude.rnf tableName
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf databaseName
      `Prelude.seq` Prelude.rnf tableCatalogId

instance Core.ToHeaders DeleteDataCellsFilter where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteDataCellsFilter where
  toJSON DeleteDataCellsFilter' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("TableName" Core..=) Prelude.<$> tableName,
            ("Name" Core..=) Prelude.<$> name,
            ("DatabaseName" Core..=) Prelude.<$> databaseName,
            ("TableCatalogId" Core..=)
              Prelude.<$> tableCatalogId
          ]
      )

instance Core.ToPath DeleteDataCellsFilter where
  toPath = Prelude.const "/DeleteDataCellsFilter"

instance Core.ToQuery DeleteDataCellsFilter where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteDataCellsFilterResponse' smart constructor.
data DeleteDataCellsFilterResponse = DeleteDataCellsFilterResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteDataCellsFilterResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteDataCellsFilterResponse_httpStatus' - The response's http status code.
newDeleteDataCellsFilterResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteDataCellsFilterResponse
newDeleteDataCellsFilterResponse pHttpStatus_ =
  DeleteDataCellsFilterResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
deleteDataCellsFilterResponse_httpStatus :: Lens.Lens' DeleteDataCellsFilterResponse Prelude.Int
deleteDataCellsFilterResponse_httpStatus = Lens.lens (\DeleteDataCellsFilterResponse' {httpStatus} -> httpStatus) (\s@DeleteDataCellsFilterResponse' {} a -> s {httpStatus = a} :: DeleteDataCellsFilterResponse)

instance Prelude.NFData DeleteDataCellsFilterResponse where
  rnf DeleteDataCellsFilterResponse' {..} =
    Prelude.rnf httpStatus
