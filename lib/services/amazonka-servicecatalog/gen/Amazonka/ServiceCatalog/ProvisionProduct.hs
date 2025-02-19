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
-- Module      : Amazonka.ServiceCatalog.ProvisionProduct
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provisions the specified product.
--
-- A provisioned product is a resourced instance of a product. For example,
-- provisioning a product based on a CloudFormation template launches a
-- CloudFormation stack and its underlying resources. You can check the
-- status of this request using DescribeRecord.
--
-- If the request contains a tag key with an empty list of values, there is
-- a tag conflict for that key. Do not include conflicted keys as tags, or
-- this causes the error \"Parameter validation failed: Missing required
-- parameter in Tags[/N/]:/Value/\".
module Amazonka.ServiceCatalog.ProvisionProduct
  ( -- * Creating a Request
    ProvisionProduct (..),
    newProvisionProduct,

    -- * Request Lenses
    provisionProduct_tags,
    provisionProduct_productName,
    provisionProduct_pathId,
    provisionProduct_notificationArns,
    provisionProduct_productId,
    provisionProduct_pathName,
    provisionProduct_provisioningParameters,
    provisionProduct_provisioningPreferences,
    provisionProduct_provisioningArtifactName,
    provisionProduct_provisioningArtifactId,
    provisionProduct_acceptLanguage,
    provisionProduct_provisionedProductName,
    provisionProduct_provisionToken,

    -- * Destructuring the Response
    ProvisionProductResponse (..),
    newProvisionProductResponse,

    -- * Response Lenses
    provisionProductResponse_recordDetail,
    provisionProductResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.ServiceCatalog.Types

-- | /See:/ 'newProvisionProduct' smart constructor.
data ProvisionProduct = ProvisionProduct'
  { -- | One or more tags.
    tags :: Prelude.Maybe [Tag],
    -- | The name of the product. You must provide the name or ID, but not both.
    productName :: Prelude.Maybe Prelude.Text,
    -- | The path identifier of the product. This value is optional if the
    -- product has a default path, and required if the product has more than
    -- one path. To list the paths for a product, use ListLaunchPaths. You must
    -- provide the name or ID, but not both.
    pathId :: Prelude.Maybe Prelude.Text,
    -- | Passed to CloudFormation. The SNS topic ARNs to which to publish
    -- stack-related events.
    notificationArns :: Prelude.Maybe [Prelude.Text],
    -- | The product identifier. You must provide the name or ID, but not both.
    productId :: Prelude.Maybe Prelude.Text,
    -- | The name of the path. You must provide the name or ID, but not both.
    pathName :: Prelude.Maybe Prelude.Text,
    -- | Parameters specified by the administrator that are required for
    -- provisioning the product.
    provisioningParameters :: Prelude.Maybe [ProvisioningParameter],
    -- | An object that contains information about the provisioning preferences
    -- for a stack set.
    provisioningPreferences :: Prelude.Maybe ProvisioningPreferences,
    -- | The name of the provisioning artifact. You must provide the name or ID,
    -- but not both.
    provisioningArtifactName :: Prelude.Maybe Prelude.Text,
    -- | The identifier of the provisioning artifact. You must provide the name
    -- or ID, but not both.
    provisioningArtifactId :: Prelude.Maybe Prelude.Text,
    -- | The language code.
    --
    -- -   @en@ - English (default)
    --
    -- -   @jp@ - Japanese
    --
    -- -   @zh@ - Chinese
    acceptLanguage :: Prelude.Maybe Prelude.Text,
    -- | A user-friendly name for the provisioned product. This value must be
    -- unique for the Amazon Web Services account and cannot be updated after
    -- the product is provisioned.
    provisionedProductName :: Prelude.Text,
    -- | An idempotency token that uniquely identifies the provisioning request.
    provisionToken :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ProvisionProduct' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'provisionProduct_tags' - One or more tags.
--
-- 'productName', 'provisionProduct_productName' - The name of the product. You must provide the name or ID, but not both.
--
-- 'pathId', 'provisionProduct_pathId' - The path identifier of the product. This value is optional if the
-- product has a default path, and required if the product has more than
-- one path. To list the paths for a product, use ListLaunchPaths. You must
-- provide the name or ID, but not both.
--
-- 'notificationArns', 'provisionProduct_notificationArns' - Passed to CloudFormation. The SNS topic ARNs to which to publish
-- stack-related events.
--
-- 'productId', 'provisionProduct_productId' - The product identifier. You must provide the name or ID, but not both.
--
-- 'pathName', 'provisionProduct_pathName' - The name of the path. You must provide the name or ID, but not both.
--
-- 'provisioningParameters', 'provisionProduct_provisioningParameters' - Parameters specified by the administrator that are required for
-- provisioning the product.
--
-- 'provisioningPreferences', 'provisionProduct_provisioningPreferences' - An object that contains information about the provisioning preferences
-- for a stack set.
--
-- 'provisioningArtifactName', 'provisionProduct_provisioningArtifactName' - The name of the provisioning artifact. You must provide the name or ID,
-- but not both.
--
-- 'provisioningArtifactId', 'provisionProduct_provisioningArtifactId' - The identifier of the provisioning artifact. You must provide the name
-- or ID, but not both.
--
-- 'acceptLanguage', 'provisionProduct_acceptLanguage' - The language code.
--
-- -   @en@ - English (default)
--
-- -   @jp@ - Japanese
--
-- -   @zh@ - Chinese
--
-- 'provisionedProductName', 'provisionProduct_provisionedProductName' - A user-friendly name for the provisioned product. This value must be
-- unique for the Amazon Web Services account and cannot be updated after
-- the product is provisioned.
--
-- 'provisionToken', 'provisionProduct_provisionToken' - An idempotency token that uniquely identifies the provisioning request.
newProvisionProduct ::
  -- | 'provisionedProductName'
  Prelude.Text ->
  -- | 'provisionToken'
  Prelude.Text ->
  ProvisionProduct
newProvisionProduct
  pProvisionedProductName_
  pProvisionToken_ =
    ProvisionProduct'
      { tags = Prelude.Nothing,
        productName = Prelude.Nothing,
        pathId = Prelude.Nothing,
        notificationArns = Prelude.Nothing,
        productId = Prelude.Nothing,
        pathName = Prelude.Nothing,
        provisioningParameters = Prelude.Nothing,
        provisioningPreferences = Prelude.Nothing,
        provisioningArtifactName = Prelude.Nothing,
        provisioningArtifactId = Prelude.Nothing,
        acceptLanguage = Prelude.Nothing,
        provisionedProductName = pProvisionedProductName_,
        provisionToken = pProvisionToken_
      }

-- | One or more tags.
provisionProduct_tags :: Lens.Lens' ProvisionProduct (Prelude.Maybe [Tag])
provisionProduct_tags = Lens.lens (\ProvisionProduct' {tags} -> tags) (\s@ProvisionProduct' {} a -> s {tags = a} :: ProvisionProduct) Prelude.. Lens.mapping Lens.coerced

-- | The name of the product. You must provide the name or ID, but not both.
provisionProduct_productName :: Lens.Lens' ProvisionProduct (Prelude.Maybe Prelude.Text)
provisionProduct_productName = Lens.lens (\ProvisionProduct' {productName} -> productName) (\s@ProvisionProduct' {} a -> s {productName = a} :: ProvisionProduct)

-- | The path identifier of the product. This value is optional if the
-- product has a default path, and required if the product has more than
-- one path. To list the paths for a product, use ListLaunchPaths. You must
-- provide the name or ID, but not both.
provisionProduct_pathId :: Lens.Lens' ProvisionProduct (Prelude.Maybe Prelude.Text)
provisionProduct_pathId = Lens.lens (\ProvisionProduct' {pathId} -> pathId) (\s@ProvisionProduct' {} a -> s {pathId = a} :: ProvisionProduct)

-- | Passed to CloudFormation. The SNS topic ARNs to which to publish
-- stack-related events.
provisionProduct_notificationArns :: Lens.Lens' ProvisionProduct (Prelude.Maybe [Prelude.Text])
provisionProduct_notificationArns = Lens.lens (\ProvisionProduct' {notificationArns} -> notificationArns) (\s@ProvisionProduct' {} a -> s {notificationArns = a} :: ProvisionProduct) Prelude.. Lens.mapping Lens.coerced

-- | The product identifier. You must provide the name or ID, but not both.
provisionProduct_productId :: Lens.Lens' ProvisionProduct (Prelude.Maybe Prelude.Text)
provisionProduct_productId = Lens.lens (\ProvisionProduct' {productId} -> productId) (\s@ProvisionProduct' {} a -> s {productId = a} :: ProvisionProduct)

-- | The name of the path. You must provide the name or ID, but not both.
provisionProduct_pathName :: Lens.Lens' ProvisionProduct (Prelude.Maybe Prelude.Text)
provisionProduct_pathName = Lens.lens (\ProvisionProduct' {pathName} -> pathName) (\s@ProvisionProduct' {} a -> s {pathName = a} :: ProvisionProduct)

-- | Parameters specified by the administrator that are required for
-- provisioning the product.
provisionProduct_provisioningParameters :: Lens.Lens' ProvisionProduct (Prelude.Maybe [ProvisioningParameter])
provisionProduct_provisioningParameters = Lens.lens (\ProvisionProduct' {provisioningParameters} -> provisioningParameters) (\s@ProvisionProduct' {} a -> s {provisioningParameters = a} :: ProvisionProduct) Prelude.. Lens.mapping Lens.coerced

-- | An object that contains information about the provisioning preferences
-- for a stack set.
provisionProduct_provisioningPreferences :: Lens.Lens' ProvisionProduct (Prelude.Maybe ProvisioningPreferences)
provisionProduct_provisioningPreferences = Lens.lens (\ProvisionProduct' {provisioningPreferences} -> provisioningPreferences) (\s@ProvisionProduct' {} a -> s {provisioningPreferences = a} :: ProvisionProduct)

-- | The name of the provisioning artifact. You must provide the name or ID,
-- but not both.
provisionProduct_provisioningArtifactName :: Lens.Lens' ProvisionProduct (Prelude.Maybe Prelude.Text)
provisionProduct_provisioningArtifactName = Lens.lens (\ProvisionProduct' {provisioningArtifactName} -> provisioningArtifactName) (\s@ProvisionProduct' {} a -> s {provisioningArtifactName = a} :: ProvisionProduct)

-- | The identifier of the provisioning artifact. You must provide the name
-- or ID, but not both.
provisionProduct_provisioningArtifactId :: Lens.Lens' ProvisionProduct (Prelude.Maybe Prelude.Text)
provisionProduct_provisioningArtifactId = Lens.lens (\ProvisionProduct' {provisioningArtifactId} -> provisioningArtifactId) (\s@ProvisionProduct' {} a -> s {provisioningArtifactId = a} :: ProvisionProduct)

-- | The language code.
--
-- -   @en@ - English (default)
--
-- -   @jp@ - Japanese
--
-- -   @zh@ - Chinese
provisionProduct_acceptLanguage :: Lens.Lens' ProvisionProduct (Prelude.Maybe Prelude.Text)
provisionProduct_acceptLanguage = Lens.lens (\ProvisionProduct' {acceptLanguage} -> acceptLanguage) (\s@ProvisionProduct' {} a -> s {acceptLanguage = a} :: ProvisionProduct)

-- | A user-friendly name for the provisioned product. This value must be
-- unique for the Amazon Web Services account and cannot be updated after
-- the product is provisioned.
provisionProduct_provisionedProductName :: Lens.Lens' ProvisionProduct Prelude.Text
provisionProduct_provisionedProductName = Lens.lens (\ProvisionProduct' {provisionedProductName} -> provisionedProductName) (\s@ProvisionProduct' {} a -> s {provisionedProductName = a} :: ProvisionProduct)

-- | An idempotency token that uniquely identifies the provisioning request.
provisionProduct_provisionToken :: Lens.Lens' ProvisionProduct Prelude.Text
provisionProduct_provisionToken = Lens.lens (\ProvisionProduct' {provisionToken} -> provisionToken) (\s@ProvisionProduct' {} a -> s {provisionToken = a} :: ProvisionProduct)

instance Core.AWSRequest ProvisionProduct where
  type
    AWSResponse ProvisionProduct =
      ProvisionProductResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ProvisionProductResponse'
            Prelude.<$> (x Core..?> "RecordDetail")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ProvisionProduct where
  hashWithSalt _salt ProvisionProduct' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` productName
      `Prelude.hashWithSalt` pathId
      `Prelude.hashWithSalt` notificationArns
      `Prelude.hashWithSalt` productId
      `Prelude.hashWithSalt` pathName
      `Prelude.hashWithSalt` provisioningParameters
      `Prelude.hashWithSalt` provisioningPreferences
      `Prelude.hashWithSalt` provisioningArtifactName
      `Prelude.hashWithSalt` provisioningArtifactId
      `Prelude.hashWithSalt` acceptLanguage
      `Prelude.hashWithSalt` provisionedProductName
      `Prelude.hashWithSalt` provisionToken

instance Prelude.NFData ProvisionProduct where
  rnf ProvisionProduct' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf productName
      `Prelude.seq` Prelude.rnf pathId
      `Prelude.seq` Prelude.rnf notificationArns
      `Prelude.seq` Prelude.rnf productId
      `Prelude.seq` Prelude.rnf pathName
      `Prelude.seq` Prelude.rnf provisioningParameters
      `Prelude.seq` Prelude.rnf provisioningPreferences
      `Prelude.seq` Prelude.rnf provisioningArtifactName
      `Prelude.seq` Prelude.rnf provisioningArtifactId
      `Prelude.seq` Prelude.rnf acceptLanguage
      `Prelude.seq` Prelude.rnf provisionedProductName
      `Prelude.seq` Prelude.rnf provisionToken

instance Core.ToHeaders ProvisionProduct where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWS242ServiceCatalogService.ProvisionProduct" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ProvisionProduct where
  toJSON ProvisionProduct' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Tags" Core..=) Prelude.<$> tags,
            ("ProductName" Core..=) Prelude.<$> productName,
            ("PathId" Core..=) Prelude.<$> pathId,
            ("NotificationArns" Core..=)
              Prelude.<$> notificationArns,
            ("ProductId" Core..=) Prelude.<$> productId,
            ("PathName" Core..=) Prelude.<$> pathName,
            ("ProvisioningParameters" Core..=)
              Prelude.<$> provisioningParameters,
            ("ProvisioningPreferences" Core..=)
              Prelude.<$> provisioningPreferences,
            ("ProvisioningArtifactName" Core..=)
              Prelude.<$> provisioningArtifactName,
            ("ProvisioningArtifactId" Core..=)
              Prelude.<$> provisioningArtifactId,
            ("AcceptLanguage" Core..=)
              Prelude.<$> acceptLanguage,
            Prelude.Just
              ( "ProvisionedProductName"
                  Core..= provisionedProductName
              ),
            Prelude.Just
              ("ProvisionToken" Core..= provisionToken)
          ]
      )

