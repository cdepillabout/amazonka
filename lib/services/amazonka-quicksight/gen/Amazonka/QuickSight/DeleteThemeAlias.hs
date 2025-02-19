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
-- Module      : Amazonka.QuickSight.DeleteThemeAlias
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the version of the theme that the specified theme alias points
-- to. If you provide a specific alias, you delete the version of the theme
-- that the alias points to.
module Amazonka.QuickSight.DeleteThemeAlias
  ( -- * Creating a Request
    DeleteThemeAlias (..),
    newDeleteThemeAlias,

    -- * Request Lenses
    deleteThemeAlias_awsAccountId,
    deleteThemeAlias_themeId,
    deleteThemeAlias_aliasName,

    -- * Destructuring the Response
    DeleteThemeAliasResponse (..),
    newDeleteThemeAliasResponse,

    -- * Response Lenses
    deleteThemeAliasResponse_requestId,
    deleteThemeAliasResponse_arn,
    deleteThemeAliasResponse_aliasName,
    deleteThemeAliasResponse_themeId,
    deleteThemeAliasResponse_status,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.QuickSight.Types
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDeleteThemeAlias' smart constructor.
data DeleteThemeAlias = DeleteThemeAlias'
  { -- | The ID of the Amazon Web Services account that contains the theme alias
    -- to delete.
    awsAccountId :: Prelude.Text,
    -- | The ID for the theme that the specified alias is for.
    themeId :: Prelude.Text,
    -- | The unique name for the theme alias to delete.
    aliasName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteThemeAlias' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'awsAccountId', 'deleteThemeAlias_awsAccountId' - The ID of the Amazon Web Services account that contains the theme alias
-- to delete.
--
-- 'themeId', 'deleteThemeAlias_themeId' - The ID for the theme that the specified alias is for.
--
-- 'aliasName', 'deleteThemeAlias_aliasName' - The unique name for the theme alias to delete.
newDeleteThemeAlias ::
  -- | 'awsAccountId'
  Prelude.Text ->
  -- | 'themeId'
  Prelude.Text ->
  -- | 'aliasName'
  Prelude.Text ->
  DeleteThemeAlias
newDeleteThemeAlias
  pAwsAccountId_
  pThemeId_
  pAliasName_ =
    DeleteThemeAlias'
      { awsAccountId = pAwsAccountId_,
        themeId = pThemeId_,
        aliasName = pAliasName_
      }

-- | The ID of the Amazon Web Services account that contains the theme alias
-- to delete.
deleteThemeAlias_awsAccountId :: Lens.Lens' DeleteThemeAlias Prelude.Text
deleteThemeAlias_awsAccountId = Lens.lens (\DeleteThemeAlias' {awsAccountId} -> awsAccountId) (\s@DeleteThemeAlias' {} a -> s {awsAccountId = a} :: DeleteThemeAlias)

-- | The ID for the theme that the specified alias is for.
deleteThemeAlias_themeId :: Lens.Lens' DeleteThemeAlias Prelude.Text
deleteThemeAlias_themeId = Lens.lens (\DeleteThemeAlias' {themeId} -> themeId) (\s@DeleteThemeAlias' {} a -> s {themeId = a} :: DeleteThemeAlias)

-- | The unique name for the theme alias to delete.
deleteThemeAlias_aliasName :: Lens.Lens' DeleteThemeAlias Prelude.Text
deleteThemeAlias_aliasName = Lens.lens (\DeleteThemeAlias' {aliasName} -> aliasName) (\s@DeleteThemeAlias' {} a -> s {aliasName = a} :: DeleteThemeAlias)

instance Core.AWSRequest DeleteThemeAlias where
  type
    AWSResponse DeleteThemeAlias =
      DeleteThemeAliasResponse
  request = Request.delete defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteThemeAliasResponse'
            Prelude.<$> (x Core..?> "RequestId")
            Prelude.<*> (x Core..?> "Arn")
            Prelude.<*> (x Core..?> "AliasName")
            Prelude.<*> (x Core..?> "ThemeId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteThemeAlias where
  hashWithSalt _salt DeleteThemeAlias' {..} =
    _salt `Prelude.hashWithSalt` awsAccountId
      `Prelude.hashWithSalt` themeId
      `Prelude.hashWithSalt` aliasName

instance Prelude.NFData DeleteThemeAlias where
  rnf DeleteThemeAlias' {..} =
    Prelude.rnf awsAccountId
      `Prelude.seq` Prelude.rnf themeId
      `Prelude.seq` Prelude.rnf aliasName

instance Core.ToHeaders DeleteThemeAlias where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeleteThemeAlias where
  toPath DeleteThemeAlias' {..} =
    Prelude.mconcat
      [ "/accounts/",
        Core.toBS awsAccountId,
        "/themes/",
        Core.toBS themeId,
        "/aliases/",
        Core.toBS aliasName
      ]

instance Core.ToQuery DeleteThemeAlias where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteThemeAliasResponse' smart constructor.
data DeleteThemeAliasResponse = DeleteThemeAliasResponse'
  { -- | The Amazon Web Services request ID for this operation.
    requestId :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the theme resource using the deleted
    -- alias.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The name for the theme alias.
    aliasName :: Prelude.Maybe Prelude.Text,
    -- | An ID for the theme associated with the deletion.
    themeId :: Prelude.Maybe Prelude.Text,
    -- | The HTTP status of the request.
    status :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteThemeAliasResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'requestId', 'deleteThemeAliasResponse_requestId' - The Amazon Web Services request ID for this operation.
--
-- 'arn', 'deleteThemeAliasResponse_arn' - The Amazon Resource Name (ARN) of the theme resource using the deleted
-- alias.
--
-- 'aliasName', 'deleteThemeAliasResponse_aliasName' - The name for the theme alias.
--
-- 'themeId', 'deleteThemeAliasResponse_themeId' - An ID for the theme associated with the deletion.
--
-- 'status', 'deleteThemeAliasResponse_status' - The HTTP status of the request.
newDeleteThemeAliasResponse ::
  -- | 'status'
  Prelude.Int ->
  DeleteThemeAliasResponse
newDeleteThemeAliasResponse pStatus_ =
  DeleteThemeAliasResponse'
    { requestId =
        Prelude.Nothing,
      arn = Prelude.Nothing,
      aliasName = Prelude.Nothing,
      themeId = Prelude.Nothing,
      status = pStatus_
    }

-- | The Amazon Web Services request ID for this operation.
deleteThemeAliasResponse_requestId :: Lens.Lens' DeleteThemeAliasResponse (Prelude.Maybe Prelude.Text)
deleteThemeAliasResponse_requestId = Lens.lens (\DeleteThemeAliasResponse' {requestId} -> requestId) (\s@DeleteThemeAliasResponse' {} a -> s {requestId = a} :: DeleteThemeAliasResponse)

-- | The Amazon Resource Name (ARN) of the theme resource using the deleted
-- alias.
deleteThemeAliasResponse_arn :: Lens.Lens' DeleteThemeAliasResponse (Prelude.Maybe Prelude.Text)
deleteThemeAliasResponse_arn = Lens.lens (\DeleteThemeAliasResponse' {arn} -> arn) (\s@DeleteThemeAliasResponse' {} a -> s {arn = a} :: DeleteThemeAliasResponse)

-- | The name for the theme alias.
deleteThemeAliasResponse_aliasName :: Lens.Lens' DeleteThemeAliasResponse (Prelude.Maybe Prelude.Text)
deleteThemeAliasResponse_aliasName = Lens.lens (\DeleteThemeAliasResponse' {aliasName} -> aliasName) (\s@DeleteThemeAliasResponse' {} a -> s {aliasName = a} :: DeleteThemeAliasResponse)

-- | An ID for the theme associated with the deletion.
deleteThemeAliasResponse_themeId :: Lens.Lens' DeleteThemeAliasResponse (Prelude.Maybe Prelude.Text)
deleteThemeAliasResponse_themeId = Lens.lens (\DeleteThemeAliasResponse' {themeId} -> themeId) (\s@DeleteThemeAliasResponse' {} a -> s {themeId = a} :: DeleteThemeAliasResponse)

-- | The HTTP status of the request.
deleteThemeAliasResponse_status :: Lens.Lens' DeleteThemeAliasResponse Prelude.Int
deleteThemeAliasResponse_status = Lens.lens (\DeleteThemeAliasResponse' {status} -> status) (\s@DeleteThemeAliasResponse' {} a -> s {status = a} :: DeleteThemeAliasResponse)

instance Prelude.NFData DeleteThemeAliasResponse where
  rnf DeleteThemeAliasResponse' {..} =
    Prelude.rnf requestId
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf aliasName
      `Prelude.seq` Prelude.rnf themeId
      `Prelude.seq` Prelude.rnf status
