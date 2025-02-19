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
-- Module      : Amazonka.GreengrassV2.BatchDisassociateClientDeviceFromCoreDevice
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disassociates a list of client devices from a core device. After you
-- disassociate a client device from a core device, the client device
-- won\'t be able to use cloud discovery to retrieve the core device\'s
-- connectivity information and certificates.
module Amazonka.GreengrassV2.BatchDisassociateClientDeviceFromCoreDevice
  ( -- * Creating a Request
    BatchDisassociateClientDeviceFromCoreDevice (..),
    newBatchDisassociateClientDeviceFromCoreDevice,

    -- * Request Lenses
    batchDisassociateClientDeviceFromCoreDevice_entries,
    batchDisassociateClientDeviceFromCoreDevice_coreDeviceThingName,

    -- * Destructuring the Response
    BatchDisassociateClientDeviceFromCoreDeviceResponse (..),
    newBatchDisassociateClientDeviceFromCoreDeviceResponse,

    -- * Response Lenses
    batchDisassociateClientDeviceFromCoreDeviceResponse_errorEntries,
    batchDisassociateClientDeviceFromCoreDeviceResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.GreengrassV2.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newBatchDisassociateClientDeviceFromCoreDevice' smart constructor.
data BatchDisassociateClientDeviceFromCoreDevice = BatchDisassociateClientDeviceFromCoreDevice'
  { -- | The list of client devices to disassociate.
    entries :: Prelude.Maybe (Prelude.NonEmpty DisassociateClientDeviceFromCoreDeviceEntry),
    -- | The name of the core device. This is also the name of the IoT thing.
    coreDeviceThingName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchDisassociateClientDeviceFromCoreDevice' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'entries', 'batchDisassociateClientDeviceFromCoreDevice_entries' - The list of client devices to disassociate.
--
-- 'coreDeviceThingName', 'batchDisassociateClientDeviceFromCoreDevice_coreDeviceThingName' - The name of the core device. This is also the name of the IoT thing.
newBatchDisassociateClientDeviceFromCoreDevice ::
  -- | 'coreDeviceThingName'
  Prelude.Text ->
  BatchDisassociateClientDeviceFromCoreDevice
newBatchDisassociateClientDeviceFromCoreDevice
  pCoreDeviceThingName_ =
    BatchDisassociateClientDeviceFromCoreDevice'
      { entries =
          Prelude.Nothing,
        coreDeviceThingName =
          pCoreDeviceThingName_
      }

-- | The list of client devices to disassociate.
batchDisassociateClientDeviceFromCoreDevice_entries :: Lens.Lens' BatchDisassociateClientDeviceFromCoreDevice (Prelude.Maybe (Prelude.NonEmpty DisassociateClientDeviceFromCoreDeviceEntry))
batchDisassociateClientDeviceFromCoreDevice_entries = Lens.lens (\BatchDisassociateClientDeviceFromCoreDevice' {entries} -> entries) (\s@BatchDisassociateClientDeviceFromCoreDevice' {} a -> s {entries = a} :: BatchDisassociateClientDeviceFromCoreDevice) Prelude.. Lens.mapping Lens.coerced

-- | The name of the core device. This is also the name of the IoT thing.
batchDisassociateClientDeviceFromCoreDevice_coreDeviceThingName :: Lens.Lens' BatchDisassociateClientDeviceFromCoreDevice Prelude.Text
batchDisassociateClientDeviceFromCoreDevice_coreDeviceThingName = Lens.lens (\BatchDisassociateClientDeviceFromCoreDevice' {coreDeviceThingName} -> coreDeviceThingName) (\s@BatchDisassociateClientDeviceFromCoreDevice' {} a -> s {coreDeviceThingName = a} :: BatchDisassociateClientDeviceFromCoreDevice)

instance
  Core.AWSRequest
    BatchDisassociateClientDeviceFromCoreDevice
  where
  type
    AWSResponse
      BatchDisassociateClientDeviceFromCoreDevice =
      BatchDisassociateClientDeviceFromCoreDeviceResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          BatchDisassociateClientDeviceFromCoreDeviceResponse'
            Prelude.<$> (x Core..?> "errorEntries" Core..!@ Prelude.mempty)
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    BatchDisassociateClientDeviceFromCoreDevice
  where
  hashWithSalt
    _salt
    BatchDisassociateClientDeviceFromCoreDevice' {..} =
      _salt `Prelude.hashWithSalt` entries
        `Prelude.hashWithSalt` coreDeviceThingName

instance
  Prelude.NFData
    BatchDisassociateClientDeviceFromCoreDevice
  where
  rnf BatchDisassociateClientDeviceFromCoreDevice' {..} =
    Prelude.rnf entries
      `Prelude.seq` Prelude.rnf coreDeviceThingName

instance
  Core.ToHeaders
    BatchDisassociateClientDeviceFromCoreDevice
  where
  toHeaders = Prelude.const Prelude.mempty

instance
  Core.ToJSON
    BatchDisassociateClientDeviceFromCoreDevice
  where
  toJSON
    BatchDisassociateClientDeviceFromCoreDevice' {..} =
      Core.object
        ( Prelude.catMaybes
            [("entries" Core..=) Prelude.<$> entries]
        )

instance
  Core.ToPath
    BatchDisassociateClientDeviceFromCoreDevice
  where
  toPath
    BatchDisassociateClientDeviceFromCoreDevice' {..} =
      Prelude.mconcat
        [ "/greengrass/v2/coreDevices/",
          Core.toBS coreDeviceThingName,
          "/disassociateClientDevices"
        ]

instance
  Core.ToQuery
    BatchDisassociateClientDeviceFromCoreDevice
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newBatchDisassociateClientDeviceFromCoreDeviceResponse' smart constructor.
data BatchDisassociateClientDeviceFromCoreDeviceResponse = BatchDisassociateClientDeviceFromCoreDeviceResponse'
  { -- | The list of any errors for the entries in the request. Each error entry
    -- contains the name of the IoT thing that failed to disassociate.
    errorEntries :: Prelude.Maybe [DisassociateClientDeviceFromCoreDeviceErrorEntry],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchDisassociateClientDeviceFromCoreDeviceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'errorEntries', 'batchDisassociateClientDeviceFromCoreDeviceResponse_errorEntries' - The list of any errors for the entries in the request. Each error entry
-- contains the name of the IoT thing that failed to disassociate.
--
-- 'httpStatus', 'batchDisassociateClientDeviceFromCoreDeviceResponse_httpStatus' - The response's http status code.
newBatchDisassociateClientDeviceFromCoreDeviceResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  BatchDisassociateClientDeviceFromCoreDeviceResponse
newBatchDisassociateClientDeviceFromCoreDeviceResponse
  pHttpStatus_ =
    BatchDisassociateClientDeviceFromCoreDeviceResponse'
      { errorEntries =
          Prelude.Nothing,
        httpStatus =
          pHttpStatus_
      }

-- | The list of any errors for the entries in the request. Each error entry
-- contains the name of the IoT thing that failed to disassociate.
batchDisassociateClientDeviceFromCoreDeviceResponse_errorEntries :: Lens.Lens' BatchDisassociateClientDeviceFromCoreDeviceResponse (Prelude.Maybe [DisassociateClientDeviceFromCoreDeviceErrorEntry])
batchDisassociateClientDeviceFromCoreDeviceResponse_errorEntries = Lens.lens (\BatchDisassociateClientDeviceFromCoreDeviceResponse' {errorEntries} -> errorEntries) (\s@BatchDisassociateClientDeviceFromCoreDeviceResponse' {} a -> s {errorEntries = a} :: BatchDisassociateClientDeviceFromCoreDeviceResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
batchDisassociateClientDeviceFromCoreDeviceResponse_httpStatus :: Lens.Lens' BatchDisassociateClientDeviceFromCoreDeviceResponse Prelude.Int
batchDisassociateClientDeviceFromCoreDeviceResponse_httpStatus = Lens.lens (\BatchDisassociateClientDeviceFromCoreDeviceResponse' {httpStatus} -> httpStatus) (\s@BatchDisassociateClientDeviceFromCoreDeviceResponse' {} a -> s {httpStatus = a} :: BatchDisassociateClientDeviceFromCoreDeviceResponse)

instance
  Prelude.NFData
    BatchDisassociateClientDeviceFromCoreDeviceResponse
  where
  rnf
    BatchDisassociateClientDeviceFromCoreDeviceResponse' {..} =
      Prelude.rnf errorEntries
        `Prelude.seq` Prelude.rnf httpStatus
