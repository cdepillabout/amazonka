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
-- Module      : Amazonka.ServiceCatalog.CreateProduct
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a product.
--
-- A delegated admin is authorized to invoke this command.
--
-- The user or role that performs this operation must have the
-- @cloudformation:GetTemplate@ IAM policy permission. This policy
-- permission is required when using the @ImportFromPhysicalId@ template
-- source in the information data section.
module Amazonka.ServiceCatalog.CreateProduct
  ( -- * Creating a Request
    CreateProduct (..),
    newCreateProduct,

    -- * Request Lenses
    createProduct_tags,
    createProduct_supportDescription,
    createProduct_supportEmail,
    createProduct_supportUrl,
    createProduct_description,
    createProduct_distributor,
    createProduct_acceptLanguage,
    createProduct_name,
    createProduct_owner,
    createProduct_productType,
    createProduct_provisioningArtifactParameters,
    createProduct_idempotencyToken,

    -- * Destructuring the Response
    CreateProductResponse (..),
    newCreateProductResponse,

    -- * Response Lenses
    createProductResponse_tags,
    createProductResponse_productViewDetail,
    createProductResponse_provisioningArtifactDetail,
    createProductResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.ServiceCatalog.Types

-- | /See:/ 'newCreateProduct' smart constructor.
data CreateProduct = CreateProduct'
  { -- | One or more tags.
    tags :: Prelude.Maybe [Tag],
    -- | The support information about the product.
    supportDescription :: Prelude.Maybe Prelude.Text,
    -- | The contact email for product support.
    supportEmail :: Prelude.Maybe Prelude.Text,
    -- | The contact URL for product support.
    --
    -- @^https?:\\\/\\\/\/ @\/ is the pattern used to validate SupportUrl.
    supportUrl :: Prelude.Maybe Prelude.Text,
    -- | The description of the product.
    description :: Prelude.Maybe Prelude.Text,
    -- | The distributor of the product.
    distributor :: Prelude.Maybe Prelude.Text,
    -- | The language code.
    --
    -- -   @en@ - English (default)
    --
    -- -   @jp@ - Japanese
    --
    -- -   @zh@ - Chinese
    acceptLanguage :: Prelude.Maybe Prelude.Text,
    -- | The name of the product.
    name :: Prelude.Text,
    -- | The owner of the product.
    owner :: Prelude.Text,
    -- | The type of product.
    productType :: ProductType,
    -- | The configuration of the provisioning artifact.
    provisioningArtifactParameters :: ProvisioningArtifactProperties,
    -- | A unique identifier that you provide to ensure idempotency. If multiple
    -- requests differ only by the idempotency token, the same response is
    -- returned for each repeated request.
    idempotencyToken :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateProduct' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createProduct_tags' - One or more tags.
--
-- 'supportDescription', 'createProduct_supportDescription' - The support information about the product.
--
-- 'supportEmail', 'createProduct_supportEmail' - The contact email for product support.
--
-- 'supportUrl', 'createProduct_supportUrl' - The contact URL for product support.
--
-- @^https?:\\\/\\\/\/ @\/ is the pattern used to validate SupportUrl.
--
-- 'description', 'createProduct_description' - The description of the product.
--
-- 'distributor', 'createProduct_distributor' - The distributor of the product.
--
-- 'acceptLanguage', 'createProduct_acceptLanguage' - The language code.
--
-- -   @en@ - English (default)
--
-- -   @jp@ - Japanese
--
-- -   @zh@ - Chinese
--
-- 'name', 'createProduct_name' - The name of the product.
--
-- 'owner', 'createProduct_owner' - The owner of the product.
--
-- 'productType', 'createProduct_productType' - The type of product.
--
-- 'provisioningArtifactParameters', 'createProduct_provisioningArtifactParameters' - The configuration of the provisioning artifact.
--
-- 'idempotencyToken', 'createProduct_idempotencyToken' - A unique identifier that you provide to ensure idempotency. If multiple
-- requests differ only by the idempotency token, the same response is
-- returned for each repeated request.
newCreateProduct ::
  -- | 'name'
  Prelude.Text ->
  -- | 'owner'
  Prelude.Text ->
  -- | 'productType'
  ProductType ->
  -- | 'provisioningArtifactParameters'
  ProvisioningArtifactProperties ->
  -- | 'idempotencyToken'
  Prelude.Text ->
  CreateProduct
newCreateProduct
  pName_
  pOwner_
  pProductType_
  pProvisioningArtifactParameters_
  pIdempotencyToken_ =
    CreateProduct'
      { tags = Prelude.Nothing,
        supportDescription = Prelude.Nothing,
        supportEmail = Prelude.Nothing,
        supportUrl = Prelude.Nothing,
        description = Prelude.Nothing,
        distributor = Prelude.Nothing,
        acceptLanguage = Prelude.Nothing,
        name = pName_,
        owner = pOwner_,
        productType = pProductType_,
        provisioningArtifactParameters =
          pProvisioningArtifactParameters_,
        idempotencyToken = pIdempotencyToken_
      }

-- | One or more tags.
createProduct_tags :: Lens.Lens' CreateProduct (Prelude.Maybe [Tag])
createProduct_tags = Lens.lens (\CreateProduct' {tags} -> tags) (\s@CreateProduct' {} a -> s {tags = a} :: CreateProduct) Prelude.. Lens.mapping Lens.coerced

-- | The support information about the product.
createProduct_supportDescription :: Lens.Lens' CreateProduct (Prelude.Maybe Prelude.Text)
createProduct_supportDescription = Lens.lens (\CreateProduct' {supportDescription} -> supportDescription) (\s@CreateProduct' {} a -> s {supportDescription = a} :: CreateProduct)

-- | The contact email for product support.
createProduct_supportEmail :: Lens.Lens' CreateProduct (Prelude.Maybe Prelude.Text)
createProduct_supportEmail = Lens.lens (\CreateProduct' {supportEmail} -> supportEmail) (\s@CreateProduct' {} a -> s {supportEmail = a} :: CreateProduct)

-- | The contact URL for product support.
--
-- @^https?:\\\/\\\/\/ @\/ is the pattern used to validate SupportUrl.
createProduct_supportUrl :: Lens.Lens' CreateProduct (Prelude.Maybe Prelude.Text)
createProduct_supportUrl = Lens.lens (\CreateProduct' {supportUrl} -> supportUrl) (\s@CreateProduct' {} a -> s {supportUrl = a} :: CreateProduct)

-- | The description of the product.
createProduct_description :: Lens.Lens' CreateProduct (Prelude.Maybe Prelude.Text)
createProduct_description = Lens.lens (\CreateProduct' {description} -> description) (\s@CreateProduct' {} a -> s {description = a} :: CreateProduct)

-- | The distributor of the product.
createProduct_distributor :: Lens.Lens' CreateProduct (Prelude.Maybe Prelude.Text)
createProduct_distributor = Lens.lens (\CreateProduct' {distributor} -> distributor) (\s@CreateProduct' {} a -> s {distributor = a} :: CreateProduct)

-- | The language code.
--
-- -   @en@ - English (default)
--
-- -   @jp@ - Japanese
--
-- -   @zh@ - Chinese
createProduct_acceptLanguage :: Lens.Lens' CreateProduct (Prelude.Maybe Prelude.Text)
createProduct_acceptLanguage = Lens.lens (\CreateProduct' {acceptLanguage} -> acceptLanguage) (\s@CreateProduct' {} a -> s {acceptLanguage = a} :: CreateProduct)

-- | The name of the product.
createProduct_name :: Lens.Lens' CreateProduct Prelude.Text
createProduct_name = Lens.lens (\CreateProduct' {name} -> name) (\s@CreateProduct' {} a -> s {name = a} :: CreateProduct)

-- | The owner of the product.
createProduct_owner :: Lens.Lens' CreateProduct Prelude.Text
createProduct_owner = Lens.lens (\CreateProduct' {owner} -> owner) (\s@CreateProduct' {} a -> s {owner = a} :: CreateProduct)

-- | The type of product.
createProduct_productType :: Lens.Lens' CreateProduct ProductType
createProduct_productType = Lens.lens (\CreateProduct' {productType} -> productType) (\s@CreateProduct' {} a -> s {productType = a} :: CreateProduct)

-- | The configuration of the provisioning artifact.
createProduct_provisioningArtifactParameters :: Lens.Lens' CreateProduct ProvisioningArtifactProperties
createProduct_provisioningArtifactParameters = Lens.lens (\CreateProduct' {provisioningArtifactParameters} -> provisioningArtifactParameters) (\s@CreateProduct' {} a -> s {provisioningArtifactParameters = a} :: CreateProduct)

-- | A unique identifier that you provide to ensure idempotency. If multiple
-- requests differ only by the idempotency token, the same response is
-- returned for each repeated request.
createProduct_idempotencyToken :: Lens.Lens' CreateProduct Prelude.Text
createProduct_idempotencyToken = Lens.lens (\CreateProduct' {idempotencyToken} -> idempotencyToken) (\s@CreateProduct' {} a -> s {idempotencyToken = a} :: CreateProduct)

instance Core.AWSRequest CreateProduct where
  type
    AWSResponse CreateProduct =
      CreateProductResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateProductResponse'
            Prelude.<$> (x Core..?> "Tags" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "ProductViewDetail")
            Prelude.<*> (x Core..?> "ProvisioningArtifactDetail")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateProduct where
  hashWithSalt _salt CreateProduct' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` supportDescription
      `Prelude.hashWithSalt` supportEmail
      `Prelude.hashWithSalt` supportUrl
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` distributor
      `Prelude.hashWithSalt` acceptLanguage
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` owner
      `Prelude.hashWithSalt` productType
      `Prelude.hashWithSalt` provisioningArtifactParameters
      `Prelude.hashWithSalt` idempotencyToken

instance Prelude.NFData CreateProduct where
  rnf CreateProduct' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf supportDescription
      `Prelude.seq` Prelude.rnf supportEmail
      `Prelude.seq` Prelude.rnf supportUrl
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf distributor
      `Prelude.seq` Prelude.rnf acceptLanguage
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf owner
      `Prelude.seq` Prelude.rnf productType
      `Prelude.seq` Prelude.rnf provisioningArtifactParameters
      `Prelude.seq` Prelude.rnf idempotencyToken

instance Core.ToHeaders CreateProduct where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWS242ServiceCatalogService.CreateProduct" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateProduct where
  toJSON CreateProduct' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Tags" Core..=) Prelude.<$> tags,
            ("SupportDescription" Core..=)
              Prelude.<$> supportDescription,
            ("SupportEmail" Core..=) Prelude.<$> supportEmail,
            ("SupportUrl" Core..=) Prelude.<$> supportUrl,
            ("Description" Core..=) Prelude.<$> description,
            ("Distributor" Core..=) Prelude.<$> distributor,
            ("AcceptLanguage" Core..=)
              Prelude.<$> acceptLanguage,
            Prelude.Just ("Name" Core..= name),
            Prelude.Just ("Owner" Core..= owner),
            Prelude.Just ("ProductType" Core..= productType),
            Prelude.Just
              ( "ProvisioningArtifactParameters"
                  Core..= provisioningArtifactParameters
              ),
            Prelude.Just
              ("IdempotencyToken" Core..= idempotencyToken)
          ]
      )

