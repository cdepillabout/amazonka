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
-- Module      : Amazonka.Proton.DeleteService
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a service, with its instances and pipeline.
--
-- You can\'t delete a service if it has any service instances that have
-- components attached to them.
--
-- For more information about components, see
-- <https://docs.aws.amazon.com/proton/latest/adminguide/ag-components.html Proton components>
-- in the /Proton Administrator Guide/.
module Amazonka.Proton.DeleteService
  ( -- * Creating a Request
    DeleteService (..),
    newDeleteService,

    -- * Request Lenses
    deleteService_name,

    -- * Destructuring the Response
    DeleteServiceResponse (..),
    newDeleteServiceResponse,

    -- * Response Lenses
    deleteServiceResponse_service,
    deleteServiceResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.Proton.Types
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDeleteService' smart constructor.
data DeleteService = DeleteService'
  { -- | The name of the service to delete.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteService' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'deleteService_name' - The name of the service to delete.
newDeleteService ::
  -- | 'name'
  Prelude.Text ->
  DeleteService
newDeleteService pName_ =
  DeleteService' {name = pName_}

-- | The name of the service to delete.
deleteService_name :: Lens.Lens' DeleteService Prelude.Text
deleteService_name = Lens.lens (\DeleteService' {name} -> name) (\s@DeleteService' {} a -> s {name = a} :: DeleteService)

instance Core.AWSRequest DeleteService where
  type
    AWSResponse DeleteService =
      DeleteServiceResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteServiceResponse'
            Prelude.<$> (x Core..?> "service")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteService where
  hashWithSalt _salt DeleteService' {..} =
    _salt `Prelude.hashWithSalt` name

instance Prelude.NFData DeleteService where
  rnf DeleteService' {..} = Prelude.rnf name

instance Core.ToHeaders DeleteService where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AwsProton20200720.DeleteService" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteService where
  toJSON DeleteService' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("name" Core..= name)]
      )

instance Core.ToPath DeleteService where
  toPath = Prelude.const "/"

instance Core.ToQuery DeleteService where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteServiceResponse' smart constructor.
data DeleteServiceResponse = DeleteServiceResponse'
  { -- | The detailed data of the service being deleted.
    service :: Prelude.Maybe Service,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteServiceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'service', 'deleteServiceResponse_service' - The detailed data of the service being deleted.
--
-- 'httpStatus', 'deleteServiceResponse_httpStatus' - The response's http status code.
newDeleteServiceResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteServiceResponse
newDeleteServiceResponse pHttpStatus_ =
  DeleteServiceResponse'
    { service = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The detailed data of the service being deleted.
deleteServiceResponse_service :: Lens.Lens' DeleteServiceResponse (Prelude.Maybe Service)
deleteServiceResponse_service = Lens.lens (\DeleteServiceResponse' {service} -> service) (\s@DeleteServiceResponse' {} a -> s {service = a} :: DeleteServiceResponse)

-- | The response's http status code.
deleteServiceResponse_httpStatus :: Lens.Lens' DeleteServiceResponse Prelude.Int
deleteServiceResponse_httpStatus = Lens.lens (\DeleteServiceResponse' {httpStatus} -> httpStatus) (\s@DeleteServiceResponse' {} a -> s {httpStatus = a} :: DeleteServiceResponse)

instance Prelude.NFData DeleteServiceResponse where
  rnf DeleteServiceResponse' {..} =
    Prelude.rnf service
      `Prelude.seq` Prelude.rnf httpStatus
