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
-- Module      : Amazonka.Pi.ListAvailableResourceDimensions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve the dimensions that can be queried for each specified metric
-- type on a specified DB instance.
module Amazonka.Pi.ListAvailableResourceDimensions
  ( -- * Creating a Request
    ListAvailableResourceDimensions (..),
    newListAvailableResourceDimensions,

    -- * Request Lenses
    listAvailableResourceDimensions_nextToken,
    listAvailableResourceDimensions_maxResults,
    listAvailableResourceDimensions_serviceType,
    listAvailableResourceDimensions_identifier,
    listAvailableResourceDimensions_metrics,

    -- * Destructuring the Response
    ListAvailableResourceDimensionsResponse (..),
    newListAvailableResourceDimensionsResponse,

    -- * Response Lenses
    listAvailableResourceDimensionsResponse_nextToken,
    listAvailableResourceDimensionsResponse_metricDimensions,
    listAvailableResourceDimensionsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.Pi.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListAvailableResourceDimensions' smart constructor.
data ListAvailableResourceDimensions = ListAvailableResourceDimensions'
  { -- | An optional pagination token provided by a previous request. If this
    -- parameter is specified, the response includes only records beyond the
    -- token, up to the value specified by @MaxRecords@.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of items to return in the response. If more items
    -- exist than the specified @MaxRecords@ value, a pagination token is
    -- included in the response so that the remaining results can be retrieved.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The Amazon Web Services service for which Performance Insights returns
    -- metrics.
    serviceType :: ServiceType,
    -- | An immutable identifier for a data source that is unique within an
    -- Amazon Web Services Region. Performance Insights gathers metrics from
    -- this data source. To use an Amazon RDS DB instance as a data source,
    -- specify its @DbiResourceId@ value. For example, specify
    -- @db-ABCDEFGHIJKLMNOPQRSTU1VWZ@.
    identifier :: Prelude.Text,
    -- | The types of metrics for which to retrieve dimensions. Valid values
    -- include @db.load@.
    metrics :: Prelude.NonEmpty Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListAvailableResourceDimensions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listAvailableResourceDimensions_nextToken' - An optional pagination token provided by a previous request. If this
-- parameter is specified, the response includes only records beyond the
-- token, up to the value specified by @MaxRecords@.
--
-- 'maxResults', 'listAvailableResourceDimensions_maxResults' - The maximum number of items to return in the response. If more items
-- exist than the specified @MaxRecords@ value, a pagination token is
-- included in the response so that the remaining results can be retrieved.
--
-- 'serviceType', 'listAvailableResourceDimensions_serviceType' - The Amazon Web Services service for which Performance Insights returns
-- metrics.
--
-- 'identifier', 'listAvailableResourceDimensions_identifier' - An immutable identifier for a data source that is unique within an
-- Amazon Web Services Region. Performance Insights gathers metrics from
-- this data source. To use an Amazon RDS DB instance as a data source,
-- specify its @DbiResourceId@ value. For example, specify
-- @db-ABCDEFGHIJKLMNOPQRSTU1VWZ@.
--
-- 'metrics', 'listAvailableResourceDimensions_metrics' - The types of metrics for which to retrieve dimensions. Valid values
-- include @db.load@.
newListAvailableResourceDimensions ::
  -- | 'serviceType'
  ServiceType ->
  -- | 'identifier'
  Prelude.Text ->
  -- | 'metrics'
  Prelude.NonEmpty Prelude.Text ->
  ListAvailableResourceDimensions
newListAvailableResourceDimensions
  pServiceType_
  pIdentifier_
  pMetrics_ =
    ListAvailableResourceDimensions'
      { nextToken =
          Prelude.Nothing,
        maxResults = Prelude.Nothing,
        serviceType = pServiceType_,
        identifier = pIdentifier_,
        metrics = Lens.coerced Lens.# pMetrics_
      }

-- | An optional pagination token provided by a previous request. If this
-- parameter is specified, the response includes only records beyond the
-- token, up to the value specified by @MaxRecords@.
listAvailableResourceDimensions_nextToken :: Lens.Lens' ListAvailableResourceDimensions (Prelude.Maybe Prelude.Text)
listAvailableResourceDimensions_nextToken = Lens.lens (\ListAvailableResourceDimensions' {nextToken} -> nextToken) (\s@ListAvailableResourceDimensions' {} a -> s {nextToken = a} :: ListAvailableResourceDimensions)

-- | The maximum number of items to return in the response. If more items
-- exist than the specified @MaxRecords@ value, a pagination token is
-- included in the response so that the remaining results can be retrieved.
listAvailableResourceDimensions_maxResults :: Lens.Lens' ListAvailableResourceDimensions (Prelude.Maybe Prelude.Natural)
listAvailableResourceDimensions_maxResults = Lens.lens (\ListAvailableResourceDimensions' {maxResults} -> maxResults) (\s@ListAvailableResourceDimensions' {} a -> s {maxResults = a} :: ListAvailableResourceDimensions)

-- | The Amazon Web Services service for which Performance Insights returns
-- metrics.
listAvailableResourceDimensions_serviceType :: Lens.Lens' ListAvailableResourceDimensions ServiceType
listAvailableResourceDimensions_serviceType = Lens.lens (\ListAvailableResourceDimensions' {serviceType} -> serviceType) (\s@ListAvailableResourceDimensions' {} a -> s {serviceType = a} :: ListAvailableResourceDimensions)

-- | An immutable identifier for a data source that is unique within an
-- Amazon Web Services Region. Performance Insights gathers metrics from
-- this data source. To use an Amazon RDS DB instance as a data source,
-- specify its @DbiResourceId@ value. For example, specify
-- @db-ABCDEFGHIJKLMNOPQRSTU1VWZ@.
listAvailableResourceDimensions_identifier :: Lens.Lens' ListAvailableResourceDimensions Prelude.Text
listAvailableResourceDimensions_identifier = Lens.lens (\ListAvailableResourceDimensions' {identifier} -> identifier) (\s@ListAvailableResourceDimensions' {} a -> s {identifier = a} :: ListAvailableResourceDimensions)

-- | The types of metrics for which to retrieve dimensions. Valid values
-- include @db.load@.
listAvailableResourceDimensions_metrics :: Lens.Lens' ListAvailableResourceDimensions (Prelude.NonEmpty Prelude.Text)
listAvailableResourceDimensions_metrics = Lens.lens (\ListAvailableResourceDimensions' {metrics} -> metrics) (\s@ListAvailableResourceDimensions' {} a -> s {metrics = a} :: ListAvailableResourceDimensions) Prelude.. Lens.coerced

instance
  Core.AWSRequest
    ListAvailableResourceDimensions
  where
  type
    AWSResponse ListAvailableResourceDimensions =
      ListAvailableResourceDimensionsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListAvailableResourceDimensionsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> ( x Core..?> "MetricDimensions"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    ListAvailableResourceDimensions
  where
  hashWithSalt
    _salt
    ListAvailableResourceDimensions' {..} =
      _salt `Prelude.hashWithSalt` nextToken
        `Prelude.hashWithSalt` maxResults
        `Prelude.hashWithSalt` serviceType
        `Prelude.hashWithSalt` identifier
        `Prelude.hashWithSalt` metrics

instance
  Prelude.NFData
    ListAvailableResourceDimensions
  where
  rnf ListAvailableResourceDimensions' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf serviceType
      `Prelude.seq` Prelude.rnf identifier
      `Prelude.seq` Prelude.rnf metrics

instance
  Core.ToHeaders
    ListAvailableResourceDimensions
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "PerformanceInsightsv20180227.ListAvailableResourceDimensions" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListAvailableResourceDimensions where
  toJSON ListAvailableResourceDimensions' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("MaxResults" Core..=) Prelude.<$> maxResults,
            Prelude.Just ("ServiceType" Core..= serviceType),
            Prelude.Just ("Identifier" Core..= identifier),
            Prelude.Just ("Metrics" Core..= metrics)
          ]
      )

instance Core.ToPath ListAvailableResourceDimensions where
  toPath = Prelude.const "/"

instance Core.ToQuery ListAvailableResourceDimensions where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListAvailableResourceDimensionsResponse' smart constructor.
data ListAvailableResourceDimensionsResponse = ListAvailableResourceDimensionsResponse'
  { -- | An optional pagination token provided by a previous request. If this
    -- parameter is specified, the response includes only records beyond the
    -- token, up to the value specified by @MaxRecords@.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The dimension information returned for requested metric types.
    metricDimensions :: Prelude.Maybe [MetricDimensionGroups],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListAvailableResourceDimensionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listAvailableResourceDimensionsResponse_nextToken' - An optional pagination token provided by a previous request. If this
-- parameter is specified, the response includes only records beyond the
-- token, up to the value specified by @MaxRecords@.
--
-- 'metricDimensions', 'listAvailableResourceDimensionsResponse_metricDimensions' - The dimension information returned for requested metric types.
--
-- 'httpStatus', 'listAvailableResourceDimensionsResponse_httpStatus' - The response's http status code.
newListAvailableResourceDimensionsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListAvailableResourceDimensionsResponse
newListAvailableResourceDimensionsResponse
  pHttpStatus_ =
    ListAvailableResourceDimensionsResponse'
      { nextToken =
          Prelude.Nothing,
        metricDimensions = Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | An optional pagination token provided by a previous request. If this
-- parameter is specified, the response includes only records beyond the
-- token, up to the value specified by @MaxRecords@.
listAvailableResourceDimensionsResponse_nextToken :: Lens.Lens' ListAvailableResourceDimensionsResponse (Prelude.Maybe Prelude.Text)
listAvailableResourceDimensionsResponse_nextToken = Lens.lens (\ListAvailableResourceDimensionsResponse' {nextToken} -> nextToken) (\s@ListAvailableResourceDimensionsResponse' {} a -> s {nextToken = a} :: ListAvailableResourceDimensionsResponse)

-- | The dimension information returned for requested metric types.
listAvailableResourceDimensionsResponse_metricDimensions :: Lens.Lens' ListAvailableResourceDimensionsResponse (Prelude.Maybe [MetricDimensionGroups])
listAvailableResourceDimensionsResponse_metricDimensions = Lens.lens (\ListAvailableResourceDimensionsResponse' {metricDimensions} -> metricDimensions) (\s@ListAvailableResourceDimensionsResponse' {} a -> s {metricDimensions = a} :: ListAvailableResourceDimensionsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listAvailableResourceDimensionsResponse_httpStatus :: Lens.Lens' ListAvailableResourceDimensionsResponse Prelude.Int
listAvailableResourceDimensionsResponse_httpStatus = Lens.lens (\ListAvailableResourceDimensionsResponse' {httpStatus} -> httpStatus) (\s@ListAvailableResourceDimensionsResponse' {} a -> s {httpStatus = a} :: ListAvailableResourceDimensionsResponse)

instance
  Prelude.NFData
    ListAvailableResourceDimensionsResponse
  where
  rnf ListAvailableResourceDimensionsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf metricDimensions
      `Prelude.seq` Prelude.rnf httpStatus
