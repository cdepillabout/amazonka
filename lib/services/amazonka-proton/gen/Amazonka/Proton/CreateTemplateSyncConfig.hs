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
-- Module      : Amazonka.Proton.CreateTemplateSyncConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Set up a template to create new template versions automatically. When a
-- commit is pushed to your registered
-- <https://docs.aws.amazon.com/proton/latest/APIReference/API_Repository.html repository>,
-- Proton checks for changes to your repository template bundles. If it
-- detects a template bundle change, a new major or minor version of its
-- template is created, if the version doesn’t already exist. For more
-- information, see
-- <https://docs.aws.amazon.com/proton/latest/adminguide/ag-template-sync-configs.html Template sync configurations>
-- in the /Proton Administrator Guide/.
module Amazonka.Proton.CreateTemplateSyncConfig
  ( -- * Creating a Request
    CreateTemplateSyncConfig (..),
    newCreateTemplateSyncConfig,

    -- * Request Lenses
    createTemplateSyncConfig_subdirectory,
    createTemplateSyncConfig_branch,
    createTemplateSyncConfig_repositoryName,
    createTemplateSyncConfig_repositoryProvider,
    createTemplateSyncConfig_templateName,
    createTemplateSyncConfig_templateType,

    -- * Destructuring the Response
    CreateTemplateSyncConfigResponse (..),
    newCreateTemplateSyncConfigResponse,

    -- * Response Lenses
    createTemplateSyncConfigResponse_templateSyncConfig,
    createTemplateSyncConfigResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.Proton.Types
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateTemplateSyncConfig' smart constructor.
data CreateTemplateSyncConfig = CreateTemplateSyncConfig'
  { -- | A repository subdirectory path to your template bundle directory. When
    -- included, Proton limits the template bundle search to this repository
    -- directory.
    subdirectory :: Prelude.Maybe Prelude.Text,
    -- | The branch of the registered repository for your template.
    branch :: Prelude.Text,
    -- | The name of your repository (for example, @myrepos\/myrepo@).
    repositoryName :: Prelude.Text,
    -- | The provider type for your repository.
    repositoryProvider :: RepositoryProvider,
    -- | The name of your registered template.
    templateName :: Prelude.Text,
    -- | The type of the registered template.
    templateType :: TemplateType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateTemplateSyncConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'subdirectory', 'createTemplateSyncConfig_subdirectory' - A repository subdirectory path to your template bundle directory. When
-- included, Proton limits the template bundle search to this repository
-- directory.
--
-- 'branch', 'createTemplateSyncConfig_branch' - The branch of the registered repository for your template.
--
-- 'repositoryName', 'createTemplateSyncConfig_repositoryName' - The name of your repository (for example, @myrepos\/myrepo@).
--
-- 'repositoryProvider', 'createTemplateSyncConfig_repositoryProvider' - The provider type for your repository.
--
-- 'templateName', 'createTemplateSyncConfig_templateName' - The name of your registered template.
--
-- 'templateType', 'createTemplateSyncConfig_templateType' - The type of the registered template.
newCreateTemplateSyncConfig ::
  -- | 'branch'
  Prelude.Text ->
  -- | 'repositoryName'
  Prelude.Text ->
  -- | 'repositoryProvider'
  RepositoryProvider ->
  -- | 'templateName'
  Prelude.Text ->
  -- | 'templateType'
  TemplateType ->
  CreateTemplateSyncConfig
newCreateTemplateSyncConfig
  pBranch_
  pRepositoryName_
  pRepositoryProvider_
  pTemplateName_
  pTemplateType_ =
    CreateTemplateSyncConfig'
      { subdirectory =
          Prelude.Nothing,
        branch = pBranch_,
        repositoryName = pRepositoryName_,
        repositoryProvider = pRepositoryProvider_,
        templateName = pTemplateName_,
        templateType = pTemplateType_
      }

-- | A repository subdirectory path to your template bundle directory. When
-- included, Proton limits the template bundle search to this repository
-- directory.
createTemplateSyncConfig_subdirectory :: Lens.Lens' CreateTemplateSyncConfig (Prelude.Maybe Prelude.Text)
createTemplateSyncConfig_subdirectory = Lens.lens (\CreateTemplateSyncConfig' {subdirectory} -> subdirectory) (\s@CreateTemplateSyncConfig' {} a -> s {subdirectory = a} :: CreateTemplateSyncConfig)

-- | The branch of the registered repository for your template.
createTemplateSyncConfig_branch :: Lens.Lens' CreateTemplateSyncConfig Prelude.Text
createTemplateSyncConfig_branch = Lens.lens (\CreateTemplateSyncConfig' {branch} -> branch) (\s@CreateTemplateSyncConfig' {} a -> s {branch = a} :: CreateTemplateSyncConfig)

-- | The name of your repository (for example, @myrepos\/myrepo@).
createTemplateSyncConfig_repositoryName :: Lens.Lens' CreateTemplateSyncConfig Prelude.Text
createTemplateSyncConfig_repositoryName = Lens.lens (\CreateTemplateSyncConfig' {repositoryName} -> repositoryName) (\s@CreateTemplateSyncConfig' {} a -> s {repositoryName = a} :: CreateTemplateSyncConfig)

-- | The provider type for your repository.
createTemplateSyncConfig_repositoryProvider :: Lens.Lens' CreateTemplateSyncConfig RepositoryProvider
createTemplateSyncConfig_repositoryProvider = Lens.lens (\CreateTemplateSyncConfig' {repositoryProvider} -> repositoryProvider) (\s@CreateTemplateSyncConfig' {} a -> s {repositoryProvider = a} :: CreateTemplateSyncConfig)

-- | The name of your registered template.
createTemplateSyncConfig_templateName :: Lens.Lens' CreateTemplateSyncConfig Prelude.Text
createTemplateSyncConfig_templateName = Lens.lens (\CreateTemplateSyncConfig' {templateName} -> templateName) (\s@CreateTemplateSyncConfig' {} a -> s {templateName = a} :: CreateTemplateSyncConfig)

-- | The type of the registered template.
createTemplateSyncConfig_templateType :: Lens.Lens' CreateTemplateSyncConfig TemplateType
createTemplateSyncConfig_templateType = Lens.lens (\CreateTemplateSyncConfig' {templateType} -> templateType) (\s@CreateTemplateSyncConfig' {} a -> s {templateType = a} :: CreateTemplateSyncConfig)

instance Core.AWSRequest CreateTemplateSyncConfig where
  type
    AWSResponse CreateTemplateSyncConfig =
      CreateTemplateSyncConfigResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateTemplateSyncConfigResponse'
            Prelude.<$> (x Core..?> "templateSyncConfig")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateTemplateSyncConfig where
  hashWithSalt _salt CreateTemplateSyncConfig' {..} =
    _salt `Prelude.hashWithSalt` subdirectory
      `Prelude.hashWithSalt` branch
      `Prelude.hashWithSalt` repositoryName
      `Prelude.hashWithSalt` repositoryProvider
      `Prelude.hashWithSalt` templateName
      `Prelude.hashWithSalt` templateType

instance Prelude.NFData CreateTemplateSyncConfig where
  rnf CreateTemplateSyncConfig' {..} =
    Prelude.rnf subdirectory
      `Prelude.seq` Prelude.rnf branch
      `Prelude.seq` Prelude.rnf repositoryName
      `Prelude.seq` Prelude.rnf repositoryProvider
      `Prelude.seq` Prelude.rnf templateName
      `Prelude.seq` Prelude.rnf templateType

instance Core.ToHeaders CreateTemplateSyncConfig where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AwsProton20200720.CreateTemplateSyncConfig" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateTemplateSyncConfig where
  toJSON CreateTemplateSyncConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("subdirectory" Core..=) Prelude.<$> subdirectory,
            Prelude.Just ("branch" Core..= branch),
            Prelude.Just
              ("repositoryName" Core..= repositoryName),
            Prelude.Just
              ("repositoryProvider" Core..= repositoryProvider),
            Prelude.Just ("templateName" Core..= templateName),
            Prelude.Just ("templateType" Core..= templateType)
          ]
      )

