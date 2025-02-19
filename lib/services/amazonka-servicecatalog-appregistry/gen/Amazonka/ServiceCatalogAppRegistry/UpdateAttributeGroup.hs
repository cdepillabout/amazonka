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
-- Module      : Amazonka.ServiceCatalogAppRegistry.UpdateAttributeGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing attribute group with new details.
module Amazonka.ServiceCatalogAppRegistry.UpdateAttributeGroup
  ( -- * Creating a Request
    UpdateAttributeGroup (..),
    newUpdateAttributeGroup,

    -- * Request Lenses
    updateAttributeGroup_name,
    updateAttributeGroup_description,
    updateAttributeGroup_attributes,
    updateAttributeGroup_attributeGroup,

    -- * Destructuring the Response
    UpdateAttributeGroupResponse (..),
    newUpdateAttributeGroupResponse,

    -- * Response Lenses
    updateAttributeGroupResponse_attributeGroup,
    updateAttributeGroupResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.ServiceCatalogAppRegistry.Types

-- | /See:/ 'newUpdateAttributeGroup' smart constructor.
data UpdateAttributeGroup = UpdateAttributeGroup'
  { -- | Deprecated: The new name of the attribute group. The name must be unique
    -- in the region in which you are updating the attribute group. Please do
    -- not use this field as we have stopped supporting name updates.
    name :: Prelude.Maybe Prelude.Text,
    -- | The description of the attribute group that the user provides.
    description :: Prelude.Maybe Prelude.Text,
    -- | A JSON string in the form of nested key-value pairs that represent the
    -- attributes in the group and describes an application and its components.
    attributes :: Prelude.Maybe Prelude.Text,
    -- | The name or ID of the attribute group that holds the attributes to
    -- describe the application.
    attributeGroup :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateAttributeGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'updateAttributeGroup_name' - Deprecated: The new name of the attribute group. The name must be unique
-- in the region in which you are updating the attribute group. Please do
-- not use this field as we have stopped supporting name updates.
--
-- 'description', 'updateAttributeGroup_description' - The description of the attribute group that the user provides.
--
-- 'attributes', 'updateAttributeGroup_attributes' - A JSON string in the form of nested key-value pairs that represent the
-- attributes in the group and describes an application and its components.
--
-- 'attributeGroup', 'updateAttributeGroup_attributeGroup' - The name or ID of the attribute group that holds the attributes to
-- describe the application.
newUpdateAttributeGroup ::
  -- | 'attributeGroup'
  Prelude.Text ->
  UpdateAttributeGroup
newUpdateAttributeGroup pAttributeGroup_ =
  UpdateAttributeGroup'
    { name = Prelude.Nothing,
      description = Prelude.Nothing,
      attributes = Prelude.Nothing,
      attributeGroup = pAttributeGroup_
    }

-- | Deprecated: The new name of the attribute group. The name must be unique
-- in the region in which you are updating the attribute group. Please do
-- not use this field as we have stopped supporting name updates.
updateAttributeGroup_name :: Lens.Lens' UpdateAttributeGroup (Prelude.Maybe Prelude.Text)
updateAttributeGroup_name = Lens.lens (\UpdateAttributeGroup' {name} -> name) (\s@UpdateAttributeGroup' {} a -> s {name = a} :: UpdateAttributeGroup)

-- | The description of the attribute group that the user provides.
updateAttributeGroup_description :: Lens.Lens' UpdateAttributeGroup (Prelude.Maybe Prelude.Text)
updateAttributeGroup_description = Lens.lens (\UpdateAttributeGroup' {description} -> description) (\s@UpdateAttributeGroup' {} a -> s {description = a} :: UpdateAttributeGroup)

-- | A JSON string in the form of nested key-value pairs that represent the
-- attributes in the group and describes an application and its components.
updateAttributeGroup_attributes :: Lens.Lens' UpdateAttributeGroup (Prelude.Maybe Prelude.Text)
updateAttributeGroup_attributes = Lens.lens (\UpdateAttributeGroup' {attributes} -> attributes) (\s@UpdateAttributeGroup' {} a -> s {attributes = a} :: UpdateAttributeGroup)

-- | The name or ID of the attribute group that holds the attributes to
-- describe the application.
updateAttributeGroup_attributeGroup :: Lens.Lens' UpdateAttributeGroup Prelude.Text
updateAttributeGroup_attributeGroup = Lens.lens (\UpdateAttributeGroup' {attributeGroup} -> attributeGroup) (\s@UpdateAttributeGroup' {} a -> s {attributeGroup = a} :: UpdateAttributeGroup)

instance Core.AWSRequest UpdateAttributeGroup where
  type
    AWSResponse UpdateAttributeGroup =
      UpdateAttributeGroupResponse
  request = Request.patchJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateAttributeGroupResponse'
            Prelude.<$> (x Core..?> "attributeGroup")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateAttributeGroup where
  hashWithSalt _salt UpdateAttributeGroup' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` attributes
      `Prelude.hashWithSalt` attributeGroup

instance Prelude.NFData UpdateAttributeGroup where
  rnf UpdateAttributeGroup' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf attributes
      `Prelude.seq` Prelude.rnf attributeGroup

instance Core.ToHeaders UpdateAttributeGroup where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateAttributeGroup where
  toJSON UpdateAttributeGroup' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("name" Core..=) Prelude.<$> name,
            ("description" Core..=) Prelude.<$> description,
            ("attributes" Core..=) Prelude.<$> attributes
          ]
      )

instance Core.ToPath UpdateAttributeGroup where
  toPath UpdateAttributeGroup' {..} =
    Prelude.mconcat
      ["/attribute-groups/", Core.toBS attributeGroup]

instance Core.ToQuery UpdateAttributeGroup where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateAttributeGroupResponse' smart constructor.
data UpdateAttributeGroupResponse = UpdateAttributeGroupResponse'
  { -- | The updated information of the attribute group.
    attributeGroup :: Prelude.Maybe AttributeGroup,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateAttributeGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'attributeGroup', 'updateAttributeGroupResponse_attributeGroup' - The updated information of the attribute group.
--
-- 'httpStatus', 'updateAttributeGroupResponse_httpStatus' - The response's http status code.
newUpdateAttributeGroupResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateAttributeGroupResponse
newUpdateAttributeGroupResponse pHttpStatus_ =
  UpdateAttributeGroupResponse'
    { attributeGroup =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The updated information of the attribute group.
updateAttributeGroupResponse_attributeGroup :: Lens.Lens' UpdateAttributeGroupResponse (Prelude.Maybe AttributeGroup)
updateAttributeGroupResponse_attributeGroup = Lens.lens (\UpdateAttributeGroupResponse' {attributeGroup} -> attributeGroup) (\s@UpdateAttributeGroupResponse' {} a -> s {attributeGroup = a} :: UpdateAttributeGroupResponse)

-- | The response's http status code.
updateAttributeGroupResponse_httpStatus :: Lens.Lens' UpdateAttributeGroupResponse Prelude.Int
updateAttributeGroupResponse_httpStatus = Lens.lens (\UpdateAttributeGroupResponse' {httpStatus} -> httpStatus) (\s@UpdateAttributeGroupResponse' {} a -> s {httpStatus = a} :: UpdateAttributeGroupResponse)

instance Prelude.NFData UpdateAttributeGroupResponse where
  rnf UpdateAttributeGroupResponse' {..} =
    Prelude.rnf attributeGroup
      `Prelude.seq` Prelude.rnf httpStatus
