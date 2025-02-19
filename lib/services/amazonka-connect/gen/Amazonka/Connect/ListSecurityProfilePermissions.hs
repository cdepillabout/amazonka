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
-- Module      : Amazonka.Connect.ListSecurityProfilePermissions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This API is in preview release for Amazon Connect and is subject to
-- change.
--
-- Lists the permissions granted to a security profile.
--
-- This operation returns paginated results.
module Amazonka.Connect.ListSecurityProfilePermissions
  ( -- * Creating a Request
    ListSecurityProfilePermissions (..),
    newListSecurityProfilePermissions,

    -- * Request Lenses
    listSecurityProfilePermissions_nextToken,
    listSecurityProfilePermissions_maxResults,
    listSecurityProfilePermissions_securityProfileId,
    listSecurityProfilePermissions_instanceId,

    -- * Destructuring the Response
    ListSecurityProfilePermissionsResponse (..),
    newListSecurityProfilePermissionsResponse,

    -- * Response Lenses
    listSecurityProfilePermissionsResponse_nextToken,
    listSecurityProfilePermissionsResponse_permissions,
    listSecurityProfilePermissionsResponse_httpStatus,
  )
where

import Amazonka.Connect.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListSecurityProfilePermissions' smart constructor.
data ListSecurityProfilePermissions = ListSecurityProfilePermissions'
  { -- | The token for the next set of results. Use the value returned in the
    -- previous response in the next request to retrieve the next set of
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return per page.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The identifier for the security profle.
    securityProfileId :: Prelude.Text,
    -- | The identifier of the Amazon Connect instance. You can find the
    -- instanceId in the ARN of the instance.
    instanceId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListSecurityProfilePermissions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listSecurityProfilePermissions_nextToken' - The token for the next set of results. Use the value returned in the
-- previous response in the next request to retrieve the next set of
-- results.
--
-- 'maxResults', 'listSecurityProfilePermissions_maxResults' - The maximum number of results to return per page.
--
-- 'securityProfileId', 'listSecurityProfilePermissions_securityProfileId' - The identifier for the security profle.
--
-- 'instanceId', 'listSecurityProfilePermissions_instanceId' - The identifier of the Amazon Connect instance. You can find the
-- instanceId in the ARN of the instance.
newListSecurityProfilePermissions ::
  -- | 'securityProfileId'
  Prelude.Text ->
  -- | 'instanceId'
  Prelude.Text ->
  ListSecurityProfilePermissions
newListSecurityProfilePermissions
  pSecurityProfileId_
  pInstanceId_ =
    ListSecurityProfilePermissions'
      { nextToken =
          Prelude.Nothing,
        maxResults = Prelude.Nothing,
        securityProfileId = pSecurityProfileId_,
        instanceId = pInstanceId_
      }

-- | The token for the next set of results. Use the value returned in the
-- previous response in the next request to retrieve the next set of
-- results.
listSecurityProfilePermissions_nextToken :: Lens.Lens' ListSecurityProfilePermissions (Prelude.Maybe Prelude.Text)
listSecurityProfilePermissions_nextToken = Lens.lens (\ListSecurityProfilePermissions' {nextToken} -> nextToken) (\s@ListSecurityProfilePermissions' {} a -> s {nextToken = a} :: ListSecurityProfilePermissions)

-- | The maximum number of results to return per page.
listSecurityProfilePermissions_maxResults :: Lens.Lens' ListSecurityProfilePermissions (Prelude.Maybe Prelude.Natural)
listSecurityProfilePermissions_maxResults = Lens.lens (\ListSecurityProfilePermissions' {maxResults} -> maxResults) (\s@ListSecurityProfilePermissions' {} a -> s {maxResults = a} :: ListSecurityProfilePermissions)

-- | The identifier for the security profle.
listSecurityProfilePermissions_securityProfileId :: Lens.Lens' ListSecurityProfilePermissions Prelude.Text
listSecurityProfilePermissions_securityProfileId = Lens.lens (\ListSecurityProfilePermissions' {securityProfileId} -> securityProfileId) (\s@ListSecurityProfilePermissions' {} a -> s {securityProfileId = a} :: ListSecurityProfilePermissions)

-- | The identifier of the Amazon Connect instance. You can find the
-- instanceId in the ARN of the instance.
listSecurityProfilePermissions_instanceId :: Lens.Lens' ListSecurityProfilePermissions Prelude.Text
listSecurityProfilePermissions_instanceId = Lens.lens (\ListSecurityProfilePermissions' {instanceId} -> instanceId) (\s@ListSecurityProfilePermissions' {} a -> s {instanceId = a} :: ListSecurityProfilePermissions)

instance Core.AWSPager ListSecurityProfilePermissions where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listSecurityProfilePermissionsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listSecurityProfilePermissionsResponse_permissions
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listSecurityProfilePermissions_nextToken
          Lens..~ rs
          Lens.^? listSecurityProfilePermissionsResponse_nextToken
            Prelude.. Lens._Just

instance
  Core.AWSRequest
    ListSecurityProfilePermissions
  where
  type
    AWSResponse ListSecurityProfilePermissions =
      ListSecurityProfilePermissionsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListSecurityProfilePermissionsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "Permissions" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    ListSecurityProfilePermissions
  where
  hashWithSalt
    _salt
    ListSecurityProfilePermissions' {..} =
      _salt `Prelude.hashWithSalt` nextToken
        `Prelude.hashWithSalt` maxResults
        `Prelude.hashWithSalt` securityProfileId
        `Prelude.hashWithSalt` instanceId

instance
  Prelude.NFData
    ListSecurityProfilePermissions
  where
  rnf ListSecurityProfilePermissions' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf securityProfileId
      `Prelude.seq` Prelude.rnf instanceId

instance
  Core.ToHeaders
    ListSecurityProfilePermissions
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListSecurityProfilePermissions where
  toPath ListSecurityProfilePermissions' {..} =
    Prelude.mconcat
      [ "/security-profiles-permissions/",
        Core.toBS instanceId,
        "/",
        Core.toBS securityProfileId
      ]

instance Core.ToQuery ListSecurityProfilePermissions where
  toQuery ListSecurityProfilePermissions' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListSecurityProfilePermissionsResponse' smart constructor.
data ListSecurityProfilePermissionsResponse = ListSecurityProfilePermissionsResponse'
  { -- | If there are additional results, this is the token for the next set of
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The permissions granted to the security profile.
    permissions :: Prelude.Maybe [Prelude.Text],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListSecurityProfilePermissionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listSecurityProfilePermissionsResponse_nextToken' - If there are additional results, this is the token for the next set of
-- results.
--
-- 'permissions', 'listSecurityProfilePermissionsResponse_permissions' - The permissions granted to the security profile.
--
-- 'httpStatus', 'listSecurityProfilePermissionsResponse_httpStatus' - The response's http status code.
newListSecurityProfilePermissionsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListSecurityProfilePermissionsResponse
newListSecurityProfilePermissionsResponse
  pHttpStatus_ =
    ListSecurityProfilePermissionsResponse'
      { nextToken =
          Prelude.Nothing,
        permissions = Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | If there are additional results, this is the token for the next set of
-- results.
listSecurityProfilePermissionsResponse_nextToken :: Lens.Lens' ListSecurityProfilePermissionsResponse (Prelude.Maybe Prelude.Text)
listSecurityProfilePermissionsResponse_nextToken = Lens.lens (\ListSecurityProfilePermissionsResponse' {nextToken} -> nextToken) (\s@ListSecurityProfilePermissionsResponse' {} a -> s {nextToken = a} :: ListSecurityProfilePermissionsResponse)

-- | The permissions granted to the security profile.
listSecurityProfilePermissionsResponse_permissions :: Lens.Lens' ListSecurityProfilePermissionsResponse (Prelude.Maybe [Prelude.Text])
listSecurityProfilePermissionsResponse_permissions = Lens.lens (\ListSecurityProfilePermissionsResponse' {permissions} -> permissions) (\s@ListSecurityProfilePermissionsResponse' {} a -> s {permissions = a} :: ListSecurityProfilePermissionsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listSecurityProfilePermissionsResponse_httpStatus :: Lens.Lens' ListSecurityProfilePermissionsResponse Prelude.Int
listSecurityProfilePermissionsResponse_httpStatus = Lens.lens (\ListSecurityProfilePermissionsResponse' {httpStatus} -> httpStatus) (\s@ListSecurityProfilePermissionsResponse' {} a -> s {httpStatus = a} :: ListSecurityProfilePermissionsResponse)

instance
  Prelude.NFData
    ListSecurityProfilePermissionsResponse
  where
  rnf ListSecurityProfilePermissionsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf permissions
      `Prelude.seq` Prelude.rnf httpStatus
