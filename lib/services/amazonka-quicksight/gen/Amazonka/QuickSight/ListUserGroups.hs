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
-- Module      : Amazonka.QuickSight.ListUserGroups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the Amazon QuickSight groups that an Amazon QuickSight user is a
-- member of.
module Amazonka.QuickSight.ListUserGroups
  ( -- * Creating a Request
    ListUserGroups (..),
    newListUserGroups,

    -- * Request Lenses
    listUserGroups_nextToken,
    listUserGroups_maxResults,
    listUserGroups_userName,
    listUserGroups_awsAccountId,
    listUserGroups_namespace,

    -- * Destructuring the Response
    ListUserGroupsResponse (..),
    newListUserGroupsResponse,

    -- * Response Lenses
    listUserGroupsResponse_nextToken,
    listUserGroupsResponse_requestId,
    listUserGroupsResponse_groupList,
    listUserGroupsResponse_status,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.QuickSight.Types
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListUserGroups' smart constructor.
data ListUserGroups = ListUserGroups'
  { -- | A pagination token that can be used in a subsequent request.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return from this request.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The Amazon QuickSight user name that you want to list group memberships
    -- for.
    userName :: Prelude.Text,
    -- | The Amazon Web Services account ID that the user is in. Currently, you
    -- use the ID for the Amazon Web Services account that contains your Amazon
    -- QuickSight account.
    awsAccountId :: Prelude.Text,
    -- | The namespace. Currently, you should set this to @default@.
    namespace :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListUserGroups' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listUserGroups_nextToken' - A pagination token that can be used in a subsequent request.
--
-- 'maxResults', 'listUserGroups_maxResults' - The maximum number of results to return from this request.
--
-- 'userName', 'listUserGroups_userName' - The Amazon QuickSight user name that you want to list group memberships
-- for.
--
-- 'awsAccountId', 'listUserGroups_awsAccountId' - The Amazon Web Services account ID that the user is in. Currently, you
-- use the ID for the Amazon Web Services account that contains your Amazon
-- QuickSight account.
--
-- 'namespace', 'listUserGroups_namespace' - The namespace. Currently, you should set this to @default@.
newListUserGroups ::
  -- | 'userName'
  Prelude.Text ->
  -- | 'awsAccountId'
  Prelude.Text ->
  -- | 'namespace'
  Prelude.Text ->
  ListUserGroups
newListUserGroups
  pUserName_
  pAwsAccountId_
  pNamespace_ =
    ListUserGroups'
      { nextToken = Prelude.Nothing,
        maxResults = Prelude.Nothing,
        userName = pUserName_,
        awsAccountId = pAwsAccountId_,
        namespace = pNamespace_
      }

-- | A pagination token that can be used in a subsequent request.
listUserGroups_nextToken :: Lens.Lens' ListUserGroups (Prelude.Maybe Prelude.Text)
listUserGroups_nextToken = Lens.lens (\ListUserGroups' {nextToken} -> nextToken) (\s@ListUserGroups' {} a -> s {nextToken = a} :: ListUserGroups)

-- | The maximum number of results to return from this request.
listUserGroups_maxResults :: Lens.Lens' ListUserGroups (Prelude.Maybe Prelude.Natural)
listUserGroups_maxResults = Lens.lens (\ListUserGroups' {maxResults} -> maxResults) (\s@ListUserGroups' {} a -> s {maxResults = a} :: ListUserGroups)

-- | The Amazon QuickSight user name that you want to list group memberships
-- for.
listUserGroups_userName :: Lens.Lens' ListUserGroups Prelude.Text
listUserGroups_userName = Lens.lens (\ListUserGroups' {userName} -> userName) (\s@ListUserGroups' {} a -> s {userName = a} :: ListUserGroups)

-- | The Amazon Web Services account ID that the user is in. Currently, you
-- use the ID for the Amazon Web Services account that contains your Amazon
-- QuickSight account.
listUserGroups_awsAccountId :: Lens.Lens' ListUserGroups Prelude.Text
listUserGroups_awsAccountId = Lens.lens (\ListUserGroups' {awsAccountId} -> awsAccountId) (\s@ListUserGroups' {} a -> s {awsAccountId = a} :: ListUserGroups)

-- | The namespace. Currently, you should set this to @default@.
listUserGroups_namespace :: Lens.Lens' ListUserGroups Prelude.Text
listUserGroups_namespace = Lens.lens (\ListUserGroups' {namespace} -> namespace) (\s@ListUserGroups' {} a -> s {namespace = a} :: ListUserGroups)

instance Core.AWSRequest ListUserGroups where
  type
    AWSResponse ListUserGroups =
      ListUserGroupsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListUserGroupsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "RequestId")
            Prelude.<*> (x Core..?> "GroupList" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListUserGroups where
  hashWithSalt _salt ListUserGroups' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` userName
      `Prelude.hashWithSalt` awsAccountId
      `Prelude.hashWithSalt` namespace

instance Prelude.NFData ListUserGroups where
  rnf ListUserGroups' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf userName
      `Prelude.seq` Prelude.rnf awsAccountId
      `Prelude.seq` Prelude.rnf namespace

instance Core.ToHeaders ListUserGroups where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListUserGroups where
  toPath ListUserGroups' {..} =
    Prelude.mconcat
      [ "/accounts/",
        Core.toBS awsAccountId,
        "/namespaces/",
        Core.toBS namespace,
        "/users/",
        Core.toBS userName,
        "/groups"
      ]

instance Core.ToQuery ListUserGroups where
  toQuery ListUserGroups' {..} =
    Prelude.mconcat
      [ "next-token" Core.=: nextToken,
        "max-results" Core.=: maxResults
      ]

-- | /See:/ 'newListUserGroupsResponse' smart constructor.
data ListUserGroupsResponse = ListUserGroupsResponse'
  { -- | A pagination token that can be used in a subsequent request.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Web Services request ID for this operation.
    requestId :: Prelude.Maybe Prelude.Text,
    -- | The list of groups the user is a member of.
    groupList :: Prelude.Maybe [Group],
    -- | The HTTP status of the request.
    status :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListUserGroupsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listUserGroupsResponse_nextToken' - A pagination token that can be used in a subsequent request.
--
-- 'requestId', 'listUserGroupsResponse_requestId' - The Amazon Web Services request ID for this operation.
--
-- 'groupList', 'listUserGroupsResponse_groupList' - The list of groups the user is a member of.
--
-- 'status', 'listUserGroupsResponse_status' - The HTTP status of the request.
newListUserGroupsResponse ::
  -- | 'status'
  Prelude.Int ->
  ListUserGroupsResponse
newListUserGroupsResponse pStatus_ =
  ListUserGroupsResponse'
    { nextToken =
        Prelude.Nothing,
      requestId = Prelude.Nothing,
      groupList = Prelude.Nothing,
      status = pStatus_
    }

-- | A pagination token that can be used in a subsequent request.
listUserGroupsResponse_nextToken :: Lens.Lens' ListUserGroupsResponse (Prelude.Maybe Prelude.Text)
listUserGroupsResponse_nextToken = Lens.lens (\ListUserGroupsResponse' {nextToken} -> nextToken) (\s@ListUserGroupsResponse' {} a -> s {nextToken = a} :: ListUserGroupsResponse)

-- | The Amazon Web Services request ID for this operation.
listUserGroupsResponse_requestId :: Lens.Lens' ListUserGroupsResponse (Prelude.Maybe Prelude.Text)
listUserGroupsResponse_requestId = Lens.lens (\ListUserGroupsResponse' {requestId} -> requestId) (\s@ListUserGroupsResponse' {} a -> s {requestId = a} :: ListUserGroupsResponse)

-- | The list of groups the user is a member of.
listUserGroupsResponse_groupList :: Lens.Lens' ListUserGroupsResponse (Prelude.Maybe [Group])
listUserGroupsResponse_groupList = Lens.lens (\ListUserGroupsResponse' {groupList} -> groupList) (\s@ListUserGroupsResponse' {} a -> s {groupList = a} :: ListUserGroupsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The HTTP status of the request.
listUserGroupsResponse_status :: Lens.Lens' ListUserGroupsResponse Prelude.Int
listUserGroupsResponse_status = Lens.lens (\ListUserGroupsResponse' {status} -> status) (\s@ListUserGroupsResponse' {} a -> s {status = a} :: ListUserGroupsResponse)

instance Prelude.NFData ListUserGroupsResponse where
  rnf ListUserGroupsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf requestId
      `Prelude.seq` Prelude.rnf groupList
      `Prelude.seq` Prelude.rnf status
