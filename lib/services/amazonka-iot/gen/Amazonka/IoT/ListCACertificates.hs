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
-- Module      : Amazonka.IoT.ListCACertificates
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the CA certificates registered for your Amazon Web Services
-- account.
--
-- The results are paginated with a default page size of 25. You can use
-- the returned marker to retrieve additional results.
--
-- Requires permission to access the
-- <https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions ListCACertificates>
-- action.
--
-- This operation returns paginated results.
module Amazonka.IoT.ListCACertificates
  ( -- * Creating a Request
    ListCACertificates (..),
    newListCACertificates,

    -- * Request Lenses
    listCACertificates_templateName,
    listCACertificates_marker,
    listCACertificates_pageSize,
    listCACertificates_ascendingOrder,

    -- * Destructuring the Response
    ListCACertificatesResponse (..),
    newListCACertificatesResponse,

    -- * Response Lenses
    listCACertificatesResponse_certificates,
    listCACertificatesResponse_nextMarker,
    listCACertificatesResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IoT.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | Input for the ListCACertificates operation.
--
-- /See:/ 'newListCACertificates' smart constructor.
data ListCACertificates = ListCACertificates'
  { -- | The name of the provisioning template.
    templateName :: Prelude.Maybe Prelude.Text,
    -- | The marker for the next set of results.
    marker :: Prelude.Maybe Prelude.Text,
    -- | The result page size.
    pageSize :: Prelude.Maybe Prelude.Natural,
    -- | Determines the order of the results.
    ascendingOrder :: Prelude.Maybe Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListCACertificates' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'templateName', 'listCACertificates_templateName' - The name of the provisioning template.
--
-- 'marker', 'listCACertificates_marker' - The marker for the next set of results.
--
-- 'pageSize', 'listCACertificates_pageSize' - The result page size.
--
-- 'ascendingOrder', 'listCACertificates_ascendingOrder' - Determines the order of the results.
newListCACertificates ::
  ListCACertificates
newListCACertificates =
  ListCACertificates'
    { templateName = Prelude.Nothing,
      marker = Prelude.Nothing,
      pageSize = Prelude.Nothing,
      ascendingOrder = Prelude.Nothing
    }

-- | The name of the provisioning template.
listCACertificates_templateName :: Lens.Lens' ListCACertificates (Prelude.Maybe Prelude.Text)
listCACertificates_templateName = Lens.lens (\ListCACertificates' {templateName} -> templateName) (\s@ListCACertificates' {} a -> s {templateName = a} :: ListCACertificates)

-- | The marker for the next set of results.
listCACertificates_marker :: Lens.Lens' ListCACertificates (Prelude.Maybe Prelude.Text)
listCACertificates_marker = Lens.lens (\ListCACertificates' {marker} -> marker) (\s@ListCACertificates' {} a -> s {marker = a} :: ListCACertificates)

-- | The result page size.
listCACertificates_pageSize :: Lens.Lens' ListCACertificates (Prelude.Maybe Prelude.Natural)
listCACertificates_pageSize = Lens.lens (\ListCACertificates' {pageSize} -> pageSize) (\s@ListCACertificates' {} a -> s {pageSize = a} :: ListCACertificates)

-- | Determines the order of the results.
listCACertificates_ascendingOrder :: Lens.Lens' ListCACertificates (Prelude.Maybe Prelude.Bool)
listCACertificates_ascendingOrder = Lens.lens (\ListCACertificates' {ascendingOrder} -> ascendingOrder) (\s@ListCACertificates' {} a -> s {ascendingOrder = a} :: ListCACertificates)

instance Core.AWSPager ListCACertificates where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listCACertificatesResponse_nextMarker
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listCACertificatesResponse_certificates
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listCACertificates_marker
          Lens..~ rs
          Lens.^? listCACertificatesResponse_nextMarker
            Prelude.. Lens._Just

instance Core.AWSRequest ListCACertificates where
  type
    AWSResponse ListCACertificates =
      ListCACertificatesResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListCACertificatesResponse'
            Prelude.<$> (x Core..?> "certificates" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "nextMarker")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListCACertificates where
  hashWithSalt _salt ListCACertificates' {..} =
    _salt `Prelude.hashWithSalt` templateName
      `Prelude.hashWithSalt` marker
      `Prelude.hashWithSalt` pageSize
      `Prelude.hashWithSalt` ascendingOrder

instance Prelude.NFData ListCACertificates where
  rnf ListCACertificates' {..} =
    Prelude.rnf templateName
      `Prelude.seq` Prelude.rnf marker
      `Prelude.seq` Prelude.rnf pageSize
      `Prelude.seq` Prelude.rnf ascendingOrder

instance Core.ToHeaders ListCACertificates where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath ListCACertificates where
  toPath = Prelude.const "/cacertificates"

instance Core.ToQuery ListCACertificates where
  toQuery ListCACertificates' {..} =
    Prelude.mconcat
      [ "templateName" Core.=: templateName,
        "marker" Core.=: marker,
        "pageSize" Core.=: pageSize,
        "isAscendingOrder" Core.=: ascendingOrder
      ]

-- | The output from the ListCACertificates operation.
--
-- /See:/ 'newListCACertificatesResponse' smart constructor.
data ListCACertificatesResponse = ListCACertificatesResponse'
  { -- | The CA certificates registered in your Amazon Web Services account.
    certificates :: Prelude.Maybe [CACertificate],
    -- | The current position within the list of CA certificates.
    nextMarker :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListCACertificatesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'certificates', 'listCACertificatesResponse_certificates' - The CA certificates registered in your Amazon Web Services account.
--
-- 'nextMarker', 'listCACertificatesResponse_nextMarker' - The current position within the list of CA certificates.
--
-- 'httpStatus', 'listCACertificatesResponse_httpStatus' - The response's http status code.
newListCACertificatesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListCACertificatesResponse
newListCACertificatesResponse pHttpStatus_ =
  ListCACertificatesResponse'
    { certificates =
        Prelude.Nothing,
      nextMarker = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The CA certificates registered in your Amazon Web Services account.
listCACertificatesResponse_certificates :: Lens.Lens' ListCACertificatesResponse (Prelude.Maybe [CACertificate])
listCACertificatesResponse_certificates = Lens.lens (\ListCACertificatesResponse' {certificates} -> certificates) (\s@ListCACertificatesResponse' {} a -> s {certificates = a} :: ListCACertificatesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The current position within the list of CA certificates.
listCACertificatesResponse_nextMarker :: Lens.Lens' ListCACertificatesResponse (Prelude.Maybe Prelude.Text)
listCACertificatesResponse_nextMarker = Lens.lens (\ListCACertificatesResponse' {nextMarker} -> nextMarker) (\s@ListCACertificatesResponse' {} a -> s {nextMarker = a} :: ListCACertificatesResponse)

-- | The response's http status code.
listCACertificatesResponse_httpStatus :: Lens.Lens' ListCACertificatesResponse Prelude.Int
listCACertificatesResponse_httpStatus = Lens.lens (\ListCACertificatesResponse' {httpStatus} -> httpStatus) (\s@ListCACertificatesResponse' {} a -> s {httpStatus = a} :: ListCACertificatesResponse)

instance Prelude.NFData ListCACertificatesResponse where
  rnf ListCACertificatesResponse' {..} =
    Prelude.rnf certificates
      `Prelude.seq` Prelude.rnf nextMarker
      `Prelude.seq` Prelude.rnf httpStatus
