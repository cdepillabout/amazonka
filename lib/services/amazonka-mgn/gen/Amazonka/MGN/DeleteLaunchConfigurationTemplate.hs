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
-- Module      : Amazonka.MGN.DeleteLaunchConfigurationTemplate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new ReplicationConfigurationTemplate.
module Amazonka.MGN.DeleteLaunchConfigurationTemplate
  ( -- * Creating a Request
    DeleteLaunchConfigurationTemplate (..),
    newDeleteLaunchConfigurationTemplate,

    -- * Request Lenses
    deleteLaunchConfigurationTemplate_launchConfigurationTemplateID,

    -- * Destructuring the Response
    DeleteLaunchConfigurationTemplateResponse (..),
    newDeleteLaunchConfigurationTemplateResponse,

    -- * Response Lenses
    deleteLaunchConfigurationTemplateResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MGN.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDeleteLaunchConfigurationTemplate' smart constructor.
data DeleteLaunchConfigurationTemplate = DeleteLaunchConfigurationTemplate'
  { -- | ID of resource to be deleted.
    launchConfigurationTemplateID :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteLaunchConfigurationTemplate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'launchConfigurationTemplateID', 'deleteLaunchConfigurationTemplate_launchConfigurationTemplateID' - ID of resource to be deleted.
newDeleteLaunchConfigurationTemplate ::
  -- | 'launchConfigurationTemplateID'
  Prelude.Text ->
  DeleteLaunchConfigurationTemplate
newDeleteLaunchConfigurationTemplate
  pLaunchConfigurationTemplateID_ =
    DeleteLaunchConfigurationTemplate'
      { launchConfigurationTemplateID =
          pLaunchConfigurationTemplateID_
      }

-- | ID of resource to be deleted.
deleteLaunchConfigurationTemplate_launchConfigurationTemplateID :: Lens.Lens' DeleteLaunchConfigurationTemplate Prelude.Text
deleteLaunchConfigurationTemplate_launchConfigurationTemplateID = Lens.lens (\DeleteLaunchConfigurationTemplate' {launchConfigurationTemplateID} -> launchConfigurationTemplateID) (\s@DeleteLaunchConfigurationTemplate' {} a -> s {launchConfigurationTemplateID = a} :: DeleteLaunchConfigurationTemplate)

instance
  Core.AWSRequest
    DeleteLaunchConfigurationTemplate
  where
  type
    AWSResponse DeleteLaunchConfigurationTemplate =
      DeleteLaunchConfigurationTemplateResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteLaunchConfigurationTemplateResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DeleteLaunchConfigurationTemplate
  where
  hashWithSalt
    _salt
    DeleteLaunchConfigurationTemplate' {..} =
      _salt
        `Prelude.hashWithSalt` launchConfigurationTemplateID

instance
  Prelude.NFData
    DeleteLaunchConfigurationTemplate
  where
  rnf DeleteLaunchConfigurationTemplate' {..} =
    Prelude.rnf launchConfigurationTemplateID

instance
  Core.ToHeaders
    DeleteLaunchConfigurationTemplate
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
    DeleteLaunchConfigurationTemplate
  where
  toJSON DeleteLaunchConfigurationTemplate' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ( "launchConfigurationTemplateID"
                  Core..= launchConfigurationTemplateID
              )
          ]
      )

instance
  Core.ToPath
    DeleteLaunchConfigurationTemplate
  where
  toPath =
    Prelude.const "/DeleteLaunchConfigurationTemplate"

instance
  Core.ToQuery
    DeleteLaunchConfigurationTemplate
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteLaunchConfigurationTemplateResponse' smart constructor.
data DeleteLaunchConfigurationTemplateResponse = DeleteLaunchConfigurationTemplateResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteLaunchConfigurationTemplateResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteLaunchConfigurationTemplateResponse_httpStatus' - The response's http status code.
newDeleteLaunchConfigurationTemplateResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteLaunchConfigurationTemplateResponse
newDeleteLaunchConfigurationTemplateResponse
  pHttpStatus_ =
    DeleteLaunchConfigurationTemplateResponse'
      { httpStatus =
          pHttpStatus_
      }

-- | The response's http status code.
deleteLaunchConfigurationTemplateResponse_httpStatus :: Lens.Lens' DeleteLaunchConfigurationTemplateResponse Prelude.Int
deleteLaunchConfigurationTemplateResponse_httpStatus = Lens.lens (\DeleteLaunchConfigurationTemplateResponse' {httpStatus} -> httpStatus) (\s@DeleteLaunchConfigurationTemplateResponse' {} a -> s {httpStatus = a} :: DeleteLaunchConfigurationTemplateResponse)

instance
  Prelude.NFData
    DeleteLaunchConfigurationTemplateResponse
  where
  rnf DeleteLaunchConfigurationTemplateResponse' {..} =
    Prelude.rnf httpStatus
