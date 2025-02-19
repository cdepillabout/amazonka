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
-- Module      : Amazonka.CognitoIdentity.GetPrincipalTagAttributeMap
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Use @GetPrincipalTagAttributeMap@ to list all mappings between
-- @PrincipalTags@ and user attributes.
module Amazonka.CognitoIdentity.GetPrincipalTagAttributeMap
  ( -- * Creating a Request
    GetPrincipalTagAttributeMap (..),
    newGetPrincipalTagAttributeMap,

    -- * Request Lenses
    getPrincipalTagAttributeMap_identityPoolId,
    getPrincipalTagAttributeMap_identityProviderName,

    -- * Destructuring the Response
    GetPrincipalTagAttributeMapResponse (..),
    newGetPrincipalTagAttributeMapResponse,

    -- * Response Lenses
    getPrincipalTagAttributeMapResponse_useDefaults,
    getPrincipalTagAttributeMapResponse_identityProviderName,
    getPrincipalTagAttributeMapResponse_identityPoolId,
    getPrincipalTagAttributeMapResponse_principalTags,
    getPrincipalTagAttributeMapResponse_httpStatus,
  )
where

import Amazonka.CognitoIdentity.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetPrincipalTagAttributeMap' smart constructor.
data GetPrincipalTagAttributeMap = GetPrincipalTagAttributeMap'
  { -- | You can use this operation to get the ID of the Identity Pool you setup
    -- attribute mappings for.
    identityPoolId :: Prelude.Text,
    -- | You can use this operation to get the provider name.
    identityProviderName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetPrincipalTagAttributeMap' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'identityPoolId', 'getPrincipalTagAttributeMap_identityPoolId' - You can use this operation to get the ID of the Identity Pool you setup
-- attribute mappings for.
--
-- 'identityProviderName', 'getPrincipalTagAttributeMap_identityProviderName' - You can use this operation to get the provider name.
newGetPrincipalTagAttributeMap ::
  -- | 'identityPoolId'
  Prelude.Text ->
  -- | 'identityProviderName'
  Prelude.Text ->
  GetPrincipalTagAttributeMap
newGetPrincipalTagAttributeMap
  pIdentityPoolId_
  pIdentityProviderName_ =
    GetPrincipalTagAttributeMap'
      { identityPoolId =
          pIdentityPoolId_,
        identityProviderName = pIdentityProviderName_
      }

-- | You can use this operation to get the ID of the Identity Pool you setup
-- attribute mappings for.
getPrincipalTagAttributeMap_identityPoolId :: Lens.Lens' GetPrincipalTagAttributeMap Prelude.Text
getPrincipalTagAttributeMap_identityPoolId = Lens.lens (\GetPrincipalTagAttributeMap' {identityPoolId} -> identityPoolId) (\s@GetPrincipalTagAttributeMap' {} a -> s {identityPoolId = a} :: GetPrincipalTagAttributeMap)

-- | You can use this operation to get the provider name.
getPrincipalTagAttributeMap_identityProviderName :: Lens.Lens' GetPrincipalTagAttributeMap Prelude.Text
getPrincipalTagAttributeMap_identityProviderName = Lens.lens (\GetPrincipalTagAttributeMap' {identityProviderName} -> identityProviderName) (\s@GetPrincipalTagAttributeMap' {} a -> s {identityProviderName = a} :: GetPrincipalTagAttributeMap)

instance Core.AWSRequest GetPrincipalTagAttributeMap where
  type
    AWSResponse GetPrincipalTagAttributeMap =
      GetPrincipalTagAttributeMapResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetPrincipalTagAttributeMapResponse'
            Prelude.<$> (x Core..?> "UseDefaults")
            Prelude.<*> (x Core..?> "IdentityProviderName")
            Prelude.<*> (x Core..?> "IdentityPoolId")
            Prelude.<*> (x Core..?> "PrincipalTags" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetPrincipalTagAttributeMap where
  hashWithSalt _salt GetPrincipalTagAttributeMap' {..} =
    _salt `Prelude.hashWithSalt` identityPoolId
      `Prelude.hashWithSalt` identityProviderName

instance Prelude.NFData GetPrincipalTagAttributeMap where
  rnf GetPrincipalTagAttributeMap' {..} =
    Prelude.rnf identityPoolId
      `Prelude.seq` Prelude.rnf identityProviderName

instance Core.ToHeaders GetPrincipalTagAttributeMap where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSCognitoIdentityService.GetPrincipalTagAttributeMap" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetPrincipalTagAttributeMap where
  toJSON GetPrincipalTagAttributeMap' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("IdentityPoolId" Core..= identityPoolId),
            Prelude.Just
              ( "IdentityProviderName"
                  Core..= identityProviderName
              )
          ]
      )

instance Core.ToPath GetPrincipalTagAttributeMap where
  toPath = Prelude.const "/"

