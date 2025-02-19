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
-- Module      : Amazonka.ECS.DescribeTasks
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes a specified task or tasks.
--
-- Currently, stopped tasks appear in the returned results for at least one
-- hour.
module Amazonka.ECS.DescribeTasks
  ( -- * Creating a Request
    DescribeTasks (..),
    newDescribeTasks,

    -- * Request Lenses
    describeTasks_cluster,
    describeTasks_include,
    describeTasks_tasks,

    -- * Destructuring the Response
    DescribeTasksResponse (..),
    newDescribeTasksResponse,

    -- * Response Lenses
    describeTasksResponse_tasks,
    describeTasksResponse_failures,
    describeTasksResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.ECS.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDescribeTasks' smart constructor.
data DescribeTasks = DescribeTasks'
  { -- | The short name or full Amazon Resource Name (ARN) of the cluster that
    -- hosts the task or tasks to describe. If you do not specify a cluster,
    -- the default cluster is assumed. This parameter is required if the task
    -- or tasks you are describing were launched in any cluster other than the
    -- default cluster.
    cluster :: Prelude.Maybe Prelude.Text,
    -- | Specifies whether you want to see the resource tags for the task. If
    -- @TAGS@ is specified, the tags are included in the response. If this
    -- field is omitted, tags aren\'t included in the response.
    include :: Prelude.Maybe [TaskField],
    -- | A list of up to 100 task IDs or full ARN entries.
    tasks :: [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeTasks' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'cluster', 'describeTasks_cluster' - The short name or full Amazon Resource Name (ARN) of the cluster that
-- hosts the task or tasks to describe. If you do not specify a cluster,
-- the default cluster is assumed. This parameter is required if the task
-- or tasks you are describing were launched in any cluster other than the
-- default cluster.
--
-- 'include', 'describeTasks_include' - Specifies whether you want to see the resource tags for the task. If
-- @TAGS@ is specified, the tags are included in the response. If this
-- field is omitted, tags aren\'t included in the response.
--
-- 'tasks', 'describeTasks_tasks' - A list of up to 100 task IDs or full ARN entries.
newDescribeTasks ::
  DescribeTasks
newDescribeTasks =
  DescribeTasks'
    { cluster = Prelude.Nothing,
      include = Prelude.Nothing,
      tasks = Prelude.mempty
    }

-- | The short name or full Amazon Resource Name (ARN) of the cluster that
-- hosts the task or tasks to describe. If you do not specify a cluster,
-- the default cluster is assumed. This parameter is required if the task
-- or tasks you are describing were launched in any cluster other than the
-- default cluster.
describeTasks_cluster :: Lens.Lens' DescribeTasks (Prelude.Maybe Prelude.Text)
describeTasks_cluster = Lens.lens (\DescribeTasks' {cluster} -> cluster) (\s@DescribeTasks' {} a -> s {cluster = a} :: DescribeTasks)

-- | Specifies whether you want to see the resource tags for the task. If
-- @TAGS@ is specified, the tags are included in the response. If this
-- field is omitted, tags aren\'t included in the response.
describeTasks_include :: Lens.Lens' DescribeTasks (Prelude.Maybe [TaskField])
describeTasks_include = Lens.lens (\DescribeTasks' {include} -> include) (\s@DescribeTasks' {} a -> s {include = a} :: DescribeTasks) Prelude.. Lens.mapping Lens.coerced

-- | A list of up to 100 task IDs or full ARN entries.
describeTasks_tasks :: Lens.Lens' DescribeTasks [Prelude.Text]
describeTasks_tasks = Lens.lens (\DescribeTasks' {tasks} -> tasks) (\s@DescribeTasks' {} a -> s {tasks = a} :: DescribeTasks) Prelude.. Lens.coerced

instance Core.AWSRequest DescribeTasks where
  type
    AWSResponse DescribeTasks =
      DescribeTasksResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeTasksResponse'
            Prelude.<$> (x Core..?> "tasks" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "failures" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeTasks where
  hashWithSalt _salt DescribeTasks' {..} =
    _salt `Prelude.hashWithSalt` cluster
      `Prelude.hashWithSalt` include
      `Prelude.hashWithSalt` tasks

instance Prelude.NFData DescribeTasks where
  rnf DescribeTasks' {..} =
    Prelude.rnf cluster
      `Prelude.seq` Prelude.rnf include
      `Prelude.seq` Prelude.rnf tasks

instance Core.ToHeaders DescribeTasks where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonEC2ContainerServiceV20141113.DescribeTasks" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeTasks where
  toJSON DescribeTasks' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("cluster" Core..=) Prelude.<$> cluster,
            ("include" Core..=) Prelude.<$> include,
            Prelude.Just ("tasks" Core..= tasks)
          ]
      )

instance Core.ToPath DescribeTasks where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeTasks where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeTasksResponse' smart constructor.
data DescribeTasksResponse = DescribeTasksResponse'
  { -- | The list of tasks.
    tasks :: Prelude.Maybe [Task],
    -- | Any failures associated with the call.
    failures :: Prelude.Maybe [Failure],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeTasksResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tasks', 'describeTasksResponse_tasks' - The list of tasks.
--
-- 'failures', 'describeTasksResponse_failures' - Any failures associated with the call.
--
-- 'httpStatus', 'describeTasksResponse_httpStatus' - The response's http status code.
newDescribeTasksResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeTasksResponse
newDescribeTasksResponse pHttpStatus_ =
  DescribeTasksResponse'
    { tasks = Prelude.Nothing,
      failures = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The list of tasks.
describeTasksResponse_tasks :: Lens.Lens' DescribeTasksResponse (Prelude.Maybe [Task])
describeTasksResponse_tasks = Lens.lens (\DescribeTasksResponse' {tasks} -> tasks) (\s@DescribeTasksResponse' {} a -> s {tasks = a} :: DescribeTasksResponse) Prelude.. Lens.mapping Lens.coerced

-- | Any failures associated with the call.
describeTasksResponse_failures :: Lens.Lens' DescribeTasksResponse (Prelude.Maybe [Failure])
describeTasksResponse_failures = Lens.lens (\DescribeTasksResponse' {failures} -> failures) (\s@DescribeTasksResponse' {} a -> s {failures = a} :: DescribeTasksResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeTasksResponse_httpStatus :: Lens.Lens' DescribeTasksResponse Prelude.Int
describeTasksResponse_httpStatus = Lens.lens (\DescribeTasksResponse' {httpStatus} -> httpStatus) (\s@DescribeTasksResponse' {} a -> s {httpStatus = a} :: DescribeTasksResponse)

instance Prelude.NFData DescribeTasksResponse where
  rnf DescribeTasksResponse' {..} =
    Prelude.rnf tasks
      `Prelude.seq` Prelude.rnf failures
      `Prelude.seq` Prelude.rnf httpStatus
