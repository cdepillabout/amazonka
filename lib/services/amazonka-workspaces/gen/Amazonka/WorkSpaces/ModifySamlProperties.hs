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
-- Module      : Amazonka.WorkSpaces.ModifySamlProperties
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies multiple properties related to SAML 2.0 authentication,
-- including the enablement status, user access URL, and relay state
-- parameter name that are used for configuring federation with an SAML 2.0
-- identity provider.
module Amazonka.WorkSpaces.ModifySamlProperties
  ( -- * Creating a Request
    ModifySamlProperties (..),
    newModifySamlProperties,

    -- * Request Lenses
    modifySamlProperties_samlProperties,
    modifySamlProperties_propertiesToDelete,
    modifySamlProperties_resourceId,

    -- * Destructuring the Response
    ModifySamlPropertiesResponse (..),
    newModifySamlPropertiesResponse,

    -- * Response Lenses
    modifySamlPropertiesResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.WorkSpaces.Types

-- | /See:/ 'newModifySamlProperties' smart constructor.
data ModifySamlProperties = ModifySamlProperties'
  { -- | The properties for configuring SAML 2.0 authentication.
    samlProperties :: Prelude.Maybe SamlProperties,
    -- | The SAML properties to delete as part of your request.
    --
    -- Specify one of the following options:
    --
    -- -   @SAML_PROPERTIES_USER_ACCESS_URL@ to delete the user access URL.
    --
    -- -   @SAML_PROPERTIES_RELAY_STATE_PARAMETER_NAME@ to delete the relay
    --     state parameter name.
    propertiesToDelete :: Prelude.Maybe [DeletableSamlProperty],
    -- | The directory identifier for which you want to configure SAML
    -- properties.
    resourceId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ModifySamlProperties' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'samlProperties', 'modifySamlProperties_samlProperties' - The properties for configuring SAML 2.0 authentication.
--
-- 'propertiesToDelete', 'modifySamlProperties_propertiesToDelete' - The SAML properties to delete as part of your request.
--
-- Specify one of the following options:
--
-- -   @SAML_PROPERTIES_USER_ACCESS_URL@ to delete the user access URL.
--
-- -   @SAML_PROPERTIES_RELAY_STATE_PARAMETER_NAME@ to delete the relay
--     state parameter name.
--
-- 'resourceId', 'modifySamlProperties_resourceId' - The directory identifier for which you want to configure SAML
-- properties.
newModifySamlProperties ::
  -- | 'resourceId'
  Prelude.Text ->
  ModifySamlProperties
newModifySamlProperties pResourceId_ =
  ModifySamlProperties'
    { samlProperties =
        Prelude.Nothing,
      propertiesToDelete = Prelude.Nothing,
      resourceId = pResourceId_
    }

-- | The properties for configuring SAML 2.0 authentication.
modifySamlProperties_samlProperties :: Lens.Lens' ModifySamlProperties (Prelude.Maybe SamlProperties)
modifySamlProperties_samlProperties = Lens.lens (\ModifySamlProperties' {samlProperties} -> samlProperties) (\s@ModifySamlProperties' {} a -> s {samlProperties = a} :: ModifySamlProperties)

-- | The SAML properties to delete as part of your request.
--
-- Specify one of the following options:
--
-- -   @SAML_PROPERTIES_USER_ACCESS_URL@ to delete the user access URL.
--
-- -   @SAML_PROPERTIES_RELAY_STATE_PARAMETER_NAME@ to delete the relay
--     state parameter name.
modifySamlProperties_propertiesToDelete :: Lens.Lens' ModifySamlProperties (Prelude.Maybe [DeletableSamlProperty])
modifySamlProperties_propertiesToDelete = Lens.lens (\ModifySamlProperties' {propertiesToDelete} -> propertiesToDelete) (\s@ModifySamlProperties' {} a -> s {propertiesToDelete = a} :: ModifySamlProperties) Prelude.. Lens.mapping Lens.coerced

-- | The directory identifier for which you want to configure SAML
-- properties.
modifySamlProperties_resourceId :: Lens.Lens' ModifySamlProperties Prelude.Text
modifySamlProperties_resourceId = Lens.lens (\ModifySamlProperties' {resourceId} -> resourceId) (\s@ModifySamlProperties' {} a -> s {resourceId = a} :: ModifySamlProperties)

instance Core.AWSRequest ModifySamlProperties where
  type
    AWSResponse ModifySamlProperties =
      ModifySamlPropertiesResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          ModifySamlPropertiesResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ModifySamlProperties where
  hashWithSalt _salt ModifySamlProperties' {..} =
    _salt `Prelude.hashWithSalt` samlProperties
      `Prelude.hashWithSalt` propertiesToDelete
      `Prelude.hashWithSalt` resourceId

instance Prelude.NFData ModifySamlProperties where
  rnf ModifySamlProperties' {..} =
    Prelude.rnf samlProperties
      `Prelude.seq` Prelude.rnf propertiesToDelete
      `Prelude.seq` Prelude.rnf resourceId

instance Core.ToHeaders ModifySamlProperties where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "WorkspacesService.ModifySamlProperties" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ModifySamlProperties where
  toJSON ModifySamlProperties' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("SamlProperties" Core..=)
              Prelude.<$> samlProperties,
            ("PropertiesToDelete" Core..=)
              Prelude.<$> propertiesToDelete,
            Prelude.Just ("ResourceId" Core..= resourceId)
          ]
      )

instance Core.ToPath ModifySamlProperties where
  toPath = Prelude.const "/"

instance Core.ToQuery ModifySamlProperties where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newModifySamlPropertiesResponse' smart constructor.
data ModifySamlPropertiesResponse = ModifySamlPropertiesResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ModifySamlPropertiesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'modifySamlPropertiesResponse_httpStatus' - The response's http status code.
newModifySamlPropertiesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ModifySamlPropertiesResponse
newModifySamlPropertiesResponse pHttpStatus_ =
  ModifySamlPropertiesResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
modifySamlPropertiesResponse_httpStatus :: Lens.Lens' ModifySamlPropertiesResponse Prelude.Int
modifySamlPropertiesResponse_httpStatus = Lens.lens (\ModifySamlPropertiesResponse' {httpStatus} -> httpStatus) (\s@ModifySamlPropertiesResponse' {} a -> s {httpStatus = a} :: ModifySamlPropertiesResponse)

instance Prelude.NFData ModifySamlPropertiesResponse where
  rnf ModifySamlPropertiesResponse' {..} =
    Prelude.rnf httpStatus
