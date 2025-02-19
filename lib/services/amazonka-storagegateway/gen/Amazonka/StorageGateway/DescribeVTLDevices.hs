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
-- Module      : Amazonka.StorageGateway.DescribeVTLDevices
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a description of virtual tape library (VTL) devices for the
-- specified tape gateway. In the response, Storage Gateway returns VTL
-- device information.
--
-- This operation is only supported in the tape gateway type.
--
-- This operation returns paginated results.
module Amazonka.StorageGateway.DescribeVTLDevices
  ( -- * Creating a Request
    DescribeVTLDevices (..),
    newDescribeVTLDevices,

    -- * Request Lenses
    describeVTLDevices_marker,
    describeVTLDevices_limit,
    describeVTLDevices_vTLDeviceARNs,
    describeVTLDevices_gatewayARN,

    -- * Destructuring the Response
    DescribeVTLDevicesResponse (..),
    newDescribeVTLDevicesResponse,

    -- * Response Lenses
    describeVTLDevicesResponse_marker,
    describeVTLDevicesResponse_gatewayARN,
    describeVTLDevicesResponse_vTLDevices,
    describeVTLDevicesResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.StorageGateway.Types

-- | DescribeVTLDevicesInput
--
-- /See:/ 'newDescribeVTLDevices' smart constructor.
data DescribeVTLDevices = DescribeVTLDevices'
  { -- | An opaque string that indicates the position at which to begin
    -- describing the VTL devices.
    marker :: Prelude.Maybe Prelude.Text,
    -- | Specifies that the number of VTL devices described be limited to the
    -- specified number.
    limit :: Prelude.Maybe Prelude.Natural,
    -- | An array of strings, where each string represents the Amazon Resource
    -- Name (ARN) of a VTL device.
    --
    -- All of the specified VTL devices must be from the same gateway. If no
    -- VTL devices are specified, the result will contain all devices on the
    -- specified gateway.
    vTLDeviceARNs :: Prelude.Maybe [Prelude.Text],
    gatewayARN :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeVTLDevices' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'marker', 'describeVTLDevices_marker' - An opaque string that indicates the position at which to begin
-- describing the VTL devices.
--
-- 'limit', 'describeVTLDevices_limit' - Specifies that the number of VTL devices described be limited to the
-- specified number.
--
-- 'vTLDeviceARNs', 'describeVTLDevices_vTLDeviceARNs' - An array of strings, where each string represents the Amazon Resource
-- Name (ARN) of a VTL device.
--
-- All of the specified VTL devices must be from the same gateway. If no
-- VTL devices are specified, the result will contain all devices on the
-- specified gateway.
--
-- 'gatewayARN', 'describeVTLDevices_gatewayARN' - Undocumented member.
newDescribeVTLDevices ::
  -- | 'gatewayARN'
  Prelude.Text ->
  DescribeVTLDevices
newDescribeVTLDevices pGatewayARN_ =
  DescribeVTLDevices'
    { marker = Prelude.Nothing,
      limit = Prelude.Nothing,
      vTLDeviceARNs = Prelude.Nothing,
      gatewayARN = pGatewayARN_
    }

-- | An opaque string that indicates the position at which to begin
-- describing the VTL devices.
describeVTLDevices_marker :: Lens.Lens' DescribeVTLDevices (Prelude.Maybe Prelude.Text)
describeVTLDevices_marker = Lens.lens (\DescribeVTLDevices' {marker} -> marker) (\s@DescribeVTLDevices' {} a -> s {marker = a} :: DescribeVTLDevices)

-- | Specifies that the number of VTL devices described be limited to the
-- specified number.
describeVTLDevices_limit :: Lens.Lens' DescribeVTLDevices (Prelude.Maybe Prelude.Natural)
describeVTLDevices_limit = Lens.lens (\DescribeVTLDevices' {limit} -> limit) (\s@DescribeVTLDevices' {} a -> s {limit = a} :: DescribeVTLDevices)

-- | An array of strings, where each string represents the Amazon Resource
-- Name (ARN) of a VTL device.
--
-- All of the specified VTL devices must be from the same gateway. If no
-- VTL devices are specified, the result will contain all devices on the
-- specified gateway.
describeVTLDevices_vTLDeviceARNs :: Lens.Lens' DescribeVTLDevices (Prelude.Maybe [Prelude.Text])
describeVTLDevices_vTLDeviceARNs = Lens.lens (\DescribeVTLDevices' {vTLDeviceARNs} -> vTLDeviceARNs) (\s@DescribeVTLDevices' {} a -> s {vTLDeviceARNs = a} :: DescribeVTLDevices) Prelude.. Lens.mapping Lens.coerced

-- | Undocumented member.
describeVTLDevices_gatewayARN :: Lens.Lens' DescribeVTLDevices Prelude.Text
describeVTLDevices_gatewayARN = Lens.lens (\DescribeVTLDevices' {gatewayARN} -> gatewayARN) (\s@DescribeVTLDevices' {} a -> s {gatewayARN = a} :: DescribeVTLDevices)

instance Core.AWSPager DescribeVTLDevices where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeVTLDevicesResponse_marker
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? describeVTLDevicesResponse_vTLDevices
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& describeVTLDevices_marker
          Lens..~ rs
          Lens.^? describeVTLDevicesResponse_marker
            Prelude.. Lens._Just

instance Core.AWSRequest DescribeVTLDevices where
  type
    AWSResponse DescribeVTLDevices =
      DescribeVTLDevicesResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeVTLDevicesResponse'
            Prelude.<$> (x Core..?> "Marker")
            Prelude.<*> (x Core..?> "GatewayARN")
            Prelude.<*> (x Core..?> "VTLDevices" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeVTLDevices where
  hashWithSalt _salt DescribeVTLDevices' {..} =
    _salt `Prelude.hashWithSalt` marker
      `Prelude.hashWithSalt` limit
      `Prelude.hashWithSalt` vTLDeviceARNs
      `Prelude.hashWithSalt` gatewayARN

instance Prelude.NFData DescribeVTLDevices where
  rnf DescribeVTLDevices' {..} =
    Prelude.rnf marker
      `Prelude.seq` Prelude.rnf limit
      `Prelude.seq` Prelude.rnf vTLDeviceARNs
      `Prelude.seq` Prelude.rnf gatewayARN

instance Core.ToHeaders DescribeVTLDevices where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "StorageGateway_20130630.DescribeVTLDevices" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeVTLDevices where
  toJSON DescribeVTLDevices' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Marker" Core..=) Prelude.<$> marker,
            ("Limit" Core..=) Prelude.<$> limit,
            ("VTLDeviceARNs" Core..=) Prelude.<$> vTLDeviceARNs,
            Prelude.Just ("GatewayARN" Core..= gatewayARN)
          ]
      )

instance Core.ToPath DescribeVTLDevices where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeVTLDevices where
  toQuery = Prelude.const Prelude.mempty

-- | DescribeVTLDevicesOutput
--
-- /See:/ 'newDescribeVTLDevicesResponse' smart constructor.
data DescribeVTLDevicesResponse = DescribeVTLDevicesResponse'
  { -- | An opaque string that indicates the position at which the VTL devices
    -- that were fetched for description ended. Use the marker in your next
    -- request to fetch the next set of VTL devices in the list. If there are
    -- no more VTL devices to describe, this field does not appear in the
    -- response.
    marker :: Prelude.Maybe Prelude.Text,
    gatewayARN :: Prelude.Maybe Prelude.Text,
    -- | An array of VTL device objects composed of the Amazon Resource Name
    -- (ARN) of the VTL devices.
    vTLDevices :: Prelude.Maybe [VTLDevice],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeVTLDevicesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'marker', 'describeVTLDevicesResponse_marker' - An opaque string that indicates the position at which the VTL devices
-- that were fetched for description ended. Use the marker in your next
-- request to fetch the next set of VTL devices in the list. If there are
-- no more VTL devices to describe, this field does not appear in the
-- response.
--
-- 'gatewayARN', 'describeVTLDevicesResponse_gatewayARN' - Undocumented member.
--
-- 'vTLDevices', 'describeVTLDevicesResponse_vTLDevices' - An array of VTL device objects composed of the Amazon Resource Name
-- (ARN) of the VTL devices.
--
-- 'httpStatus', 'describeVTLDevicesResponse_httpStatus' - The response's http status code.
newDescribeVTLDevicesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeVTLDevicesResponse
newDescribeVTLDevicesResponse pHttpStatus_ =
  DescribeVTLDevicesResponse'
    { marker =
        Prelude.Nothing,
      gatewayARN = Prelude.Nothing,
      vTLDevices = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An opaque string that indicates the position at which the VTL devices
-- that were fetched for description ended. Use the marker in your next
-- request to fetch the next set of VTL devices in the list. If there are
-- no more VTL devices to describe, this field does not appear in the
-- response.
describeVTLDevicesResponse_marker :: Lens.Lens' DescribeVTLDevicesResponse (Prelude.Maybe Prelude.Text)
describeVTLDevicesResponse_marker = Lens.lens (\DescribeVTLDevicesResponse' {marker} -> marker) (\s@DescribeVTLDevicesResponse' {} a -> s {marker = a} :: DescribeVTLDevicesResponse)

-- | Undocumented member.
describeVTLDevicesResponse_gatewayARN :: Lens.Lens' DescribeVTLDevicesResponse (Prelude.Maybe Prelude.Text)
describeVTLDevicesResponse_gatewayARN = Lens.lens (\DescribeVTLDevicesResponse' {gatewayARN} -> gatewayARN) (\s@DescribeVTLDevicesResponse' {} a -> s {gatewayARN = a} :: DescribeVTLDevicesResponse)

-- | An array of VTL device objects composed of the Amazon Resource Name
-- (ARN) of the VTL devices.
describeVTLDevicesResponse_vTLDevices :: Lens.Lens' DescribeVTLDevicesResponse (Prelude.Maybe [VTLDevice])
describeVTLDevicesResponse_vTLDevices = Lens.lens (\DescribeVTLDevicesResponse' {vTLDevices} -> vTLDevices) (\s@DescribeVTLDevicesResponse' {} a -> s {vTLDevices = a} :: DescribeVTLDevicesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeVTLDevicesResponse_httpStatus :: Lens.Lens' DescribeVTLDevicesResponse Prelude.Int
describeVTLDevicesResponse_httpStatus = Lens.lens (\DescribeVTLDevicesResponse' {httpStatus} -> httpStatus) (\s@DescribeVTLDevicesResponse' {} a -> s {httpStatus = a} :: DescribeVTLDevicesResponse)

instance Prelude.NFData DescribeVTLDevicesResponse where
  rnf DescribeVTLDevicesResponse' {..} =
    Prelude.rnf marker
      `Prelude.seq` Prelude.rnf gatewayARN
      `Prelude.seq` Prelude.rnf vTLDevices
      `Prelude.seq` Prelude.rnf httpStatus
