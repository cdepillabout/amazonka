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
-- Module      : Amazonka.ApplicationInsights.UpdateComponent
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the custom component name and\/or the list of resources that
-- make up the component.
module Amazonka.ApplicationInsights.UpdateComponent
  ( -- * Creating a Request
    UpdateComponent (..),
    newUpdateComponent,

    -- * Request Lenses
    updateComponent_resourceList,
    updateComponent_newComponentName,
    updateComponent_resourceGroupName,
    updateComponent_componentName,

    -- * Destructuring the Response
    UpdateComponentResponse (..),
    newUpdateComponentResponse,

    -- * Response Lenses
    updateComponentResponse_httpStatus,
  )
where

import Amazonka.ApplicationInsights.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateComponent' smart constructor.
data UpdateComponent = UpdateComponent'
  { -- | The list of resource ARNs that belong to the component.
    resourceList :: Prelude.Maybe [Prelude.Text],
    -- | The new name of the component.
    newComponentName' :: Prelude.Maybe Prelude.Text,
    -- | The name of the resource group.
    resourceGroupName :: Prelude.Text,
    -- | The name of the component.
    componentName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateComponent' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceList', 'updateComponent_resourceList' - The list of resource ARNs that belong to the component.
--
-- 'newComponentName'', 'updateComponent_newComponentName' - The new name of the component.
--
-- 'resourceGroupName', 'updateComponent_resourceGroupName' - The name of the resource group.
--
-- 'componentName', 'updateComponent_componentName' - The name of the component.
newUpdateComponent ::
  -- | 'resourceGroupName'
  Prelude.Text ->
  -- | 'componentName'
  Prelude.Text ->
  UpdateComponent
newUpdateComponent
  pResourceGroupName_
  pComponentName_ =
    UpdateComponent'
      { resourceList = Prelude.Nothing,
        newComponentName' = Prelude.Nothing,
        resourceGroupName = pResourceGroupName_,
        componentName = pComponentName_
      }

-- | The list of resource ARNs that belong to the component.
updateComponent_resourceList :: Lens.Lens' UpdateComponent (Prelude.Maybe [Prelude.Text])
updateComponent_resourceList = Lens.lens (\UpdateComponent' {resourceList} -> resourceList) (\s@UpdateComponent' {} a -> s {resourceList = a} :: UpdateComponent) Prelude.. Lens.mapping Lens.coerced

-- | The new name of the component.
updateComponent_newComponentName :: Lens.Lens' UpdateComponent (Prelude.Maybe Prelude.Text)
updateComponent_newComponentName = Lens.lens (\UpdateComponent' {newComponentName'} -> newComponentName') (\s@UpdateComponent' {} a -> s {newComponentName' = a} :: UpdateComponent)

-- | The name of the resource group.
updateComponent_resourceGroupName :: Lens.Lens' UpdateComponent Prelude.Text
updateComponent_resourceGroupName = Lens.lens (\UpdateComponent' {resourceGroupName} -> resourceGroupName) (\s@UpdateComponent' {} a -> s {resourceGroupName = a} :: UpdateComponent)

-- | The name of the component.
updateComponent_componentName :: Lens.Lens' UpdateComponent Prelude.Text
updateComponent_componentName = Lens.lens (\UpdateComponent' {componentName} -> componentName) (\s@UpdateComponent' {} a -> s {componentName = a} :: UpdateComponent)

instance Core.AWSRequest UpdateComponent where
  type
    AWSResponse UpdateComponent =
      UpdateComponentResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          UpdateComponentResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateComponent where
  hashWithSalt _salt UpdateComponent' {..} =
    _salt `Prelude.hashWithSalt` resourceList
      `Prelude.hashWithSalt` newComponentName'
      `Prelude.hashWithSalt` resourceGroupName
      `Prelude.hashWithSalt` componentName

instance Prelude.NFData UpdateComponent where
  rnf UpdateComponent' {..} =
    Prelude.rnf resourceList
      `Prelude.seq` Prelude.rnf newComponentName'
      `Prelude.seq` Prelude.rnf resourceGroupName
      `Prelude.seq` Prelude.rnf componentName

instance Core.ToHeaders UpdateComponent where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "EC2WindowsBarleyService.UpdateComponent" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateComponent where
  toJSON UpdateComponent' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ResourceList" Core..=) Prelude.<$> resourceList,
            ("NewComponentName" Core..=)
              Prelude.<$> newComponentName',
            Prelude.Just
              ("ResourceGroupName" Core..= resourceGroupName),
            Prelude.Just
              ("ComponentName" Core..= componentName)
          ]
      )

instance Core.ToPath UpdateComponent where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateComponent where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateComponentResponse' smart constructor.
data UpdateComponentResponse = UpdateComponentResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateComponentResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateComponentResponse_httpStatus' - The response's http status code.
newUpdateComponentResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateComponentResponse
newUpdateComponentResponse pHttpStatus_ =
  UpdateComponentResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
updateComponentResponse_httpStatus :: Lens.Lens' UpdateComponentResponse Prelude.Int
updateComponentResponse_httpStatus = Lens.lens (\UpdateComponentResponse' {httpStatus} -> httpStatus) (\s@UpdateComponentResponse' {} a -> s {httpStatus = a} :: UpdateComponentResponse)

instance Prelude.NFData UpdateComponentResponse where
  rnf UpdateComponentResponse' {..} =
    Prelude.rnf httpStatus
