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
-- Module      : Amazonka.AlexaBusiness.SearchDevices
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches devices and lists the ones that meet a set of filter criteria.
--
-- This operation returns paginated results.
module Amazonka.AlexaBusiness.SearchDevices
  ( -- * Creating a Request
    SearchDevices (..),
    newSearchDevices,

    -- * Request Lenses
    searchDevices_sortCriteria,
    searchDevices_nextToken,
    searchDevices_filters,
    searchDevices_maxResults,

    -- * Destructuring the Response
    SearchDevicesResponse (..),
    newSearchDevicesResponse,

    -- * Response Lenses
    searchDevicesResponse_devices,
    searchDevicesResponse_nextToken,
    searchDevicesResponse_totalCount,
    searchDevicesResponse_httpStatus,
  )
where

import Amazonka.AlexaBusiness.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newSearchDevices' smart constructor.
data SearchDevices = SearchDevices'
  { -- | The sort order to use in listing the specified set of devices. Supported
    -- sort keys are DeviceName, DeviceStatus, RoomName, DeviceType,
    -- DeviceSerialNumber, ConnectionStatus, NetworkProfileName,
    -- NetworkProfileArn, Feature, and FailureCode.
    sortCriteria :: Prelude.Maybe [Sort],
    -- | An optional token returned from a prior request. Use this token for
    -- pagination of results from this action. If this parameter is specified,
    -- the response includes only results beyond the token, up to the value
    -- specified by @MaxResults@.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The filters to use to list a specified set of devices. Supported filter
    -- keys are DeviceName, DeviceStatus, DeviceStatusDetailCode, RoomName,
    -- DeviceType, DeviceSerialNumber, UnassociatedOnly, ConnectionStatus
    -- (ONLINE and OFFLINE), NetworkProfileName, NetworkProfileArn, Feature,
    -- and FailureCode.
    filters :: Prelude.Maybe [Filter],
    -- | The maximum number of results to include in the response. If more
    -- results exist than the specified @MaxResults@ value, a token is included
    -- in the response so that the remaining results can be retrieved.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SearchDevices' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sortCriteria', 'searchDevices_sortCriteria' - The sort order to use in listing the specified set of devices. Supported
-- sort keys are DeviceName, DeviceStatus, RoomName, DeviceType,
-- DeviceSerialNumber, ConnectionStatus, NetworkProfileName,
-- NetworkProfileArn, Feature, and FailureCode.
--
-- 'nextToken', 'searchDevices_nextToken' - An optional token returned from a prior request. Use this token for
-- pagination of results from this action. If this parameter is specified,
-- the response includes only results beyond the token, up to the value
-- specified by @MaxResults@.
--
-- 'filters', 'searchDevices_filters' - The filters to use to list a specified set of devices. Supported filter
-- keys are DeviceName, DeviceStatus, DeviceStatusDetailCode, RoomName,
-- DeviceType, DeviceSerialNumber, UnassociatedOnly, ConnectionStatus
-- (ONLINE and OFFLINE), NetworkProfileName, NetworkProfileArn, Feature,
-- and FailureCode.
--
-- 'maxResults', 'searchDevices_maxResults' - The maximum number of results to include in the response. If more
-- results exist than the specified @MaxResults@ value, a token is included
-- in the response so that the remaining results can be retrieved.
newSearchDevices ::
  SearchDevices
newSearchDevices =
  SearchDevices'
    { sortCriteria = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      filters = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The sort order to use in listing the specified set of devices. Supported
-- sort keys are DeviceName, DeviceStatus, RoomName, DeviceType,
-- DeviceSerialNumber, ConnectionStatus, NetworkProfileName,
-- NetworkProfileArn, Feature, and FailureCode.
searchDevices_sortCriteria :: Lens.Lens' SearchDevices (Prelude.Maybe [Sort])
searchDevices_sortCriteria = Lens.lens (\SearchDevices' {sortCriteria} -> sortCriteria) (\s@SearchDevices' {} a -> s {sortCriteria = a} :: SearchDevices) Prelude.. Lens.mapping Lens.coerced

-- | An optional token returned from a prior request. Use this token for
-- pagination of results from this action. If this parameter is specified,
-- the response includes only results beyond the token, up to the value
-- specified by @MaxResults@.
searchDevices_nextToken :: Lens.Lens' SearchDevices (Prelude.Maybe Prelude.Text)
searchDevices_nextToken = Lens.lens (\SearchDevices' {nextToken} -> nextToken) (\s@SearchDevices' {} a -> s {nextToken = a} :: SearchDevices)

-- | The filters to use to list a specified set of devices. Supported filter
-- keys are DeviceName, DeviceStatus, DeviceStatusDetailCode, RoomName,
-- DeviceType, DeviceSerialNumber, UnassociatedOnly, ConnectionStatus
-- (ONLINE and OFFLINE), NetworkProfileName, NetworkProfileArn, Feature,
-- and FailureCode.
searchDevices_filters :: Lens.Lens' SearchDevices (Prelude.Maybe [Filter])
searchDevices_filters = Lens.lens (\SearchDevices' {filters} -> filters) (\s@SearchDevices' {} a -> s {filters = a} :: SearchDevices) Prelude.. Lens.mapping Lens.coerced

-- | The maximum number of results to include in the response. If more
-- results exist than the specified @MaxResults@ value, a token is included
-- in the response so that the remaining results can be retrieved.
searchDevices_maxResults :: Lens.Lens' SearchDevices (Prelude.Maybe Prelude.Natural)
searchDevices_maxResults = Lens.lens (\SearchDevices' {maxResults} -> maxResults) (\s@SearchDevices' {} a -> s {maxResults = a} :: SearchDevices)

instance Core.AWSPager SearchDevices where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? searchDevicesResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? searchDevicesResponse_devices Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& searchDevices_nextToken
          Lens..~ rs
          Lens.^? searchDevicesResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest SearchDevices where
  type
    AWSResponse SearchDevices =
      SearchDevicesResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          SearchDevicesResponse'
            Prelude.<$> (x Core..?> "Devices" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "TotalCount")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable SearchDevices where
  hashWithSalt _salt SearchDevices' {..} =
    _salt `Prelude.hashWithSalt` sortCriteria
      `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` filters
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData SearchDevices where
  rnf SearchDevices' {..} =
    Prelude.rnf sortCriteria
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf filters
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders SearchDevices where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AlexaForBusiness.SearchDevices" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON SearchDevices where
  toJSON SearchDevices' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("SortCriteria" Core..=) Prelude.<$> sortCriteria,
            ("NextToken" Core..=) Prelude.<$> nextToken,
            ("Filters" Core..=) Prelude.<$> filters,
            ("MaxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath SearchDevices where
  toPath = Prelude.const "/"

instance Core.ToQuery SearchDevices where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newSearchDevicesResponse' smart constructor.
data SearchDevicesResponse = SearchDevicesResponse'
  { -- | The devices that meet the specified set of filter criteria, in sort
    -- order.
    devices :: Prelude.Maybe [DeviceData],
    -- | The token returned to indicate that there is more data available.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The total number of devices returned.
    totalCount :: Prelude.Maybe Prelude.Int,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SearchDevicesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'devices', 'searchDevicesResponse_devices' - The devices that meet the specified set of filter criteria, in sort
-- order.
--
-- 'nextToken', 'searchDevicesResponse_nextToken' - The token returned to indicate that there is more data available.
--
-- 'totalCount', 'searchDevicesResponse_totalCount' - The total number of devices returned.
--
-- 'httpStatus', 'searchDevicesResponse_httpStatus' - The response's http status code.
newSearchDevicesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  SearchDevicesResponse
newSearchDevicesResponse pHttpStatus_ =
  SearchDevicesResponse'
    { devices = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      totalCount = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The devices that meet the specified set of filter criteria, in sort
-- order.
searchDevicesResponse_devices :: Lens.Lens' SearchDevicesResponse (Prelude.Maybe [DeviceData])
searchDevicesResponse_devices = Lens.lens (\SearchDevicesResponse' {devices} -> devices) (\s@SearchDevicesResponse' {} a -> s {devices = a} :: SearchDevicesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The token returned to indicate that there is more data available.
searchDevicesResponse_nextToken :: Lens.Lens' SearchDevicesResponse (Prelude.Maybe Prelude.Text)
searchDevicesResponse_nextToken = Lens.lens (\SearchDevicesResponse' {nextToken} -> nextToken) (\s@SearchDevicesResponse' {} a -> s {nextToken = a} :: SearchDevicesResponse)

-- | The total number of devices returned.
searchDevicesResponse_totalCount :: Lens.Lens' SearchDevicesResponse (Prelude.Maybe Prelude.Int)
searchDevicesResponse_totalCount = Lens.lens (\SearchDevicesResponse' {totalCount} -> totalCount) (\s@SearchDevicesResponse' {} a -> s {totalCount = a} :: SearchDevicesResponse)

-- | The response's http status code.
searchDevicesResponse_httpStatus :: Lens.Lens' SearchDevicesResponse Prelude.Int
searchDevicesResponse_httpStatus = Lens.lens (\SearchDevicesResponse' {httpStatus} -> httpStatus) (\s@SearchDevicesResponse' {} a -> s {httpStatus = a} :: SearchDevicesResponse)

instance Prelude.NFData SearchDevicesResponse where
  rnf SearchDevicesResponse' {..} =
    Prelude.rnf devices
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf totalCount
      `Prelude.seq` Prelude.rnf httpStatus
