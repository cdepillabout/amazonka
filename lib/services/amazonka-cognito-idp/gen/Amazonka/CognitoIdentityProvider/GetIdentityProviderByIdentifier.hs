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
-- Module      : Amazonka.CognitoIdentityProvider.GetIdentityProviderByIdentifier
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified IdP.
module Amazonka.CognitoIdentityProvider.GetIdentityProviderByIdentifier
  ( -- * Creating a Request
    GetIdentityProviderByIdentifier (..),
    newGetIdentityProviderByIdentifier,

    -- * Request Lenses
    getIdentityProviderByIdentifier_userPoolId,
    getIdentityProviderByIdentifier_idpIdentifier,

    -- * Destructuring the Response
    GetIdentityProviderByIdentifierResponse (..),
    newGetIdentityProviderByIdentifierResponse,

    -- * Response Lenses
    getIdentityProviderByIdentifierResponse_httpStatus,
    getIdentityProviderByIdentifierResponse_identityProvider,
  )
where

import Amazonka.CognitoIdentityProvider.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetIdentityProviderByIdentifier' smart constructor.
data GetIdentityProviderByIdentifier = GetIdentityProviderByIdentifier'
  { -- | The user pool ID.
    userPoolId :: Prelude.Text,
    -- | The IdP identifier.
    idpIdentifier :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetIdentityProviderByIdentifier' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'userPoolId', 'getIdentityProviderByIdentifier_userPoolId' - The user pool ID.
--
-- 'idpIdentifier', 'getIdentityProviderByIdentifier_idpIdentifier' - The IdP identifier.
newGetIdentityProviderByIdentifier ::
  -- | 'userPoolId'
  Prelude.Text ->
  -- | 'idpIdentifier'
  Prelude.Text ->
  GetIdentityProviderByIdentifier
newGetIdentityProviderByIdentifier
  pUserPoolId_
  pIdpIdentifier_ =
    GetIdentityProviderByIdentifier'
      { userPoolId =
          pUserPoolId_,
        idpIdentifier = pIdpIdentifier_
      }

-- | The user pool ID.
getIdentityProviderByIdentifier_userPoolId :: Lens.Lens' GetIdentityProviderByIdentifier Prelude.Text
getIdentityProviderByIdentifier_userPoolId = Lens.lens (\GetIdentityProviderByIdentifier' {userPoolId} -> userPoolId) (\s@GetIdentityProviderByIdentifier' {} a -> s {userPoolId = a} :: GetIdentityProviderByIdentifier)

-- | The IdP identifier.
getIdentityProviderByIdentifier_idpIdentifier :: Lens.Lens' GetIdentityProviderByIdentifier Prelude.Text
getIdentityProviderByIdentifier_idpIdentifier = Lens.lens (\GetIdentityProviderByIdentifier' {idpIdentifier} -> idpIdentifier) (\s@GetIdentityProviderByIdentifier' {} a -> s {idpIdentifier = a} :: GetIdentityProviderByIdentifier)

instance
  Core.AWSRequest
    GetIdentityProviderByIdentifier
  where
  type
    AWSResponse GetIdentityProviderByIdentifier =
      GetIdentityProviderByIdentifierResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetIdentityProviderByIdentifierResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "IdentityProvider")
      )

instance
  Prelude.Hashable
    GetIdentityProviderByIdentifier
  where
  hashWithSalt
    _salt
    GetIdentityProviderByIdentifier' {..} =
      _salt `Prelude.hashWithSalt` userPoolId
        `Prelude.hashWithSalt` idpIdentifier

instance
  Prelude.NFData
    GetIdentityProviderByIdentifier
  where
  rnf GetIdentityProviderByIdentifier' {..} =
    Prelude.rnf userPoolId
      `Prelude.seq` Prelude.rnf idpIdentifier

instance
  Core.ToHeaders
    GetIdentityProviderByIdentifier
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSCognitoIdentityProviderService.GetIdentityProviderByIdentifier" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetIdentityProviderByIdentifier where
  toJSON GetIdentityProviderByIdentifier' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("UserPoolId" Core..= userPoolId),
            Prelude.Just
              ("IdpIdentifier" Core..= idpIdentifier)
          ]
      )

instance Core.ToPath GetIdentityProviderByIdentifier where
  toPath = Prelude.const "/"

instance Core.ToQuery GetIdentityProviderByIdentifier where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetIdentityProviderByIdentifierResponse' smart constructor.
data GetIdentityProviderByIdentifierResponse = GetIdentityProviderByIdentifierResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The IdP object.
    identityProvider :: IdentityProviderType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetIdentityProviderByIdentifierResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'getIdentityProviderByIdentifierResponse_httpStatus' - The response's http status code.
--
-- 'identityProvider', 'getIdentityProviderByIdentifierResponse_identityProvider' - The IdP object.
newGetIdentityProviderByIdentifierResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'identityProvider'
  IdentityProviderType ->
  GetIdentityProviderByIdentifierResponse
newGetIdentityProviderByIdentifierResponse
  pHttpStatus_
  pIdentityProvider_ =
    GetIdentityProviderByIdentifierResponse'
      { httpStatus =
          pHttpStatus_,
        identityProvider =
          pIdentityProvider_
      }

-- | The response's http status code.
getIdentityProviderByIdentifierResponse_httpStatus :: Lens.Lens' GetIdentityProviderByIdentifierResponse Prelude.Int
getIdentityProviderByIdentifierResponse_httpStatus = Lens.lens (\GetIdentityProviderByIdentifierResponse' {httpStatus} -> httpStatus) (\s@GetIdentityProviderByIdentifierResponse' {} a -> s {httpStatus = a} :: GetIdentityProviderByIdentifierResponse)

-- | The IdP object.
getIdentityProviderByIdentifierResponse_identityProvider :: Lens.Lens' GetIdentityProviderByIdentifierResponse IdentityProviderType
getIdentityProviderByIdentifierResponse_identityProvider = Lens.lens (\GetIdentityProviderByIdentifierResponse' {identityProvider} -> identityProvider) (\s@GetIdentityProviderByIdentifierResponse' {} a -> s {identityProvider = a} :: GetIdentityProviderByIdentifierResponse)

instance
  Prelude.NFData
    GetIdentityProviderByIdentifierResponse
  where
  rnf GetIdentityProviderByIdentifierResponse' {..} =
    Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf identityProvider
