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
-- Module      : Amazonka.Chime.ListPhoneNumbers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the phone numbers for the specified Amazon Chime account, Amazon
-- Chime user, Amazon Chime Voice Connector, or Amazon Chime Voice
-- Connector group.
module Amazonka.Chime.ListPhoneNumbers
  ( -- * Creating a Request
    ListPhoneNumbers (..),
    newListPhoneNumbers,

    -- * Request Lenses
    listPhoneNumbers_nextToken,
    listPhoneNumbers_productType,
    listPhoneNumbers_filterValue,
    listPhoneNumbers_status,
    listPhoneNumbers_filterName,
    listPhoneNumbers_maxResults,

    -- * Destructuring the Response
    ListPhoneNumbersResponse (..),
    newListPhoneNumbersResponse,

    -- * Response Lenses
    listPhoneNumbersResponse_nextToken,
    listPhoneNumbersResponse_phoneNumbers,
    listPhoneNumbersResponse_httpStatus,
  )
where

import Amazonka.Chime.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListPhoneNumbers' smart constructor.
data ListPhoneNumbers = ListPhoneNumbers'
  { -- | The token to use to retrieve the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The phone number product type.
    productType :: Prelude.Maybe PhoneNumberProductType,
    -- | The value to use for the filter.
    filterValue :: Prelude.Maybe Prelude.Text,
    -- | The phone number status.
    status :: Prelude.Maybe PhoneNumberStatus,
    -- | The filter to use to limit the number of results.
    filterName :: Prelude.Maybe PhoneNumberAssociationName,
    -- | The maximum number of results to return in a single call.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListPhoneNumbers' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listPhoneNumbers_nextToken' - The token to use to retrieve the next page of results.
--
-- 'productType', 'listPhoneNumbers_productType' - The phone number product type.
--
-- 'filterValue', 'listPhoneNumbers_filterValue' - The value to use for the filter.
--
-- 'status', 'listPhoneNumbers_status' - The phone number status.
--
-- 'filterName', 'listPhoneNumbers_filterName' - The filter to use to limit the number of results.
--
-- 'maxResults', 'listPhoneNumbers_maxResults' - The maximum number of results to return in a single call.
newListPhoneNumbers ::
  ListPhoneNumbers
newListPhoneNumbers =
  ListPhoneNumbers'
    { nextToken = Prelude.Nothing,
      productType = Prelude.Nothing,
      filterValue = Prelude.Nothing,
      status = Prelude.Nothing,
      filterName = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The token to use to retrieve the next page of results.
listPhoneNumbers_nextToken :: Lens.Lens' ListPhoneNumbers (Prelude.Maybe Prelude.Text)
listPhoneNumbers_nextToken = Lens.lens (\ListPhoneNumbers' {nextToken} -> nextToken) (\s@ListPhoneNumbers' {} a -> s {nextToken = a} :: ListPhoneNumbers)

-- | The phone number product type.
listPhoneNumbers_productType :: Lens.Lens' ListPhoneNumbers (Prelude.Maybe PhoneNumberProductType)
listPhoneNumbers_productType = Lens.lens (\ListPhoneNumbers' {productType} -> productType) (\s@ListPhoneNumbers' {} a -> s {productType = a} :: ListPhoneNumbers)

-- | The value to use for the filter.
listPhoneNumbers_filterValue :: Lens.Lens' ListPhoneNumbers (Prelude.Maybe Prelude.Text)
listPhoneNumbers_filterValue = Lens.lens (\ListPhoneNumbers' {filterValue} -> filterValue) (\s@ListPhoneNumbers' {} a -> s {filterValue = a} :: ListPhoneNumbers)

-- | The phone number status.
listPhoneNumbers_status :: Lens.Lens' ListPhoneNumbers (Prelude.Maybe PhoneNumberStatus)
listPhoneNumbers_status = Lens.lens (\ListPhoneNumbers' {status} -> status) (\s@ListPhoneNumbers' {} a -> s {status = a} :: ListPhoneNumbers)

-- | The filter to use to limit the number of results.
listPhoneNumbers_filterName :: Lens.Lens' ListPhoneNumbers (Prelude.Maybe PhoneNumberAssociationName)
listPhoneNumbers_filterName = Lens.lens (\ListPhoneNumbers' {filterName} -> filterName) (\s@ListPhoneNumbers' {} a -> s {filterName = a} :: ListPhoneNumbers)

-- | The maximum number of results to return in a single call.
listPhoneNumbers_maxResults :: Lens.Lens' ListPhoneNumbers (Prelude.Maybe Prelude.Natural)
listPhoneNumbers_maxResults = Lens.lens (\ListPhoneNumbers' {maxResults} -> maxResults) (\s@ListPhoneNumbers' {} a -> s {maxResults = a} :: ListPhoneNumbers)

instance Core.AWSRequest ListPhoneNumbers where
  type
    AWSResponse ListPhoneNumbers =
      ListPhoneNumbersResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListPhoneNumbersResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "PhoneNumbers" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListPhoneNumbers where
  hashWithSalt _salt ListPhoneNumbers' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` productType
      `Prelude.hashWithSalt` filterValue
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` filterName
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData ListPhoneNumbers where
  rnf ListPhoneNumbers' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf productType
      `Prelude.seq` Prelude.rnf filterValue
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf filterName
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders ListPhoneNumbers where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath ListPhoneNumbers where
  toPath = Prelude.const "/phone-numbers"

instance Core.ToQuery ListPhoneNumbers where
  toQuery ListPhoneNumbers' {..} =
    Prelude.mconcat
      [ "next-token" Core.=: nextToken,
        "product-type" Core.=: productType,
        "filter-value" Core.=: filterValue,
        "status" Core.=: status,
        "filter-name" Core.=: filterName,
        "max-results" Core.=: maxResults
      ]

-- | /See:/ 'newListPhoneNumbersResponse' smart constructor.
data ListPhoneNumbersResponse = ListPhoneNumbersResponse'
  { -- | The token to use to retrieve the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The phone number details.
    phoneNumbers :: Prelude.Maybe [PhoneNumber],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListPhoneNumbersResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listPhoneNumbersResponse_nextToken' - The token to use to retrieve the next page of results.
--
-- 'phoneNumbers', 'listPhoneNumbersResponse_phoneNumbers' - The phone number details.
--
-- 'httpStatus', 'listPhoneNumbersResponse_httpStatus' - The response's http status code.
newListPhoneNumbersResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListPhoneNumbersResponse
newListPhoneNumbersResponse pHttpStatus_ =
  ListPhoneNumbersResponse'
    { nextToken =
        Prelude.Nothing,
      phoneNumbers = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token to use to retrieve the next page of results.
listPhoneNumbersResponse_nextToken :: Lens.Lens' ListPhoneNumbersResponse (Prelude.Maybe Prelude.Text)
listPhoneNumbersResponse_nextToken = Lens.lens (\ListPhoneNumbersResponse' {nextToken} -> nextToken) (\s@ListPhoneNumbersResponse' {} a -> s {nextToken = a} :: ListPhoneNumbersResponse)

-- | The phone number details.
listPhoneNumbersResponse_phoneNumbers :: Lens.Lens' ListPhoneNumbersResponse (Prelude.Maybe [PhoneNumber])
listPhoneNumbersResponse_phoneNumbers = Lens.lens (\ListPhoneNumbersResponse' {phoneNumbers} -> phoneNumbers) (\s@ListPhoneNumbersResponse' {} a -> s {phoneNumbers = a} :: ListPhoneNumbersResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listPhoneNumbersResponse_httpStatus :: Lens.Lens' ListPhoneNumbersResponse Prelude.Int
listPhoneNumbersResponse_httpStatus = Lens.lens (\ListPhoneNumbersResponse' {httpStatus} -> httpStatus) (\s@ListPhoneNumbersResponse' {} a -> s {httpStatus = a} :: ListPhoneNumbersResponse)

instance Prelude.NFData ListPhoneNumbersResponse where
  rnf ListPhoneNumbersResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf phoneNumbers
      `Prelude.seq` Prelude.rnf httpStatus
