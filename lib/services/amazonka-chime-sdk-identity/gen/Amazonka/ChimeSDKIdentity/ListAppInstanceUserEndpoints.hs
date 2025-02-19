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
-- Module      : Amazonka.ChimeSDKIdentity.ListAppInstanceUserEndpoints
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the @AppInstanceUserEndpoints@ created under a single
-- @AppInstanceUser@.
module Amazonka.ChimeSDKIdentity.ListAppInstanceUserEndpoints
  ( -- * Creating a Request
    ListAppInstanceUserEndpoints (..),
    newListAppInstanceUserEndpoints,

    -- * Request Lenses
    listAppInstanceUserEndpoints_nextToken,
    listAppInstanceUserEndpoints_maxResults,
    listAppInstanceUserEndpoints_appInstanceUserArn,

    -- * Destructuring the Response
    ListAppInstanceUserEndpointsResponse (..),
    newListAppInstanceUserEndpointsResponse,

    -- * Response Lenses
    listAppInstanceUserEndpointsResponse_nextToken,
    listAppInstanceUserEndpointsResponse_appInstanceUserEndpoints,
    listAppInstanceUserEndpointsResponse_httpStatus,
  )
where

import Amazonka.ChimeSDKIdentity.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListAppInstanceUserEndpoints' smart constructor.
data ListAppInstanceUserEndpoints = ListAppInstanceUserEndpoints'
  { -- | The token passed by previous API calls until all requested endpoints are
    -- returned.
    nextToken :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The maximum number of endpoints that you want to return.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The ARN of the @AppInstanceUser@.
    appInstanceUserArn :: Core.Sensitive Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListAppInstanceUserEndpoints' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listAppInstanceUserEndpoints_nextToken' - The token passed by previous API calls until all requested endpoints are
-- returned.
--
-- 'maxResults', 'listAppInstanceUserEndpoints_maxResults' - The maximum number of endpoints that you want to return.
--
-- 'appInstanceUserArn', 'listAppInstanceUserEndpoints_appInstanceUserArn' - The ARN of the @AppInstanceUser@.
newListAppInstanceUserEndpoints ::
  -- | 'appInstanceUserArn'
  Prelude.Text ->
  ListAppInstanceUserEndpoints
newListAppInstanceUserEndpoints pAppInstanceUserArn_ =
  ListAppInstanceUserEndpoints'
    { nextToken =
        Prelude.Nothing,
      maxResults = Prelude.Nothing,
      appInstanceUserArn =
        Core._Sensitive Lens.# pAppInstanceUserArn_
    }

-- | The token passed by previous API calls until all requested endpoints are
-- returned.
listAppInstanceUserEndpoints_nextToken :: Lens.Lens' ListAppInstanceUserEndpoints (Prelude.Maybe Prelude.Text)
listAppInstanceUserEndpoints_nextToken = Lens.lens (\ListAppInstanceUserEndpoints' {nextToken} -> nextToken) (\s@ListAppInstanceUserEndpoints' {} a -> s {nextToken = a} :: ListAppInstanceUserEndpoints) Prelude.. Lens.mapping Core._Sensitive

-- | The maximum number of endpoints that you want to return.
listAppInstanceUserEndpoints_maxResults :: Lens.Lens' ListAppInstanceUserEndpoints (Prelude.Maybe Prelude.Natural)
listAppInstanceUserEndpoints_maxResults = Lens.lens (\ListAppInstanceUserEndpoints' {maxResults} -> maxResults) (\s@ListAppInstanceUserEndpoints' {} a -> s {maxResults = a} :: ListAppInstanceUserEndpoints)

-- | The ARN of the @AppInstanceUser@.
listAppInstanceUserEndpoints_appInstanceUserArn :: Lens.Lens' ListAppInstanceUserEndpoints Prelude.Text
listAppInstanceUserEndpoints_appInstanceUserArn = Lens.lens (\ListAppInstanceUserEndpoints' {appInstanceUserArn} -> appInstanceUserArn) (\s@ListAppInstanceUserEndpoints' {} a -> s {appInstanceUserArn = a} :: ListAppInstanceUserEndpoints) Prelude.. Core._Sensitive

instance Core.AWSRequest ListAppInstanceUserEndpoints where
  type
    AWSResponse ListAppInstanceUserEndpoints =
      ListAppInstanceUserEndpointsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListAppInstanceUserEndpointsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> ( x Core..?> "AppInstanceUserEndpoints"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    ListAppInstanceUserEndpoints
  where
  hashWithSalt _salt ListAppInstanceUserEndpoints' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` appInstanceUserArn

instance Prelude.NFData ListAppInstanceUserEndpoints where
  rnf ListAppInstanceUserEndpoints' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf appInstanceUserArn

instance Core.ToHeaders ListAppInstanceUserEndpoints where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath ListAppInstanceUserEndpoints where
  toPath ListAppInstanceUserEndpoints' {..} =
    Prelude.mconcat
      [ "/app-instance-users/",
        Core.toBS appInstanceUserArn,
        "/endpoints"
      ]

instance Core.ToQuery ListAppInstanceUserEndpoints where
  toQuery ListAppInstanceUserEndpoints' {..} =
    Prelude.mconcat
      [ "next-token" Core.=: nextToken,
        "max-results" Core.=: maxResults
      ]

-- | /See:/ 'newListAppInstanceUserEndpointsResponse' smart constructor.
data ListAppInstanceUserEndpointsResponse = ListAppInstanceUserEndpointsResponse'
  { -- | The token passed by previous API calls until all requested endpoints are
    -- returned.
    nextToken :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The information for each requested @AppInstanceUserEndpoint@.
    appInstanceUserEndpoints :: Prelude.Maybe [AppInstanceUserEndpointSummary],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListAppInstanceUserEndpointsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listAppInstanceUserEndpointsResponse_nextToken' - The token passed by previous API calls until all requested endpoints are
-- returned.
--
-- 'appInstanceUserEndpoints', 'listAppInstanceUserEndpointsResponse_appInstanceUserEndpoints' - The information for each requested @AppInstanceUserEndpoint@.
--
-- 'httpStatus', 'listAppInstanceUserEndpointsResponse_httpStatus' - The response's http status code.
newListAppInstanceUserEndpointsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListAppInstanceUserEndpointsResponse
newListAppInstanceUserEndpointsResponse pHttpStatus_ =
  ListAppInstanceUserEndpointsResponse'
    { nextToken =
        Prelude.Nothing,
      appInstanceUserEndpoints =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token passed by previous API calls until all requested endpoints are
-- returned.
listAppInstanceUserEndpointsResponse_nextToken :: Lens.Lens' ListAppInstanceUserEndpointsResponse (Prelude.Maybe Prelude.Text)
listAppInstanceUserEndpointsResponse_nextToken = Lens.lens (\ListAppInstanceUserEndpointsResponse' {nextToken} -> nextToken) (\s@ListAppInstanceUserEndpointsResponse' {} a -> s {nextToken = a} :: ListAppInstanceUserEndpointsResponse) Prelude.. Lens.mapping Core._Sensitive

-- | The information for each requested @AppInstanceUserEndpoint@.
listAppInstanceUserEndpointsResponse_appInstanceUserEndpoints :: Lens.Lens' ListAppInstanceUserEndpointsResponse (Prelude.Maybe [AppInstanceUserEndpointSummary])
listAppInstanceUserEndpointsResponse_appInstanceUserEndpoints = Lens.lens (\ListAppInstanceUserEndpointsResponse' {appInstanceUserEndpoints} -> appInstanceUserEndpoints) (\s@ListAppInstanceUserEndpointsResponse' {} a -> s {appInstanceUserEndpoints = a} :: ListAppInstanceUserEndpointsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listAppInstanceUserEndpointsResponse_httpStatus :: Lens.Lens' ListAppInstanceUserEndpointsResponse Prelude.Int
listAppInstanceUserEndpointsResponse_httpStatus = Lens.lens (\ListAppInstanceUserEndpointsResponse' {httpStatus} -> httpStatus) (\s@ListAppInstanceUserEndpointsResponse' {} a -> s {httpStatus = a} :: ListAppInstanceUserEndpointsResponse)

instance
  Prelude.NFData
    ListAppInstanceUserEndpointsResponse
  where
  rnf ListAppInstanceUserEndpointsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf appInstanceUserEndpoints
      `Prelude.seq` Prelude.rnf httpStatus
