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
-- Module      : Amazonka.CustomerProfiles.ListAccountIntegrations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all of the integrations associated to a specific URI in the AWS
-- account.
module Amazonka.CustomerProfiles.ListAccountIntegrations
  ( -- * Creating a Request
    ListAccountIntegrations (..),
    newListAccountIntegrations,

    -- * Request Lenses
    listAccountIntegrations_nextToken,
    listAccountIntegrations_maxResults,
    listAccountIntegrations_includeHidden,
    listAccountIntegrations_uri,

    -- * Destructuring the Response
    ListAccountIntegrationsResponse (..),
    newListAccountIntegrationsResponse,

    -- * Response Lenses
    listAccountIntegrationsResponse_items,
    listAccountIntegrationsResponse_nextToken,
    listAccountIntegrationsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.CustomerProfiles.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListAccountIntegrations' smart constructor.
data ListAccountIntegrations = ListAccountIntegrations'
  { -- | The pagination token from the previous ListAccountIntegrations API call.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of objects returned per page.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | Boolean to indicate if hidden integration should be returned. Defaults
    -- to @False@.
    includeHidden :: Prelude.Maybe Prelude.Bool,
    -- | The URI of the S3 bucket or any other type of data source.
    uri :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListAccountIntegrations' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listAccountIntegrations_nextToken' - The pagination token from the previous ListAccountIntegrations API call.
--
-- 'maxResults', 'listAccountIntegrations_maxResults' - The maximum number of objects returned per page.
--
-- 'includeHidden', 'listAccountIntegrations_includeHidden' - Boolean to indicate if hidden integration should be returned. Defaults
-- to @False@.
--
-- 'uri', 'listAccountIntegrations_uri' - The URI of the S3 bucket or any other type of data source.
newListAccountIntegrations ::
  -- | 'uri'
  Prelude.Text ->
  ListAccountIntegrations
newListAccountIntegrations pUri_ =
  ListAccountIntegrations'
    { nextToken =
        Prelude.Nothing,
      maxResults = Prelude.Nothing,
      includeHidden = Prelude.Nothing,
      uri = pUri_
    }

-- | The pagination token from the previous ListAccountIntegrations API call.
listAccountIntegrations_nextToken :: Lens.Lens' ListAccountIntegrations (Prelude.Maybe Prelude.Text)
listAccountIntegrations_nextToken = Lens.lens (\ListAccountIntegrations' {nextToken} -> nextToken) (\s@ListAccountIntegrations' {} a -> s {nextToken = a} :: ListAccountIntegrations)

-- | The maximum number of objects returned per page.
listAccountIntegrations_maxResults :: Lens.Lens' ListAccountIntegrations (Prelude.Maybe Prelude.Natural)
listAccountIntegrations_maxResults = Lens.lens (\ListAccountIntegrations' {maxResults} -> maxResults) (\s@ListAccountIntegrations' {} a -> s {maxResults = a} :: ListAccountIntegrations)

-- | Boolean to indicate if hidden integration should be returned. Defaults
-- to @False@.
listAccountIntegrations_includeHidden :: Lens.Lens' ListAccountIntegrations (Prelude.Maybe Prelude.Bool)
listAccountIntegrations_includeHidden = Lens.lens (\ListAccountIntegrations' {includeHidden} -> includeHidden) (\s@ListAccountIntegrations' {} a -> s {includeHidden = a} :: ListAccountIntegrations)

-- | The URI of the S3 bucket or any other type of data source.
listAccountIntegrations_uri :: Lens.Lens' ListAccountIntegrations Prelude.Text
listAccountIntegrations_uri = Lens.lens (\ListAccountIntegrations' {uri} -> uri) (\s@ListAccountIntegrations' {} a -> s {uri = a} :: ListAccountIntegrations)

instance Core.AWSRequest ListAccountIntegrations where
  type
    AWSResponse ListAccountIntegrations =
      ListAccountIntegrationsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListAccountIntegrationsResponse'
            Prelude.<$> (x Core..?> "Items" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListAccountIntegrations where
  hashWithSalt _salt ListAccountIntegrations' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` includeHidden
      `Prelude.hashWithSalt` uri

instance Prelude.NFData ListAccountIntegrations where
  rnf ListAccountIntegrations' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf includeHidden
      `Prelude.seq` Prelude.rnf uri

instance Core.ToHeaders ListAccountIntegrations where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListAccountIntegrations where
  toJSON ListAccountIntegrations' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("Uri" Core..= uri)]
      )

instance Core.ToPath ListAccountIntegrations where
  toPath = Prelude.const "/integrations"

instance Core.ToQuery ListAccountIntegrations where
  toQuery ListAccountIntegrations' {..} =
    Prelude.mconcat
      [ "next-token" Core.=: nextToken,
        "max-results" Core.=: maxResults,
        "include-hidden" Core.=: includeHidden
      ]

-- | /See:/ 'newListAccountIntegrationsResponse' smart constructor.
data ListAccountIntegrationsResponse = ListAccountIntegrationsResponse'
  { -- | The list of ListAccountIntegration instances.
    items :: Prelude.Maybe [ListIntegrationItem],
    -- | The pagination token from the previous ListAccountIntegrations API call.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListAccountIntegrationsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'items', 'listAccountIntegrationsResponse_items' - The list of ListAccountIntegration instances.
--
-- 'nextToken', 'listAccountIntegrationsResponse_nextToken' - The pagination token from the previous ListAccountIntegrations API call.
--
-- 'httpStatus', 'listAccountIntegrationsResponse_httpStatus' - The response's http status code.
newListAccountIntegrationsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListAccountIntegrationsResponse
newListAccountIntegrationsResponse pHttpStatus_ =
  ListAccountIntegrationsResponse'
    { items =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The list of ListAccountIntegration instances.
listAccountIntegrationsResponse_items :: Lens.Lens' ListAccountIntegrationsResponse (Prelude.Maybe [ListIntegrationItem])
listAccountIntegrationsResponse_items = Lens.lens (\ListAccountIntegrationsResponse' {items} -> items) (\s@ListAccountIntegrationsResponse' {} a -> s {items = a} :: ListAccountIntegrationsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The pagination token from the previous ListAccountIntegrations API call.
listAccountIntegrationsResponse_nextToken :: Lens.Lens' ListAccountIntegrationsResponse (Prelude.Maybe Prelude.Text)
listAccountIntegrationsResponse_nextToken = Lens.lens (\ListAccountIntegrationsResponse' {nextToken} -> nextToken) (\s@ListAccountIntegrationsResponse' {} a -> s {nextToken = a} :: ListAccountIntegrationsResponse)

-- | The response's http status code.
listAccountIntegrationsResponse_httpStatus :: Lens.Lens' ListAccountIntegrationsResponse Prelude.Int
listAccountIntegrationsResponse_httpStatus = Lens.lens (\ListAccountIntegrationsResponse' {httpStatus} -> httpStatus) (\s@ListAccountIntegrationsResponse' {} a -> s {httpStatus = a} :: ListAccountIntegrationsResponse)

instance
  Prelude.NFData
    ListAccountIntegrationsResponse
  where
  rnf ListAccountIntegrationsResponse' {..} =
    Prelude.rnf items
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf httpStatus
