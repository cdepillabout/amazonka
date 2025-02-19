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
-- Module      : Amazonka.ServiceCatalogAppRegistry.ListAttributeGroupsForApplication
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the details of all attribute groups associated with a specific
-- application. The results display in pages.
--
-- This operation returns paginated results.
module Amazonka.ServiceCatalogAppRegistry.ListAttributeGroupsForApplication
  ( -- * Creating a Request
    ListAttributeGroupsForApplication (..),
    newListAttributeGroupsForApplication,

    -- * Request Lenses
    listAttributeGroupsForApplication_nextToken,
    listAttributeGroupsForApplication_maxResults,
    listAttributeGroupsForApplication_application,

    -- * Destructuring the Response
    ListAttributeGroupsForApplicationResponse (..),
    newListAttributeGroupsForApplicationResponse,

    -- * Response Lenses
    listAttributeGroupsForApplicationResponse_nextToken,
    listAttributeGroupsForApplicationResponse_attributeGroupsDetails,
    listAttributeGroupsForApplicationResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.ServiceCatalogAppRegistry.Types

-- | /See:/ 'newListAttributeGroupsForApplication' smart constructor.
data ListAttributeGroupsForApplication = ListAttributeGroupsForApplication'
  { -- | This token retrieves the next page of results after a previous API call.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The upper bound of the number of results to return. The value cannot
    -- exceed 25. If you omit this parameter, it defaults to 25. This value is
    -- optional.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The name or ID of the application.
    application :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListAttributeGroupsForApplication' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listAttributeGroupsForApplication_nextToken' - This token retrieves the next page of results after a previous API call.
--
-- 'maxResults', 'listAttributeGroupsForApplication_maxResults' - The upper bound of the number of results to return. The value cannot
-- exceed 25. If you omit this parameter, it defaults to 25. This value is
-- optional.
--
-- 'application', 'listAttributeGroupsForApplication_application' - The name or ID of the application.
newListAttributeGroupsForApplication ::
  -- | 'application'
  Prelude.Text ->
  ListAttributeGroupsForApplication
newListAttributeGroupsForApplication pApplication_ =
  ListAttributeGroupsForApplication'
    { nextToken =
        Prelude.Nothing,
      maxResults = Prelude.Nothing,
      application = pApplication_
    }

-- | This token retrieves the next page of results after a previous API call.
listAttributeGroupsForApplication_nextToken :: Lens.Lens' ListAttributeGroupsForApplication (Prelude.Maybe Prelude.Text)
listAttributeGroupsForApplication_nextToken = Lens.lens (\ListAttributeGroupsForApplication' {nextToken} -> nextToken) (\s@ListAttributeGroupsForApplication' {} a -> s {nextToken = a} :: ListAttributeGroupsForApplication)

-- | The upper bound of the number of results to return. The value cannot
-- exceed 25. If you omit this parameter, it defaults to 25. This value is
-- optional.
listAttributeGroupsForApplication_maxResults :: Lens.Lens' ListAttributeGroupsForApplication (Prelude.Maybe Prelude.Natural)
listAttributeGroupsForApplication_maxResults = Lens.lens (\ListAttributeGroupsForApplication' {maxResults} -> maxResults) (\s@ListAttributeGroupsForApplication' {} a -> s {maxResults = a} :: ListAttributeGroupsForApplication)

-- | The name or ID of the application.
listAttributeGroupsForApplication_application :: Lens.Lens' ListAttributeGroupsForApplication Prelude.Text
listAttributeGroupsForApplication_application = Lens.lens (\ListAttributeGroupsForApplication' {application} -> application) (\s@ListAttributeGroupsForApplication' {} a -> s {application = a} :: ListAttributeGroupsForApplication)

instance
  Core.AWSPager
    ListAttributeGroupsForApplication
  where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listAttributeGroupsForApplicationResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listAttributeGroupsForApplicationResponse_attributeGroupsDetails
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listAttributeGroupsForApplication_nextToken
          Lens..~ rs
          Lens.^? listAttributeGroupsForApplicationResponse_nextToken
            Prelude.. Lens._Just

instance
  Core.AWSRequest
    ListAttributeGroupsForApplication
  where
  type
    AWSResponse ListAttributeGroupsForApplication =
      ListAttributeGroupsForApplicationResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListAttributeGroupsForApplicationResponse'
            Prelude.<$> (x Core..?> "nextToken")
              Prelude.<*> ( x Core..?> "attributeGroupsDetails"
                              Core..!@ Prelude.mempty
                          )
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    ListAttributeGroupsForApplication
  where
  hashWithSalt
    _salt
    ListAttributeGroupsForApplication' {..} =
      _salt `Prelude.hashWithSalt` nextToken
        `Prelude.hashWithSalt` maxResults
        `Prelude.hashWithSalt` application

instance
  Prelude.NFData
    ListAttributeGroupsForApplication
  where
  rnf ListAttributeGroupsForApplication' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf application

instance
  Core.ToHeaders
    ListAttributeGroupsForApplication
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

instance
  Core.ToPath
    ListAttributeGroupsForApplication
  where
  toPath ListAttributeGroupsForApplication' {..} =
    Prelude.mconcat
      [ "/applications/",
        Core.toBS application,
        "/attribute-group-details"
      ]

instance
  Core.ToQuery
    ListAttributeGroupsForApplication
  where
  toQuery ListAttributeGroupsForApplication' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListAttributeGroupsForApplicationResponse' smart constructor.
data ListAttributeGroupsForApplicationResponse = ListAttributeGroupsForApplicationResponse'
  { -- | The token to use to get the next page of results after a previous API
    -- call.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The details related to a specific AttributeGroup.
    attributeGroupsDetails :: Prelude.Maybe [AttributeGroupDetails],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListAttributeGroupsForApplicationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listAttributeGroupsForApplicationResponse_nextToken' - The token to use to get the next page of results after a previous API
-- call.
--
-- 'attributeGroupsDetails', 'listAttributeGroupsForApplicationResponse_attributeGroupsDetails' - The details related to a specific AttributeGroup.
--
-- 'httpStatus', 'listAttributeGroupsForApplicationResponse_httpStatus' - The response's http status code.
newListAttributeGroupsForApplicationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListAttributeGroupsForApplicationResponse
newListAttributeGroupsForApplicationResponse
  pHttpStatus_ =
    ListAttributeGroupsForApplicationResponse'
      { nextToken =
          Prelude.Nothing,
        attributeGroupsDetails =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The token to use to get the next page of results after a previous API
-- call.
listAttributeGroupsForApplicationResponse_nextToken :: Lens.Lens' ListAttributeGroupsForApplicationResponse (Prelude.Maybe Prelude.Text)
listAttributeGroupsForApplicationResponse_nextToken = Lens.lens (\ListAttributeGroupsForApplicationResponse' {nextToken} -> nextToken) (\s@ListAttributeGroupsForApplicationResponse' {} a -> s {nextToken = a} :: ListAttributeGroupsForApplicationResponse)

-- | The details related to a specific AttributeGroup.
listAttributeGroupsForApplicationResponse_attributeGroupsDetails :: Lens.Lens' ListAttributeGroupsForApplicationResponse (Prelude.Maybe [AttributeGroupDetails])
listAttributeGroupsForApplicationResponse_attributeGroupsDetails = Lens.lens (\ListAttributeGroupsForApplicationResponse' {attributeGroupsDetails} -> attributeGroupsDetails) (\s@ListAttributeGroupsForApplicationResponse' {} a -> s {attributeGroupsDetails = a} :: ListAttributeGroupsForApplicationResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listAttributeGroupsForApplicationResponse_httpStatus :: Lens.Lens' ListAttributeGroupsForApplicationResponse Prelude.Int
listAttributeGroupsForApplicationResponse_httpStatus = Lens.lens (\ListAttributeGroupsForApplicationResponse' {httpStatus} -> httpStatus) (\s@ListAttributeGroupsForApplicationResponse' {} a -> s {httpStatus = a} :: ListAttributeGroupsForApplicationResponse)

instance
  Prelude.NFData
    ListAttributeGroupsForApplicationResponse
  where
  rnf ListAttributeGroupsForApplicationResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf attributeGroupsDetails
      `Prelude.seq` Prelude.rnf httpStatus
