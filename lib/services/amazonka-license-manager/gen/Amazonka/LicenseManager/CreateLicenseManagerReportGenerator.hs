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
-- Module      : Amazonka.LicenseManager.CreateLicenseManagerReportGenerator
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a report generator.
module Amazonka.LicenseManager.CreateLicenseManagerReportGenerator
  ( -- * Creating a Request
    CreateLicenseManagerReportGenerator (..),
    newCreateLicenseManagerReportGenerator,

    -- * Request Lenses
    createLicenseManagerReportGenerator_tags,
    createLicenseManagerReportGenerator_description,
    createLicenseManagerReportGenerator_reportGeneratorName,
    createLicenseManagerReportGenerator_type,
    createLicenseManagerReportGenerator_reportContext,
    createLicenseManagerReportGenerator_reportFrequency,
    createLicenseManagerReportGenerator_clientToken,

    -- * Destructuring the Response
    CreateLicenseManagerReportGeneratorResponse (..),
    newCreateLicenseManagerReportGeneratorResponse,

    -- * Response Lenses
    createLicenseManagerReportGeneratorResponse_licenseManagerReportGeneratorArn,
    createLicenseManagerReportGeneratorResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.LicenseManager.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateLicenseManagerReportGenerator' smart constructor.
data CreateLicenseManagerReportGenerator = CreateLicenseManagerReportGenerator'
  { -- | Tags to add to the report generator.
    tags :: Prelude.Maybe [Tag],
    -- | Description of the report generator.
    description :: Prelude.Maybe Prelude.Text,
    -- | Name of the report generator.
    reportGeneratorName :: Prelude.Text,
    -- | Type of reports to generate. The following report types an be generated:
    --
    -- -   License configuration report - Reports the number and details of
    --     consumed licenses for a license configuration.
    --
    -- -   Resource report - Reports the tracked licenses and resource
    --     consumption for a license configuration.
    type' :: [ReportType],
    -- | Defines the type of license configuration the report generator tracks.
    reportContext :: ReportContext,
    -- | Frequency by which reports are generated. Reports can be generated
    -- daily, monthly, or weekly.
    reportFrequency :: ReportFrequency,
    -- | Unique, case-sensitive identifier that you provide to ensure the
    -- idempotency of the request.
    clientToken :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateLicenseManagerReportGenerator' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createLicenseManagerReportGenerator_tags' - Tags to add to the report generator.
--
-- 'description', 'createLicenseManagerReportGenerator_description' - Description of the report generator.
--
-- 'reportGeneratorName', 'createLicenseManagerReportGenerator_reportGeneratorName' - Name of the report generator.
--
-- 'type'', 'createLicenseManagerReportGenerator_type' - Type of reports to generate. The following report types an be generated:
--
-- -   License configuration report - Reports the number and details of
--     consumed licenses for a license configuration.
--
-- -   Resource report - Reports the tracked licenses and resource
--     consumption for a license configuration.
--
-- 'reportContext', 'createLicenseManagerReportGenerator_reportContext' - Defines the type of license configuration the report generator tracks.
--
-- 'reportFrequency', 'createLicenseManagerReportGenerator_reportFrequency' - Frequency by which reports are generated. Reports can be generated
-- daily, monthly, or weekly.
--
-- 'clientToken', 'createLicenseManagerReportGenerator_clientToken' - Unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request.
newCreateLicenseManagerReportGenerator ::
  -- | 'reportGeneratorName'
  Prelude.Text ->
  -- | 'reportContext'
  ReportContext ->
  -- | 'reportFrequency'
  ReportFrequency ->
  -- | 'clientToken'
  Prelude.Text ->
  CreateLicenseManagerReportGenerator
newCreateLicenseManagerReportGenerator
  pReportGeneratorName_
  pReportContext_
  pReportFrequency_
  pClientToken_ =
    CreateLicenseManagerReportGenerator'
      { tags =
          Prelude.Nothing,
        description = Prelude.Nothing,
        reportGeneratorName =
          pReportGeneratorName_,
        type' = Prelude.mempty,
        reportContext = pReportContext_,
        reportFrequency = pReportFrequency_,
        clientToken = pClientToken_
      }

-- | Tags to add to the report generator.
createLicenseManagerReportGenerator_tags :: Lens.Lens' CreateLicenseManagerReportGenerator (Prelude.Maybe [Tag])
createLicenseManagerReportGenerator_tags = Lens.lens (\CreateLicenseManagerReportGenerator' {tags} -> tags) (\s@CreateLicenseManagerReportGenerator' {} a -> s {tags = a} :: CreateLicenseManagerReportGenerator) Prelude.. Lens.mapping Lens.coerced

-- | Description of the report generator.
createLicenseManagerReportGenerator_description :: Lens.Lens' CreateLicenseManagerReportGenerator (Prelude.Maybe Prelude.Text)
createLicenseManagerReportGenerator_description = Lens.lens (\CreateLicenseManagerReportGenerator' {description} -> description) (\s@CreateLicenseManagerReportGenerator' {} a -> s {description = a} :: CreateLicenseManagerReportGenerator)

-- | Name of the report generator.
createLicenseManagerReportGenerator_reportGeneratorName :: Lens.Lens' CreateLicenseManagerReportGenerator Prelude.Text
createLicenseManagerReportGenerator_reportGeneratorName = Lens.lens (\CreateLicenseManagerReportGenerator' {reportGeneratorName} -> reportGeneratorName) (\s@CreateLicenseManagerReportGenerator' {} a -> s {reportGeneratorName = a} :: CreateLicenseManagerReportGenerator)

-- | Type of reports to generate. The following report types an be generated:
--
-- -   License configuration report - Reports the number and details of
--     consumed licenses for a license configuration.
--
-- -   Resource report - Reports the tracked licenses and resource
--     consumption for a license configuration.
createLicenseManagerReportGenerator_type :: Lens.Lens' CreateLicenseManagerReportGenerator [ReportType]
createLicenseManagerReportGenerator_type = Lens.lens (\CreateLicenseManagerReportGenerator' {type'} -> type') (\s@CreateLicenseManagerReportGenerator' {} a -> s {type' = a} :: CreateLicenseManagerReportGenerator) Prelude.. Lens.coerced

-- | Defines the type of license configuration the report generator tracks.
createLicenseManagerReportGenerator_reportContext :: Lens.Lens' CreateLicenseManagerReportGenerator ReportContext
createLicenseManagerReportGenerator_reportContext = Lens.lens (\CreateLicenseManagerReportGenerator' {reportContext} -> reportContext) (\s@CreateLicenseManagerReportGenerator' {} a -> s {reportContext = a} :: CreateLicenseManagerReportGenerator)

-- | Frequency by which reports are generated. Reports can be generated
-- daily, monthly, or weekly.
createLicenseManagerReportGenerator_reportFrequency :: Lens.Lens' CreateLicenseManagerReportGenerator ReportFrequency
createLicenseManagerReportGenerator_reportFrequency = Lens.lens (\CreateLicenseManagerReportGenerator' {reportFrequency} -> reportFrequency) (\s@CreateLicenseManagerReportGenerator' {} a -> s {reportFrequency = a} :: CreateLicenseManagerReportGenerator)

-- | Unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request.
createLicenseManagerReportGenerator_clientToken :: Lens.Lens' CreateLicenseManagerReportGenerator Prelude.Text
createLicenseManagerReportGenerator_clientToken = Lens.lens (\CreateLicenseManagerReportGenerator' {clientToken} -> clientToken) (\s@CreateLicenseManagerReportGenerator' {} a -> s {clientToken = a} :: CreateLicenseManagerReportGenerator)

instance
  Core.AWSRequest
    CreateLicenseManagerReportGenerator
  where
  type
    AWSResponse CreateLicenseManagerReportGenerator =
      CreateLicenseManagerReportGeneratorResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateLicenseManagerReportGeneratorResponse'
            Prelude.<$> (x Core..?> "LicenseManagerReportGeneratorArn")
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    CreateLicenseManagerReportGenerator
  where
  hashWithSalt
    _salt
    CreateLicenseManagerReportGenerator' {..} =
      _salt `Prelude.hashWithSalt` tags
        `Prelude.hashWithSalt` description
        `Prelude.hashWithSalt` reportGeneratorName
        `Prelude.hashWithSalt` type'
        `Prelude.hashWithSalt` reportContext
        `Prelude.hashWithSalt` reportFrequency
        `Prelude.hashWithSalt` clientToken

instance
  Prelude.NFData
    CreateLicenseManagerReportGenerator
  where
  rnf CreateLicenseManagerReportGenerator' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf reportGeneratorName
      `Prelude.seq` Prelude.rnf type'
      `Prelude.seq` Prelude.rnf reportContext
      `Prelude.seq` Prelude.rnf reportFrequency
      `Prelude.seq` Prelude.rnf clientToken

instance
  Core.ToHeaders
    CreateLicenseManagerReportGenerator
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSLicenseManager.CreateLicenseManagerReportGenerator" ::
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
    CreateLicenseManagerReportGenerator
  where
  toJSON CreateLicenseManagerReportGenerator' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Tags" Core..=) Prelude.<$> tags,
            ("Description" Core..=) Prelude.<$> description,
            Prelude.Just
              ("ReportGeneratorName" Core..= reportGeneratorName),
            Prelude.Just ("Type" Core..= type'),
            Prelude.Just ("ReportContext" Core..= reportContext),
            Prelude.Just
              ("ReportFrequency" Core..= reportFrequency),
            Prelude.Just ("ClientToken" Core..= clientToken)
          ]
      )

instance
  Core.ToPath
    CreateLicenseManagerReportGenerator
  where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    CreateLicenseManagerReportGenerator
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateLicenseManagerReportGeneratorResponse' smart constructor.
data CreateLicenseManagerReportGeneratorResponse = CreateLicenseManagerReportGeneratorResponse'
  { -- | The Amazon Resource Name (ARN) of the new report generator.
    licenseManagerReportGeneratorArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateLicenseManagerReportGeneratorResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'licenseManagerReportGeneratorArn', 'createLicenseManagerReportGeneratorResponse_licenseManagerReportGeneratorArn' - The Amazon Resource Name (ARN) of the new report generator.
--
-- 'httpStatus', 'createLicenseManagerReportGeneratorResponse_httpStatus' - The response's http status code.
newCreateLicenseManagerReportGeneratorResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateLicenseManagerReportGeneratorResponse
newCreateLicenseManagerReportGeneratorResponse
  pHttpStatus_ =
    CreateLicenseManagerReportGeneratorResponse'
      { licenseManagerReportGeneratorArn =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The Amazon Resource Name (ARN) of the new report generator.
createLicenseManagerReportGeneratorResponse_licenseManagerReportGeneratorArn :: Lens.Lens' CreateLicenseManagerReportGeneratorResponse (Prelude.Maybe Prelude.Text)
createLicenseManagerReportGeneratorResponse_licenseManagerReportGeneratorArn = Lens.lens (\CreateLicenseManagerReportGeneratorResponse' {licenseManagerReportGeneratorArn} -> licenseManagerReportGeneratorArn) (\s@CreateLicenseManagerReportGeneratorResponse' {} a -> s {licenseManagerReportGeneratorArn = a} :: CreateLicenseManagerReportGeneratorResponse)

-- | The response's http status code.
createLicenseManagerReportGeneratorResponse_httpStatus :: Lens.Lens' CreateLicenseManagerReportGeneratorResponse Prelude.Int
createLicenseManagerReportGeneratorResponse_httpStatus = Lens.lens (\CreateLicenseManagerReportGeneratorResponse' {httpStatus} -> httpStatus) (\s@CreateLicenseManagerReportGeneratorResponse' {} a -> s {httpStatus = a} :: CreateLicenseManagerReportGeneratorResponse)

instance
  Prelude.NFData
    CreateLicenseManagerReportGeneratorResponse
  where
  rnf CreateLicenseManagerReportGeneratorResponse' {..} =
    Prelude.rnf licenseManagerReportGeneratorArn
      `Prelude.seq` Prelude.rnf httpStatus