instance Core.ToPath ProvisionProduct where
  toPath = Prelude.const "/"

instance Core.ToQuery ProvisionProduct where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newProvisionProductResponse' smart constructor.
data ProvisionProductResponse = ProvisionProductResponse'
  { -- | Information about the result of provisioning the product.
    recordDetail :: Prelude.Maybe RecordDetail,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ProvisionProductResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'recordDetail', 'provisionProductResponse_recordDetail' - Information about the result of provisioning the product.
--
-- 'httpStatus', 'provisionProductResponse_httpStatus' - The response's http status code.
newProvisionProductResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ProvisionProductResponse
newProvisionProductResponse pHttpStatus_ =
  ProvisionProductResponse'
    { recordDetail =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the result of provisioning the product.
provisionProductResponse_recordDetail :: Lens.Lens' ProvisionProductResponse (Prelude.Maybe RecordDetail)
provisionProductResponse_recordDetail = Lens.lens (\ProvisionProductResponse' {recordDetail} -> recordDetail) (\s@ProvisionProductResponse' {} a -> s {recordDetail = a} :: ProvisionProductResponse)

-- | The response's http status code.
provisionProductResponse_httpStatus :: Lens.Lens' ProvisionProductResponse Prelude.Int
provisionProductResponse_httpStatus = Lens.lens (\ProvisionProductResponse' {httpStatus} -> httpStatus) (\s@ProvisionProductResponse' {} a -> s {httpStatus = a} :: ProvisionProductResponse)

instance Prelude.NFData ProvisionProductResponse where
  rnf ProvisionProductResponse' {..} =
    Prelude.rnf recordDetail
      `Prelude.seq` Prelude.rnf httpStatus
