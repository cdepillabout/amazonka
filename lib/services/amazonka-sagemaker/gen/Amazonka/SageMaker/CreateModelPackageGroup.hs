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
-- Module      : Amazonka.SageMaker.CreateModelPackageGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a model group. A model group contains a group of model versions.
module Amazonka.SageMaker.CreateModelPackageGroup
  ( -- * Creating a Request
    CreateModelPackageGroup (..),
    newCreateModelPackageGroup,

    -- * Request Lenses
    createModelPackageGroup_tags,
    createModelPackageGroup_modelPackageGroupDescription,
    createModelPackageGroup_modelPackageGroupName,

    -- * Destructuring the Response
    CreateModelPackageGroupResponse (..),
    newCreateModelPackageGroupResponse,

    -- * Response Lenses
    createModelPackageGroupResponse_httpStatus,
    createModelPackageGroupResponse_modelPackageGroupArn,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.SageMaker.Types

-- | /See:/ 'newCreateModelPackageGroup' smart constructor.
data CreateModelPackageGroup = CreateModelPackageGroup'
  { -- | A list of key value pairs associated with the model group. For more
    -- information, see
    -- <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging Amazon Web Services resources>
    -- in the /Amazon Web Services General Reference Guide/.
    tags :: Prelude.Maybe [Tag],
    -- | A description for the model group.
    modelPackageGroupDescription :: Prelude.Maybe Prelude.Text,
    -- | The name of the model group.
    modelPackageGroupName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateModelPackageGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createModelPackageGroup_tags' - A list of key value pairs associated with the model group. For more
-- information, see
-- <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging Amazon Web Services resources>
-- in the /Amazon Web Services General Reference Guide/.
--
-- 'modelPackageGroupDescription', 'createModelPackageGroup_modelPackageGroupDescription' - A description for the model group.
--
-- 'modelPackageGroupName', 'createModelPackageGroup_modelPackageGroupName' - The name of the model group.
newCreateModelPackageGroup ::
  -- | 'modelPackageGroupName'
  Prelude.Text ->
  CreateModelPackageGroup
newCreateModelPackageGroup pModelPackageGroupName_ =
  CreateModelPackageGroup'
    { tags = Prelude.Nothing,
      modelPackageGroupDescription = Prelude.Nothing,
      modelPackageGroupName = pModelPackageGroupName_
    }

-- | A list of key value pairs associated with the model group. For more
-- information, see
-- <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging Amazon Web Services resources>
-- in the /Amazon Web Services General Reference Guide/.
createModelPackageGroup_tags :: Lens.Lens' CreateModelPackageGroup (Prelude.Maybe [Tag])
createModelPackageGroup_tags = Lens.lens (\CreateModelPackageGroup' {tags} -> tags) (\s@CreateModelPackageGroup' {} a -> s {tags = a} :: CreateModelPackageGroup) Prelude.. Lens.mapping Lens.coerced

-- | A description for the model group.
createModelPackageGroup_modelPackageGroupDescription :: Lens.Lens' CreateModelPackageGroup (Prelude.Maybe Prelude.Text)
createModelPackageGroup_modelPackageGroupDescription = Lens.lens (\CreateModelPackageGroup' {modelPackageGroupDescription} -> modelPackageGroupDescription) (\s@CreateModelPackageGroup' {} a -> s {modelPackageGroupDescription = a} :: CreateModelPackageGroup)

-- | The name of the model group.
createModelPackageGroup_modelPackageGroupName :: Lens.Lens' CreateModelPackageGroup Prelude.Text
createModelPackageGroup_modelPackageGroupName = Lens.lens (\CreateModelPackageGroup' {modelPackageGroupName} -> modelPackageGroupName) (\s@CreateModelPackageGroup' {} a -> s {modelPackageGroupName = a} :: CreateModelPackageGroup)

instance Core.AWSRequest CreateModelPackageGroup where
  type
    AWSResponse CreateModelPackageGroup =
      CreateModelPackageGroupResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateModelPackageGroupResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "ModelPackageGroupArn")
      )

instance Prelude.Hashable CreateModelPackageGroup where
  hashWithSalt _salt CreateModelPackageGroup' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` modelPackageGroupDescription
      `Prelude.hashWithSalt` modelPackageGroupName

instance Prelude.NFData CreateModelPackageGroup where
  rnf CreateModelPackageGroup' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf modelPackageGroupDescription
      `Prelude.seq` Prelude.rnf modelPackageGroupName

instance Core.ToHeaders CreateModelPackageGroup where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "SageMaker.CreateModelPackageGroup" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateModelPackageGroup where
  toJSON CreateModelPackageGroup' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Tags" Core..=) Prelude.<$> tags,
            ("ModelPackageGroupDescription" Core..=)
              Prelude.<$> modelPackageGroupDescription,
            Prelude.Just
              ( "ModelPackageGroupName"
                  Core..= modelPackageGroupName
              )
          ]
      )

instance Core.ToPath CreateModelPackageGroup where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateModelPackageGroup where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateModelPackageGroupResponse' smart constructor.
data CreateModelPackageGroupResponse = CreateModelPackageGroupResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The Amazon Resource Name (ARN) of the model group.
    modelPackageGroupArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateModelPackageGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'createModelPackageGroupResponse_httpStatus' - The response's http status code.
--
-- 'modelPackageGroupArn', 'createModelPackageGroupResponse_modelPackageGroupArn' - The Amazon Resource Name (ARN) of the model group.
newCreateModelPackageGroupResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'modelPackageGroupArn'
  Prelude.Text ->
  CreateModelPackageGroupResponse
newCreateModelPackageGroupResponse
  pHttpStatus_
  pModelPackageGroupArn_ =
    CreateModelPackageGroupResponse'
      { httpStatus =
          pHttpStatus_,
        modelPackageGroupArn =
          pModelPackageGroupArn_
      }

-- | The response's http status code.
createModelPackageGroupResponse_httpStatus :: Lens.Lens' CreateModelPackageGroupResponse Prelude.Int
createModelPackageGroupResponse_httpStatus = Lens.lens (\CreateModelPackageGroupResponse' {httpStatus} -> httpStatus) (\s@CreateModelPackageGroupResponse' {} a -> s {httpStatus = a} :: CreateModelPackageGroupResponse)

-- | The Amazon Resource Name (ARN) of the model group.
createModelPackageGroupResponse_modelPackageGroupArn :: Lens.Lens' CreateModelPackageGroupResponse Prelude.Text
createModelPackageGroupResponse_modelPackageGroupArn = Lens.lens (\CreateModelPackageGroupResponse' {modelPackageGroupArn} -> modelPackageGroupArn) (\s@CreateModelPackageGroupResponse' {} a -> s {modelPackageGroupArn = a} :: CreateModelPackageGroupResponse)

instance
  Prelude.NFData
    CreateModelPackageGroupResponse
  where
  rnf CreateModelPackageGroupResponse' {..} =
    Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf modelPackageGroupArn
