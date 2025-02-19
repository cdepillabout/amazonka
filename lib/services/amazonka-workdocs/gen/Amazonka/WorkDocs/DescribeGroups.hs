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
-- Module      : Amazonka.WorkDocs.DescribeGroups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the groups specified by the query. Groups are defined by the
-- underlying Active Directory.
--
-- This operation returns paginated results.
module Amazonka.WorkDocs.DescribeGroups
  ( -- * Creating a Request
    DescribeGroups (..),
    newDescribeGroups,

    -- * Request Lenses
    describeGroups_marker,
    describeGroups_authenticationToken,
    describeGroups_limit,
    describeGroups_organizationId,
    describeGroups_searchQuery,

    -- * Destructuring the Response
    DescribeGroupsResponse (..),
    newDescribeGroupsResponse,

    -- * Response Lenses
    describeGroupsResponse_marker,
    describeGroupsResponse_groups,
    describeGroupsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.WorkDocs.Types

-- | /See:/ 'newDescribeGroups' smart constructor.
data DescribeGroups = DescribeGroups'
  { -- | The marker for the next set of results. (You received this marker from a
    -- previous call.)
    marker :: Prelude.Maybe Prelude.Text,
    -- | Amazon WorkDocs authentication token. Not required when using AWS
    -- administrator credentials to access the API.
    authenticationToken :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The maximum number of items to return with this call.
    limit :: Prelude.Maybe Prelude.Natural,
    -- | The ID of the organization.
    organizationId :: Prelude.Maybe Prelude.Text,
    -- | A query to describe groups by group name.
    searchQuery :: Core.Sensitive Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeGroups' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'marker', 'describeGroups_marker' - The marker for the next set of results. (You received this marker from a
-- previous call.)
--
-- 'authenticationToken', 'describeGroups_authenticationToken' - Amazon WorkDocs authentication token. Not required when using AWS
-- administrator credentials to access the API.
--
-- 'limit', 'describeGroups_limit' - The maximum number of items to return with this call.
--
-- 'organizationId', 'describeGroups_organizationId' - The ID of the organization.
--
-- 'searchQuery', 'describeGroups_searchQuery' - A query to describe groups by group name.
newDescribeGroups ::
  -- | 'searchQuery'
  Prelude.Text ->
  DescribeGroups
newDescribeGroups pSearchQuery_ =
  DescribeGroups'
    { marker = Prelude.Nothing,
      authenticationToken = Prelude.Nothing,
      limit = Prelude.Nothing,
      organizationId = Prelude.Nothing,
      searchQuery = Core._Sensitive Lens.# pSearchQuery_
    }

-- | The marker for the next set of results. (You received this marker from a
-- previous call.)
describeGroups_marker :: Lens.Lens' DescribeGroups (Prelude.Maybe Prelude.Text)
describeGroups_marker = Lens.lens (\DescribeGroups' {marker} -> marker) (\s@DescribeGroups' {} a -> s {marker = a} :: DescribeGroups)

-- | Amazon WorkDocs authentication token. Not required when using AWS
-- administrator credentials to access the API.
describeGroups_authenticationToken :: Lens.Lens' DescribeGroups (Prelude.Maybe Prelude.Text)
describeGroups_authenticationToken = Lens.lens (\DescribeGroups' {authenticationToken} -> authenticationToken) (\s@DescribeGroups' {} a -> s {authenticationToken = a} :: DescribeGroups) Prelude.. Lens.mapping Core._Sensitive

-- | The maximum number of items to return with this call.
describeGroups_limit :: Lens.Lens' DescribeGroups (Prelude.Maybe Prelude.Natural)
describeGroups_limit = Lens.lens (\DescribeGroups' {limit} -> limit) (\s@DescribeGroups' {} a -> s {limit = a} :: DescribeGroups)

-- | The ID of the organization.
describeGroups_organizationId :: Lens.Lens' DescribeGroups (Prelude.Maybe Prelude.Text)
describeGroups_organizationId = Lens.lens (\DescribeGroups' {organizationId} -> organizationId) (\s@DescribeGroups' {} a -> s {organizationId = a} :: DescribeGroups)

-- | A query to describe groups by group name.
describeGroups_searchQuery :: Lens.Lens' DescribeGroups Prelude.Text
describeGroups_searchQuery = Lens.lens (\DescribeGroups' {searchQuery} -> searchQuery) (\s@DescribeGroups' {} a -> s {searchQuery = a} :: DescribeGroups) Prelude.. Core._Sensitive

instance Core.AWSPager DescribeGroups where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeGroupsResponse_marker Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? describeGroupsResponse_groups Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& describeGroups_marker
          Lens..~ rs
          Lens.^? describeGroupsResponse_marker Prelude.. Lens._Just

instance Core.AWSRequest DescribeGroups where
  type
    AWSResponse DescribeGroups =
      DescribeGroupsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeGroupsResponse'
            Prelude.<$> (x Core..?> "Marker")
            Prelude.<*> (x Core..?> "Groups" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeGroups where
  hashWithSalt _salt DescribeGroups' {..} =
    _salt `Prelude.hashWithSalt` marker
      `Prelude.hashWithSalt` authenticationToken
      `Prelude.hashWithSalt` limit
      `Prelude.hashWithSalt` organizationId
      `Prelude.hashWithSalt` searchQuery

instance Prelude.NFData DescribeGroups where
  rnf DescribeGroups' {..} =
    Prelude.rnf marker
      `Prelude.seq` Prelude.rnf authenticationToken
      `Prelude.seq` Prelude.rnf limit
      `Prelude.seq` Prelude.rnf organizationId
      `Prelude.seq` Prelude.rnf searchQuery

instance Core.ToHeaders DescribeGroups where
  toHeaders DescribeGroups' {..} =
    Prelude.mconcat
      [ "Authentication" Core.=# authenticationToken,
        "Content-Type"
          Core.=# ("application/x-amz-json-1.1" :: Prelude.ByteString)
      ]

instance Core.ToPath DescribeGroups where
  toPath = Prelude.const "/api/v1/groups"

instance Core.ToQuery DescribeGroups where
  toQuery DescribeGroups' {..} =
    Prelude.mconcat
      [ "marker" Core.=: marker,
        "limit" Core.=: limit,
        "organizationId" Core.=: organizationId,
        "searchQuery" Core.=: searchQuery
      ]

-- | /See:/ 'newDescribeGroupsResponse' smart constructor.
data DescribeGroupsResponse = DescribeGroupsResponse'
  { -- | The marker to use when requesting the next set of results. If there are
    -- no additional results, the string is empty.
    marker :: Prelude.Maybe Prelude.Text,
    -- | The list of groups.
    groups :: Prelude.Maybe [GroupMetadata],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeGroupsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'marker', 'describeGroupsResponse_marker' - The marker to use when requesting the next set of results. If there are
-- no additional results, the string is empty.
--
-- 'groups', 'describeGroupsResponse_groups' - The list of groups.
--
-- 'httpStatus', 'describeGroupsResponse_httpStatus' - The response's http status code.
newDescribeGroupsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeGroupsResponse
newDescribeGroupsResponse pHttpStatus_ =
  DescribeGroupsResponse'
    { marker = Prelude.Nothing,
      groups = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The marker to use when requesting the next set of results. If there are
-- no additional results, the string is empty.
describeGroupsResponse_marker :: Lens.Lens' DescribeGroupsResponse (Prelude.Maybe Prelude.Text)
describeGroupsResponse_marker = Lens.lens (\DescribeGroupsResponse' {marker} -> marker) (\s@DescribeGroupsResponse' {} a -> s {marker = a} :: DescribeGroupsResponse)

-- | The list of groups.
describeGroupsResponse_groups :: Lens.Lens' DescribeGroupsResponse (Prelude.Maybe [GroupMetadata])
describeGroupsResponse_groups = Lens.lens (\DescribeGroupsResponse' {groups} -> groups) (\s@DescribeGroupsResponse' {} a -> s {groups = a} :: DescribeGroupsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeGroupsResponse_httpStatus :: Lens.Lens' DescribeGroupsResponse Prelude.Int
describeGroupsResponse_httpStatus = Lens.lens (\DescribeGroupsResponse' {httpStatus} -> httpStatus) (\s@DescribeGroupsResponse' {} a -> s {httpStatus = a} :: DescribeGroupsResponse)

instance Prelude.NFData DescribeGroupsResponse where
  rnf DescribeGroupsResponse' {..} =
    Prelude.rnf marker
      `Prelude.seq` Prelude.rnf groups
      `Prelude.seq` Prelude.rnf httpStatus
