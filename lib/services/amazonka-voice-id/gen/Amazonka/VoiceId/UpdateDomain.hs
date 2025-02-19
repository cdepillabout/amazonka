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
-- Module      : Amazonka.VoiceId.UpdateDomain
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified domain. This API has clobber behavior, and clears
-- and replaces all attributes. If an optional field, such as
-- \'Description\' is not provided, it is removed from the domain.
module Amazonka.VoiceId.UpdateDomain
  ( -- * Creating a Request
    UpdateDomain (..),
    newUpdateDomain,

    -- * Request Lenses
    updateDomain_description,
    updateDomain_domainId,
    updateDomain_name,
    updateDomain_serverSideEncryptionConfiguration,

    -- * Destructuring the Response
    UpdateDomainResponse (..),
    newUpdateDomainResponse,

    -- * Response Lenses
    updateDomainResponse_domain,
    updateDomainResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.VoiceId.Types

-- | /See:/ 'newUpdateDomain' smart constructor.
data UpdateDomain = UpdateDomain'
  { -- | A brief description about this domain.
    description :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The identifier of the domain to be updated.
    domainId :: Prelude.Text,
    -- | The name of the domain.
    name :: Core.Sensitive Prelude.Text,
    -- | The configuration, containing the KMS key identifier, to be used by
    -- Voice ID for the server-side encryption of your data. Note that all the
    -- existing data in the domain are still encrypted using the existing key,
    -- only the data added to domain after updating the key is encrypted using
    -- the new key.
    serverSideEncryptionConfiguration :: ServerSideEncryptionConfiguration
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateDomain' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'description', 'updateDomain_description' - A brief description about this domain.
--
-- 'domainId', 'updateDomain_domainId' - The identifier of the domain to be updated.
--
-- 'name', 'updateDomain_name' - The name of the domain.
--
-- 'serverSideEncryptionConfiguration', 'updateDomain_serverSideEncryptionConfiguration' - The configuration, containing the KMS key identifier, to be used by
-- Voice ID for the server-side encryption of your data. Note that all the
-- existing data in the domain are still encrypted using the existing key,
-- only the data added to domain after updating the key is encrypted using
-- the new key.
newUpdateDomain ::
  -- | 'domainId'
  Prelude.Text ->
  -- | 'name'
  Prelude.Text ->
  -- | 'serverSideEncryptionConfiguration'
  ServerSideEncryptionConfiguration ->
  UpdateDomain
newUpdateDomain
  pDomainId_
  pName_
  pServerSideEncryptionConfiguration_ =
    UpdateDomain'
      { description = Prelude.Nothing,
        domainId = pDomainId_,
        name = Core._Sensitive Lens.# pName_,
        serverSideEncryptionConfiguration =
          pServerSideEncryptionConfiguration_
      }

-- | A brief description about this domain.
updateDomain_description :: Lens.Lens' UpdateDomain (Prelude.Maybe Prelude.Text)
updateDomain_description = Lens.lens (\UpdateDomain' {description} -> description) (\s@UpdateDomain' {} a -> s {description = a} :: UpdateDomain) Prelude.. Lens.mapping Core._Sensitive

-- | The identifier of the domain to be updated.
updateDomain_domainId :: Lens.Lens' UpdateDomain Prelude.Text
updateDomain_domainId = Lens.lens (\UpdateDomain' {domainId} -> domainId) (\s@UpdateDomain' {} a -> s {domainId = a} :: UpdateDomain)

-- | The name of the domain.
updateDomain_name :: Lens.Lens' UpdateDomain Prelude.Text
updateDomain_name = Lens.lens (\UpdateDomain' {name} -> name) (\s@UpdateDomain' {} a -> s {name = a} :: UpdateDomain) Prelude.. Core._Sensitive

-- | The configuration, containing the KMS key identifier, to be used by
-- Voice ID for the server-side encryption of your data. Note that all the
-- existing data in the domain are still encrypted using the existing key,
-- only the data added to domain after updating the key is encrypted using
-- the new key.
updateDomain_serverSideEncryptionConfiguration :: Lens.Lens' UpdateDomain ServerSideEncryptionConfiguration
updateDomain_serverSideEncryptionConfiguration = Lens.lens (\UpdateDomain' {serverSideEncryptionConfiguration} -> serverSideEncryptionConfiguration) (\s@UpdateDomain' {} a -> s {serverSideEncryptionConfiguration = a} :: UpdateDomain)

instance Core.AWSRequest UpdateDomain where
  type AWSResponse UpdateDomain = UpdateDomainResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateDomainResponse'
            Prelude.<$> (x Core..?> "Domain")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateDomain where
  hashWithSalt _salt UpdateDomain' {..} =
    _salt `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` domainId
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` serverSideEncryptionConfiguration

instance Prelude.NFData UpdateDomain where
  rnf UpdateDomain' {..} =
    Prelude.rnf description
      `Prelude.seq` Prelude.rnf domainId
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf serverSideEncryptionConfiguration

instance Core.ToHeaders UpdateDomain where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ("VoiceID.UpdateDomain" :: Prelude.ByteString),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateDomain where
  toJSON UpdateDomain' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Description" Core..=) Prelude.<$> description,
            Prelude.Just ("DomainId" Core..= domainId),
            Prelude.Just ("Name" Core..= name),
            Prelude.Just
              ( "ServerSideEncryptionConfiguration"
                  Core..= serverSideEncryptionConfiguration
              )
          ]
      )

instance Core.ToPath UpdateDomain where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateDomain where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateDomainResponse' smart constructor.
data UpdateDomainResponse = UpdateDomainResponse'
  { -- | Details about the updated domain
    domain :: Prelude.Maybe Domain,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateDomainResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'domain', 'updateDomainResponse_domain' - Details about the updated domain
--
-- 'httpStatus', 'updateDomainResponse_httpStatus' - The response's http status code.
newUpdateDomainResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateDomainResponse
newUpdateDomainResponse pHttpStatus_ =
  UpdateDomainResponse'
    { domain = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Details about the updated domain
updateDomainResponse_domain :: Lens.Lens' UpdateDomainResponse (Prelude.Maybe Domain)
updateDomainResponse_domain = Lens.lens (\UpdateDomainResponse' {domain} -> domain) (\s@UpdateDomainResponse' {} a -> s {domain = a} :: UpdateDomainResponse)

-- | The response's http status code.
updateDomainResponse_httpStatus :: Lens.Lens' UpdateDomainResponse Prelude.Int
updateDomainResponse_httpStatus = Lens.lens (\UpdateDomainResponse' {httpStatus} -> httpStatus) (\s@UpdateDomainResponse' {} a -> s {httpStatus = a} :: UpdateDomainResponse)

instance Prelude.NFData UpdateDomainResponse where
  rnf UpdateDomainResponse' {..} =
    Prelude.rnf domain
      `Prelude.seq` Prelude.rnf httpStatus