instance Core.ToPath CreateProduct where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateProduct where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateProductResponse' smart constructor.
data CreateProductResponse = CreateProductResponse'
  { -- | Information about the tags associated with the product.
    tags :: Prelude.Maybe [Tag],
    -- | Information about the product view.
    productViewDetail :: Prelude.Maybe ProductViewDetail,
    -- | Information about the provisioning artifact.
    provisioningArtifactDetail :: Prelude.Maybe ProvisioningArtifactDetail,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateProductResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createProductResponse_tags' - Information about the tags associated with the product.
--
-- 'productViewDetail', 'createProductResponse_productViewDetail' - Information about the product view.
--
-- 'provisioningArtifactDetail', 'createProductResponse_provisioningArtifactDetail' - Information about the provisioning artifact.
--
-- 'httpStatus', 'createProductResponse_httpStatus' - The response's http status code.
newCreateProductResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateProductResponse
newCreateProductResponse pHttpStatus_ =
  CreateProductResponse'
    { tags = Prelude.Nothing,
      productViewDetail = Prelude.Nothing,
      provisioningArtifactDetail = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the tags associated with the product.
createProductResponse_tags :: Lens.Lens' CreateProductResponse (Prelude.Maybe [Tag])
createProductResponse_tags = Lens.lens (\CreateProductResponse' {tags} -> tags) (\s@CreateProductResponse' {} a -> s {tags = a} :: CreateProductResponse) Prelude.. Lens.mapping Lens.coerced

-- | Information about the product view.
createProductResponse_productViewDetail :: Lens.Lens' CreateProductResponse (Prelude.Maybe ProductViewDetail)
createProductResponse_productViewDetail = Lens.lens (\CreateProductResponse' {productViewDetail} -> productViewDetail) (\s@CreateProductResponse' {} a -> s {productViewDetail = a} :: CreateProductResponse)

-- | Information about the provisioning artifact.
createProductResponse_provisioningArtifactDetail :: Lens.Lens' CreateProductResponse (Prelude.Maybe ProvisioningArtifactDetail)
createProductResponse_provisioningArtifactDetail = Lens.lens (\CreateProductResponse' {provisioningArtifactDetail} -> provisioningArtifactDetail) (\s@CreateProductResponse' {} a -> s {provisioningArtifactDetail = a} :: CreateProductResponse)

-- | The response's http status code.
createProductResponse_httpStatus :: Lens.Lens' CreateProductResponse Prelude.Int
createProductResponse_httpStatus = Lens.lens (\CreateProductResponse' {httpStatus} -> httpStatus) (\s@CreateProductResponse' {} a -> s {httpStatus = a} :: CreateProductResponse)

instance Prelude.NFData CreateProductResponse where
  rnf CreateProductResponse' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf productViewDetail
      `Prelude.seq` Prelude.rnf provisioningArtifactDetail
      `Prelude.seq` Prelude.rnf httpStatus
