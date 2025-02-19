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
-- Module      : Amazonka.SES.ListIdentities
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list containing all of the identities (email addresses and
-- domains) for your AWS account in the current AWS Region, regardless of
-- verification status.
--
-- You can execute this operation no more than once per second.
--
-- This operation returns paginated results.
module Amazonka.SES.ListIdentities
  ( -- * Creating a Request
    ListIdentities (..),
    newListIdentities,

    -- * Request Lenses
    listIdentities_nextToken,
    listIdentities_maxItems,
    listIdentities_identityType,

    -- * Destructuring the Response
    ListIdentitiesResponse (..),
    newListIdentitiesResponse,

    -- * Response Lenses
    listIdentitiesResponse_nextToken,
    listIdentitiesResponse_httpStatus,
    listIdentitiesResponse_identities,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.SES.Types

-- | Represents a request to return a list of all identities (email addresses
-- and domains) that you have attempted to verify under your AWS account,
-- regardless of verification status.
--
-- /See:/ 'newListIdentities' smart constructor.
data ListIdentities = ListIdentities'
  { -- | The token to use for pagination.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of identities per page. Possible values are 1-1000
    -- inclusive.
    maxItems :: Prelude.Maybe Prelude.Int,
    -- | The type of the identities to list. Possible values are \"EmailAddress\"
    -- and \"Domain\". If this parameter is omitted, then all identities will
    -- be listed.
    identityType :: Prelude.Maybe IdentityType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListIdentities' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listIdentities_nextToken' - The token to use for pagination.
--
-- 'maxItems', 'listIdentities_maxItems' - The maximum number of identities per page. Possible values are 1-1000
-- inclusive.
--
-- 'identityType', 'listIdentities_identityType' - The type of the identities to list. Possible values are \"EmailAddress\"
-- and \"Domain\". If this parameter is omitted, then all identities will
-- be listed.
newListIdentities ::
  ListIdentities
newListIdentities =
  ListIdentities'
    { nextToken = Prelude.Nothing,
      maxItems = Prelude.Nothing,
      identityType = Prelude.Nothing
    }

-- | The token to use for pagination.
listIdentities_nextToken :: Lens.Lens' ListIdentities (Prelude.Maybe Prelude.Text)
listIdentities_nextToken = Lens.lens (\ListIdentities' {nextToken} -> nextToken) (\s@ListIdentities' {} a -> s {nextToken = a} :: ListIdentities)

-- | The maximum number of identities per page. Possible values are 1-1000
-- inclusive.
listIdentities_maxItems :: Lens.Lens' ListIdentities (Prelude.Maybe Prelude.Int)
listIdentities_maxItems = Lens.lens (\ListIdentities' {maxItems} -> maxItems) (\s@ListIdentities' {} a -> s {maxItems = a} :: ListIdentities)

-- | The type of the identities to list. Possible values are \"EmailAddress\"
-- and \"Domain\". If this parameter is omitted, then all identities will
-- be listed.
listIdentities_identityType :: Lens.Lens' ListIdentities (Prelude.Maybe IdentityType)
listIdentities_identityType = Lens.lens (\ListIdentities' {identityType} -> identityType) (\s@ListIdentities' {} a -> s {identityType = a} :: ListIdentities)

instance Core.AWSPager ListIdentities where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listIdentitiesResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        (rs Lens.^. listIdentitiesResponse_identities) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listIdentities_nextToken
          Lens..~ rs
          Lens.^? listIdentitiesResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest ListIdentities where
  type
    AWSResponse ListIdentities =
      ListIdentitiesResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "ListIdentitiesResult"
      ( \s h x ->
          ListIdentitiesResponse'
            Prelude.<$> (x Core..@? "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> ( x Core..@? "Identities" Core..!@ Prelude.mempty
                            Prelude.>>= Core.parseXMLList "member"
                        )
      )

instance Prelude.Hashable ListIdentities where
  hashWithSalt _salt ListIdentities' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxItems
      `Prelude.hashWithSalt` identityType

instance Prelude.NFData ListIdentities where
  rnf ListIdentities' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxItems
      `Prelude.seq` Prelude.rnf identityType

instance Core.ToHeaders ListIdentities where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath ListIdentities where
  toPath = Prelude.const "/"

instance Core.ToQuery ListIdentities where
  toQuery ListIdentities' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("ListIdentities" :: Prelude.ByteString),
        "Version"
          Core.=: ("2010-12-01" :: Prelude.ByteString),
        "NextToken" Core.=: nextToken,
        "MaxItems" Core.=: maxItems,
        "IdentityType" Core.=: identityType
      ]

-- | A list of all identities that you have attempted to verify under your
-- AWS account, regardless of verification status.
--
-- /See:/ 'newListIdentitiesResponse' smart constructor.
data ListIdentitiesResponse = ListIdentitiesResponse'
  { -- | The token used for pagination.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | A list of identities.
    identities :: [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListIdentitiesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listIdentitiesResponse_nextToken' - The token used for pagination.
--
-- 'httpStatus', 'listIdentitiesResponse_httpStatus' - The response's http status code.
--
-- 'identities', 'listIdentitiesResponse_identities' - A list of identities.
newListIdentitiesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListIdentitiesResponse
newListIdentitiesResponse pHttpStatus_ =
  ListIdentitiesResponse'
    { nextToken =
        Prelude.Nothing,
      httpStatus = pHttpStatus_,
      identities = Prelude.mempty
    }

-- | The token used for pagination.
listIdentitiesResponse_nextToken :: Lens.Lens' ListIdentitiesResponse (Prelude.Maybe Prelude.Text)
listIdentitiesResponse_nextToken = Lens.lens (\ListIdentitiesResponse' {nextToken} -> nextToken) (\s@ListIdentitiesResponse' {} a -> s {nextToken = a} :: ListIdentitiesResponse)

-- | The response's http status code.
listIdentitiesResponse_httpStatus :: Lens.Lens' ListIdentitiesResponse Prelude.Int
listIdentitiesResponse_httpStatus = Lens.lens (\ListIdentitiesResponse' {httpStatus} -> httpStatus) (\s@ListIdentitiesResponse' {} a -> s {httpStatus = a} :: ListIdentitiesResponse)

-- | A list of identities.
listIdentitiesResponse_identities :: Lens.Lens' ListIdentitiesResponse [Prelude.Text]
listIdentitiesResponse_identities = Lens.lens (\ListIdentitiesResponse' {identities} -> identities) (\s@ListIdentitiesResponse' {} a -> s {identities = a} :: ListIdentitiesResponse) Prelude.. Lens.coerced

instance Prelude.NFData ListIdentitiesResponse where
  rnf ListIdentitiesResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf identities
