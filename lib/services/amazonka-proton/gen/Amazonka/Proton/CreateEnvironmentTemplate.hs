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
-- Module      : Amazonka.Proton.CreateEnvironmentTemplate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create an environment template for Proton. For more information, see
-- <https://docs.aws.amazon.com/proton/latest/adminguide/ag-templates.html Environment Templates>
-- in the /Proton Administrator Guide/.
--
-- You can create an environment template in one of the two following ways:
--
-- -   Register and publish a /standard/ environment template that
--     instructs Proton to deploy and manage environment infrastructure.
--
-- -   Register and publish a /customer managed/ environment template that
--     connects Proton to your existing provisioned infrastructure that you
--     manage. Proton /doesn\'t/ manage your existing provisioned
--     infrastructure. To create an environment template for customer
--     provisioned and managed infrastructure, include the @provisioning@
--     parameter and set the value to @CUSTOMER_MANAGED@. For more
--     information, see
--     <https://docs.aws.amazon.com/proton/latest/adminguide/template-create.html Register and publish an environment template>
--     in the /Proton Administrator Guide/.
module Amazonka.Proton.CreateEnvironmentTemplate
  ( -- * Creating a Request
    CreateEnvironmentTemplate (..),
    newCreateEnvironmentTemplate,

    -- * Request Lenses
    createEnvironmentTemplate_tags,
    createEnvironmentTemplate_provisioning,
    createEnvironmentTemplate_displayName,
    createEnvironmentTemplate_description,
    createEnvironmentTemplate_encryptionKey,
    createEnvironmentTemplate_name,

    -- * Destructuring the Response
    CreateEnvironmentTemplateResponse (..),
    newCreateEnvironmentTemplateResponse,

    -- * Response Lenses
    createEnvironmentTemplateResponse_httpStatus,
    createEnvironmentTemplateResponse_environmentTemplate,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.Proton.Types
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateEnvironmentTemplate' smart constructor.
data CreateEnvironmentTemplate = CreateEnvironmentTemplate'
  { -- | An optional list of metadata items that you can associate with the
    -- Proton environment template. A tag is a key-value pair.
    --
    -- For more information, see /Proton resources and tagging/ in the
    -- <https://docs.aws.amazon.com/proton/latest/adminguide/resources.html Proton Administrator Guide>
    -- or
    -- <https://docs.aws.amazon.com/proton/latest/userguide/resources.html Proton User Guide>.
    tags :: Prelude.Maybe [Tag],
    -- | When included, indicates that the environment template is for customer
    -- provisioned and managed infrastructure.
    provisioning :: Prelude.Maybe Provisioning,
    -- | The environment template name as displayed in the developer interface.
    displayName :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | A description of the environment template.
    description :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | A customer provided encryption key that Proton uses to encrypt data.
    encryptionKey :: Prelude.Maybe Prelude.Text,
    -- | The name of the environment template.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateEnvironmentTemplate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createEnvironmentTemplate_tags' - An optional list of metadata items that you can associate with the
-- Proton environment template. A tag is a key-value pair.
--
-- For more information, see /Proton resources and tagging/ in the
-- <https://docs.aws.amazon.com/proton/latest/adminguide/resources.html Proton Administrator Guide>
-- or
-- <https://docs.aws.amazon.com/proton/latest/userguide/resources.html Proton User Guide>.
--
-- 'provisioning', 'createEnvironmentTemplate_provisioning' - When included, indicates that the environment template is for customer
-- provisioned and managed infrastructure.
--
-- 'displayName', 'createEnvironmentTemplate_displayName' - The environment template name as displayed in the developer interface.
--
-- 'description', 'createEnvironmentTemplate_description' - A description of the environment template.
--
-- 'encryptionKey', 'createEnvironmentTemplate_encryptionKey' - A customer provided encryption key that Proton uses to encrypt data.
--
-- 'name', 'createEnvironmentTemplate_name' - The name of the environment template.
newCreateEnvironmentTemplate ::
  -- | 'name'
  Prelude.Text ->
  CreateEnvironmentTemplate
newCreateEnvironmentTemplate pName_ =
  CreateEnvironmentTemplate'
    { tags = Prelude.Nothing,
      provisioning = Prelude.Nothing,
      displayName = Prelude.Nothing,
      description = Prelude.Nothing,
      encryptionKey = Prelude.Nothing,
      name = pName_
    }

-- | An optional list of metadata items that you can associate with the
-- Proton environment template. A tag is a key-value pair.
--
-- For more information, see /Proton resources and tagging/ in the
-- <https://docs.aws.amazon.com/proton/latest/adminguide/resources.html Proton Administrator Guide>
-- or
-- <https://docs.aws.amazon.com/proton/latest/userguide/resources.html Proton User Guide>.
createEnvironmentTemplate_tags :: Lens.Lens' CreateEnvironmentTemplate (Prelude.Maybe [Tag])
createEnvironmentTemplate_tags = Lens.lens (\CreateEnvironmentTemplate' {tags} -> tags) (\s@CreateEnvironmentTemplate' {} a -> s {tags = a} :: CreateEnvironmentTemplate) Prelude.. Lens.mapping Lens.coerced

-- | When included, indicates that the environment template is for customer
-- provisioned and managed infrastructure.
createEnvironmentTemplate_provisioning :: Lens.Lens' CreateEnvironmentTemplate (Prelude.Maybe Provisioning)
createEnvironmentTemplate_provisioning = Lens.lens (\CreateEnvironmentTemplate' {provisioning} -> provisioning) (\s@CreateEnvironmentTemplate' {} a -> s {provisioning = a} :: CreateEnvironmentTemplate)

-- | The environment template name as displayed in the developer interface.
createEnvironmentTemplate_displayName :: Lens.Lens' CreateEnvironmentTemplate (Prelude.Maybe Prelude.Text)
createEnvironmentTemplate_displayName = Lens.lens (\CreateEnvironmentTemplate' {displayName} -> displayName) (\s@CreateEnvironmentTemplate' {} a -> s {displayName = a} :: CreateEnvironmentTemplate) Prelude.. Lens.mapping Core._Sensitive

-- | A description of the environment template.
createEnvironmentTemplate_description :: Lens.Lens' CreateEnvironmentTemplate (Prelude.Maybe Prelude.Text)
createEnvironmentTemplate_description = Lens.lens (\CreateEnvironmentTemplate' {description} -> description) (\s@CreateEnvironmentTemplate' {} a -> s {description = a} :: CreateEnvironmentTemplate) Prelude.. Lens.mapping Core._Sensitive

-- | A customer provided encryption key that Proton uses to encrypt data.
createEnvironmentTemplate_encryptionKey :: Lens.Lens' CreateEnvironmentTemplate (Prelude.Maybe Prelude.Text)
createEnvironmentTemplate_encryptionKey = Lens.lens (\CreateEnvironmentTemplate' {encryptionKey} -> encryptionKey) (\s@CreateEnvironmentTemplate' {} a -> s {encryptionKey = a} :: CreateEnvironmentTemplate)

-- | The name of the environment template.
createEnvironmentTemplate_name :: Lens.Lens' CreateEnvironmentTemplate Prelude.Text
createEnvironmentTemplate_name = Lens.lens (\CreateEnvironmentTemplate' {name} -> name) (\s@CreateEnvironmentTemplate' {} a -> s {name = a} :: CreateEnvironmentTemplate)

instance Core.AWSRequest CreateEnvironmentTemplate where
  type
    AWSResponse CreateEnvironmentTemplate =
      CreateEnvironmentTemplateResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateEnvironmentTemplateResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "environmentTemplate")
      )

