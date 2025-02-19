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
-- Module      : Amazonka.RDS.DeleteDBSubnetGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a DB subnet group.
--
-- The specified database subnet group must not be associated with any DB
-- instances.
module Amazonka.RDS.DeleteDBSubnetGroup
  ( -- * Creating a Request
    DeleteDBSubnetGroup (..),
    newDeleteDBSubnetGroup,

    -- * Request Lenses
    deleteDBSubnetGroup_dbSubnetGroupName,

    -- * Destructuring the Response
    DeleteDBSubnetGroupResponse (..),
    newDeleteDBSubnetGroupResponse,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.RDS.Types
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- |
--
-- /See:/ 'newDeleteDBSubnetGroup' smart constructor.
data DeleteDBSubnetGroup = DeleteDBSubnetGroup'
  { -- | The name of the database subnet group to delete.
    --
    -- You can\'t delete the default subnet group.
    --
    -- Constraints: Must match the name of an existing DBSubnetGroup. Must not
    -- be default.
    --
    -- Example: @mydbsubnetgroup@
    dbSubnetGroupName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteDBSubnetGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dbSubnetGroupName', 'deleteDBSubnetGroup_dbSubnetGroupName' - The name of the database subnet group to delete.
--
-- You can\'t delete the default subnet group.
--
-- Constraints: Must match the name of an existing DBSubnetGroup. Must not
-- be default.
--
-- Example: @mydbsubnetgroup@
newDeleteDBSubnetGroup ::
  -- | 'dbSubnetGroupName'
  Prelude.Text ->
  DeleteDBSubnetGroup
newDeleteDBSubnetGroup pDBSubnetGroupName_ =
  DeleteDBSubnetGroup'
    { dbSubnetGroupName =
        pDBSubnetGroupName_
    }

-- | The name of the database subnet group to delete.
--
-- You can\'t delete the default subnet group.
--
-- Constraints: Must match the name of an existing DBSubnetGroup. Must not
-- be default.
--
-- Example: @mydbsubnetgroup@
deleteDBSubnetGroup_dbSubnetGroupName :: Lens.Lens' DeleteDBSubnetGroup Prelude.Text
deleteDBSubnetGroup_dbSubnetGroupName = Lens.lens (\DeleteDBSubnetGroup' {dbSubnetGroupName} -> dbSubnetGroupName) (\s@DeleteDBSubnetGroup' {} a -> s {dbSubnetGroupName = a} :: DeleteDBSubnetGroup)

instance Core.AWSRequest DeleteDBSubnetGroup where
  type
    AWSResponse DeleteDBSubnetGroup =
      DeleteDBSubnetGroupResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveNull DeleteDBSubnetGroupResponse'

instance Prelude.Hashable DeleteDBSubnetGroup where
  hashWithSalt _salt DeleteDBSubnetGroup' {..} =
    _salt `Prelude.hashWithSalt` dbSubnetGroupName

instance Prelude.NFData DeleteDBSubnetGroup where
  rnf DeleteDBSubnetGroup' {..} =
    Prelude.rnf dbSubnetGroupName

instance Core.ToHeaders DeleteDBSubnetGroup where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DeleteDBSubnetGroup where
  toPath = Prelude.const "/"

instance Core.ToQuery DeleteDBSubnetGroup where
  toQuery DeleteDBSubnetGroup' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("DeleteDBSubnetGroup" :: Prelude.ByteString),
        "Version"
          Core.=: ("2014-10-31" :: Prelude.ByteString),
        "DBSubnetGroupName" Core.=: dbSubnetGroupName
      ]

-- | /See:/ 'newDeleteDBSubnetGroupResponse' smart constructor.
data DeleteDBSubnetGroupResponse = DeleteDBSubnetGroupResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteDBSubnetGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteDBSubnetGroupResponse ::
  DeleteDBSubnetGroupResponse
newDeleteDBSubnetGroupResponse =
  DeleteDBSubnetGroupResponse'

instance Prelude.NFData DeleteDBSubnetGroupResponse where
  rnf _ = ()
