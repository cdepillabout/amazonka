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
-- Module      : Amazonka.IAM.ListSigningCertificates
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the signing certificates associated with the
-- specified IAM user. If none exists, the operation returns an empty list.
--
-- Although each user is limited to a small number of signing certificates,
-- you can still paginate the results using the @MaxItems@ and @Marker@
-- parameters.
--
-- If the @UserName@ field is not specified, the user name is determined
-- implicitly based on the Amazon Web Services access key ID used to sign
-- the request for this operation. This operation works for access keys
-- under the Amazon Web Services account. Consequently, you can use this
-- operation to manage Amazon Web Services account root user credentials
-- even if the Amazon Web Services account has no associated users.
--
-- This operation returns paginated results.
module Amazonka.IAM.ListSigningCertificates
  ( -- * Creating a Request
    ListSigningCertificates (..),
    newListSigningCertificates,

    -- * Request Lenses
    listSigningCertificates_marker,
    listSigningCertificates_userName,
    listSigningCertificates_maxItems,

    -- * Destructuring the Response
    ListSigningCertificatesResponse (..),
    newListSigningCertificatesResponse,

    -- * Response Lenses
    listSigningCertificatesResponse_marker,
    listSigningCertificatesResponse_isTruncated,
    listSigningCertificatesResponse_httpStatus,
    listSigningCertificatesResponse_certificates,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IAM.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListSigningCertificates' smart constructor.
data ListSigningCertificates = ListSigningCertificates'
  { -- | Use this parameter only when paginating results and only after you
    -- receive a response indicating that the results are truncated. Set it to
    -- the value of the @Marker@ element in the response that you received to
    -- indicate where the next call should start.
    marker :: Prelude.Maybe Prelude.Text,
    -- | The name of the IAM user whose signing certificates you want to examine.
    --
    -- This parameter allows (through its
    -- <http://wikipedia.org/wiki/regex regex pattern>) a string of characters
    -- consisting of upper and lowercase alphanumeric characters with no
    -- spaces. You can also include any of the following characters: _+=,.\@-
    userName :: Prelude.Maybe Prelude.Text,
    -- | Use this only when paginating results to indicate the maximum number of
    -- items you want in the response. If additional items exist beyond the
    -- maximum you specify, the @IsTruncated@ response element is @true@.
    --
    -- If you do not include this parameter, the number of items defaults to
    -- 100. Note that IAM might return fewer results, even when there are more
    -- results available. In that case, the @IsTruncated@ response element
    -- returns @true@, and @Marker@ contains a value to include in the
    -- subsequent call that tells the service where to continue from.
    maxItems :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListSigningCertificates' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'marker', 'listSigningCertificates_marker' - Use this parameter only when paginating results and only after you
-- receive a response indicating that the results are truncated. Set it to
-- the value of the @Marker@ element in the response that you received to
-- indicate where the next call should start.
--
-- 'userName', 'listSigningCertificates_userName' - The name of the IAM user whose signing certificates you want to examine.
--
-- This parameter allows (through its
-- <http://wikipedia.org/wiki/regex regex pattern>) a string of characters
-- consisting of upper and lowercase alphanumeric characters with no
-- spaces. You can also include any of the following characters: _+=,.\@-
--
-- 'maxItems', 'listSigningCertificates_maxItems' - Use this only when paginating results to indicate the maximum number of
-- items you want in the response. If additional items exist beyond the
-- maximum you specify, the @IsTruncated@ response element is @true@.
--
-- If you do not include this parameter, the number of items defaults to
-- 100. Note that IAM might return fewer results, even when there are more
-- results available. In that case, the @IsTruncated@ response element
-- returns @true@, and @Marker@ contains a value to include in the
-- subsequent call that tells the service where to continue from.
newListSigningCertificates ::
  ListSigningCertificates
newListSigningCertificates =
  ListSigningCertificates'
    { marker = Prelude.Nothing,
      userName = Prelude.Nothing,
      maxItems = Prelude.Nothing
    }

-- | Use this parameter only when paginating results and only after you
-- receive a response indicating that the results are truncated. Set it to
-- the value of the @Marker@ element in the response that you received to
-- indicate where the next call should start.
listSigningCertificates_marker :: Lens.Lens' ListSigningCertificates (Prelude.Maybe Prelude.Text)
listSigningCertificates_marker = Lens.lens (\ListSigningCertificates' {marker} -> marker) (\s@ListSigningCertificates' {} a -> s {marker = a} :: ListSigningCertificates)

-- | The name of the IAM user whose signing certificates you want to examine.
--
-- This parameter allows (through its
-- <http://wikipedia.org/wiki/regex regex pattern>) a string of characters
-- consisting of upper and lowercase alphanumeric characters with no
-- spaces. You can also include any of the following characters: _+=,.\@-
listSigningCertificates_userName :: Lens.Lens' ListSigningCertificates (Prelude.Maybe Prelude.Text)
listSigningCertificates_userName = Lens.lens (\ListSigningCertificates' {userName} -> userName) (\s@ListSigningCertificates' {} a -> s {userName = a} :: ListSigningCertificates)

-- | Use this only when paginating results to indicate the maximum number of
-- items you want in the response. If additional items exist beyond the
-- maximum you specify, the @IsTruncated@ response element is @true@.
--
-- If you do not include this parameter, the number of items defaults to
-- 100. Note that IAM might return fewer results, even when there are more
-- results available. In that case, the @IsTruncated@ response element
-- returns @true@, and @Marker@ contains a value to include in the
-- subsequent call that tells the service where to continue from.
listSigningCertificates_maxItems :: Lens.Lens' ListSigningCertificates (Prelude.Maybe Prelude.Natural)
listSigningCertificates_maxItems = Lens.lens (\ListSigningCertificates' {maxItems} -> maxItems) (\s@ListSigningCertificates' {} a -> s {maxItems = a} :: ListSigningCertificates)

instance Core.AWSPager ListSigningCertificates where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listSigningCertificatesResponse_isTruncated
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.isNothing
        ( rs
            Lens.^? listSigningCertificatesResponse_marker
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listSigningCertificates_marker
          Lens..~ rs
          Lens.^? listSigningCertificatesResponse_marker
            Prelude.. Lens._Just

instance Core.AWSRequest ListSigningCertificates where
  type
    AWSResponse ListSigningCertificates =
      ListSigningCertificatesResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "ListSigningCertificatesResult"
      ( \s h x ->
          ListSigningCertificatesResponse'
            Prelude.<$> (x Core..@? "Marker")
            Prelude.<*> (x Core..@? "IsTruncated")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> ( x Core..@? "Certificates" Core..!@ Prelude.mempty
                            Prelude.>>= Core.parseXMLList "member"
                        )
      )

instance Prelude.Hashable ListSigningCertificates where
  hashWithSalt _salt ListSigningCertificates' {..} =
    _salt `Prelude.hashWithSalt` marker
      `Prelude.hashWithSalt` userName
      `Prelude.hashWithSalt` maxItems

instance Prelude.NFData ListSigningCertificates where
  rnf ListSigningCertificates' {..} =
    Prelude.rnf marker
      `Prelude.seq` Prelude.rnf userName
      `Prelude.seq` Prelude.rnf maxItems

instance Core.ToHeaders ListSigningCertificates where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath ListSigningCertificates where
  toPath = Prelude.const "/"

instance Core.ToQuery ListSigningCertificates where
  toQuery ListSigningCertificates' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("ListSigningCertificates" :: Prelude.ByteString),
        "Version"
          Core.=: ("2010-05-08" :: Prelude.ByteString),
        "Marker" Core.=: marker,
        "UserName" Core.=: userName,
        "MaxItems" Core.=: maxItems
      ]

-- | Contains the response to a successful ListSigningCertificates request.
--
-- /See:/ 'newListSigningCertificatesResponse' smart constructor.
data ListSigningCertificatesResponse = ListSigningCertificatesResponse'
  { -- | When @IsTruncated@ is @true@, this element is present and contains the
    -- value to use for the @Marker@ parameter in a subsequent pagination
    -- request.
    marker :: Prelude.Maybe Prelude.Text,
    -- | A flag that indicates whether there are more items to return. If your
    -- results were truncated, you can make a subsequent pagination request
    -- using the @Marker@ request parameter to retrieve more items. Note that
    -- IAM might return fewer than the @MaxItems@ number of results even when
    -- there are more results available. We recommend that you check
    -- @IsTruncated@ after every call to ensure that you receive all your
    -- results.
    isTruncated :: Prelude.Maybe Prelude.Bool,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | A list of the user\'s signing certificate information.
    certificates :: [SigningCertificate]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListSigningCertificatesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'marker', 'listSigningCertificatesResponse_marker' - When @IsTruncated@ is @true@, this element is present and contains the
-- value to use for the @Marker@ parameter in a subsequent pagination
-- request.
--
-- 'isTruncated', 'listSigningCertificatesResponse_isTruncated' - A flag that indicates whether there are more items to return. If your
-- results were truncated, you can make a subsequent pagination request
-- using the @Marker@ request parameter to retrieve more items. Note that
-- IAM might return fewer than the @MaxItems@ number of results even when
-- there are more results available. We recommend that you check
-- @IsTruncated@ after every call to ensure that you receive all your
-- results.
--
-- 'httpStatus', 'listSigningCertificatesResponse_httpStatus' - The response's http status code.
--
-- 'certificates', 'listSigningCertificatesResponse_certificates' - A list of the user\'s signing certificate information.
newListSigningCertificatesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListSigningCertificatesResponse
newListSigningCertificatesResponse pHttpStatus_ =
  ListSigningCertificatesResponse'
    { marker =
        Prelude.Nothing,
      isTruncated = Prelude.Nothing,
      httpStatus = pHttpStatus_,
      certificates = Prelude.mempty
    }

-- | When @IsTruncated@ is @true@, this element is present and contains the
-- value to use for the @Marker@ parameter in a subsequent pagination
-- request.
listSigningCertificatesResponse_marker :: Lens.Lens' ListSigningCertificatesResponse (Prelude.Maybe Prelude.Text)
listSigningCertificatesResponse_marker = Lens.lens (\ListSigningCertificatesResponse' {marker} -> marker) (\s@ListSigningCertificatesResponse' {} a -> s {marker = a} :: ListSigningCertificatesResponse)

-- | A flag that indicates whether there are more items to return. If your
-- results were truncated, you can make a subsequent pagination request
-- using the @Marker@ request parameter to retrieve more items. Note that
-- IAM might return fewer than the @MaxItems@ number of results even when
-- there are more results available. We recommend that you check
-- @IsTruncated@ after every call to ensure that you receive all your
-- results.
listSigningCertificatesResponse_isTruncated :: Lens.Lens' ListSigningCertificatesResponse (Prelude.Maybe Prelude.Bool)
listSigningCertificatesResponse_isTruncated = Lens.lens (\ListSigningCertificatesResponse' {isTruncated} -> isTruncated) (\s@ListSigningCertificatesResponse' {} a -> s {isTruncated = a} :: ListSigningCertificatesResponse)

-- | The response's http status code.
listSigningCertificatesResponse_httpStatus :: Lens.Lens' ListSigningCertificatesResponse Prelude.Int
listSigningCertificatesResponse_httpStatus = Lens.lens (\ListSigningCertificatesResponse' {httpStatus} -> httpStatus) (\s@ListSigningCertificatesResponse' {} a -> s {httpStatus = a} :: ListSigningCertificatesResponse)

-- | A list of the user\'s signing certificate information.
listSigningCertificatesResponse_certificates :: Lens.Lens' ListSigningCertificatesResponse [SigningCertificate]
listSigningCertificatesResponse_certificates = Lens.lens (\ListSigningCertificatesResponse' {certificates} -> certificates) (\s@ListSigningCertificatesResponse' {} a -> s {certificates = a} :: ListSigningCertificatesResponse) Prelude.. Lens.coerced

instance
  Prelude.NFData
    ListSigningCertificatesResponse
  where
  rnf ListSigningCertificatesResponse' {..} =
    Prelude.rnf marker
      `Prelude.seq` Prelude.rnf isTruncated
      `Prelude.seq` Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf certificates
