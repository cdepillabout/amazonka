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
-- Module      : Amazonka.SageMaker.UpdateImage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the properties of a SageMaker image. To change the image\'s
-- tags, use the AddTags and DeleteTags APIs.
module Amazonka.SageMaker.UpdateImage
  ( -- * Creating a Request
    UpdateImage (..),
    newUpdateImage,

    -- * Request Lenses
    updateImage_roleArn,
    updateImage_displayName,
    updateImage_description,
    updateImage_deleteProperties,
    updateImage_imageName,

    -- * Destructuring the Response
    UpdateImageResponse (..),
    newUpdateImageResponse,

    -- * Response Lenses
    updateImageResponse_imageArn,
    updateImageResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.SageMaker.Types

-- | /See:/ 'newUpdateImage' smart constructor.
data UpdateImage = UpdateImage'
  { -- | The new Amazon Resource Name (ARN) for the IAM role that enables Amazon
    -- SageMaker to perform tasks on your behalf.
    roleArn :: Prelude.Maybe Prelude.Text,
    -- | The new display name for the image.
    displayName :: Prelude.Maybe Prelude.Text,
    -- | The new description for the image.
    description :: Prelude.Maybe Prelude.Text,
    -- | A list of properties to delete. Only the @Description@ and @DisplayName@
    -- properties can be deleted.
    deleteProperties :: Prelude.Maybe [Prelude.Text],
    -- | The name of the image to update.
    imageName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateImage' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'roleArn', 'updateImage_roleArn' - The new Amazon Resource Name (ARN) for the IAM role that enables Amazon
-- SageMaker to perform tasks on your behalf.
--
-- 'displayName', 'updateImage_displayName' - The new display name for the image.
--
-- 'description', 'updateImage_description' - The new description for the image.
--
-- 'deleteProperties', 'updateImage_deleteProperties' - A list of properties to delete. Only the @Description@ and @DisplayName@
-- properties can be deleted.
--
-- 'imageName', 'updateImage_imageName' - The name of the image to update.
newUpdateImage ::
  -- | 'imageName'
  Prelude.Text ->
  UpdateImage
newUpdateImage pImageName_ =
  UpdateImage'
    { roleArn = Prelude.Nothing,
      displayName = Prelude.Nothing,
      description = Prelude.Nothing,
      deleteProperties = Prelude.Nothing,
      imageName = pImageName_
    }

-- | The new Amazon Resource Name (ARN) for the IAM role that enables Amazon
-- SageMaker to perform tasks on your behalf.
updateImage_roleArn :: Lens.Lens' UpdateImage (Prelude.Maybe Prelude.Text)
updateImage_roleArn = Lens.lens (\UpdateImage' {roleArn} -> roleArn) (\s@UpdateImage' {} a -> s {roleArn = a} :: UpdateImage)

-- | The new display name for the image.
updateImage_displayName :: Lens.Lens' UpdateImage (Prelude.Maybe Prelude.Text)
updateImage_displayName = Lens.lens (\UpdateImage' {displayName} -> displayName) (\s@UpdateImage' {} a -> s {displayName = a} :: UpdateImage)

-- | The new description for the image.
updateImage_description :: Lens.Lens' UpdateImage (Prelude.Maybe Prelude.Text)
updateImage_description = Lens.lens (\UpdateImage' {description} -> description) (\s@UpdateImage' {} a -> s {description = a} :: UpdateImage)

-- | A list of properties to delete. Only the @Description@ and @DisplayName@
-- properties can be deleted.
updateImage_deleteProperties :: Lens.Lens' UpdateImage (Prelude.Maybe [Prelude.Text])
updateImage_deleteProperties = Lens.lens (\UpdateImage' {deleteProperties} -> deleteProperties) (\s@UpdateImage' {} a -> s {deleteProperties = a} :: UpdateImage) Prelude.. Lens.mapping Lens.coerced

-- | The name of the image to update.
updateImage_imageName :: Lens.Lens' UpdateImage Prelude.Text
updateImage_imageName = Lens.lens (\UpdateImage' {imageName} -> imageName) (\s@UpdateImage' {} a -> s {imageName = a} :: UpdateImage)

instance Core.AWSRequest UpdateImage where
  type AWSResponse UpdateImage = UpdateImageResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateImageResponse'
            Prelude.<$> (x Core..?> "ImageArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateImage where
  hashWithSalt _salt UpdateImage' {..} =
    _salt `Prelude.hashWithSalt` roleArn
      `Prelude.hashWithSalt` displayName
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` deleteProperties
      `Prelude.hashWithSalt` imageName

instance Prelude.NFData UpdateImage where
  rnf UpdateImage' {..} =
    Prelude.rnf roleArn
      `Prelude.seq` Prelude.rnf displayName
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf deleteProperties
      `Prelude.seq` Prelude.rnf imageName

instance Core.ToHeaders UpdateImage where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ("SageMaker.UpdateImage" :: Prelude.ByteString),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateImage where
  toJSON UpdateImage' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("RoleArn" Core..=) Prelude.<$> roleArn,
            ("DisplayName" Core..=) Prelude.<$> displayName,
            ("Description" Core..=) Prelude.<$> description,
            ("DeleteProperties" Core..=)
              Prelude.<$> deleteProperties,
            Prelude.Just ("ImageName" Core..= imageName)
          ]
      )

instance Core.ToPath UpdateImage where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateImage where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateImageResponse' smart constructor.
data UpdateImageResponse = UpdateImageResponse'
  { -- | The Amazon Resource Name (ARN) of the image.
    imageArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateImageResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'imageArn', 'updateImageResponse_imageArn' - The Amazon Resource Name (ARN) of the image.
--
-- 'httpStatus', 'updateImageResponse_httpStatus' - The response's http status code.
newUpdateImageResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateImageResponse
newUpdateImageResponse pHttpStatus_ =
  UpdateImageResponse'
    { imageArn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The Amazon Resource Name (ARN) of the image.
updateImageResponse_imageArn :: Lens.Lens' UpdateImageResponse (Prelude.Maybe Prelude.Text)
updateImageResponse_imageArn = Lens.lens (\UpdateImageResponse' {imageArn} -> imageArn) (\s@UpdateImageResponse' {} a -> s {imageArn = a} :: UpdateImageResponse)

-- | The response's http status code.
updateImageResponse_httpStatus :: Lens.Lens' UpdateImageResponse Prelude.Int
updateImageResponse_httpStatus = Lens.lens (\UpdateImageResponse' {httpStatus} -> httpStatus) (\s@UpdateImageResponse' {} a -> s {httpStatus = a} :: UpdateImageResponse)

instance Prelude.NFData UpdateImageResponse where
  rnf UpdateImageResponse' {..} =
    Prelude.rnf imageArn
      `Prelude.seq` Prelude.rnf httpStatus