instance Core.ToPath CreateTemplateSyncConfig where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateTemplateSyncConfig where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateTemplateSyncConfigResponse' smart constructor.
data CreateTemplateSyncConfigResponse = CreateTemplateSyncConfigResponse'
  { -- | The template sync configuration detail data that\'s returned by Proton.
    templateSyncConfig :: Prelude.Maybe TemplateSyncConfig,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateTemplateSyncConfigResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'templateSyncConfig', 'createTemplateSyncConfigResponse_templateSyncConfig' - The template sync configuration detail data that\'s returned by Proton.
--
-- 'httpStatus', 'createTemplateSyncConfigResponse_httpStatus' - The response's http status code.
newCreateTemplateSyncConfigResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateTemplateSyncConfigResponse
newCreateTemplateSyncConfigResponse pHttpStatus_ =
  CreateTemplateSyncConfigResponse'
    { templateSyncConfig =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The template sync configuration detail data that\'s returned by Proton.
createTemplateSyncConfigResponse_templateSyncConfig :: Lens.Lens' CreateTemplateSyncConfigResponse (Prelude.Maybe TemplateSyncConfig)
createTemplateSyncConfigResponse_templateSyncConfig = Lens.lens (\CreateTemplateSyncConfigResponse' {templateSyncConfig} -> templateSyncConfig) (\s@CreateTemplateSyncConfigResponse' {} a -> s {templateSyncConfig = a} :: CreateTemplateSyncConfigResponse)

-- | The response's http status code.
createTemplateSyncConfigResponse_httpStatus :: Lens.Lens' CreateTemplateSyncConfigResponse Prelude.Int
createTemplateSyncConfigResponse_httpStatus = Lens.lens (\CreateTemplateSyncConfigResponse' {httpStatus} -> httpStatus) (\s@CreateTemplateSyncConfigResponse' {} a -> s {httpStatus = a} :: CreateTemplateSyncConfigResponse)

instance
  Prelude.NFData
    CreateTemplateSyncConfigResponse
  where
  rnf CreateTemplateSyncConfigResponse' {..} =
    Prelude.rnf templateSyncConfig
      `Prelude.seq` Prelude.rnf httpStatus
