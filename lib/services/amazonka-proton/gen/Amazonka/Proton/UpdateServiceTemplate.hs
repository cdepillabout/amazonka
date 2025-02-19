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
-- Module      : Amazonka.Proton.UpdateServiceTemplate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update a service template.
module Amazonka.Proton.UpdateServiceTemplate
  ( -- * Creating a Request
    UpdateServiceTemplate (..),
    newUpdateServiceTemplate,

    -- * Request Lenses
    updateServiceTemplate_displayName,
    updateServiceTemplate_description,
    updateServiceTemplate_name,

    -- * Destructuring the Response
    UpdateServiceTemplateResponse (..),
    newUpdateServiceTemplateResponse,

    -- * Response Lenses
    updateServiceTemplateResponse_httpStatus,
    updateServiceTemplateResponse_serviceTemplate,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.Proton.Types
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateServiceTemplate' smart constructor.
data UpdateServiceTemplate = UpdateServiceTemplate'
  { -- | The name of the service template to update that\'s displayed in the
    -- developer interface.
    displayName :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | A description of the service template update.
    description :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The name of the service template to update.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateServiceTemplate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'displayName', 'updateServiceTemplate_displayName' - The name of the service template to update that\'s displayed in the
-- developer interface.
--
-- 'description', 'updateServiceTemplate_description' - A description of the service template update.
--
-- 'name', 'updateServiceTemplate_name' - The name of the service template to update.
newUpdateServiceTemplate ::
  -- | 'name'
  Prelude.Text ->
  UpdateServiceTemplate
newUpdateServiceTemplate pName_ =
  UpdateServiceTemplate'
    { displayName =
        Prelude.Nothing,
      description = Prelude.Nothing,
      name = pName_
    }

-- | The name of the service template to update that\'s displayed in the
-- developer interface.
updateServiceTemplate_displayName :: Lens.Lens' UpdateServiceTemplate (Prelude.Maybe Prelude.Text)
updateServiceTemplate_displayName = Lens.lens (\UpdateServiceTemplate' {displayName} -> displayName) (\s@UpdateServiceTemplate' {} a -> s {displayName = a} :: UpdateServiceTemplate) Prelude.. Lens.mapping Core._Sensitive

-- | A description of the service template update.
updateServiceTemplate_description :: Lens.Lens' UpdateServiceTemplate (Prelude.Maybe Prelude.Text)
updateServiceTemplate_description = Lens.lens (\UpdateServiceTemplate' {description} -> description) (\s@UpdateServiceTemplate' {} a -> s {description = a} :: UpdateServiceTemplate) Prelude.. Lens.mapping Core._Sensitive

-- | The name of the service template to update.
updateServiceTemplate_name :: Lens.Lens' UpdateServiceTemplate Prelude.Text
updateServiceTemplate_name = Lens.lens (\UpdateServiceTemplate' {name} -> name) (\s@UpdateServiceTemplate' {} a -> s {name = a} :: UpdateServiceTemplate)

instance Core.AWSRequest UpdateServiceTemplate where
  type
    AWSResponse UpdateServiceTemplate =
      UpdateServiceTemplateResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateServiceTemplateResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "serviceTemplate")
      )

instance Prelude.Hashable UpdateServiceTemplate where
  hashWithSalt _salt UpdateServiceTemplate' {..} =
    _salt `Prelude.hashWithSalt` displayName
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` name

instance Prelude.NFData UpdateServiceTemplate where
  rnf UpdateServiceTemplate' {..} =
    Prelude.rnf displayName
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf name

instance Core.ToHeaders UpdateServiceTemplate where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AwsProton20200720.UpdateServiceTemplate" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateServiceTemplate where
  toJSON UpdateServiceTemplate' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("displayName" Core..=) Prelude.<$> displayName,
            ("description" Core..=) Prelude.<$> description,
            Prelude.Just ("name" Core..= name)
          ]
      )

instance Core.ToPath UpdateServiceTemplate where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateServiceTemplate where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateServiceTemplateResponse' smart constructor.
data UpdateServiceTemplateResponse = UpdateServiceTemplateResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The service template detail data that\'s returned by Proton.
    serviceTemplate :: ServiceTemplate
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateServiceTemplateResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateServiceTemplateResponse_httpStatus' - The response's http status code.
--
-- 'serviceTemplate', 'updateServiceTemplateResponse_serviceTemplate' - The service template detail data that\'s returned by Proton.
newUpdateServiceTemplateResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'serviceTemplate'
  ServiceTemplate ->
  UpdateServiceTemplateResponse
newUpdateServiceTemplateResponse
  pHttpStatus_
  pServiceTemplate_ =
    UpdateServiceTemplateResponse'
      { httpStatus =
          pHttpStatus_,
        serviceTemplate = pServiceTemplate_
      }

-- | The response's http status code.
updateServiceTemplateResponse_httpStatus :: Lens.Lens' UpdateServiceTemplateResponse Prelude.Int
updateServiceTemplateResponse_httpStatus = Lens.lens (\UpdateServiceTemplateResponse' {httpStatus} -> httpStatus) (\s@UpdateServiceTemplateResponse' {} a -> s {httpStatus = a} :: UpdateServiceTemplateResponse)

-- | The service template detail data that\'s returned by Proton.
updateServiceTemplateResponse_serviceTemplate :: Lens.Lens' UpdateServiceTemplateResponse ServiceTemplate
updateServiceTemplateResponse_serviceTemplate = Lens.lens (\UpdateServiceTemplateResponse' {serviceTemplate} -> serviceTemplate) (\s@UpdateServiceTemplateResponse' {} a -> s {serviceTemplate = a} :: UpdateServiceTemplateResponse)

instance Prelude.NFData UpdateServiceTemplateResponse where
  rnf UpdateServiceTemplateResponse' {..} =
    Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf serviceTemplate
