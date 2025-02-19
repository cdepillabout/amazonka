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
-- Module      : Amazonka.LicenseManager.GetServiceSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the License Manager settings for the current Region.
module Amazonka.LicenseManager.GetServiceSettings
  ( -- * Creating a Request
    GetServiceSettings (..),
    newGetServiceSettings,

    -- * Destructuring the Response
    GetServiceSettingsResponse (..),
    newGetServiceSettingsResponse,

    -- * Response Lenses
    getServiceSettingsResponse_organizationConfiguration,
    getServiceSettingsResponse_licenseManagerResourceShareArn,
    getServiceSettingsResponse_snsTopicArn,
    getServiceSettingsResponse_enableCrossAccountsDiscovery,
    getServiceSettingsResponse_s3BucketArn,
    getServiceSettingsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.LicenseManager.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetServiceSettings' smart constructor.
data GetServiceSettings = GetServiceSettings'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetServiceSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newGetServiceSettings ::
  GetServiceSettings
newGetServiceSettings = GetServiceSettings'

instance Core.AWSRequest GetServiceSettings where
  type
    AWSResponse GetServiceSettings =
      GetServiceSettingsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetServiceSettingsResponse'
            Prelude.<$> (x Core..?> "OrganizationConfiguration")
            Prelude.<*> (x Core..?> "LicenseManagerResourceShareArn")
            Prelude.<*> (x Core..?> "SnsTopicArn")
            Prelude.<*> (x Core..?> "EnableCrossAccountsDiscovery")
            Prelude.<*> (x Core..?> "S3BucketArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetServiceSettings where
  hashWithSalt _salt _ =
    _salt `Prelude.hashWithSalt` ()

instance Prelude.NFData GetServiceSettings where
  rnf _ = ()

instance Core.ToHeaders GetServiceSettings where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSLicenseManager.GetServiceSettings" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetServiceSettings where
  toJSON = Prelude.const (Core.Object Prelude.mempty)

instance Core.ToPath GetServiceSettings where
  toPath = Prelude.const "/"

instance Core.ToQuery GetServiceSettings where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetServiceSettingsResponse' smart constructor.
data GetServiceSettingsResponse = GetServiceSettingsResponse'
  { -- | Indicates whether Organizations is integrated with License Manager for
    -- cross-account discovery.
    organizationConfiguration :: Prelude.Maybe OrganizationConfiguration,
    -- | Amazon Resource Name (ARN) of the resource share. The License Manager
    -- management account provides member accounts with access to this share.
    licenseManagerResourceShareArn :: Prelude.Maybe Prelude.Text,
    -- | SNS topic configured to receive notifications from License Manager.
    snsTopicArn :: Prelude.Maybe Prelude.Text,
    -- | Indicates whether cross-account discovery is enabled.
    enableCrossAccountsDiscovery :: Prelude.Maybe Prelude.Bool,
    -- | Regional S3 bucket path for storing reports, license trail event data,
    -- discovery data, and so on.
    s3BucketArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetServiceSettingsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'organizationConfiguration', 'getServiceSettingsResponse_organizationConfiguration' - Indicates whether Organizations is integrated with License Manager for
-- cross-account discovery.
--
-- 'licenseManagerResourceShareArn', 'getServiceSettingsResponse_licenseManagerResourceShareArn' - Amazon Resource Name (ARN) of the resource share. The License Manager
-- management account provides member accounts with access to this share.
--
-- 'snsTopicArn', 'getServiceSettingsResponse_snsTopicArn' - SNS topic configured to receive notifications from License Manager.
--
-- 'enableCrossAccountsDiscovery', 'getServiceSettingsResponse_enableCrossAccountsDiscovery' - Indicates whether cross-account discovery is enabled.
--
-- 's3BucketArn', 'getServiceSettingsResponse_s3BucketArn' - Regional S3 bucket path for storing reports, license trail event data,
-- discovery data, and so on.
--
-- 'httpStatus', 'getServiceSettingsResponse_httpStatus' - The response's http status code.
newGetServiceSettingsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetServiceSettingsResponse
newGetServiceSettingsResponse pHttpStatus_ =
  GetServiceSettingsResponse'
    { organizationConfiguration =
        Prelude.Nothing,
      licenseManagerResourceShareArn =
        Prelude.Nothing,
      snsTopicArn = Prelude.Nothing,
      enableCrossAccountsDiscovery = Prelude.Nothing,
      s3BucketArn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Indicates whether Organizations is integrated with License Manager for
-- cross-account discovery.
getServiceSettingsResponse_organizationConfiguration :: Lens.Lens' GetServiceSettingsResponse (Prelude.Maybe OrganizationConfiguration)
getServiceSettingsResponse_organizationConfiguration = Lens.lens (\GetServiceSettingsResponse' {organizationConfiguration} -> organizationConfiguration) (\s@GetServiceSettingsResponse' {} a -> s {organizationConfiguration = a} :: GetServiceSettingsResponse)

-- | Amazon Resource Name (ARN) of the resource share. The License Manager
-- management account provides member accounts with access to this share.
getServiceSettingsResponse_licenseManagerResourceShareArn :: Lens.Lens' GetServiceSettingsResponse (Prelude.Maybe Prelude.Text)
getServiceSettingsResponse_licenseManagerResourceShareArn = Lens.lens (\GetServiceSettingsResponse' {licenseManagerResourceShareArn} -> licenseManagerResourceShareArn) (\s@GetServiceSettingsResponse' {} a -> s {licenseManagerResourceShareArn = a} :: GetServiceSettingsResponse)

-- | SNS topic configured to receive notifications from License Manager.
getServiceSettingsResponse_snsTopicArn :: Lens.Lens' GetServiceSettingsResponse (Prelude.Maybe Prelude.Text)
getServiceSettingsResponse_snsTopicArn = Lens.lens (\GetServiceSettingsResponse' {snsTopicArn} -> snsTopicArn) (\s@GetServiceSettingsResponse' {} a -> s {snsTopicArn = a} :: GetServiceSettingsResponse)

-- | Indicates whether cross-account discovery is enabled.
getServiceSettingsResponse_enableCrossAccountsDiscovery :: Lens.Lens' GetServiceSettingsResponse (Prelude.Maybe Prelude.Bool)
getServiceSettingsResponse_enableCrossAccountsDiscovery = Lens.lens (\GetServiceSettingsResponse' {enableCrossAccountsDiscovery} -> enableCrossAccountsDiscovery) (\s@GetServiceSettingsResponse' {} a -> s {enableCrossAccountsDiscovery = a} :: GetServiceSettingsResponse)

-- | Regional S3 bucket path for storing reports, license trail event data,
-- discovery data, and so on.
getServiceSettingsResponse_s3BucketArn :: Lens.Lens' GetServiceSettingsResponse (Prelude.Maybe Prelude.Text)
getServiceSettingsResponse_s3BucketArn = Lens.lens (\GetServiceSettingsResponse' {s3BucketArn} -> s3BucketArn) (\s@GetServiceSettingsResponse' {} a -> s {s3BucketArn = a} :: GetServiceSettingsResponse)

-- | The response's http status code.
getServiceSettingsResponse_httpStatus :: Lens.Lens' GetServiceSettingsResponse Prelude.Int
getServiceSettingsResponse_httpStatus = Lens.lens (\GetServiceSettingsResponse' {httpStatus} -> httpStatus) (\s@GetServiceSettingsResponse' {} a -> s {httpStatus = a} :: GetServiceSettingsResponse)

instance Prelude.NFData GetServiceSettingsResponse where
  rnf GetServiceSettingsResponse' {..} =
    Prelude.rnf organizationConfiguration
      `Prelude.seq` Prelude.rnf licenseManagerResourceShareArn
      `Prelude.seq` Prelude.rnf snsTopicArn
      `Prelude.seq` Prelude.rnf enableCrossAccountsDiscovery
      `Prelude.seq` Prelude.rnf s3BucketArn
      `Prelude.seq` Prelude.rnf httpStatus
