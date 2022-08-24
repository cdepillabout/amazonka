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
-- Module      : Amazonka.Route53RecoveryReadiness.CreateRecoveryGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a recovery group in an account. A recovery group corresponds to
-- an application and includes a list of the cells that make up the
-- application.
module Amazonka.Route53RecoveryReadiness.CreateRecoveryGroup
  ( -- * Creating a Request
    CreateRecoveryGroup (..),
    newCreateRecoveryGroup,

    -- * Request Lenses
    createRecoveryGroup_tags,
    createRecoveryGroup_cells,
    createRecoveryGroup_recoveryGroupName,

    -- * Destructuring the Response
    CreateRecoveryGroupResponse (..),
    newCreateRecoveryGroupResponse,

    -- * Response Lenses
    createRecoveryGroupResponse_tags,
    createRecoveryGroupResponse_recoveryGroupArn,
    createRecoveryGroupResponse_recoveryGroupName,
    createRecoveryGroupResponse_cells,
    createRecoveryGroupResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.Route53RecoveryReadiness.Types

-- | /See:/ 'newCreateRecoveryGroup' smart constructor.
data CreateRecoveryGroup = CreateRecoveryGroup'
  { tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | A list of the cell Amazon Resource Names (ARNs) in the recovery group.
    cells :: Prelude.Maybe [Prelude.Text],
    -- | The name of the recovery group to create.
    recoveryGroupName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateRecoveryGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createRecoveryGroup_tags' - Undocumented member.
--
-- 'cells', 'createRecoveryGroup_cells' - A list of the cell Amazon Resource Names (ARNs) in the recovery group.
--
-- 'recoveryGroupName', 'createRecoveryGroup_recoveryGroupName' - The name of the recovery group to create.
newCreateRecoveryGroup ::
  -- | 'recoveryGroupName'
  Prelude.Text ->
  CreateRecoveryGroup
newCreateRecoveryGroup pRecoveryGroupName_ =
  CreateRecoveryGroup'
    { tags = Prelude.Nothing,
      cells = Prelude.Nothing,
      recoveryGroupName = pRecoveryGroupName_
    }

-- | Undocumented member.
createRecoveryGroup_tags :: Lens.Lens' CreateRecoveryGroup (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createRecoveryGroup_tags = Lens.lens (\CreateRecoveryGroup' {tags} -> tags) (\s@CreateRecoveryGroup' {} a -> s {tags = a} :: CreateRecoveryGroup) Prelude.. Lens.mapping Lens.coerced

-- | A list of the cell Amazon Resource Names (ARNs) in the recovery group.
createRecoveryGroup_cells :: Lens.Lens' CreateRecoveryGroup (Prelude.Maybe [Prelude.Text])
createRecoveryGroup_cells = Lens.lens (\CreateRecoveryGroup' {cells} -> cells) (\s@CreateRecoveryGroup' {} a -> s {cells = a} :: CreateRecoveryGroup) Prelude.. Lens.mapping Lens.coerced

-- | The name of the recovery group to create.
createRecoveryGroup_recoveryGroupName :: Lens.Lens' CreateRecoveryGroup Prelude.Text
createRecoveryGroup_recoveryGroupName = Lens.lens (\CreateRecoveryGroup' {recoveryGroupName} -> recoveryGroupName) (\s@CreateRecoveryGroup' {} a -> s {recoveryGroupName = a} :: CreateRecoveryGroup)

instance Core.AWSRequest CreateRecoveryGroup where
  type
    AWSResponse CreateRecoveryGroup =
      CreateRecoveryGroupResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateRecoveryGroupResponse'
            Prelude.<$> (x Core..?> "tags" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "recoveryGroupArn")
            Prelude.<*> (x Core..?> "recoveryGroupName")
            Prelude.<*> (x Core..?> "cells" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateRecoveryGroup where
  hashWithSalt _salt CreateRecoveryGroup' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` cells
      `Prelude.hashWithSalt` recoveryGroupName

instance Prelude.NFData CreateRecoveryGroup where
  rnf CreateRecoveryGroup' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf cells
      `Prelude.seq` Prelude.rnf recoveryGroupName

instance Core.ToHeaders CreateRecoveryGroup where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateRecoveryGroup where
  toJSON CreateRecoveryGroup' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("tags" Core..=) Prelude.<$> tags,
            ("cells" Core..=) Prelude.<$> cells,
            Prelude.Just
              ("recoveryGroupName" Core..= recoveryGroupName)
          ]
      )

instance Core.ToPath CreateRecoveryGroup where
  toPath = Prelude.const "/recoverygroups"

instance Core.ToQuery CreateRecoveryGroup where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateRecoveryGroupResponse' smart constructor.
data CreateRecoveryGroupResponse = CreateRecoveryGroupResponse'
  { -- | The tags associated with the recovery group.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The Amazon Resource Name (ARN) for the recovery group.
    recoveryGroupArn :: Prelude.Maybe Prelude.Text,
    -- | The name of the recovery group.
    recoveryGroupName :: Prelude.Maybe Prelude.Text,
    -- | A list of a cell\'s Amazon Resource Names (ARNs).
    cells :: Prelude.Maybe [Prelude.Text],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateRecoveryGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createRecoveryGroupResponse_tags' - The tags associated with the recovery group.
--
-- 'recoveryGroupArn', 'createRecoveryGroupResponse_recoveryGroupArn' - The Amazon Resource Name (ARN) for the recovery group.
--
-- 'recoveryGroupName', 'createRecoveryGroupResponse_recoveryGroupName' - The name of the recovery group.
--
-- 'cells', 'createRecoveryGroupResponse_cells' - A list of a cell\'s Amazon Resource Names (ARNs).
--
-- 'httpStatus', 'createRecoveryGroupResponse_httpStatus' - The response's http status code.
newCreateRecoveryGroupResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateRecoveryGroupResponse
newCreateRecoveryGroupResponse pHttpStatus_ =
  CreateRecoveryGroupResponse'
    { tags =
        Prelude.Nothing,
      recoveryGroupArn = Prelude.Nothing,
      recoveryGroupName = Prelude.Nothing,
      cells = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The tags associated with the recovery group.
createRecoveryGroupResponse_tags :: Lens.Lens' CreateRecoveryGroupResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createRecoveryGroupResponse_tags = Lens.lens (\CreateRecoveryGroupResponse' {tags} -> tags) (\s@CreateRecoveryGroupResponse' {} a -> s {tags = a} :: CreateRecoveryGroupResponse) Prelude.. Lens.mapping Lens.coerced

-- | The Amazon Resource Name (ARN) for the recovery group.
createRecoveryGroupResponse_recoveryGroupArn :: Lens.Lens' CreateRecoveryGroupResponse (Prelude.Maybe Prelude.Text)
createRecoveryGroupResponse_recoveryGroupArn = Lens.lens (\CreateRecoveryGroupResponse' {recoveryGroupArn} -> recoveryGroupArn) (\s@CreateRecoveryGroupResponse' {} a -> s {recoveryGroupArn = a} :: CreateRecoveryGroupResponse)

-- | The name of the recovery group.
createRecoveryGroupResponse_recoveryGroupName :: Lens.Lens' CreateRecoveryGroupResponse (Prelude.Maybe Prelude.Text)
createRecoveryGroupResponse_recoveryGroupName = Lens.lens (\CreateRecoveryGroupResponse' {recoveryGroupName} -> recoveryGroupName) (\s@CreateRecoveryGroupResponse' {} a -> s {recoveryGroupName = a} :: CreateRecoveryGroupResponse)

-- | A list of a cell\'s Amazon Resource Names (ARNs).
createRecoveryGroupResponse_cells :: Lens.Lens' CreateRecoveryGroupResponse (Prelude.Maybe [Prelude.Text])
createRecoveryGroupResponse_cells = Lens.lens (\CreateRecoveryGroupResponse' {cells} -> cells) (\s@CreateRecoveryGroupResponse' {} a -> s {cells = a} :: CreateRecoveryGroupResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
createRecoveryGroupResponse_httpStatus :: Lens.Lens' CreateRecoveryGroupResponse Prelude.Int
createRecoveryGroupResponse_httpStatus = Lens.lens (\CreateRecoveryGroupResponse' {httpStatus} -> httpStatus) (\s@CreateRecoveryGroupResponse' {} a -> s {httpStatus = a} :: CreateRecoveryGroupResponse)

instance Prelude.NFData CreateRecoveryGroupResponse where
  rnf CreateRecoveryGroupResponse' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf recoveryGroupArn
      `Prelude.seq` Prelude.rnf recoveryGroupName
      `Prelude.seq` Prelude.rnf cells
      `Prelude.seq` Prelude.rnf httpStatus
