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
-- Module      : Amazonka.CognitoIdentityProvider.DeleteUserPoolDomain
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a domain for a user pool.
module Amazonka.CognitoIdentityProvider.DeleteUserPoolDomain
  ( -- * Creating a Request
    DeleteUserPoolDomain (..),
    newDeleteUserPoolDomain,

    -- * Request Lenses
    deleteUserPoolDomain_domain,
    deleteUserPoolDomain_userPoolId,

    -- * Destructuring the Response
    DeleteUserPoolDomainResponse (..),
    newDeleteUserPoolDomainResponse,

    -- * Response Lenses
    deleteUserPoolDomainResponse_httpStatus,
  )
where

import Amazonka.CognitoIdentityProvider.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDeleteUserPoolDomain' smart constructor.
data DeleteUserPoolDomain = DeleteUserPoolDomain'
  { -- | The domain string. For custom domains, this is the fully-qualified
    -- domain name, such as @auth.example.com@. For Amazon Cognito prefix
    -- domains, this is the prefix alone, such as @auth@.
    domain :: Prelude.Text,
    -- | The user pool ID.
    userPoolId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteUserPoolDomain' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'domain', 'deleteUserPoolDomain_domain' - The domain string. For custom domains, this is the fully-qualified
-- domain name, such as @auth.example.com@. For Amazon Cognito prefix
-- domains, this is the prefix alone, such as @auth@.
--
-- 'userPoolId', 'deleteUserPoolDomain_userPoolId' - The user pool ID.
newDeleteUserPoolDomain ::
  -- | 'domain'
  Prelude.Text ->
  -- | 'userPoolId'
  Prelude.Text ->
  DeleteUserPoolDomain
newDeleteUserPoolDomain pDomain_ pUserPoolId_ =
  DeleteUserPoolDomain'
    { domain = pDomain_,
      userPoolId = pUserPoolId_
    }

-- | The domain string. For custom domains, this is the fully-qualified
-- domain name, such as @auth.example.com@. For Amazon Cognito prefix
-- domains, this is the prefix alone, such as @auth@.
deleteUserPoolDomain_domain :: Lens.Lens' DeleteUserPoolDomain Prelude.Text
deleteUserPoolDomain_domain = Lens.lens (\DeleteUserPoolDomain' {domain} -> domain) (\s@DeleteUserPoolDomain' {} a -> s {domain = a} :: DeleteUserPoolDomain)

-- | The user pool ID.
deleteUserPoolDomain_userPoolId :: Lens.Lens' DeleteUserPoolDomain Prelude.Text
deleteUserPoolDomain_userPoolId = Lens.lens (\DeleteUserPoolDomain' {userPoolId} -> userPoolId) (\s@DeleteUserPoolDomain' {} a -> s {userPoolId = a} :: DeleteUserPoolDomain)

instance Core.AWSRequest DeleteUserPoolDomain where
  type
    AWSResponse DeleteUserPoolDomain =
      DeleteUserPoolDomainResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteUserPoolDomainResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteUserPoolDomain where
  hashWithSalt _salt DeleteUserPoolDomain' {..} =
    _salt `Prelude.hashWithSalt` domain
      `Prelude.hashWithSalt` userPoolId

instance Prelude.NFData DeleteUserPoolDomain where
  rnf DeleteUserPoolDomain' {..} =
    Prelude.rnf domain
      `Prelude.seq` Prelude.rnf userPoolId

instance Core.ToHeaders DeleteUserPoolDomain where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSCognitoIdentityProviderService.DeleteUserPoolDomain" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteUserPoolDomain where
  toJSON DeleteUserPoolDomain' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("Domain" Core..= domain),
            Prelude.Just ("UserPoolId" Core..= userPoolId)
          ]
      )

instance Core.ToPath DeleteUserPoolDomain where
  toPath = Prelude.const "/"

instance Core.ToQuery DeleteUserPoolDomain where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteUserPoolDomainResponse' smart constructor.
data DeleteUserPoolDomainResponse = DeleteUserPoolDomainResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteUserPoolDomainResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteUserPoolDomainResponse_httpStatus' - The response's http status code.
newDeleteUserPoolDomainResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteUserPoolDomainResponse
newDeleteUserPoolDomainResponse pHttpStatus_ =
  DeleteUserPoolDomainResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
deleteUserPoolDomainResponse_httpStatus :: Lens.Lens' DeleteUserPoolDomainResponse Prelude.Int
deleteUserPoolDomainResponse_httpStatus = Lens.lens (\DeleteUserPoolDomainResponse' {httpStatus} -> httpStatus) (\s@DeleteUserPoolDomainResponse' {} a -> s {httpStatus = a} :: DeleteUserPoolDomainResponse)

instance Prelude.NFData DeleteUserPoolDomainResponse where
  rnf DeleteUserPoolDomainResponse' {..} =
    Prelude.rnf httpStatus
