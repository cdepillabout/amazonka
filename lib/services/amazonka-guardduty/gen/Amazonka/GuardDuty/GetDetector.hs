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
-- Module      : Amazonka.GuardDuty.GetDetector
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an Amazon GuardDuty detector specified by the detectorId.
module Amazonka.GuardDuty.GetDetector
  ( -- * Creating a Request
    GetDetector (..),
    newGetDetector,

    -- * Request Lenses
    getDetector_detectorId,

    -- * Destructuring the Response
    GetDetectorResponse (..),
    newGetDetectorResponse,

    -- * Response Lenses
    getDetectorResponse_tags,
    getDetectorResponse_dataSources,
    getDetectorResponse_findingPublishingFrequency,
    getDetectorResponse_createdAt,
    getDetectorResponse_updatedAt,
    getDetectorResponse_httpStatus,
    getDetectorResponse_serviceRole,
    getDetectorResponse_status,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.GuardDuty.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetDetector' smart constructor.
data GetDetector = GetDetector'
  { -- | The unique ID of the detector that you want to get.
    detectorId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetDetector' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'detectorId', 'getDetector_detectorId' - The unique ID of the detector that you want to get.
newGetDetector ::
  -- | 'detectorId'
  Prelude.Text ->
  GetDetector
newGetDetector pDetectorId_ =
  GetDetector' {detectorId = pDetectorId_}

-- | The unique ID of the detector that you want to get.
getDetector_detectorId :: Lens.Lens' GetDetector Prelude.Text
getDetector_detectorId = Lens.lens (\GetDetector' {detectorId} -> detectorId) (\s@GetDetector' {} a -> s {detectorId = a} :: GetDetector)

instance Core.AWSRequest GetDetector where
  type AWSResponse GetDetector = GetDetectorResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetDetectorResponse'
            Prelude.<$> (x Core..?> "tags" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "dataSources")
            Prelude.<*> (x Core..?> "findingPublishingFrequency")
            Prelude.<*> (x Core..?> "createdAt")
            Prelude.<*> (x Core..?> "updatedAt")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "serviceRole")
            Prelude.<*> (x Core..:> "status")
      )

instance Prelude.Hashable GetDetector where
  hashWithSalt _salt GetDetector' {..} =
    _salt `Prelude.hashWithSalt` detectorId

instance Prelude.NFData GetDetector where
  rnf GetDetector' {..} = Prelude.rnf detectorId

instance Core.ToHeaders GetDetector where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetDetector where
  toPath GetDetector' {..} =
    Prelude.mconcat
      ["/detector/", Core.toBS detectorId]

