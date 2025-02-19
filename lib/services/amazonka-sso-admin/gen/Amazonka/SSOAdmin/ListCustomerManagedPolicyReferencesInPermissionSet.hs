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
-- Module      : Amazonka.SSOAdmin.ListCustomerManagedPolicyReferencesInPermissionSet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all customer managed policies attached to a specified
-- PermissionSet.
--
-- This operation returns paginated results.
module Amazonka.SSOAdmin.ListCustomerManagedPolicyReferencesInPermissionSet
  ( -- * Creating a Request
    ListCustomerManagedPolicyReferencesInPermissionSet (..),
    newListCustomerManagedPolicyReferencesInPermissionSet,

    -- * Request Lenses
    listCustomerManagedPolicyReferencesInPermissionSet_nextToken,
    listCustomerManagedPolicyReferencesInPermissionSet_maxResults,
    listCustomerManagedPolicyReferencesInPermissionSet_instanceArn,
    listCustomerManagedPolicyReferencesInPermissionSet_permissionSetArn,

    -- * Destructuring the Response
    ListCustomerManagedPolicyReferencesInPermissionSetResponse (..),
    newListCustomerManagedPolicyReferencesInPermissionSetResponse,

    -- * Response Lenses
    listCustomerManagedPolicyReferencesInPermissionSetResponse_nextToken,
    listCustomerManagedPolicyReferencesInPermissionSetResponse_customerManagedPolicyReferences,
    listCustomerManagedPolicyReferencesInPermissionSetResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.SSOAdmin.Types

-- | /See:/ 'newListCustomerManagedPolicyReferencesInPermissionSet' smart constructor.
data ListCustomerManagedPolicyReferencesInPermissionSet = ListCustomerManagedPolicyReferencesInPermissionSet'
  { -- | The pagination token for the list API. Initially the value is null. Use
    -- the output of previous API calls to make subsequent calls.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to display for the list call.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The ARN of the Amazon Web Services SSO instance under which the
    -- operation will be executed.
    instanceArn :: Prelude.Text,
    -- | The ARN of the @PermissionSet@.
    permissionSetArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListCustomerManagedPolicyReferencesInPermissionSet' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listCustomerManagedPolicyReferencesInPermissionSet_nextToken' - The pagination token for the list API. Initially the value is null. Use
-- the output of previous API calls to make subsequent calls.
--
-- 'maxResults', 'listCustomerManagedPolicyReferencesInPermissionSet_maxResults' - The maximum number of results to display for the list call.
--
-- 'instanceArn', 'listCustomerManagedPolicyReferencesInPermissionSet_instanceArn' - The ARN of the Amazon Web Services SSO instance under which the
-- operation will be executed.
--
-- 'permissionSetArn', 'listCustomerManagedPolicyReferencesInPermissionSet_permissionSetArn' - The ARN of the @PermissionSet@.
newListCustomerManagedPolicyReferencesInPermissionSet ::
  -- | 'instanceArn'
  Prelude.Text ->
  -- | 'permissionSetArn'
  Prelude.Text ->
  ListCustomerManagedPolicyReferencesInPermissionSet
newListCustomerManagedPolicyReferencesInPermissionSet
  pInstanceArn_
  pPermissionSetArn_ =
    ListCustomerManagedPolicyReferencesInPermissionSet'
      { nextToken =
          Prelude.Nothing,
        maxResults =
          Prelude.Nothing,
        instanceArn =
          pInstanceArn_,
        permissionSetArn =
          pPermissionSetArn_
      }

-- | The pagination token for the list API. Initially the value is null. Use
-- the output of previous API calls to make subsequent calls.
listCustomerManagedPolicyReferencesInPermissionSet_nextToken :: Lens.Lens' ListCustomerManagedPolicyReferencesInPermissionSet (Prelude.Maybe Prelude.Text)
listCustomerManagedPolicyReferencesInPermissionSet_nextToken = Lens.lens (\ListCustomerManagedPolicyReferencesInPermissionSet' {nextToken} -> nextToken) (\s@ListCustomerManagedPolicyReferencesInPermissionSet' {} a -> s {nextToken = a} :: ListCustomerManagedPolicyReferencesInPermissionSet)

-- | The maximum number of results to display for the list call.
listCustomerManagedPolicyReferencesInPermissionSet_maxResults :: Lens.Lens' ListCustomerManagedPolicyReferencesInPermissionSet (Prelude.Maybe Prelude.Natural)
listCustomerManagedPolicyReferencesInPermissionSet_maxResults = Lens.lens (\ListCustomerManagedPolicyReferencesInPermissionSet' {maxResults} -> maxResults) (\s@ListCustomerManagedPolicyReferencesInPermissionSet' {} a -> s {maxResults = a} :: ListCustomerManagedPolicyReferencesInPermissionSet)

-- | The ARN of the Amazon Web Services SSO instance under which the
-- operation will be executed.
listCustomerManagedPolicyReferencesInPermissionSet_instanceArn :: Lens.Lens' ListCustomerManagedPolicyReferencesInPermissionSet Prelude.Text
listCustomerManagedPolicyReferencesInPermissionSet_instanceArn = Lens.lens (\ListCustomerManagedPolicyReferencesInPermissionSet' {instanceArn} -> instanceArn) (\s@ListCustomerManagedPolicyReferencesInPermissionSet' {} a -> s {instanceArn = a} :: ListCustomerManagedPolicyReferencesInPermissionSet)

-- | The ARN of the @PermissionSet@.
listCustomerManagedPolicyReferencesInPermissionSet_permissionSetArn :: Lens.Lens' ListCustomerManagedPolicyReferencesInPermissionSet Prelude.Text
listCustomerManagedPolicyReferencesInPermissionSet_permissionSetArn = Lens.lens (\ListCustomerManagedPolicyReferencesInPermissionSet' {permissionSetArn} -> permissionSetArn) (\s@ListCustomerManagedPolicyReferencesInPermissionSet' {} a -> s {permissionSetArn = a} :: ListCustomerManagedPolicyReferencesInPermissionSet)

instance
  Core.AWSPager
    ListCustomerManagedPolicyReferencesInPermissionSet
  where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listCustomerManagedPolicyReferencesInPermissionSetResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listCustomerManagedPolicyReferencesInPermissionSetResponse_customerManagedPolicyReferences
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listCustomerManagedPolicyReferencesInPermissionSet_nextToken
          Lens..~ rs
            Lens.^? listCustomerManagedPolicyReferencesInPermissionSetResponse_nextToken
              Prelude.. Lens._Just

instance
  Core.AWSRequest
    ListCustomerManagedPolicyReferencesInPermissionSet
  where
  type
    AWSResponse
      ListCustomerManagedPolicyReferencesInPermissionSet =
      ListCustomerManagedPolicyReferencesInPermissionSetResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListCustomerManagedPolicyReferencesInPermissionSetResponse'
            Prelude.<$> (x Core..?> "NextToken")
              Prelude.<*> ( x Core..?> "CustomerManagedPolicyReferences"
                              Core..!@ Prelude.mempty
                          )
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    ListCustomerManagedPolicyReferencesInPermissionSet
  where
  hashWithSalt
    _salt
    ListCustomerManagedPolicyReferencesInPermissionSet' {..} =
      _salt `Prelude.hashWithSalt` nextToken
        `Prelude.hashWithSalt` maxResults
        `Prelude.hashWithSalt` instanceArn
        `Prelude.hashWithSalt` permissionSetArn

instance
  Prelude.NFData
    ListCustomerManagedPolicyReferencesInPermissionSet
  where
  rnf
    ListCustomerManagedPolicyReferencesInPermissionSet' {..} =
      Prelude.rnf nextToken
        `Prelude.seq` Prelude.rnf maxResults
        `Prelude.seq` Prelude.rnf instanceArn
        `Prelude.seq` Prelude.rnf permissionSetArn

instance
  Core.ToHeaders
    ListCustomerManagedPolicyReferencesInPermissionSet
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "SWBExternalService.ListCustomerManagedPolicyReferencesInPermissionSet" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance
  Core.ToJSON
    ListCustomerManagedPolicyReferencesInPermissionSet
  where
  toJSON
    ListCustomerManagedPolicyReferencesInPermissionSet' {..} =
      Core.object
        ( Prelude.catMaybes
            [ ("NextToken" Core..=) Prelude.<$> nextToken,
              ("MaxResults" Core..=) Prelude.<$> maxResults,
              Prelude.Just ("InstanceArn" Core..= instanceArn),
              Prelude.Just
                ("PermissionSetArn" Core..= permissionSetArn)
            ]
        )

instance
  Core.ToPath
    ListCustomerManagedPolicyReferencesInPermissionSet
  where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    ListCustomerManagedPolicyReferencesInPermissionSet
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListCustomerManagedPolicyReferencesInPermissionSetResponse' smart constructor.
data ListCustomerManagedPolicyReferencesInPermissionSetResponse = ListCustomerManagedPolicyReferencesInPermissionSetResponse'
  { -- | The pagination token for the list API. Initially the value is null. Use
    -- the output of previous API calls to make subsequent calls.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Specifies the names and paths of the customer managed policies that you
    -- have attached to your permission set.
    customerManagedPolicyReferences :: Prelude.Maybe [CustomerManagedPolicyReference],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListCustomerManagedPolicyReferencesInPermissionSetResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listCustomerManagedPolicyReferencesInPermissionSetResponse_nextToken' - The pagination token for the list API. Initially the value is null. Use
-- the output of previous API calls to make subsequent calls.
--
-- 'customerManagedPolicyReferences', 'listCustomerManagedPolicyReferencesInPermissionSetResponse_customerManagedPolicyReferences' - Specifies the names and paths of the customer managed policies that you
-- have attached to your permission set.
--
-- 'httpStatus', 'listCustomerManagedPolicyReferencesInPermissionSetResponse_httpStatus' - The response's http status code.
newListCustomerManagedPolicyReferencesInPermissionSetResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListCustomerManagedPolicyReferencesInPermissionSetResponse
newListCustomerManagedPolicyReferencesInPermissionSetResponse
  pHttpStatus_ =
    ListCustomerManagedPolicyReferencesInPermissionSetResponse'
      { nextToken =
          Prelude.Nothing,
        customerManagedPolicyReferences =
          Prelude.Nothing,
        httpStatus =
          pHttpStatus_
      }

-- | The pagination token for the list API. Initially the value is null. Use
-- the output of previous API calls to make subsequent calls.
listCustomerManagedPolicyReferencesInPermissionSetResponse_nextToken :: Lens.Lens' ListCustomerManagedPolicyReferencesInPermissionSetResponse (Prelude.Maybe Prelude.Text)
listCustomerManagedPolicyReferencesInPermissionSetResponse_nextToken = Lens.lens (\ListCustomerManagedPolicyReferencesInPermissionSetResponse' {nextToken} -> nextToken) (\s@ListCustomerManagedPolicyReferencesInPermissionSetResponse' {} a -> s {nextToken = a} :: ListCustomerManagedPolicyReferencesInPermissionSetResponse)

-- | Specifies the names and paths of the customer managed policies that you
-- have attached to your permission set.
listCustomerManagedPolicyReferencesInPermissionSetResponse_customerManagedPolicyReferences :: Lens.Lens' ListCustomerManagedPolicyReferencesInPermissionSetResponse (Prelude.Maybe [CustomerManagedPolicyReference])
listCustomerManagedPolicyReferencesInPermissionSetResponse_customerManagedPolicyReferences = Lens.lens (\ListCustomerManagedPolicyReferencesInPermissionSetResponse' {customerManagedPolicyReferences} -> customerManagedPolicyReferences) (\s@ListCustomerManagedPolicyReferencesInPermissionSetResponse' {} a -> s {customerManagedPolicyReferences = a} :: ListCustomerManagedPolicyReferencesInPermissionSetResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listCustomerManagedPolicyReferencesInPermissionSetResponse_httpStatus :: Lens.Lens' ListCustomerManagedPolicyReferencesInPermissionSetResponse Prelude.Int
listCustomerManagedPolicyReferencesInPermissionSetResponse_httpStatus = Lens.lens (\ListCustomerManagedPolicyReferencesInPermissionSetResponse' {httpStatus} -> httpStatus) (\s@ListCustomerManagedPolicyReferencesInPermissionSetResponse' {} a -> s {httpStatus = a} :: ListCustomerManagedPolicyReferencesInPermissionSetResponse)

instance
  Prelude.NFData
    ListCustomerManagedPolicyReferencesInPermissionSetResponse
  where
  rnf
    ListCustomerManagedPolicyReferencesInPermissionSetResponse' {..} =
      Prelude.rnf nextToken
        `Prelude.seq` Prelude.rnf customerManagedPolicyReferences
        `Prelude.seq` Prelude.rnf httpStatus
