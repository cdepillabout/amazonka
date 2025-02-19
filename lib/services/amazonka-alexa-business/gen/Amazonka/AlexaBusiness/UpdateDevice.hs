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
-- Module      : Amazonka.AlexaBusiness.UpdateDevice
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the device name by device ARN.
module Amazonka.AlexaBusiness.UpdateDevice
  ( -- * Creating a Request
    UpdateDevice (..),
    newUpdateDevice,

    -- * Request Lenses
    updateDevice_deviceName,
    updateDevice_deviceArn,

    -- * Destructuring the Response
    UpdateDeviceResponse (..),
    newUpdateDeviceResponse,

    -- * Response Lenses
    updateDeviceResponse_httpStatus,
  )
where

import Amazonka.AlexaBusiness.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateDevice' smart constructor.
data UpdateDevice = UpdateDevice'
  { -- | The updated device name. Required.
    deviceName :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the device to update. Required.
    deviceArn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateDevice' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'deviceName', 'updateDevice_deviceName' - The updated device name. Required.
--
-- 'deviceArn', 'updateDevice_deviceArn' - The ARN of the device to update. Required.
newUpdateDevice ::
  UpdateDevice
newUpdateDevice =
  UpdateDevice'
    { deviceName = Prelude.Nothing,
      deviceArn = Prelude.Nothing
    }

-- | The updated device name. Required.
updateDevice_deviceName :: Lens.Lens' UpdateDevice (Prelude.Maybe Prelude.Text)
updateDevice_deviceName = Lens.lens (\UpdateDevice' {deviceName} -> deviceName) (\s@UpdateDevice' {} a -> s {deviceName = a} :: UpdateDevice)

-- | The ARN of the device to update. Required.
updateDevice_deviceArn :: Lens.Lens' UpdateDevice (Prelude.Maybe Prelude.Text)
updateDevice_deviceArn = Lens.lens (\UpdateDevice' {deviceArn} -> deviceArn) (\s@UpdateDevice' {} a -> s {deviceArn = a} :: UpdateDevice)

instance Core.AWSRequest UpdateDevice where
  type AWSResponse UpdateDevice = UpdateDeviceResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          UpdateDeviceResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateDevice where
  hashWithSalt _salt UpdateDevice' {..} =
    _salt `Prelude.hashWithSalt` deviceName
      `Prelude.hashWithSalt` deviceArn

instance Prelude.NFData UpdateDevice where
  rnf UpdateDevice' {..} =
    Prelude.rnf deviceName
      `Prelude.seq` Prelude.rnf deviceArn

instance Core.ToHeaders UpdateDevice where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AlexaForBusiness.UpdateDevice" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateDevice where
  toJSON UpdateDevice' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("DeviceName" Core..=) Prelude.<$> deviceName,
            ("DeviceArn" Core..=) Prelude.<$> deviceArn
          ]
      )

instance Core.ToPath UpdateDevice where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateDevice where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateDeviceResponse' smart constructor.
data UpdateDeviceResponse = UpdateDeviceResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateDeviceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateDeviceResponse_httpStatus' - The response's http status code.
newUpdateDeviceResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateDeviceResponse
newUpdateDeviceResponse pHttpStatus_ =
  UpdateDeviceResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
updateDeviceResponse_httpStatus :: Lens.Lens' UpdateDeviceResponse Prelude.Int
updateDeviceResponse_httpStatus = Lens.lens (\UpdateDeviceResponse' {httpStatus} -> httpStatus) (\s@UpdateDeviceResponse' {} a -> s {httpStatus = a} :: UpdateDeviceResponse)

instance Prelude.NFData UpdateDeviceResponse where
  rnf UpdateDeviceResponse' {..} =
    Prelude.rnf httpStatus