instance Core.ToQuery GetPrincipalTagAttributeMap where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetPrincipalTagAttributeMapResponse' smart constructor.
data GetPrincipalTagAttributeMapResponse = GetPrincipalTagAttributeMapResponse'
  { -- | You can use this operation to list
    useDefaults :: Prelude.Maybe Prelude.Bool,
    -- | You can use this operation to get the provider name.
    identityProviderName :: Prelude.Maybe Prelude.Text,
    -- | You can use this operation to get the ID of the Identity Pool you setup
    -- attribute mappings for.
    identityPoolId :: Prelude.Maybe Prelude.Text,
    -- | You can use this operation to add principal tags. The
    -- @PrincipalTags@operation enables you to reference user attributes in
    -- your IAM permissions policy.
    principalTags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetPrincipalTagAttributeMapResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'useDefaults', 'getPrincipalTagAttributeMapResponse_useDefaults' - You can use this operation to list
--
-- 'identityProviderName', 'getPrincipalTagAttributeMapResponse_identityProviderName' - You can use this operation to get the provider name.
--
-- 'identityPoolId', 'getPrincipalTagAttributeMapResponse_identityPoolId' - You can use this operation to get the ID of the Identity Pool you setup
-- attribute mappings for.
--
-- 'principalTags', 'getPrincipalTagAttributeMapResponse_principalTags' - You can use this operation to add principal tags. The
-- @PrincipalTags@operation enables you to reference user attributes in
-- your IAM permissions policy.
--
-- 'httpStatus', 'getPrincipalTagAttributeMapResponse_httpStatus' - The response's http status code.
newGetPrincipalTagAttributeMapResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetPrincipalTagAttributeMapResponse
newGetPrincipalTagAttributeMapResponse pHttpStatus_ =
  GetPrincipalTagAttributeMapResponse'
    { useDefaults =
        Prelude.Nothing,
      identityProviderName = Prelude.Nothing,
      identityPoolId = Prelude.Nothing,
      principalTags = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | You can use this operation to list
getPrincipalTagAttributeMapResponse_useDefaults :: Lens.Lens' GetPrincipalTagAttributeMapResponse (Prelude.Maybe Prelude.Bool)
getPrincipalTagAttributeMapResponse_useDefaults = Lens.lens (\GetPrincipalTagAttributeMapResponse' {useDefaults} -> useDefaults) (\s@GetPrincipalTagAttributeMapResponse' {} a -> s {useDefaults = a} :: GetPrincipalTagAttributeMapResponse)

-- | You can use this operation to get the provider name.
getPrincipalTagAttributeMapResponse_identityProviderName :: Lens.Lens' GetPrincipalTagAttributeMapResponse (Prelude.Maybe Prelude.Text)
getPrincipalTagAttributeMapResponse_identityProviderName = Lens.lens (\GetPrincipalTagAttributeMapResponse' {identityProviderName} -> identityProviderName) (\s@GetPrincipalTagAttributeMapResponse' {} a -> s {identityProviderName = a} :: GetPrincipalTagAttributeMapResponse)

-- | You can use this operation to get the ID of the Identity Pool you setup
-- attribute mappings for.
getPrincipalTagAttributeMapResponse_identityPoolId :: Lens.Lens' GetPrincipalTagAttributeMapResponse (Prelude.Maybe Prelude.Text)
getPrincipalTagAttributeMapResponse_identityPoolId = Lens.lens (\GetPrincipalTagAttributeMapResponse' {identityPoolId} -> identityPoolId) (\s@GetPrincipalTagAttributeMapResponse' {} a -> s {identityPoolId = a} :: GetPrincipalTagAttributeMapResponse)

-- | You can use this operation to add principal tags. The
-- @PrincipalTags@operation enables you to reference user attributes in
-- your IAM permissions policy.
getPrincipalTagAttributeMapResponse_principalTags :: Lens.Lens' GetPrincipalTagAttributeMapResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
getPrincipalTagAttributeMapResponse_principalTags = Lens.lens (\GetPrincipalTagAttributeMapResponse' {principalTags} -> principalTags) (\s@GetPrincipalTagAttributeMapResponse' {} a -> s {principalTags = a} :: GetPrincipalTagAttributeMapResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
getPrincipalTagAttributeMapResponse_httpStatus :: Lens.Lens' GetPrincipalTagAttributeMapResponse Prelude.Int
getPrincipalTagAttributeMapResponse_httpStatus = Lens.lens (\GetPrincipalTagAttributeMapResponse' {httpStatus} -> httpStatus) (\s@GetPrincipalTagAttributeMapResponse' {} a -> s {httpStatus = a} :: GetPrincipalTagAttributeMapResponse)

instance
  Prelude.NFData
    GetPrincipalTagAttributeMapResponse
  where
  rnf GetPrincipalTagAttributeMapResponse' {..} =
    Prelude.rnf useDefaults
      `Prelude.seq` Prelude.rnf identityProviderName
      `Prelude.seq` Prelude.rnf identityPoolId
      `Prelude.seq` Prelude.rnf principalTags
      `Prelude.seq` Prelude.rnf httpStatus