instance Core.ToQuery GetDetector where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetDetectorResponse' smart constructor.
data GetDetectorResponse = GetDetectorResponse'
  { -- | The tags of the detector resource.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | Describes which data sources are enabled for the detector.
    dataSources :: Prelude.Maybe DataSourceConfigurationsResult,
    -- | The publishing frequency of the finding.
    findingPublishingFrequency :: Prelude.Maybe FindingPublishingFrequency,
    -- | The timestamp of when the detector was created.
    createdAt :: Prelude.Maybe Prelude.Text,
    -- | The last-updated timestamp for the detector.
    updatedAt :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The GuardDuty service role.
    serviceRole :: Prelude.Text,
    -- | The detector status.
    status :: DetectorStatus
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetDetectorResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'getDetectorResponse_tags' - The tags of the detector resource.
--
-- 'dataSources', 'getDetectorResponse_dataSources' - Describes which data sources are enabled for the detector.
--
-- 'findingPublishingFrequency', 'getDetectorResponse_findingPublishingFrequency' - The publishing frequency of the finding.
--
-- 'createdAt', 'getDetectorResponse_createdAt' - The timestamp of when the detector was created.
--
-- 'updatedAt', 'getDetectorResponse_updatedAt' - The last-updated timestamp for the detector.
--
-- 'httpStatus', 'getDetectorResponse_httpStatus' - The response's http status code.
--
-- 'serviceRole', 'getDetectorResponse_serviceRole' - The GuardDuty service role.
--
-- 'status', 'getDetectorResponse_status' - The detector status.
newGetDetectorResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'serviceRole'
  Prelude.Text ->
  -- | 'status'
  DetectorStatus ->
  GetDetectorResponse
newGetDetectorResponse
  pHttpStatus_
  pServiceRole_
  pStatus_ =
    GetDetectorResponse'
      { tags = Prelude.Nothing,
        dataSources = Prelude.Nothing,
        findingPublishingFrequency = Prelude.Nothing,
        createdAt = Prelude.Nothing,
        updatedAt = Prelude.Nothing,
        httpStatus = pHttpStatus_,
        serviceRole = pServiceRole_,
        status = pStatus_
      }

-- | The tags of the detector resource.
getDetectorResponse_tags :: Lens.Lens' GetDetectorResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
getDetectorResponse_tags = Lens.lens (\GetDetectorResponse' {tags} -> tags) (\s@GetDetectorResponse' {} a -> s {tags = a} :: GetDetectorResponse) Prelude.. Lens.mapping Lens.coerced

-- | Describes which data sources are enabled for the detector.
getDetectorResponse_dataSources :: Lens.Lens' GetDetectorResponse (Prelude.Maybe DataSourceConfigurationsResult)
getDetectorResponse_dataSources = Lens.lens (\GetDetectorResponse' {dataSources} -> dataSources) (\s@GetDetectorResponse' {} a -> s {dataSources = a} :: GetDetectorResponse)

-- | The publishing frequency of the finding.
getDetectorResponse_findingPublishingFrequency :: Lens.Lens' GetDetectorResponse (Prelude.Maybe FindingPublishingFrequency)
getDetectorResponse_findingPublishingFrequency = Lens.lens (\GetDetectorResponse' {findingPublishingFrequency} -> findingPublishingFrequency) (\s@GetDetectorResponse' {} a -> s {findingPublishingFrequency = a} :: GetDetectorResponse)

-- | The timestamp of when the detector was created.
getDetectorResponse_createdAt :: Lens.Lens' GetDetectorResponse (Prelude.Maybe Prelude.Text)
getDetectorResponse_createdAt = Lens.lens (\GetDetectorResponse' {createdAt} -> createdAt) (\s@GetDetectorResponse' {} a -> s {createdAt = a} :: GetDetectorResponse)

-- | The last-updated timestamp for the detector.
getDetectorResponse_updatedAt :: Lens.Lens' GetDetectorResponse (Prelude.Maybe Prelude.Text)
getDetectorResponse_updatedAt = Lens.lens (\GetDetectorResponse' {updatedAt} -> updatedAt) (\s@GetDetectorResponse' {} a -> s {updatedAt = a} :: GetDetectorResponse)

-- | The response's http status code.
getDetectorResponse_httpStatus :: Lens.Lens' GetDetectorResponse Prelude.Int
getDetectorResponse_httpStatus = Lens.lens (\GetDetectorResponse' {httpStatus} -> httpStatus) (\s@GetDetectorResponse' {} a -> s {httpStatus = a} :: GetDetectorResponse)

-- | The GuardDuty service role.
getDetectorResponse_serviceRole :: Lens.Lens' GetDetectorResponse Prelude.Text
getDetectorResponse_serviceRole = Lens.lens (\GetDetectorResponse' {serviceRole} -> serviceRole) (\s@GetDetectorResponse' {} a -> s {serviceRole = a} :: GetDetectorResponse)

-- | The detector status.
getDetectorResponse_status :: Lens.Lens' GetDetectorResponse DetectorStatus
getDetectorResponse_status = Lens.lens (\GetDetectorResponse' {status} -> status) (\s@GetDetectorResponse' {} a -> s {status = a} :: GetDetectorResponse)

instance Prelude.NFData GetDetectorResponse where
  rnf GetDetectorResponse' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf dataSources
      `Prelude.seq` Prelude.rnf findingPublishingFrequency
      `Prelude.seq` Prelude.rnf createdAt
      `Prelude.seq` Prelude.rnf updatedAt
      `Prelude.seq` Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf serviceRole
      `Prelude.seq` Prelude.rnf status
