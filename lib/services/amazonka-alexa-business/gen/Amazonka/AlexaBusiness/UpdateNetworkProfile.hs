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
-- Module      : Amazonka.AlexaBusiness.UpdateNetworkProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a network profile by the network profile ARN.
module Amazonka.AlexaBusiness.UpdateNetworkProfile
  ( -- * Creating a Request
    UpdateNetworkProfile (..),
    newUpdateNetworkProfile,

    -- * Request Lenses
    updateNetworkProfile_certificateAuthorityArn,
    updateNetworkProfile_description,
    updateNetworkProfile_trustAnchors,
    updateNetworkProfile_currentPassword,
    updateNetworkProfile_nextPassword,
    updateNetworkProfile_networkProfileName,
    updateNetworkProfile_networkProfileArn,

    -- * Destructuring the Response
    UpdateNetworkProfileResponse (..),
    newUpdateNetworkProfileResponse,

    -- * Response Lenses
    updateNetworkProfileResponse_httpStatus,
  )
where

import Amazonka.AlexaBusiness.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateNetworkProfile' smart constructor.
data UpdateNetworkProfile = UpdateNetworkProfile'
  { -- | The ARN of the Private Certificate Authority (PCA) created in AWS
    -- Certificate Manager (ACM). This is used to issue certificates to the
    -- devices.
    certificateAuthorityArn :: Prelude.Maybe Prelude.Text,
    -- | Detailed information about a device\'s network profile.
    description :: Prelude.Maybe Prelude.Text,
    -- | The root certificate(s) of your authentication server that will be
    -- installed on your devices and used to trust your authentication server
    -- during EAP negotiation.
    trustAnchors :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | The current password of the Wi-Fi network.
    currentPassword :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The next, or subsequent, password of the Wi-Fi network. This password is
    -- asynchronously transmitted to the device and is used when the password
    -- of the network changes to NextPassword.
    nextPassword :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The name of the network profile associated with a device.
    networkProfileName :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the network profile associated with a device.
    networkProfileArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateNetworkProfile' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'certificateAuthorityArn', 'updateNetworkProfile_certificateAuthorityArn' - The ARN of the Private Certificate Authority (PCA) created in AWS
-- Certificate Manager (ACM). This is used to issue certificates to the
-- devices.
--
-- 'description', 'updateNetworkProfile_description' - Detailed information about a device\'s network profile.
--
-- 'trustAnchors', 'updateNetworkProfile_trustAnchors' - The root certificate(s) of your authentication server that will be
-- installed on your devices and used to trust your authentication server
-- during EAP negotiation.
--
-- 'currentPassword', 'updateNetworkProfile_currentPassword' - The current password of the Wi-Fi network.
--
-- 'nextPassword', 'updateNetworkProfile_nextPassword' - The next, or subsequent, password of the Wi-Fi network. This password is
-- asynchronously transmitted to the device and is used when the password
-- of the network changes to NextPassword.
--
-- 'networkProfileName', 'updateNetworkProfile_networkProfileName' - The name of the network profile associated with a device.
--
-- 'networkProfileArn', 'updateNetworkProfile_networkProfileArn' - The ARN of the network profile associated with a device.
newUpdateNetworkProfile ::
  -- | 'networkProfileArn'
  Prelude.Text ->
  UpdateNetworkProfile
newUpdateNetworkProfile pNetworkProfileArn_ =
  UpdateNetworkProfile'
    { certificateAuthorityArn =
        Prelude.Nothing,
      description = Prelude.Nothing,
      trustAnchors = Prelude.Nothing,
      currentPassword = Prelude.Nothing,
      nextPassword = Prelude.Nothing,
      networkProfileName = Prelude.Nothing,
      networkProfileArn = pNetworkProfileArn_
    }

-- | The ARN of the Private Certificate Authority (PCA) created in AWS
-- Certificate Manager (ACM). This is used to issue certificates to the
-- devices.
updateNetworkProfile_certificateAuthorityArn :: Lens.Lens' UpdateNetworkProfile (Prelude.Maybe Prelude.Text)
updateNetworkProfile_certificateAuthorityArn = Lens.lens (\UpdateNetworkProfile' {certificateAuthorityArn} -> certificateAuthorityArn) (\s@UpdateNetworkProfile' {} a -> s {certificateAuthorityArn = a} :: UpdateNetworkProfile)

-- | Detailed information about a device\'s network profile.
updateNetworkProfile_description :: Lens.Lens' UpdateNetworkProfile (Prelude.Maybe Prelude.Text)
updateNetworkProfile_description = Lens.lens (\UpdateNetworkProfile' {description} -> description) (\s@UpdateNetworkProfile' {} a -> s {description = a} :: UpdateNetworkProfile)

-- | The root certificate(s) of your authentication server that will be
-- installed on your devices and used to trust your authentication server
-- during EAP negotiation.
updateNetworkProfile_trustAnchors :: Lens.Lens' UpdateNetworkProfile (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
updateNetworkProfile_trustAnchors = Lens.lens (\UpdateNetworkProfile' {trustAnchors} -> trustAnchors) (\s@UpdateNetworkProfile' {} a -> s {trustAnchors = a} :: UpdateNetworkProfile) Prelude.. Lens.mapping Lens.coerced

-- | The current password of the Wi-Fi network.
updateNetworkProfile_currentPassword :: Lens.Lens' UpdateNetworkProfile (Prelude.Maybe Prelude.Text)
updateNetworkProfile_currentPassword = Lens.lens (\UpdateNetworkProfile' {currentPassword} -> currentPassword) (\s@UpdateNetworkProfile' {} a -> s {currentPassword = a} :: UpdateNetworkProfile) Prelude.. Lens.mapping Core._Sensitive

-- | The next, or subsequent, password of the Wi-Fi network. This password is
-- asynchronously transmitted to the device and is used when the password
-- of the network changes to NextPassword.
updateNetworkProfile_nextPassword :: Lens.Lens' UpdateNetworkProfile (Prelude.Maybe Prelude.Text)
updateNetworkProfile_nextPassword = Lens.lens (\UpdateNetworkProfile' {nextPassword} -> nextPassword) (\s@UpdateNetworkProfile' {} a -> s {nextPassword = a} :: UpdateNetworkProfile) Prelude.. Lens.mapping Core._Sensitive

-- | The name of the network profile associated with a device.
updateNetworkProfile_networkProfileName :: Lens.Lens' UpdateNetworkProfile (Prelude.Maybe Prelude.Text)
updateNetworkProfile_networkProfileName = Lens.lens (\UpdateNetworkProfile' {networkProfileName} -> networkProfileName) (\s@UpdateNetworkProfile' {} a -> s {networkProfileName = a} :: UpdateNetworkProfile)

-- | The ARN of the network profile associated with a device.
updateNetworkProfile_networkProfileArn :: Lens.Lens' UpdateNetworkProfile Prelude.Text
updateNetworkProfile_networkProfileArn = Lens.lens (\UpdateNetworkProfile' {networkProfileArn} -> networkProfileArn) (\s@UpdateNetworkProfile' {} a -> s {networkProfileArn = a} :: UpdateNetworkProfile)

instance Core.AWSRequest UpdateNetworkProfile where
  type
    AWSResponse UpdateNetworkProfile =
      UpdateNetworkProfileResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          UpdateNetworkProfileResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateNetworkProfile where
  hashWithSalt _salt UpdateNetworkProfile' {..} =
    _salt
      `Prelude.hashWithSalt` certificateAuthorityArn
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` trustAnchors
      `Prelude.hashWithSalt` currentPassword
      `Prelude.hashWithSalt` nextPassword
      `Prelude.hashWithSalt` networkProfileName
      `Prelude.hashWithSalt` networkProfileArn

instance Prelude.NFData UpdateNetworkProfile where
  rnf UpdateNetworkProfile' {..} =
    Prelude.rnf certificateAuthorityArn
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf trustAnchors
      `Prelude.seq` Prelude.rnf currentPassword
      `Prelude.seq` Prelude.rnf nextPassword
      `Prelude.seq` Prelude.rnf networkProfileName
      `Prelude.seq` Prelude.rnf networkProfileArn

instance Core.ToHeaders UpdateNetworkProfile where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AlexaForBusiness.UpdateNetworkProfile" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateNetworkProfile where
  toJSON UpdateNetworkProfile' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("CertificateAuthorityArn" Core..=)
              Prelude.<$> certificateAuthorityArn,
            ("Description" Core..=) Prelude.<$> description,
            ("TrustAnchors" Core..=) Prelude.<$> trustAnchors,
            ("CurrentPassword" Core..=)
              Prelude.<$> currentPassword,
            ("NextPassword" Core..=) Prelude.<$> nextPassword,
            ("NetworkProfileName" Core..=)
              Prelude.<$> networkProfileName,
            Prelude.Just
              ("NetworkProfileArn" Core..= networkProfileArn)
          ]
      )

instance Core.ToPath UpdateNetworkProfile where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateNetworkProfile where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateNetworkProfileResponse' smart constructor.
data UpdateNetworkProfileResponse = UpdateNetworkProfileResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateNetworkProfileResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateNetworkProfileResponse_httpStatus' - The response's http status code.
newUpdateNetworkProfileResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateNetworkProfileResponse
newUpdateNetworkProfileResponse pHttpStatus_ =
  UpdateNetworkProfileResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
updateNetworkProfileResponse_httpStatus :: Lens.Lens' UpdateNetworkProfileResponse Prelude.Int
updateNetworkProfileResponse_httpStatus = Lens.lens (\UpdateNetworkProfileResponse' {httpStatus} -> httpStatus) (\s@UpdateNetworkProfileResponse' {} a -> s {httpStatus = a} :: UpdateNetworkProfileResponse)

instance Prelude.NFData UpdateNetworkProfileResponse where
  rnf UpdateNetworkProfileResponse' {..} =
    Prelude.rnf httpStatus
