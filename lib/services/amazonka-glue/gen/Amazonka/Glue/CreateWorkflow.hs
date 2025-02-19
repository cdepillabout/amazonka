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
-- Module      : Amazonka.Glue.CreateWorkflow
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new workflow.
module Amazonka.Glue.CreateWorkflow
  ( -- * Creating a Request
    CreateWorkflow (..),
    newCreateWorkflow,

    -- * Request Lenses
    createWorkflow_tags,
    createWorkflow_maxConcurrentRuns,
    createWorkflow_defaultRunProperties,
    createWorkflow_description,
    createWorkflow_name,

    -- * Destructuring the Response
    CreateWorkflowResponse (..),
    newCreateWorkflowResponse,

    -- * Response Lenses
    createWorkflowResponse_name,
    createWorkflowResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.Glue.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateWorkflow' smart constructor.
data CreateWorkflow = CreateWorkflow'
  { -- | The tags to be used with this workflow.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | You can use this parameter to prevent unwanted multiple updates to data,
    -- to control costs, or in some cases, to prevent exceeding the maximum
    -- number of concurrent runs of any of the component jobs. If you leave
    -- this parameter blank, there is no limit to the number of concurrent
    -- workflow runs.
    maxConcurrentRuns :: Prelude.Maybe Prelude.Int,
    -- | A collection of properties to be used as part of each execution of the
    -- workflow.
    defaultRunProperties :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | A description of the workflow.
    description :: Prelude.Maybe Prelude.Text,
    -- | The name to be assigned to the workflow. It should be unique within your
    -- account.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateWorkflow' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createWorkflow_tags' - The tags to be used with this workflow.
--
-- 'maxConcurrentRuns', 'createWorkflow_maxConcurrentRuns' - You can use this parameter to prevent unwanted multiple updates to data,
-- to control costs, or in some cases, to prevent exceeding the maximum
-- number of concurrent runs of any of the component jobs. If you leave
-- this parameter blank, there is no limit to the number of concurrent
-- workflow runs.
--
-- 'defaultRunProperties', 'createWorkflow_defaultRunProperties' - A collection of properties to be used as part of each execution of the
-- workflow.
--
-- 'description', 'createWorkflow_description' - A description of the workflow.
--
-- 'name', 'createWorkflow_name' - The name to be assigned to the workflow. It should be unique within your
-- account.
newCreateWorkflow ::
  -- | 'name'
  Prelude.Text ->
  CreateWorkflow
newCreateWorkflow pName_ =
  CreateWorkflow'
    { tags = Prelude.Nothing,
      maxConcurrentRuns = Prelude.Nothing,
      defaultRunProperties = Prelude.Nothing,
      description = Prelude.Nothing,
      name = pName_
    }

-- | The tags to be used with this workflow.
createWorkflow_tags :: Lens.Lens' CreateWorkflow (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createWorkflow_tags = Lens.lens (\CreateWorkflow' {tags} -> tags) (\s@CreateWorkflow' {} a -> s {tags = a} :: CreateWorkflow) Prelude.. Lens.mapping Lens.coerced

-- | You can use this parameter to prevent unwanted multiple updates to data,
-- to control costs, or in some cases, to prevent exceeding the maximum
-- number of concurrent runs of any of the component jobs. If you leave
-- this parameter blank, there is no limit to the number of concurrent
-- workflow runs.
createWorkflow_maxConcurrentRuns :: Lens.Lens' CreateWorkflow (Prelude.Maybe Prelude.Int)
createWorkflow_maxConcurrentRuns = Lens.lens (\CreateWorkflow' {maxConcurrentRuns} -> maxConcurrentRuns) (\s@CreateWorkflow' {} a -> s {maxConcurrentRuns = a} :: CreateWorkflow)

-- | A collection of properties to be used as part of each execution of the
-- workflow.
createWorkflow_defaultRunProperties :: Lens.Lens' CreateWorkflow (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createWorkflow_defaultRunProperties = Lens.lens (\CreateWorkflow' {defaultRunProperties} -> defaultRunProperties) (\s@CreateWorkflow' {} a -> s {defaultRunProperties = a} :: CreateWorkflow) Prelude.. Lens.mapping Lens.coerced

-- | A description of the workflow.
createWorkflow_description :: Lens.Lens' CreateWorkflow (Prelude.Maybe Prelude.Text)
createWorkflow_description = Lens.lens (\CreateWorkflow' {description} -> description) (\s@CreateWorkflow' {} a -> s {description = a} :: CreateWorkflow)

-- | The name to be assigned to the workflow. It should be unique within your
-- account.
createWorkflow_name :: Lens.Lens' CreateWorkflow Prelude.Text
createWorkflow_name = Lens.lens (\CreateWorkflow' {name} -> name) (\s@CreateWorkflow' {} a -> s {name = a} :: CreateWorkflow)

instance Core.AWSRequest CreateWorkflow where
  type
    AWSResponse CreateWorkflow =
      CreateWorkflowResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateWorkflowResponse'
            Prelude.<$> (x Core..?> "Name")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateWorkflow where
  hashWithSalt _salt CreateWorkflow' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` maxConcurrentRuns
      `Prelude.hashWithSalt` defaultRunProperties
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` name

instance Prelude.NFData CreateWorkflow where
  rnf CreateWorkflow' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf maxConcurrentRuns
      `Prelude.seq` Prelude.rnf defaultRunProperties
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf name

instance Core.ToHeaders CreateWorkflow where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ("AWSGlue.CreateWorkflow" :: Prelude.ByteString),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateWorkflow where
  toJSON CreateWorkflow' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Tags" Core..=) Prelude.<$> tags,
            ("MaxConcurrentRuns" Core..=)
              Prelude.<$> maxConcurrentRuns,
            ("DefaultRunProperties" Core..=)
              Prelude.<$> defaultRunProperties,
            ("Description" Core..=) Prelude.<$> description,
            Prelude.Just ("Name" Core..= name)
          ]
      )

instance Core.ToPath CreateWorkflow where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateWorkflow where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateWorkflowResponse' smart constructor.
data CreateWorkflowResponse = CreateWorkflowResponse'
  { -- | The name of the workflow which was provided as part of the request.
    name :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateWorkflowResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'createWorkflowResponse_name' - The name of the workflow which was provided as part of the request.
--
-- 'httpStatus', 'createWorkflowResponse_httpStatus' - The response's http status code.
newCreateWorkflowResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateWorkflowResponse
newCreateWorkflowResponse pHttpStatus_ =
  CreateWorkflowResponse'
    { name = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The name of the workflow which was provided as part of the request.
createWorkflowResponse_name :: Lens.Lens' CreateWorkflowResponse (Prelude.Maybe Prelude.Text)
createWorkflowResponse_name = Lens.lens (\CreateWorkflowResponse' {name} -> name) (\s@CreateWorkflowResponse' {} a -> s {name = a} :: CreateWorkflowResponse)

-- | The response's http status code.
createWorkflowResponse_httpStatus :: Lens.Lens' CreateWorkflowResponse Prelude.Int
createWorkflowResponse_httpStatus = Lens.lens (\CreateWorkflowResponse' {httpStatus} -> httpStatus) (\s@CreateWorkflowResponse' {} a -> s {httpStatus = a} :: CreateWorkflowResponse)

instance Prelude.NFData CreateWorkflowResponse where
  rnf CreateWorkflowResponse' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf httpStatus
