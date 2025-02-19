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
-- Module      : Amazonka.MediaLive.ListInputSecurityGroups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Produces a list of Input Security Groups for an account
--
-- This operation returns paginated results.
module Amazonka.MediaLive.ListInputSecurityGroups
  ( -- * Creating a Request
    ListInputSecurityGroups (..),
    newListInputSecurityGroups,

    -- * Request Lenses
    listInputSecurityGroups_nextToken,
    listInputSecurityGroups_maxResults,

    -- * Destructuring the Response
    ListInputSecurityGroupsResponse (..),
    newListInputSecurityGroupsResponse,

    -- * Response Lenses
    listInputSecurityGroupsResponse_inputSecurityGroups,
    listInputSecurityGroupsResponse_nextToken,
    listInputSecurityGroupsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MediaLive.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | Placeholder documentation for ListInputSecurityGroupsRequest
--
-- /See:/ 'newListInputSecurityGroups' smart constructor.
data ListInputSecurityGroups = ListInputSecurityGroups'
  { nextToken :: Prelude.Maybe Prelude.Text,
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListInputSecurityGroups' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listInputSecurityGroups_nextToken' - Undocumented member.
--
-- 'maxResults', 'listInputSecurityGroups_maxResults' - Undocumented member.
newListInputSecurityGroups ::
  ListInputSecurityGroups
newListInputSecurityGroups =
  ListInputSecurityGroups'
    { nextToken =
        Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | Undocumented member.
listInputSecurityGroups_nextToken :: Lens.Lens' ListInputSecurityGroups (Prelude.Maybe Prelude.Text)
listInputSecurityGroups_nextToken = Lens.lens (\ListInputSecurityGroups' {nextToken} -> nextToken) (\s@ListInputSecurityGroups' {} a -> s {nextToken = a} :: ListInputSecurityGroups)

-- | Undocumented member.
listInputSecurityGroups_maxResults :: Lens.Lens' ListInputSecurityGroups (Prelude.Maybe Prelude.Natural)
listInputSecurityGroups_maxResults = Lens.lens (\ListInputSecurityGroups' {maxResults} -> maxResults) (\s@ListInputSecurityGroups' {} a -> s {maxResults = a} :: ListInputSecurityGroups)

instance Core.AWSPager ListInputSecurityGroups where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listInputSecurityGroupsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listInputSecurityGroupsResponse_inputSecurityGroups
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listInputSecurityGroups_nextToken
          Lens..~ rs
          Lens.^? listInputSecurityGroupsResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListInputSecurityGroups where
  type
    AWSResponse ListInputSecurityGroups =
      ListInputSecurityGroupsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListInputSecurityGroupsResponse'
            Prelude.<$> ( x Core..?> "inputSecurityGroups"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListInputSecurityGroups where
  hashWithSalt _salt ListInputSecurityGroups' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData ListInputSecurityGroups where
  rnf ListInputSecurityGroups' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders ListInputSecurityGroups where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListInputSecurityGroups where
  toPath = Prelude.const "/prod/inputSecurityGroups"

instance Core.ToQuery ListInputSecurityGroups where
  toQuery ListInputSecurityGroups' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | Placeholder documentation for ListInputSecurityGroupsResponse
--
-- /See:/ 'newListInputSecurityGroupsResponse' smart constructor.
data ListInputSecurityGroupsResponse = ListInputSecurityGroupsResponse'
  { -- | List of input security groups
    inputSecurityGroups :: Prelude.Maybe [InputSecurityGroup],
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListInputSecurityGroupsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'inputSecurityGroups', 'listInputSecurityGroupsResponse_inputSecurityGroups' - List of input security groups
--
-- 'nextToken', 'listInputSecurityGroupsResponse_nextToken' - Undocumented member.
--
-- 'httpStatus', 'listInputSecurityGroupsResponse_httpStatus' - The response's http status code.
newListInputSecurityGroupsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListInputSecurityGroupsResponse
newListInputSecurityGroupsResponse pHttpStatus_ =
  ListInputSecurityGroupsResponse'
    { inputSecurityGroups =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | List of input security groups
listInputSecurityGroupsResponse_inputSecurityGroups :: Lens.Lens' ListInputSecurityGroupsResponse (Prelude.Maybe [InputSecurityGroup])
listInputSecurityGroupsResponse_inputSecurityGroups = Lens.lens (\ListInputSecurityGroupsResponse' {inputSecurityGroups} -> inputSecurityGroups) (\s@ListInputSecurityGroupsResponse' {} a -> s {inputSecurityGroups = a} :: ListInputSecurityGroupsResponse) Prelude.. Lens.mapping Lens.coerced

-- | Undocumented member.
listInputSecurityGroupsResponse_nextToken :: Lens.Lens' ListInputSecurityGroupsResponse (Prelude.Maybe Prelude.Text)
listInputSecurityGroupsResponse_nextToken = Lens.lens (\ListInputSecurityGroupsResponse' {nextToken} -> nextToken) (\s@ListInputSecurityGroupsResponse' {} a -> s {nextToken = a} :: ListInputSecurityGroupsResponse)

-- | The response's http status code.
listInputSecurityGroupsResponse_httpStatus :: Lens.Lens' ListInputSecurityGroupsResponse Prelude.Int
listInputSecurityGroupsResponse_httpStatus = Lens.lens (\ListInputSecurityGroupsResponse' {httpStatus} -> httpStatus) (\s@ListInputSecurityGroupsResponse' {} a -> s {httpStatus = a} :: ListInputSecurityGroupsResponse)

instance
  Prelude.NFData
    ListInputSecurityGroupsResponse
  where
  rnf ListInputSecurityGroupsResponse' {..} =
    Prelude.rnf inputSecurityGroups
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf httpStatus
