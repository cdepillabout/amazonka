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
-- Module      : Amazonka.AWSHealth.DescribeEventTypes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the event types that meet the specified filter criteria. You can
-- use this API operation to find information about the Health event, such
-- as the category, Amazon Web Services service, and event code. The
-- metadata for each event appears in the
-- <https://docs.aws.amazon.com/health/latest/APIReference/API_EventType.html EventType>
-- object.
--
-- If you don\'t specify a filter criteria, the API operation returns all
-- event types, in no particular order.
--
-- This API operation uses pagination. Specify the @nextToken@ parameter in
-- the next request to return more results.
--
-- This operation returns paginated results.
module Amazonka.AWSHealth.DescribeEventTypes
  ( -- * Creating a Request
    DescribeEventTypes (..),
    newDescribeEventTypes,

    -- * Request Lenses
    describeEventTypes_nextToken,
    describeEventTypes_locale,
    describeEventTypes_filter,
    describeEventTypes_maxResults,

    -- * Destructuring the Response
    DescribeEventTypesResponse (..),
    newDescribeEventTypesResponse,

    -- * Response Lenses
    describeEventTypesResponse_nextToken,
    describeEventTypesResponse_eventTypes,
    describeEventTypesResponse_httpStatus,
  )
where

import Amazonka.AWSHealth.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDescribeEventTypes' smart constructor.
data DescribeEventTypes = DescribeEventTypes'
  { -- | If the results of a search are large, only a portion of the results are
    -- returned, and a @nextToken@ pagination token is returned in the
    -- response. To retrieve the next batch of results, reissue the search
    -- request and include the returned token. When all results have been
    -- returned, the response does not contain a pagination token value.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The locale (language) to return information in. English (en) is the
    -- default and the only supported value at this time.
    locale :: Prelude.Maybe Prelude.Text,
    -- | Values to narrow the results returned.
    filter' :: Prelude.Maybe EventTypeFilter,
    -- | The maximum number of items to return in one batch, between 10 and 100,
    -- inclusive.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeEventTypes' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeEventTypes_nextToken' - If the results of a search are large, only a portion of the results are
-- returned, and a @nextToken@ pagination token is returned in the
-- response. To retrieve the next batch of results, reissue the search
-- request and include the returned token. When all results have been
-- returned, the response does not contain a pagination token value.
--
-- 'locale', 'describeEventTypes_locale' - The locale (language) to return information in. English (en) is the
-- default and the only supported value at this time.
--
-- 'filter'', 'describeEventTypes_filter' - Values to narrow the results returned.
--
-- 'maxResults', 'describeEventTypes_maxResults' - The maximum number of items to return in one batch, between 10 and 100,
-- inclusive.
newDescribeEventTypes ::
  DescribeEventTypes
newDescribeEventTypes =
  DescribeEventTypes'
    { nextToken = Prelude.Nothing,
      locale = Prelude.Nothing,
      filter' = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | If the results of a search are large, only a portion of the results are
-- returned, and a @nextToken@ pagination token is returned in the
-- response. To retrieve the next batch of results, reissue the search
-- request and include the returned token. When all results have been
-- returned, the response does not contain a pagination token value.
describeEventTypes_nextToken :: Lens.Lens' DescribeEventTypes (Prelude.Maybe Prelude.Text)
describeEventTypes_nextToken = Lens.lens (\DescribeEventTypes' {nextToken} -> nextToken) (\s@DescribeEventTypes' {} a -> s {nextToken = a} :: DescribeEventTypes)

-- | The locale (language) to return information in. English (en) is the
-- default and the only supported value at this time.
describeEventTypes_locale :: Lens.Lens' DescribeEventTypes (Prelude.Maybe Prelude.Text)
describeEventTypes_locale = Lens.lens (\DescribeEventTypes' {locale} -> locale) (\s@DescribeEventTypes' {} a -> s {locale = a} :: DescribeEventTypes)

-- | Values to narrow the results returned.
describeEventTypes_filter :: Lens.Lens' DescribeEventTypes (Prelude.Maybe EventTypeFilter)
describeEventTypes_filter = Lens.lens (\DescribeEventTypes' {filter'} -> filter') (\s@DescribeEventTypes' {} a -> s {filter' = a} :: DescribeEventTypes)

-- | The maximum number of items to return in one batch, between 10 and 100,
-- inclusive.
describeEventTypes_maxResults :: Lens.Lens' DescribeEventTypes (Prelude.Maybe Prelude.Natural)
describeEventTypes_maxResults = Lens.lens (\DescribeEventTypes' {maxResults} -> maxResults) (\s@DescribeEventTypes' {} a -> s {maxResults = a} :: DescribeEventTypes)

instance Core.AWSPager DescribeEventTypes where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeEventTypesResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? describeEventTypesResponse_eventTypes
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& describeEventTypes_nextToken
          Lens..~ rs
          Lens.^? describeEventTypesResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest DescribeEventTypes where
  type
    AWSResponse DescribeEventTypes =
      DescribeEventTypesResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeEventTypesResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> (x Core..?> "eventTypes" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeEventTypes where
  hashWithSalt _salt DescribeEventTypes' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` locale
      `Prelude.hashWithSalt` filter'
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData DescribeEventTypes where
  rnf DescribeEventTypes' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf locale
      `Prelude.seq` Prelude.rnf filter'
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders DescribeEventTypes where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSHealth_20160804.DescribeEventTypes" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeEventTypes where
  toJSON DescribeEventTypes' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("nextToken" Core..=) Prelude.<$> nextToken,
            ("locale" Core..=) Prelude.<$> locale,
            ("filter" Core..=) Prelude.<$> filter',
            ("maxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath DescribeEventTypes where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeEventTypes where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeEventTypesResponse' smart constructor.
data DescribeEventTypesResponse = DescribeEventTypesResponse'
  { -- | If the results of a search are large, only a portion of the results are
    -- returned, and a @nextToken@ pagination token is returned in the
    -- response. To retrieve the next batch of results, reissue the search
    -- request and include the returned token. When all results have been
    -- returned, the response does not contain a pagination token value.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A list of event types that match the filter criteria. Event types have a
    -- category (@issue@, @accountNotification@, or @scheduledChange@), a
    -- service (for example, @EC2@, @RDS@, @DATAPIPELINE@, @BILLING@), and a
    -- code (in the format @AWS_SERVICE_DESCRIPTION @; for example,
    -- @AWS_EC2_SYSTEM_MAINTENANCE_EVENT@).
    eventTypes :: Prelude.Maybe [EventType],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeEventTypesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeEventTypesResponse_nextToken' - If the results of a search are large, only a portion of the results are
-- returned, and a @nextToken@ pagination token is returned in the
-- response. To retrieve the next batch of results, reissue the search
-- request and include the returned token. When all results have been
-- returned, the response does not contain a pagination token value.
--
-- 'eventTypes', 'describeEventTypesResponse_eventTypes' - A list of event types that match the filter criteria. Event types have a
-- category (@issue@, @accountNotification@, or @scheduledChange@), a
-- service (for example, @EC2@, @RDS@, @DATAPIPELINE@, @BILLING@), and a
-- code (in the format @AWS_SERVICE_DESCRIPTION @; for example,
-- @AWS_EC2_SYSTEM_MAINTENANCE_EVENT@).
--
-- 'httpStatus', 'describeEventTypesResponse_httpStatus' - The response's http status code.
newDescribeEventTypesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeEventTypesResponse
newDescribeEventTypesResponse pHttpStatus_ =
  DescribeEventTypesResponse'
    { nextToken =
        Prelude.Nothing,
      eventTypes = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | If the results of a search are large, only a portion of the results are
-- returned, and a @nextToken@ pagination token is returned in the
-- response. To retrieve the next batch of results, reissue the search
-- request and include the returned token. When all results have been
-- returned, the response does not contain a pagination token value.
describeEventTypesResponse_nextToken :: Lens.Lens' DescribeEventTypesResponse (Prelude.Maybe Prelude.Text)
describeEventTypesResponse_nextToken = Lens.lens (\DescribeEventTypesResponse' {nextToken} -> nextToken) (\s@DescribeEventTypesResponse' {} a -> s {nextToken = a} :: DescribeEventTypesResponse)

-- | A list of event types that match the filter criteria. Event types have a
-- category (@issue@, @accountNotification@, or @scheduledChange@), a
-- service (for example, @EC2@, @RDS@, @DATAPIPELINE@, @BILLING@), and a
-- code (in the format @AWS_SERVICE_DESCRIPTION @; for example,
-- @AWS_EC2_SYSTEM_MAINTENANCE_EVENT@).
describeEventTypesResponse_eventTypes :: Lens.Lens' DescribeEventTypesResponse (Prelude.Maybe [EventType])
describeEventTypesResponse_eventTypes = Lens.lens (\DescribeEventTypesResponse' {eventTypes} -> eventTypes) (\s@DescribeEventTypesResponse' {} a -> s {eventTypes = a} :: DescribeEventTypesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeEventTypesResponse_httpStatus :: Lens.Lens' DescribeEventTypesResponse Prelude.Int
describeEventTypesResponse_httpStatus = Lens.lens (\DescribeEventTypesResponse' {httpStatus} -> httpStatus) (\s@DescribeEventTypesResponse' {} a -> s {httpStatus = a} :: DescribeEventTypesResponse)

instance Prelude.NFData DescribeEventTypesResponse where
  rnf DescribeEventTypesResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf eventTypes
      `Prelude.seq` Prelude.rnf httpStatus
