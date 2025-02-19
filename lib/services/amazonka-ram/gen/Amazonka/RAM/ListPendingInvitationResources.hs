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
-- Module      : Amazonka.RAM.ListPendingInvitationResources
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the resources in a resource share that is shared with you but for
-- which the invitation is still @PENDING@. That means that you haven\'t
-- accepted or rejected the invitation and the invitation hasn\'t expired.
module Amazonka.RAM.ListPendingInvitationResources
  ( -- * Creating a Request
    ListPendingInvitationResources (..),
    newListPendingInvitationResources,

    -- * Request Lenses
    listPendingInvitationResources_nextToken,
    listPendingInvitationResources_resourceRegionScope,
    listPendingInvitationResources_maxResults,
    listPendingInvitationResources_resourceShareInvitationArn,

    -- * Destructuring the Response
    ListPendingInvitationResourcesResponse (..),
    newListPendingInvitationResourcesResponse,

    -- * Response Lenses
    listPendingInvitationResourcesResponse_nextToken,
    listPendingInvitationResourcesResponse_resources,
    listPendingInvitationResourcesResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.RAM.Types
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListPendingInvitationResources' smart constructor.
data ListPendingInvitationResources = ListPendingInvitationResources'
  { -- | Specifies that you want to receive the next page of results. Valid only
    -- if you received a @NextToken@ response in the previous request. If you
    -- did, it indicates that more output is available. Set this parameter to
    -- the value provided by the previous call\'s @NextToken@ response to
    -- request the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Specifies that you want the results to include only resources that have
    -- the specified scope.
    --
    -- -   @ALL@ – the results include both global and regional resources or
    --     resource types.
    --
    -- -   @GLOBAL@ – the results include only global resources or resource
    --     types.
    --
    -- -   @REGIONAL@ – the results include only regional resources or resource
    --     types.
    --
    -- The default value is @ALL@.
    resourceRegionScope :: Prelude.Maybe ResourceRegionScopeFilter,
    -- | Specifies the total number of results that you want included on each
    -- page of the response. If you do not include this parameter, it defaults
    -- to a value that is specific to the operation. If additional items exist
    -- beyond the number you specify, the @NextToken@ response element is
    -- returned with a value (not null). Include the specified value as the
    -- @NextToken@ request parameter in the next call to the operation to get
    -- the next part of the results. Note that the service might return fewer
    -- results than the maximum even when there are more results available. You
    -- should check @NextToken@ after every operation to ensure that you
    -- receive all of the results.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | Specifies the
    -- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resoure Name (ARN)>
    -- of the invitation. You can use GetResourceShareInvitations to find the
    -- ARN of the invitation.
    resourceShareInvitationArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListPendingInvitationResources' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listPendingInvitationResources_nextToken' - Specifies that you want to receive the next page of results. Valid only
-- if you received a @NextToken@ response in the previous request. If you
-- did, it indicates that more output is available. Set this parameter to
-- the value provided by the previous call\'s @NextToken@ response to
-- request the next page of results.
--
-- 'resourceRegionScope', 'listPendingInvitationResources_resourceRegionScope' - Specifies that you want the results to include only resources that have
-- the specified scope.
--
-- -   @ALL@ – the results include both global and regional resources or
--     resource types.
--
-- -   @GLOBAL@ – the results include only global resources or resource
--     types.
--
-- -   @REGIONAL@ – the results include only regional resources or resource
--     types.
--
-- The default value is @ALL@.
--
-- 'maxResults', 'listPendingInvitationResources_maxResults' - Specifies the total number of results that you want included on each
-- page of the response. If you do not include this parameter, it defaults
-- to a value that is specific to the operation. If additional items exist
-- beyond the number you specify, the @NextToken@ response element is
-- returned with a value (not null). Include the specified value as the
-- @NextToken@ request parameter in the next call to the operation to get
-- the next part of the results. Note that the service might return fewer
-- results than the maximum even when there are more results available. You
-- should check @NextToken@ after every operation to ensure that you
-- receive all of the results.
--
-- 'resourceShareInvitationArn', 'listPendingInvitationResources_resourceShareInvitationArn' - Specifies the
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resoure Name (ARN)>
-- of the invitation. You can use GetResourceShareInvitations to find the
-- ARN of the invitation.
newListPendingInvitationResources ::
  -- | 'resourceShareInvitationArn'
  Prelude.Text ->
  ListPendingInvitationResources
newListPendingInvitationResources
  pResourceShareInvitationArn_ =
    ListPendingInvitationResources'
      { nextToken =
          Prelude.Nothing,
        resourceRegionScope = Prelude.Nothing,
        maxResults = Prelude.Nothing,
        resourceShareInvitationArn =
          pResourceShareInvitationArn_
      }

-- | Specifies that you want to receive the next page of results. Valid only
-- if you received a @NextToken@ response in the previous request. If you
-- did, it indicates that more output is available. Set this parameter to
-- the value provided by the previous call\'s @NextToken@ response to
-- request the next page of results.
listPendingInvitationResources_nextToken :: Lens.Lens' ListPendingInvitationResources (Prelude.Maybe Prelude.Text)
listPendingInvitationResources_nextToken = Lens.lens (\ListPendingInvitationResources' {nextToken} -> nextToken) (\s@ListPendingInvitationResources' {} a -> s {nextToken = a} :: ListPendingInvitationResources)

-- | Specifies that you want the results to include only resources that have
-- the specified scope.
--
-- -   @ALL@ – the results include both global and regional resources or
--     resource types.
--
-- -   @GLOBAL@ – the results include only global resources or resource
--     types.
--
-- -   @REGIONAL@ – the results include only regional resources or resource
--     types.
--
-- The default value is @ALL@.
listPendingInvitationResources_resourceRegionScope :: Lens.Lens' ListPendingInvitationResources (Prelude.Maybe ResourceRegionScopeFilter)
listPendingInvitationResources_resourceRegionScope = Lens.lens (\ListPendingInvitationResources' {resourceRegionScope} -> resourceRegionScope) (\s@ListPendingInvitationResources' {} a -> s {resourceRegionScope = a} :: ListPendingInvitationResources)

-- | Specifies the total number of results that you want included on each
-- page of the response. If you do not include this parameter, it defaults
-- to a value that is specific to the operation. If additional items exist
-- beyond the number you specify, the @NextToken@ response element is
-- returned with a value (not null). Include the specified value as the
-- @NextToken@ request parameter in the next call to the operation to get
-- the next part of the results. Note that the service might return fewer
-- results than the maximum even when there are more results available. You
-- should check @NextToken@ after every operation to ensure that you
-- receive all of the results.
listPendingInvitationResources_maxResults :: Lens.Lens' ListPendingInvitationResources (Prelude.Maybe Prelude.Natural)
listPendingInvitationResources_maxResults = Lens.lens (\ListPendingInvitationResources' {maxResults} -> maxResults) (\s@ListPendingInvitationResources' {} a -> s {maxResults = a} :: ListPendingInvitationResources)

-- | Specifies the
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resoure Name (ARN)>
-- of the invitation. You can use GetResourceShareInvitations to find the
-- ARN of the invitation.
listPendingInvitationResources_resourceShareInvitationArn :: Lens.Lens' ListPendingInvitationResources Prelude.Text
listPendingInvitationResources_resourceShareInvitationArn = Lens.lens (\ListPendingInvitationResources' {resourceShareInvitationArn} -> resourceShareInvitationArn) (\s@ListPendingInvitationResources' {} a -> s {resourceShareInvitationArn = a} :: ListPendingInvitationResources)

instance
  Core.AWSRequest
    ListPendingInvitationResources
  where
  type
    AWSResponse ListPendingInvitationResources =
      ListPendingInvitationResourcesResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListPendingInvitationResourcesResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> (x Core..?> "resources" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    ListPendingInvitationResources
  where
  hashWithSalt
    _salt
    ListPendingInvitationResources' {..} =
      _salt `Prelude.hashWithSalt` nextToken
        `Prelude.hashWithSalt` resourceRegionScope
        `Prelude.hashWithSalt` maxResults
        `Prelude.hashWithSalt` resourceShareInvitationArn

instance
  Prelude.NFData
    ListPendingInvitationResources
  where
  rnf ListPendingInvitationResources' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf resourceRegionScope
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf resourceShareInvitationArn

instance
  Core.ToHeaders
    ListPendingInvitationResources
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

instance Core.ToJSON ListPendingInvitationResources where
  toJSON ListPendingInvitationResources' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("nextToken" Core..=) Prelude.<$> nextToken,
            ("resourceRegionScope" Core..=)
              Prelude.<$> resourceRegionScope,
            ("maxResults" Core..=) Prelude.<$> maxResults,
            Prelude.Just
              ( "resourceShareInvitationArn"
                  Core..= resourceShareInvitationArn
              )
          ]
      )

instance Core.ToPath ListPendingInvitationResources where
  toPath =
    Prelude.const "/listpendinginvitationresources"

instance Core.ToQuery ListPendingInvitationResources where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListPendingInvitationResourcesResponse' smart constructor.
data ListPendingInvitationResourcesResponse = ListPendingInvitationResourcesResponse'
  { -- | If present, this value indicates that more output is available than is
    -- included in the current response. Use this value in the @NextToken@
    -- request parameter in a subsequent call to the operation to get the next
    -- part of the output. You should repeat this until the @NextToken@
    -- response element comes back as @null@. This indicates that this is the
    -- last page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | An array of objects that contain the information about the resources
    -- included the specified resource share.
    resources :: Prelude.Maybe [Resource],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListPendingInvitationResourcesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listPendingInvitationResourcesResponse_nextToken' - If present, this value indicates that more output is available than is
-- included in the current response. Use this value in the @NextToken@
-- request parameter in a subsequent call to the operation to get the next
-- part of the output. You should repeat this until the @NextToken@
-- response element comes back as @null@. This indicates that this is the
-- last page of results.
--
-- 'resources', 'listPendingInvitationResourcesResponse_resources' - An array of objects that contain the information about the resources
-- included the specified resource share.
--
-- 'httpStatus', 'listPendingInvitationResourcesResponse_httpStatus' - The response's http status code.
newListPendingInvitationResourcesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListPendingInvitationResourcesResponse
newListPendingInvitationResourcesResponse
  pHttpStatus_ =
    ListPendingInvitationResourcesResponse'
      { nextToken =
          Prelude.Nothing,
        resources = Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | If present, this value indicates that more output is available than is
-- included in the current response. Use this value in the @NextToken@
-- request parameter in a subsequent call to the operation to get the next
-- part of the output. You should repeat this until the @NextToken@
-- response element comes back as @null@. This indicates that this is the
-- last page of results.
listPendingInvitationResourcesResponse_nextToken :: Lens.Lens' ListPendingInvitationResourcesResponse (Prelude.Maybe Prelude.Text)
listPendingInvitationResourcesResponse_nextToken = Lens.lens (\ListPendingInvitationResourcesResponse' {nextToken} -> nextToken) (\s@ListPendingInvitationResourcesResponse' {} a -> s {nextToken = a} :: ListPendingInvitationResourcesResponse)

-- | An array of objects that contain the information about the resources
-- included the specified resource share.
listPendingInvitationResourcesResponse_resources :: Lens.Lens' ListPendingInvitationResourcesResponse (Prelude.Maybe [Resource])
listPendingInvitationResourcesResponse_resources = Lens.lens (\ListPendingInvitationResourcesResponse' {resources} -> resources) (\s@ListPendingInvitationResourcesResponse' {} a -> s {resources = a} :: ListPendingInvitationResourcesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listPendingInvitationResourcesResponse_httpStatus :: Lens.Lens' ListPendingInvitationResourcesResponse Prelude.Int
listPendingInvitationResourcesResponse_httpStatus = Lens.lens (\ListPendingInvitationResourcesResponse' {httpStatus} -> httpStatus) (\s@ListPendingInvitationResourcesResponse' {} a -> s {httpStatus = a} :: ListPendingInvitationResourcesResponse)

instance
  Prelude.NFData
    ListPendingInvitationResourcesResponse
  where
  rnf ListPendingInvitationResourcesResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf resources
      `Prelude.seq` Prelude.rnf httpStatus
