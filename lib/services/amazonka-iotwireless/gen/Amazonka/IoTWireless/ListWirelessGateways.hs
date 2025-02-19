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
-- Module      : Amazonka.IoTWireless.ListWirelessGateways
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the wireless gateways registered to your AWS account.
module Amazonka.IoTWireless.ListWirelessGateways
  ( -- * Creating a Request
    ListWirelessGateways (..),
    newListWirelessGateways,

    -- * Request Lenses
    listWirelessGateways_nextToken,
    listWirelessGateways_maxResults,

    -- * Destructuring the Response
    ListWirelessGatewaysResponse (..),
    newListWirelessGatewaysResponse,

    -- * Response Lenses
    listWirelessGatewaysResponse_nextToken,
    listWirelessGatewaysResponse_wirelessGatewayList,
    listWirelessGatewaysResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IoTWireless.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListWirelessGateways' smart constructor.
data ListWirelessGateways = ListWirelessGateways'
  { -- | To retrieve the next set of results, the @nextToken@ value from a
    -- previous response; otherwise __null__ to receive the first set of
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return in this operation.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListWirelessGateways' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listWirelessGateways_nextToken' - To retrieve the next set of results, the @nextToken@ value from a
-- previous response; otherwise __null__ to receive the first set of
-- results.
--
-- 'maxResults', 'listWirelessGateways_maxResults' - The maximum number of results to return in this operation.
newListWirelessGateways ::
  ListWirelessGateways
newListWirelessGateways =
  ListWirelessGateways'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | To retrieve the next set of results, the @nextToken@ value from a
-- previous response; otherwise __null__ to receive the first set of
-- results.
listWirelessGateways_nextToken :: Lens.Lens' ListWirelessGateways (Prelude.Maybe Prelude.Text)
listWirelessGateways_nextToken = Lens.lens (\ListWirelessGateways' {nextToken} -> nextToken) (\s@ListWirelessGateways' {} a -> s {nextToken = a} :: ListWirelessGateways)

-- | The maximum number of results to return in this operation.
listWirelessGateways_maxResults :: Lens.Lens' ListWirelessGateways (Prelude.Maybe Prelude.Natural)
listWirelessGateways_maxResults = Lens.lens (\ListWirelessGateways' {maxResults} -> maxResults) (\s@ListWirelessGateways' {} a -> s {maxResults = a} :: ListWirelessGateways)

instance Core.AWSRequest ListWirelessGateways where
  type
    AWSResponse ListWirelessGateways =
      ListWirelessGatewaysResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListWirelessGatewaysResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> ( x Core..?> "WirelessGatewayList"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListWirelessGateways where
  hashWithSalt _salt ListWirelessGateways' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults

instance Prelude.NFData ListWirelessGateways where
  rnf ListWirelessGateways' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults

instance Core.ToHeaders ListWirelessGateways where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath ListWirelessGateways where
  toPath = Prelude.const "/wireless-gateways"

instance Core.ToQuery ListWirelessGateways where
  toQuery ListWirelessGateways' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListWirelessGatewaysResponse' smart constructor.
data ListWirelessGatewaysResponse = ListWirelessGatewaysResponse'
  { -- | The token to use to get the next set of results, or __null__ if there
    -- are no additional results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The ID of the wireless gateway.
    wirelessGatewayList :: Prelude.Maybe [WirelessGatewayStatistics],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListWirelessGatewaysResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listWirelessGatewaysResponse_nextToken' - The token to use to get the next set of results, or __null__ if there
-- are no additional results.
--
-- 'wirelessGatewayList', 'listWirelessGatewaysResponse_wirelessGatewayList' - The ID of the wireless gateway.
--
-- 'httpStatus', 'listWirelessGatewaysResponse_httpStatus' - The response's http status code.
newListWirelessGatewaysResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListWirelessGatewaysResponse
newListWirelessGatewaysResponse pHttpStatus_ =
  ListWirelessGatewaysResponse'
    { nextToken =
        Prelude.Nothing,
      wirelessGatewayList = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token to use to get the next set of results, or __null__ if there
-- are no additional results.
listWirelessGatewaysResponse_nextToken :: Lens.Lens' ListWirelessGatewaysResponse (Prelude.Maybe Prelude.Text)
listWirelessGatewaysResponse_nextToken = Lens.lens (\ListWirelessGatewaysResponse' {nextToken} -> nextToken) (\s@ListWirelessGatewaysResponse' {} a -> s {nextToken = a} :: ListWirelessGatewaysResponse)

-- | The ID of the wireless gateway.
listWirelessGatewaysResponse_wirelessGatewayList :: Lens.Lens' ListWirelessGatewaysResponse (Prelude.Maybe [WirelessGatewayStatistics])
listWirelessGatewaysResponse_wirelessGatewayList = Lens.lens (\ListWirelessGatewaysResponse' {wirelessGatewayList} -> wirelessGatewayList) (\s@ListWirelessGatewaysResponse' {} a -> s {wirelessGatewayList = a} :: ListWirelessGatewaysResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listWirelessGatewaysResponse_httpStatus :: Lens.Lens' ListWirelessGatewaysResponse Prelude.Int
listWirelessGatewaysResponse_httpStatus = Lens.lens (\ListWirelessGatewaysResponse' {httpStatus} -> httpStatus) (\s@ListWirelessGatewaysResponse' {} a -> s {httpStatus = a} :: ListWirelessGatewaysResponse)

instance Prelude.NFData ListWirelessGatewaysResponse where
  rnf ListWirelessGatewaysResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf wirelessGatewayList
      `Prelude.seq` Prelude.rnf httpStatus