instance Prelude.Hashable CreateEnvironmentTemplate where
  hashWithSalt _salt CreateEnvironmentTemplate' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` provisioning
      `Prelude.hashWithSalt` displayName
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` encryptionKey
      `Prelude.hashWithSalt` name

instance Prelude.NFData CreateEnvironmentTemplate where
  rnf CreateEnvironmentTemplate' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf provisioning
      `Prelude.seq` Prelude.rnf displayName
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf encryptionKey
      `Prelude.seq` Prelude.rnf name

instance Core.ToHeaders CreateEnvironmentTemplate where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AwsProton20200720.CreateEnvironmentTemplate" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateEnvironmentTemplate where
  toJSON CreateEnvironmentTemplate' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("tags" Core..=) Prelude.<$> tags,
            ("provisioning" Core..=) Prelude.<$> provisioning,
            ("displayName" Core..=) Prelude.<$> displayName,
            ("description" Core..=) Prelude.<$> description,
            ("encryptionKey" Core..=) Prelude.<$> encryptionKey,
            Prelude.Just ("name" Core..= name)
          ]
      )

instance Core.ToPath CreateEnvironmentTemplate where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateEnvironmentTemplate where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateEnvironmentTemplateResponse' smart constructor.
data CreateEnvironmentTemplateResponse = CreateEnvironmentTemplateResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The environment template detail data that\'s returned by Proton.
    environmentTemplate :: EnvironmentTemplate
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateEnvironmentTemplateResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'createEnvironmentTemplateResponse_httpStatus' - The response's http status code.
--
-- 'environmentTemplate', 'createEnvironmentTemplateResponse_environmentTemplate' - The environment template detail data that\'s returned by Proton.
newCreateEnvironmentTemplateResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'environmentTemplate'
  EnvironmentTemplate ->
  CreateEnvironmentTemplateResponse
newCreateEnvironmentTemplateResponse
  pHttpStatus_
  pEnvironmentTemplate_ =
    CreateEnvironmentTemplateResponse'
      { httpStatus =
          pHttpStatus_,
        environmentTemplate =
          pEnvironmentTemplate_
      }

-- | The response's http status code.
createEnvironmentTemplateResponse_httpStatus :: Lens.Lens' CreateEnvironmentTemplateResponse Prelude.Int
createEnvironmentTemplateResponse_httpStatus = Lens.lens (\CreateEnvironmentTemplateResponse' {httpStatus} -> httpStatus) (\s@CreateEnvironmentTemplateResponse' {} a -> s {httpStatus = a} :: CreateEnvironmentTemplateResponse)

-- | The environment template detail data that\'s returned by Proton.
createEnvironmentTemplateResponse_environmentTemplate :: Lens.Lens' CreateEnvironmentTemplateResponse EnvironmentTemplate
createEnvironmentTemplateResponse_environmentTemplate = Lens.lens (\CreateEnvironmentTemplateResponse' {environmentTemplate} -> environmentTemplate) (\s@CreateEnvironmentTemplateResponse' {} a -> s {environmentTemplate = a} :: CreateEnvironmentTemplateResponse)

instance
  Prelude.NFData
    CreateEnvironmentTemplateResponse
  where
  rnf CreateEnvironmentTemplateResponse' {..} =
    Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf environmentTemplate
