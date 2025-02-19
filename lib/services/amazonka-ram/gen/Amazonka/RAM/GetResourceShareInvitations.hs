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
-- Module      : Amazonka.RAM.GetResourceShareInvitations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves details about invitations that you have received for resource
-- shares.
--
-- This operation returns paginated results.
module Amazonka.RAM.GetResourceShareInvitations
  ( -- * Creating a Request
    GetResourceShareInvitations (..),
    newGetResourceShareInvitations,

    -- * Request Lenses
    getResourceShareInvitations_nextToken,
    getResourceShareInvitations_maxResults,
    getResourceShareInvitations_resourceShareArns,
    getResourceShareInvitations_resourceShareInvitationArns,

    -- * Destructuring the Response
    GetResourceShareInvitationsResponse (..),
    newGetResourceShareInvitationsResponse,

    -- * Response Lenses
    getResourceShareInvitationsResponse_resourceShareInvitations,
    getResourceShareInvitationsResponse_nextToken,
    getResourceShareInvitationsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.RAM.Types
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetResourceShareInvitations' smart constructor.
data GetResourceShareInvitations = GetResourceShareInvitations'
  { -- | Specifies that you want to receive the next page of results. Valid only
    -- if you received a @NextToken@ response in the previous request. If you
    -- did, it indicates that more output is available. Set this parameter to
    -- the value provided by the previous call\'s @NextToken@ response to
    -- request the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
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
    -- | Specifies that you want details about invitations only for the resource
    -- shares described by this list of
    -- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)>
    resourceShareArns :: Prelude.Maybe [Prelude.Text],
    -- | Specifies the
    -- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)>
    -- of the resource share invitations you want information about.
    resourceShareInvitationArns :: Prelude.Maybe [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetResourceShareInvitations' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getResourceShareInvitations_nextToken' - Specifies that you want to receive the next page of results. Valid only
-- if you received a @NextToken@ response in the previous request. If you
-- did, it indicates that more output is available. Set this parameter to
-- the value provided by the previous call\'s @NextToken@ response to
-- request the next page of results.
--
-- 'maxResults', 'getResourceShareInvitations_maxResults' - Specifies the total number of results that you want included on each
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
-- 'resourceShareArns', 'getResourceShareInvitations_resourceShareArns' - Specifies that you want details about invitations only for the resource
-- shares described by this list of
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)>
--
-- 'resourceShareInvitationArns', 'getResourceShareInvitations_resourceShareInvitationArns' - Specifies the
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)>
-- of the resource share invitations you want information about.
newGetResourceShareInvitations ::
  GetResourceShareInvitations
newGetResourceShareInvitations =
  GetResourceShareInvitations'
    { nextToken =
        Prelude.Nothing,
      maxResults = Prelude.Nothing,
      resourceShareArns = Prelude.Nothing,
      resourceShareInvitationArns = Prelude.Nothing
    }

-- | Specifies that you want to receive the next page of results. Valid only
-- if you received a @NextToken@ response in the previous request. If you
-- did, it indicates that more output is available. Set this parameter to
-- the value provided by the previous call\'s @NextToken@ response to
-- request the next page of results.
getResourceShareInvitations_nextToken :: Lens.Lens' GetResourceShareInvitations (Prelude.Maybe Prelude.Text)
getResourceShareInvitations_nextToken = Lens.lens (\GetResourceShareInvitations' {nextToken} -> nextToken) (\s@GetResourceShareInvitations' {} a -> s {nextToken = a} :: GetResourceShareInvitations)

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
getResourceShareInvitations_maxResults :: Lens.Lens' GetResourceShareInvitations (Prelude.Maybe Prelude.Natural)
getResourceShareInvitations_maxResults = Lens.lens (\GetResourceShareInvitations' {maxResults} -> maxResults) (\s@GetResourceShareInvitations' {} a -> s {maxResults = a} :: GetResourceShareInvitations)

-- | Specifies that you want details about invitations only for the resource
-- shares described by this list of
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)>
getResourceShareInvitations_resourceShareArns :: Lens.Lens' GetResourceShareInvitations (Prelude.Maybe [Prelude.Text])
getResourceShareInvitations_resourceShareArns = Lens.lens (\GetResourceShareInvitations' {resourceShareArns} -> resourceShareArns) (\s@GetResourceShareInvitations' {} a -> s {resourceShareArns = a} :: GetResourceShareInvitations) Prelude.. Lens.mapping Lens.coerced

-- | Specifies the
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)>
-- of the resource share invitations you want information about.
getResourceShareInvitations_resourceShareInvitationArns :: Lens.Lens' GetResourceShareInvitations (Prelude.Maybe [Prelude.Text])
getResourceShareInvitations_resourceShareInvitationArns = Lens.lens (\GetResourceShareInvitations' {resourceShareInvitationArns} -> resourceShareInvitationArns) (\s@GetResourceShareInvitations' {} a -> s {resourceShareInvitationArns = a} :: GetResourceShareInvitations) Prelude.. Lens.mapping Lens.coerced

