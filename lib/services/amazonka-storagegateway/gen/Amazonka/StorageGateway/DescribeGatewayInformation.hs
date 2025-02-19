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
-- Module      : Amazonka.StorageGateway.DescribeGatewayInformation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns metadata about a gateway such as its name, network interfaces,
-- configured time zone, and the state (whether the gateway is running or
-- not). To specify which gateway to describe, use the Amazon Resource Name
-- (ARN) of the gateway in your request.
module Amazonka.StorageGateway.DescribeGatewayInformation
  ( -- * Creating a Request
    DescribeGatewayInformation (..),
    newDescribeGatewayInformation,

    -- * Request Lenses
    describeGatewayInformation_gatewayARN,

    -- * Destructuring the Response
    DescribeGatewayInformationResponse (..),
    newDescribeGatewayInformationResponse,

    -- * Response Lenses
    describeGatewayInformationResponse_tags,
    describeGatewayInformationResponse_ec2InstanceId,
    describeGatewayInformationResponse_nextUpdateAvailabilityDate,
    describeGatewayInformationResponse_cloudWatchLogGroupARN,
    describeGatewayInformationResponse_gatewayName,
    describeGatewayInformationResponse_deprecationDate,
    describeGatewayInformationResponse_gatewayCapacity,
    describeGatewayInformationResponse_gatewayType,
    describeGatewayInformationResponse_gatewayARN,
    describeGatewayInformationResponse_endpointType,
    describeGatewayInformationResponse_softwareUpdatesEndDate,
    describeGatewayInformationResponse_lastSoftwareUpdate,
    describeGatewayInformationResponse_gatewayState,
    describeGatewayInformationResponse_gatewayId,
    describeGatewayInformationResponse_ec2InstanceRegion,
    describeGatewayInformationResponse_gatewayNetworkInterfaces,
    describeGatewayInformationResponse_supportedGatewayCapacities,
    describeGatewayInformationResponse_gatewayTimezone,
    describeGatewayInformationResponse_hostEnvironmentId,
    describeGatewayInformationResponse_vPCEndpoint,
    describeGatewayInformationResponse_hostEnvironment,
    describeGatewayInformationResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.StorageGateway.Types

-- | A JSON object containing the ID of the gateway.
--
-- /See:/ 'newDescribeGatewayInformation' smart constructor.
data DescribeGatewayInformation = DescribeGatewayInformation'
  { gatewayARN :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeGatewayInformation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'gatewayARN', 'describeGatewayInformation_gatewayARN' - Undocumented member.
newDescribeGatewayInformation ::
  -- | 'gatewayARN'
  Prelude.Text ->
  DescribeGatewayInformation
newDescribeGatewayInformation pGatewayARN_ =
  DescribeGatewayInformation'
    { gatewayARN =
        pGatewayARN_
    }

-- | Undocumented member.
describeGatewayInformation_gatewayARN :: Lens.Lens' DescribeGatewayInformation Prelude.Text
describeGatewayInformation_gatewayARN = Lens.lens (\DescribeGatewayInformation' {gatewayARN} -> gatewayARN) (\s@DescribeGatewayInformation' {} a -> s {gatewayARN = a} :: DescribeGatewayInformation)

instance Core.AWSRequest DescribeGatewayInformation where
  type
    AWSResponse DescribeGatewayInformation =
      DescribeGatewayInformationResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeGatewayInformationResponse'
            Prelude.<$> (x Core..?> "Tags" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "Ec2InstanceId")
            Prelude.<*> (x Core..?> "NextUpdateAvailabilityDate")
            Prelude.<*> (x Core..?> "CloudWatchLogGroupARN")
            Prelude.<*> (x Core..?> "GatewayName")
            Prelude.<*> (x Core..?> "DeprecationDate")
            Prelude.<*> (x Core..?> "GatewayCapacity")
            Prelude.<*> (x Core..?> "GatewayType")
            Prelude.<*> (x Core..?> "GatewayARN")
            Prelude.<*> (x Core..?> "EndpointType")
            Prelude.<*> (x Core..?> "SoftwareUpdatesEndDate")
            Prelude.<*> (x Core..?> "LastSoftwareUpdate")
            Prelude.<*> (x Core..?> "GatewayState")
            Prelude.<*> (x Core..?> "GatewayId")
            Prelude.<*> (x Core..?> "Ec2InstanceRegion")
            Prelude.<*> ( x Core..?> "GatewayNetworkInterfaces"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> ( x Core..?> "SupportedGatewayCapacities"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "GatewayTimezone")
            Prelude.<*> (x Core..?> "HostEnvironmentId")
            Prelude.<*> (x Core..?> "VPCEndpoint")
            Prelude.<*> (x Core..?> "HostEnvironment")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeGatewayInformation where
  hashWithSalt _salt DescribeGatewayInformation' {..} =
    _salt `Prelude.hashWithSalt` gatewayARN

instance Prelude.NFData DescribeGatewayInformation where
  rnf DescribeGatewayInformation' {..} =
    Prelude.rnf gatewayARN

instance Core.ToHeaders DescribeGatewayInformation where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "StorageGateway_20130630.DescribeGatewayInformation" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeGatewayInformation where
  toJSON DescribeGatewayInformation' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("GatewayARN" Core..= gatewayARN)]
      )

instance Core.ToPath DescribeGatewayInformation where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeGatewayInformation where
  toQuery = Prelude.const Prelude.mempty

-- | A JSON object containing the following fields:
--
-- /See:/ 'newDescribeGatewayInformationResponse' smart constructor.
data DescribeGatewayInformationResponse = DescribeGatewayInformationResponse'
  { -- | A list of up to 50 tags assigned to the gateway, sorted alphabetically
    -- by key name. Each tag is a key-value pair. For a gateway with more than
    -- 10 tags assigned, you can view all tags using the @ListTagsForResource@
    -- API operation.
    tags :: Prelude.Maybe [Tag],
    -- | The ID of the Amazon EC2 instance that was used to launch the gateway.
    ec2InstanceId :: Prelude.Maybe Prelude.Text,
    -- | The date on which an update to the gateway is available. This date is in
    -- the time zone of the gateway. If the gateway is not available for an
    -- update this field is not returned in the response.
    nextUpdateAvailabilityDate :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the Amazon CloudWatch log group that
    -- is used to monitor events in the gateway. This field only only exist and
    -- returns once it have been chosen and set by the SGW service, based on
    -- the OS version of the gateway VM
    cloudWatchLogGroupARN :: Prelude.Maybe Prelude.Text,
    -- | The name you configured for your gateway.
    gatewayName :: Prelude.Maybe Prelude.Text,
    -- | Date after which this gateway will not receive software updates for new
    -- features and bug fixes.
    deprecationDate :: Prelude.Maybe Prelude.Text,
    -- | Specifies the size of the gateway\'s metadata cache.
    gatewayCapacity :: Prelude.Maybe GatewayCapacity,
    -- | The type of the gateway.
    gatewayType :: Prelude.Maybe Prelude.Text,
    gatewayARN :: Prelude.Maybe Prelude.Text,
    -- | The type of endpoint for your gateway.
    --
    -- Valid Values: @STANDARD@ | @FIPS@
    endpointType :: Prelude.Maybe Prelude.Text,
    -- | Date after which this gateway will not receive software updates for new
    -- features.
    softwareUpdatesEndDate :: Prelude.Maybe Prelude.Text,
    -- | The date on which the last software update was applied to the gateway.
    -- If the gateway has never been updated, this field does not return a
    -- value in the response. This only only exist and returns once it have
    -- been chosen and set by the SGW service, based on the OS version of the
    -- gateway VM
    lastSoftwareUpdate :: Prelude.Maybe Prelude.Text,
    -- | A value that indicates the operating state of the gateway.
    gatewayState :: Prelude.Maybe Prelude.Text,
    -- | The unique identifier assigned to your gateway during activation. This
    -- ID becomes part of the gateway Amazon Resource Name (ARN), which you use
    -- as input for other operations.
    gatewayId :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Web Services Region where the Amazon EC2 instance is located.
    ec2InstanceRegion :: Prelude.Maybe Prelude.Text,
    -- | A NetworkInterface array that contains descriptions of the gateway
    -- network interfaces.
    gatewayNetworkInterfaces :: Prelude.Maybe [NetworkInterface],
    -- | A list of the metadata cache sizes that the gateway can support based on
    -- its current hardware specifications.
    supportedGatewayCapacities :: Prelude.Maybe [GatewayCapacity],
    -- | A value that indicates the time zone configured for the gateway.
    gatewayTimezone :: Prelude.Maybe Prelude.Text,
    -- | A unique identifier for the specific instance of the host platform
    -- running the gateway. This value is only available for certain host
    -- environments, and its format depends on the host environment type.
    hostEnvironmentId :: Prelude.Maybe Prelude.Text,
    -- | The configuration settings for the virtual private cloud (VPC) endpoint
    -- for your gateway.
    vPCEndpoint :: Prelude.Maybe Prelude.Text,
    -- | The type of hardware or software platform on which the gateway is
    -- running.
    hostEnvironment :: Prelude.Maybe HostEnvironment,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeGatewayInformationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'describeGatewayInformationResponse_tags' - A list of up to 50 tags assigned to the gateway, sorted alphabetically
-- by key name. Each tag is a key-value pair. For a gateway with more than
-- 10 tags assigned, you can view all tags using the @ListTagsForResource@
-- API operation.
--
-- 'ec2InstanceId', 'describeGatewayInformationResponse_ec2InstanceId' - The ID of the Amazon EC2 instance that was used to launch the gateway.
--
-- 'nextUpdateAvailabilityDate', 'describeGatewayInformationResponse_nextUpdateAvailabilityDate' - The date on which an update to the gateway is available. This date is in
-- the time zone of the gateway. If the gateway is not available for an
-- update this field is not returned in the response.
--
-- 'cloudWatchLogGroupARN', 'describeGatewayInformationResponse_cloudWatchLogGroupARN' - The Amazon Resource Name (ARN) of the Amazon CloudWatch log group that
-- is used to monitor events in the gateway. This field only only exist and
-- returns once it have been chosen and set by the SGW service, based on
-- the OS version of the gateway VM
--
-- 'gatewayName', 'describeGatewayInformationResponse_gatewayName' - The name you configured for your gateway.
--
-- 'deprecationDate', 'describeGatewayInformationResponse_deprecationDate' - Date after which this gateway will not receive software updates for new
-- features and bug fixes.
--
-- 'gatewayCapacity', 'describeGatewayInformationResponse_gatewayCapacity' - Specifies the size of the gateway\'s metadata cache.
--
-- 'gatewayType', 'describeGatewayInformationResponse_gatewayType' - The type of the gateway.
--
-- 'gatewayARN', 'describeGatewayInformationResponse_gatewayARN' - Undocumented member.
--
-- 'endpointType', 'describeGatewayInformationResponse_endpointType' - The type of endpoint for your gateway.
--
-- Valid Values: @STANDARD@ | @FIPS@
--
-- 'softwareUpdatesEndDate', 'describeGatewayInformationResponse_softwareUpdatesEndDate' - Date after which this gateway will not receive software updates for new
-- features.
--
-- 'lastSoftwareUpdate', 'describeGatewayInformationResponse_lastSoftwareUpdate' - The date on which the last software update was applied to the gateway.
-- If the gateway has never been updated, this field does not return a
-- value in the response. This only only exist and returns once it have
-- been chosen and set by the SGW service, based on the OS version of the
-- gateway VM
--
-- 'gatewayState', 'describeGatewayInformationResponse_gatewayState' - A value that indicates the operating state of the gateway.
--
-- 'gatewayId', 'describeGatewayInformationResponse_gatewayId' - The unique identifier assigned to your gateway during activation. This
-- ID becomes part of the gateway Amazon Resource Name (ARN), which you use
-- as input for other operations.
--
-- 'ec2InstanceRegion', 'describeGatewayInformationResponse_ec2InstanceRegion' - The Amazon Web Services Region where the Amazon EC2 instance is located.
--
-- 'gatewayNetworkInterfaces', 'describeGatewayInformationResponse_gatewayNetworkInterfaces' - A NetworkInterface array that contains descriptions of the gateway
-- network interfaces.
--
-- 'supportedGatewayCapacities', 'describeGatewayInformationResponse_supportedGatewayCapacities' - A list of the metadata cache sizes that the gateway can support based on
-- its current hardware specifications.
--
-- 'gatewayTimezone', 'describeGatewayInformationResponse_gatewayTimezone' - A value that indicates the time zone configured for the gateway.
--
-- 'hostEnvironmentId', 'describeGatewayInformationResponse_hostEnvironmentId' - A unique identifier for the specific instance of the host platform
-- running the gateway. This value is only available for certain host
-- environments, and its format depends on the host environment type.
--
-- 'vPCEndpoint', 'describeGatewayInformationResponse_vPCEndpoint' - The configuration settings for the virtual private cloud (VPC) endpoint
-- for your gateway.
--
-- 'hostEnvironment', 'describeGatewayInformationResponse_hostEnvironment' - The type of hardware or software platform on which the gateway is
-- running.
--
-- 'httpStatus', 'describeGatewayInformationResponse_httpStatus' - The response's http status code.
newDescribeGatewayInformationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeGatewayInformationResponse
newDescribeGatewayInformationResponse pHttpStatus_ =
  DescribeGatewayInformationResponse'
    { tags =
        Prelude.Nothing,
      ec2InstanceId = Prelude.Nothing,
      nextUpdateAvailabilityDate =
        Prelude.Nothing,
      cloudWatchLogGroupARN = Prelude.Nothing,
      gatewayName = Prelude.Nothing,
      deprecationDate = Prelude.Nothing,
      gatewayCapacity = Prelude.Nothing,
      gatewayType = Prelude.Nothing,
      gatewayARN = Prelude.Nothing,
      endpointType = Prelude.Nothing,
      softwareUpdatesEndDate =
        Prelude.Nothing,
      lastSoftwareUpdate = Prelude.Nothing,
      gatewayState = Prelude.Nothing,
      gatewayId = Prelude.Nothing,
      ec2InstanceRegion = Prelude.Nothing,
      gatewayNetworkInterfaces =
        Prelude.Nothing,
      supportedGatewayCapacities =
        Prelude.Nothing,
      gatewayTimezone = Prelude.Nothing,
      hostEnvironmentId = Prelude.Nothing,
      vPCEndpoint = Prelude.Nothing,
      hostEnvironment = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A list of up to 50 tags assigned to the gateway, sorted alphabetically
-- by key name. Each tag is a key-value pair. For a gateway with more than
-- 10 tags assigned, you can view all tags using the @ListTagsForResource@
-- API operation.
describeGatewayInformationResponse_tags :: Lens.Lens' DescribeGatewayInformationResponse (Prelude.Maybe [Tag])
describeGatewayInformationResponse_tags = Lens.lens (\DescribeGatewayInformationResponse' {tags} -> tags) (\s@DescribeGatewayInformationResponse' {} a -> s {tags = a} :: DescribeGatewayInformationResponse) Prelude.. Lens.mapping Lens.coerced

-- | The ID of the Amazon EC2 instance that was used to launch the gateway.
describeGatewayInformationResponse_ec2InstanceId :: Lens.Lens' DescribeGatewayInformationResponse (Prelude.Maybe Prelude.Text)
describeGatewayInformationResponse_ec2InstanceId = Lens.lens (\DescribeGatewayInformationResponse' {ec2InstanceId} -> ec2InstanceId) (\s@DescribeGatewayInformationResponse' {} a -> s {ec2InstanceId = a} :: DescribeGatewayInformationResponse)

-- | The date on which an update to the gateway is available. This date is in
-- the time zone of the gateway. If the gateway is not available for an
-- update this field is not returned in the response.
describeGatewayInformationResponse_nextUpdateAvailabilityDate :: Lens.Lens' DescribeGatewayInformationResponse (Prelude.Maybe Prelude.Text)
describeGatewayInformationResponse_nextUpdateAvailabilityDate = Lens.lens (\DescribeGatewayInformationResponse' {nextUpdateAvailabilityDate} -> nextUpdateAvailabilityDate) (\s@DescribeGatewayInformationResponse' {} a -> s {nextUpdateAvailabilityDate = a} :: DescribeGatewayInformationResponse)

-- | The Amazon Resource Name (ARN) of the Amazon CloudWatch log group that
-- is used to monitor events in the gateway. This field only only exist and
-- returns once it have been chosen and set by the SGW service, based on
-- the OS version of the gateway VM
describeGatewayInformationResponse_cloudWatchLogGroupARN :: Lens.Lens' DescribeGatewayInformationResponse (Prelude.Maybe Prelude.Text)
describeGatewayInformationResponse_cloudWatchLogGroupARN = Lens.lens (\DescribeGatewayInformationResponse' {cloudWatchLogGroupARN} -> cloudWatchLogGroupARN) (\s@DescribeGatewayInformationResponse' {} a -> s {cloudWatchLogGroupARN = a} :: DescribeGatewayInformationResponse)

-- | The name you configured for your gateway.
describeGatewayInformationResponse_gatewayName :: Lens.Lens' DescribeGatewayInformationResponse (Prelude.Maybe Prelude.Text)
describeGatewayInformationResponse_gatewayName = Lens.lens (\DescribeGatewayInformationResponse' {gatewayName} -> gatewayName) (\s@DescribeGatewayInformationResponse' {} a -> s {gatewayName = a} :: DescribeGatewayInformationResponse)

-- | Date after which this gateway will not receive software updates for new
-- features and bug fixes.
describeGatewayInformationResponse_deprecationDate :: Lens.Lens' DescribeGatewayInformationResponse (Prelude.Maybe Prelude.Text)
describeGatewayInformationResponse_deprecationDate = Lens.lens (\DescribeGatewayInformationResponse' {deprecationDate} -> deprecationDate) (\s@DescribeGatewayInformationResponse' {} a -> s {deprecationDate = a} :: DescribeGatewayInformationResponse)

-- | Specifies the size of the gateway\'s metadata cache.
describeGatewayInformationResponse_gatewayCapacity :: Lens.Lens' DescribeGatewayInformationResponse (Prelude.Maybe GatewayCapacity)
describeGatewayInformationResponse_gatewayCapacity = Lens.lens (\DescribeGatewayInformationResponse' {gatewayCapacity} -> gatewayCapacity) (\s@DescribeGatewayInformationResponse' {} a -> s {gatewayCapacity = a} :: DescribeGatewayInformationResponse)

-- | The type of the gateway.
describeGatewayInformationResponse_gatewayType :: Lens.Lens' DescribeGatewayInformationResponse (Prelude.Maybe Prelude.Text)
describeGatewayInformationResponse_gatewayType = Lens.lens (\DescribeGatewayInformationResponse' {gatewayType} -> gatewayType) (\s@DescribeGatewayInformationResponse' {} a -> s {gatewayType = a} :: DescribeGatewayInformationResponse)

-- | Undocumented member.
describeGatewayInformationResponse_gatewayARN :: Lens.Lens' DescribeGatewayInformationResponse (Prelude.Maybe Prelude.Text)
describeGatewayInformationResponse_gatewayARN = Lens.lens (\DescribeGatewayInformationResponse' {gatewayARN} -> gatewayARN) (\s@DescribeGatewayInformationResponse' {} a -> s {gatewayARN = a} :: DescribeGatewayInformationResponse)

-- | The type of endpoint for your gateway.
--
-- Valid Values: @STANDARD@ | @FIPS@
describeGatewayInformationResponse_endpointType :: Lens.Lens' DescribeGatewayInformationResponse (Prelude.Maybe Prelude.Text)
describeGatewayInformationResponse_endpointType = Lens.lens (\DescribeGatewayInformationResponse' {endpointType} -> endpointType) (\s@DescribeGatewayInformationResponse' {} a -> s {endpointType = a} :: DescribeGatewayInformationResponse)

-- | Date after which this gateway will not receive software updates for new
-- features.
describeGatewayInformationResponse_softwareUpdatesEndDate :: Lens.Lens' DescribeGatewayInformationResponse (Prelude.Maybe Prelude.Text)
describeGatewayInformationResponse_softwareUpdatesEndDate = Lens.lens (\DescribeGatewayInformationResponse' {softwareUpdatesEndDate} -> softwareUpdatesEndDate) (\s@DescribeGatewayInformationResponse' {} a -> s {softwareUpdatesEndDate = a} :: DescribeGatewayInformationResponse)

-- | The date on which the last software update was applied to the gateway.
-- If the gateway has never been updated, this field does not return a
-- value in the response. This only only exist and returns once it have
-- been chosen and set by the SGW service, based on the OS version of the
-- gateway VM
describeGatewayInformationResponse_lastSoftwareUpdate :: Lens.Lens' DescribeGatewayInformationResponse (Prelude.Maybe Prelude.Text)
describeGatewayInformationResponse_lastSoftwareUpdate = Lens.lens (\DescribeGatewayInformationResponse' {lastSoftwareUpdate} -> lastSoftwareUpdate) (\s@DescribeGatewayInformationResponse' {} a -> s {lastSoftwareUpdate = a} :: DescribeGatewayInformationResponse)

-- | A value that indicates the operating state of the gateway.
describeGatewayInformationResponse_gatewayState :: Lens.Lens' DescribeGatewayInformationResponse (Prelude.Maybe Prelude.Text)
describeGatewayInformationResponse_gatewayState = Lens.lens (\DescribeGatewayInformationResponse' {gatewayState} -> gatewayState) (\s@DescribeGatewayInformationResponse' {} a -> s {gatewayState = a} :: DescribeGatewayInformationResponse)

-- | The unique identifier assigned to your gateway during activation. This
-- ID becomes part of the gateway Amazon Resource Name (ARN), which you use
-- as input for other operations.
describeGatewayInformationResponse_gatewayId :: Lens.Lens' DescribeGatewayInformationResponse (Prelude.Maybe Prelude.Text)
describeGatewayInformationResponse_gatewayId = Lens.lens (\DescribeGatewayInformationResponse' {gatewayId} -> gatewayId) (\s@DescribeGatewayInformationResponse' {} a -> s {gatewayId = a} :: DescribeGatewayInformationResponse)

-- | The Amazon Web Services Region where the Amazon EC2 instance is located.
describeGatewayInformationResponse_ec2InstanceRegion :: Lens.Lens' DescribeGatewayInformationResponse (Prelude.Maybe Prelude.Text)
describeGatewayInformationResponse_ec2InstanceRegion = Lens.lens (\DescribeGatewayInformationResponse' {ec2InstanceRegion} -> ec2InstanceRegion) (\s@DescribeGatewayInformationResponse' {} a -> s {ec2InstanceRegion = a} :: DescribeGatewayInformationResponse)

-- | A NetworkInterface array that contains descriptions of the gateway
-- network interfaces.
describeGatewayInformationResponse_gatewayNetworkInterfaces :: Lens.Lens' DescribeGatewayInformationResponse (Prelude.Maybe [NetworkInterface])
describeGatewayInformationResponse_gatewayNetworkInterfaces = Lens.lens (\DescribeGatewayInformationResponse' {gatewayNetworkInterfaces} -> gatewayNetworkInterfaces) (\s@DescribeGatewayInformationResponse' {} a -> s {gatewayNetworkInterfaces = a} :: DescribeGatewayInformationResponse) Prelude.. Lens.mapping Lens.coerced

-- | A list of the metadata cache sizes that the gateway can support based on
-- its current hardware specifications.
describeGatewayInformationResponse_supportedGatewayCapacities :: Lens.Lens' DescribeGatewayInformationResponse (Prelude.Maybe [GatewayCapacity])
describeGatewayInformationResponse_supportedGatewayCapacities = Lens.lens (\DescribeGatewayInformationResponse' {supportedGatewayCapacities} -> supportedGatewayCapacities) (\s@DescribeGatewayInformationResponse' {} a -> s {supportedGatewayCapacities = a} :: DescribeGatewayInformationResponse) Prelude.. Lens.mapping Lens.coerced

-- | A value that indicates the time zone configured for the gateway.
describeGatewayInformationResponse_gatewayTimezone :: Lens.Lens' DescribeGatewayInformationResponse (Prelude.Maybe Prelude.Text)
describeGatewayInformationResponse_gatewayTimezone = Lens.lens (\DescribeGatewayInformationResponse' {gatewayTimezone} -> gatewayTimezone) (\s@DescribeGatewayInformationResponse' {} a -> s {gatewayTimezone = a} :: DescribeGatewayInformationResponse)

-- | A unique identifier for the specific instance of the host platform
-- running the gateway. This value is only available for certain host
-- environments, and its format depends on the host environment type.
describeGatewayInformationResponse_hostEnvironmentId :: Lens.Lens' DescribeGatewayInformationResponse (Prelude.Maybe Prelude.Text)
describeGatewayInformationResponse_hostEnvironmentId = Lens.lens (\DescribeGatewayInformationResponse' {hostEnvironmentId} -> hostEnvironmentId) (\s@DescribeGatewayInformationResponse' {} a -> s {hostEnvironmentId = a} :: DescribeGatewayInformationResponse)

-- | The configuration settings for the virtual private cloud (VPC) endpoint
-- for your gateway.
describeGatewayInformationResponse_vPCEndpoint :: Lens.Lens' DescribeGatewayInformationResponse (Prelude.Maybe Prelude.Text)
describeGatewayInformationResponse_vPCEndpoint = Lens.lens (\DescribeGatewayInformationResponse' {vPCEndpoint} -> vPCEndpoint) (\s@DescribeGatewayInformationResponse' {} a -> s {vPCEndpoint = a} :: DescribeGatewayInformationResponse)

-- | The type of hardware or software platform on which the gateway is
-- running.
describeGatewayInformationResponse_hostEnvironment :: Lens.Lens' DescribeGatewayInformationResponse (Prelude.Maybe HostEnvironment)
describeGatewayInformationResponse_hostEnvironment = Lens.lens (\DescribeGatewayInformationResponse' {hostEnvironment} -> hostEnvironment) (\s@DescribeGatewayInformationResponse' {} a -> s {hostEnvironment = a} :: DescribeGatewayInformationResponse)

-- | The response's http status code.
describeGatewayInformationResponse_httpStatus :: Lens.Lens' DescribeGatewayInformationResponse Prelude.Int
describeGatewayInformationResponse_httpStatus = Lens.lens (\DescribeGatewayInformationResponse' {httpStatus} -> httpStatus) (\s@DescribeGatewayInformationResponse' {} a -> s {httpStatus = a} :: DescribeGatewayInformationResponse)

instance
  Prelude.NFData
    DescribeGatewayInformationResponse
  where
  rnf DescribeGatewayInformationResponse' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf ec2InstanceId
      `Prelude.seq` Prelude.rnf nextUpdateAvailabilityDate
      `Prelude.seq` Prelude.rnf cloudWatchLogGroupARN
      `Prelude.seq` Prelude.rnf gatewayName
      `Prelude.seq` Prelude.rnf deprecationDate
      `Prelude.seq` Prelude.rnf gatewayCapacity
      `Prelude.seq` Prelude.rnf gatewayType
      `Prelude.seq` Prelude.rnf gatewayARN
      `Prelude.seq` Prelude.rnf endpointType
      `Prelude.seq` Prelude.rnf softwareUpdatesEndDate
      `Prelude.seq` Prelude.rnf lastSoftwareUpdate
      `Prelude.seq` Prelude.rnf gatewayState
      `Prelude.seq` Prelude.rnf gatewayId
      `Prelude.seq` Prelude.rnf ec2InstanceRegion
      `Prelude.seq` Prelude.rnf gatewayNetworkInterfaces
      `Prelude.seq` Prelude.rnf
        supportedGatewayCapacities
      `Prelude.seq` Prelude.rnf gatewayTimezone
      `Prelude.seq` Prelude.rnf hostEnvironmentId
      `Prelude.seq` Prelude.rnf vPCEndpoint
      `Prelude.seq` Prelude.rnf hostEnvironment
      `Prelude.seq` Prelude.rnf httpStatus