instance Core.AWSPager GetResourceShareInvitations where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? getResourceShareInvitationsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? getResourceShareInvitationsResponse_resourceShareInvitations
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& getResourceShareInvitations_nextToken
          Lens..~ rs
          Lens.^? getResourceShareInvitationsResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest GetResourceShareInvitations where
  type
    AWSResponse GetResourceShareInvitations =
      GetResourceShareInvitationsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetResourceShareInvitationsResponse'
            Prelude.<$> ( x Core..?> "resourceShareInvitations"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetResourceShareInvitations where
  hashWithSalt _salt GetResourceShareInvitations' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` resourceShareArns
      `Prelude.hashWithSalt` resourceShareInvitationArns

instance Prelude.NFData GetResourceShareInvitations where
  rnf GetResourceShareInvitations' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf resourceShareArns
      `Prelude.seq` Prelude.rnf resourceShareInvitationArns

instance Core.ToHeaders GetResourceShareInvitations where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetResourceShareInvitations where
  toJSON GetResourceShareInvitations' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("nextToken" Core..=) Prelude.<$> nextToken,
            ("maxResults" Core..=) Prelude.<$> maxResults,
            ("resourceShareArns" Core..=)
              Prelude.<$> resourceShareArns,
            ("resourceShareInvitationArns" Core..=)
              Prelude.<$> resourceShareInvitationArns
          ]
      )

instance Core.ToPath GetResourceShareInvitations where
  toPath = Prelude.const "/getresourceshareinvitations"

instance Core.ToQuery GetResourceShareInvitations where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetResourceShareInvitationsResponse' smart constructor.
data GetResourceShareInvitationsResponse = GetResourceShareInvitationsResponse'
  { -- | An array of objects that contain the details about the invitations.
    resourceShareInvitations :: Prelude.Maybe [ResourceShareInvitation],
    -- | If present, this value indicates that more output is available than is
    -- included in the current response. Use this value in the @NextToken@
    -- request parameter in a subsequent call to the operation to get the next
    -- part of the output. You should repeat this until the @NextToken@
    -- response element comes back as @null@. This indicates that this is the
    -- last page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetResourceShareInvitationsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceShareInvitations', 'getResourceShareInvitationsResponse_resourceShareInvitations' - An array of objects that contain the details about the invitations.
--
-- 'nextToken', 'getResourceShareInvitationsResponse_nextToken' - If present, this value indicates that more output is available than is
-- included in the current response. Use this value in the @NextToken@
-- request parameter in a subsequent call to the operation to get the next
-- part of the output. You should repeat this until the @NextToken@
-- response element comes back as @null@. This indicates that this is the
-- last page of results.
--
-- 'httpStatus', 'getResourceShareInvitationsResponse_httpStatus' - The response's http status code.
newGetResourceShareInvitationsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetResourceShareInvitationsResponse
newGetResourceShareInvitationsResponse pHttpStatus_ =
  GetResourceShareInvitationsResponse'
    { resourceShareInvitations =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An array of objects that contain the details about the invitations.
getResourceShareInvitationsResponse_resourceShareInvitations :: Lens.Lens' GetResourceShareInvitationsResponse (Prelude.Maybe [ResourceShareInvitation])
getResourceShareInvitationsResponse_resourceShareInvitations = Lens.lens (\GetResourceShareInvitationsResponse' {resourceShareInvitations} -> resourceShareInvitations) (\s@GetResourceShareInvitationsResponse' {} a -> s {resourceShareInvitations = a} :: GetResourceShareInvitationsResponse) Prelude.. Lens.mapping Lens.coerced

-- | If present, this value indicates that more output is available than is
-- included in the current response. Use this value in the @NextToken@
-- request parameter in a subsequent call to the operation to get the next
-- part of the output. You should repeat this until the @NextToken@
-- response element comes back as @null@. This indicates that this is the
-- last page of results.
getResourceShareInvitationsResponse_nextToken :: Lens.Lens' GetResourceShareInvitationsResponse (Prelude.Maybe Prelude.Text)
getResourceShareInvitationsResponse_nextToken = Lens.lens (\GetResourceShareInvitationsResponse' {nextToken} -> nextToken) (\s@GetResourceShareInvitationsResponse' {} a -> s {nextToken = a} :: GetResourceShareInvitationsResponse)

-- | The response's http status code.
getResourceShareInvitationsResponse_httpStatus :: Lens.Lens' GetResourceShareInvitationsResponse Prelude.Int
getResourceShareInvitationsResponse_httpStatus = Lens.lens (\GetResourceShareInvitationsResponse' {httpStatus} -> httpStatus) (\s@GetResourceShareInvitationsResponse' {} a -> s {httpStatus = a} :: GetResourceShareInvitationsResponse)

instance
  Prelude.NFData
    GetResourceShareInvitationsResponse
  where
  rnf GetResourceShareInvitationsResponse' {..} =
    Prelude.rnf resourceShareInvitations
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf httpStatus
