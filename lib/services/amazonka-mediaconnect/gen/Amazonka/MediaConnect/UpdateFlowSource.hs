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
-- Module      : Amazonka.MediaConnect.UpdateFlowSource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the source of a flow.
module Amazonka.MediaConnect.UpdateFlowSource
  ( -- * Creating a Request
    UpdateFlowSource (..),
    newUpdateFlowSource,

    -- * Request Lenses
    updateFlowSource_maxLatency,
    updateFlowSource_mediaStreamSourceConfigurations,
    updateFlowSource_entitlementArn,
    updateFlowSource_vpcInterfaceName,
    updateFlowSource_maxSyncBuffer,
    updateFlowSource_maxBitrate,
    updateFlowSource_streamId,
    updateFlowSource_senderIpAddress,
    updateFlowSource_decryption,
    updateFlowSource_description,
    updateFlowSource_senderControlPort,
    updateFlowSource_protocol,
    updateFlowSource_ingestPort,
    updateFlowSource_whitelistCidr,
    updateFlowSource_minLatency,
    updateFlowSource_flowArn,
    updateFlowSource_sourceArn,

    -- * Destructuring the Response
    UpdateFlowSourceResponse (..),
    newUpdateFlowSourceResponse,

    -- * Response Lenses
    updateFlowSourceResponse_source,
    updateFlowSourceResponse_flowArn,
    updateFlowSourceResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MediaConnect.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | A request to update the source of a flow.
--
-- /See:/ 'newUpdateFlowSource' smart constructor.
data UpdateFlowSource = UpdateFlowSource'
  { -- | The maximum latency in milliseconds. This parameter applies only to
    -- RIST-based, Zixi-based, and Fujitsu-based streams.
    maxLatency :: Prelude.Maybe Prelude.Int,
    -- | The media streams that are associated with the source, and the
    -- parameters for those associations.
    mediaStreamSourceConfigurations :: Prelude.Maybe [MediaStreamSourceConfigurationRequest],
    -- | The ARN of the entitlement that allows you to subscribe to this flow.
    -- The entitlement is set by the flow originator, and the ARN is generated
    -- as part of the originator\'s flow.
    entitlementArn :: Prelude.Maybe Prelude.Text,
    -- | The name of the VPC interface to use for this source.
    vpcInterfaceName :: Prelude.Maybe Prelude.Text,
    -- | The size of the buffer (in milliseconds) to use to sync incoming source
    -- data.
    maxSyncBuffer :: Prelude.Maybe Prelude.Int,
    -- | The smoothing max bitrate for RIST, RTP, and RTP-FEC streams.
    maxBitrate :: Prelude.Maybe Prelude.Int,
    -- | The stream ID that you want to use for this transport. This parameter
    -- applies only to Zixi-based streams.
    streamId :: Prelude.Maybe Prelude.Text,
    -- | The IP address that the flow communicates with to initiate connection
    -- with the sender.
    senderIpAddress :: Prelude.Maybe Prelude.Text,
    -- | The type of encryption used on the content ingested from this source.
    decryption :: Prelude.Maybe UpdateEncryption,
    -- | A description for the source. This value is not used or seen outside of
    -- the current AWS Elemental MediaConnect account.
    description :: Prelude.Maybe Prelude.Text,
    -- | The port that the flow uses to send outbound requests to initiate
    -- connection with the sender.
    senderControlPort :: Prelude.Maybe Prelude.Int,
    -- | The protocol that is used by the source.
    protocol :: Prelude.Maybe Protocol,
    -- | The port that the flow will be listening on for incoming content.
    ingestPort :: Prelude.Maybe Prelude.Int,
    -- | The range of IP addresses that should be allowed to contribute content
    -- to your source. These IP addresses should be in the form of a Classless
    -- Inter-Domain Routing (CIDR) block; for example, 10.0.0.0\/16.
    whitelistCidr :: Prelude.Maybe Prelude.Text,
    -- | The minimum latency in milliseconds for SRT-based streams. In streams
    -- that use the SRT protocol, this value that you set on your MediaConnect
    -- source or output represents the minimal potential latency of that
    -- connection. The latency of the stream is set to the highest number
    -- between the sender’s minimum latency and the receiver’s minimum latency.
    minLatency :: Prelude.Maybe Prelude.Int,
    -- | The flow that is associated with the source that you want to update.
    flowArn :: Prelude.Text,
    -- | The ARN of the source that you want to update.
    sourceArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateFlowSource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'maxLatency', 'updateFlowSource_maxLatency' - The maximum latency in milliseconds. This parameter applies only to
-- RIST-based, Zixi-based, and Fujitsu-based streams.
--
-- 'mediaStreamSourceConfigurations', 'updateFlowSource_mediaStreamSourceConfigurations' - The media streams that are associated with the source, and the
-- parameters for those associations.
--
-- 'entitlementArn', 'updateFlowSource_entitlementArn' - The ARN of the entitlement that allows you to subscribe to this flow.
-- The entitlement is set by the flow originator, and the ARN is generated
-- as part of the originator\'s flow.
--
-- 'vpcInterfaceName', 'updateFlowSource_vpcInterfaceName' - The name of the VPC interface to use for this source.
--
-- 'maxSyncBuffer', 'updateFlowSource_maxSyncBuffer' - The size of the buffer (in milliseconds) to use to sync incoming source
-- data.
--
-- 'maxBitrate', 'updateFlowSource_maxBitrate' - The smoothing max bitrate for RIST, RTP, and RTP-FEC streams.
--
-- 'streamId', 'updateFlowSource_streamId' - The stream ID that you want to use for this transport. This parameter
-- applies only to Zixi-based streams.
--
-- 'senderIpAddress', 'updateFlowSource_senderIpAddress' - The IP address that the flow communicates with to initiate connection
-- with the sender.
--
-- 'decryption', 'updateFlowSource_decryption' - The type of encryption used on the content ingested from this source.
--
-- 'description', 'updateFlowSource_description' - A description for the source. This value is not used or seen outside of
-- the current AWS Elemental MediaConnect account.
--
-- 'senderControlPort', 'updateFlowSource_senderControlPort' - The port that the flow uses to send outbound requests to initiate
-- connection with the sender.
--
-- 'protocol', 'updateFlowSource_protocol' - The protocol that is used by the source.
--
-- 'ingestPort', 'updateFlowSource_ingestPort' - The port that the flow will be listening on for incoming content.
--
-- 'whitelistCidr', 'updateFlowSource_whitelistCidr' - The range of IP addresses that should be allowed to contribute content
-- to your source. These IP addresses should be in the form of a Classless
-- Inter-Domain Routing (CIDR) block; for example, 10.0.0.0\/16.
--
-- 'minLatency', 'updateFlowSource_minLatency' - The minimum latency in milliseconds for SRT-based streams. In streams
-- that use the SRT protocol, this value that you set on your MediaConnect
-- source or output represents the minimal potential latency of that
-- connection. The latency of the stream is set to the highest number
-- between the sender’s minimum latency and the receiver’s minimum latency.
--
-- 'flowArn', 'updateFlowSource_flowArn' - The flow that is associated with the source that you want to update.
--
-- 'sourceArn', 'updateFlowSource_sourceArn' - The ARN of the source that you want to update.
newUpdateFlowSource ::
  -- | 'flowArn'
  Prelude.Text ->
  -- | 'sourceArn'
  Prelude.Text ->
  UpdateFlowSource
newUpdateFlowSource pFlowArn_ pSourceArn_ =
  UpdateFlowSource'
    { maxLatency = Prelude.Nothing,
      mediaStreamSourceConfigurations = Prelude.Nothing,
      entitlementArn = Prelude.Nothing,
      vpcInterfaceName = Prelude.Nothing,
      maxSyncBuffer = Prelude.Nothing,
      maxBitrate = Prelude.Nothing,
      streamId = Prelude.Nothing,
      senderIpAddress = Prelude.Nothing,
      decryption = Prelude.Nothing,
      description = Prelude.Nothing,
      senderControlPort = Prelude.Nothing,
      protocol = Prelude.Nothing,
      ingestPort = Prelude.Nothing,
      whitelistCidr = Prelude.Nothing,
      minLatency = Prelude.Nothing,
      flowArn = pFlowArn_,
      sourceArn = pSourceArn_
    }

-- | The maximum latency in milliseconds. This parameter applies only to
-- RIST-based, Zixi-based, and Fujitsu-based streams.
updateFlowSource_maxLatency :: Lens.Lens' UpdateFlowSource (Prelude.Maybe Prelude.Int)
updateFlowSource_maxLatency = Lens.lens (\UpdateFlowSource' {maxLatency} -> maxLatency) (\s@UpdateFlowSource' {} a -> s {maxLatency = a} :: UpdateFlowSource)

-- | The media streams that are associated with the source, and the
-- parameters for those associations.
updateFlowSource_mediaStreamSourceConfigurations :: Lens.Lens' UpdateFlowSource (Prelude.Maybe [MediaStreamSourceConfigurationRequest])
updateFlowSource_mediaStreamSourceConfigurations = Lens.lens (\UpdateFlowSource' {mediaStreamSourceConfigurations} -> mediaStreamSourceConfigurations) (\s@UpdateFlowSource' {} a -> s {mediaStreamSourceConfigurations = a} :: UpdateFlowSource) Prelude.. Lens.mapping Lens.coerced

-- | The ARN of the entitlement that allows you to subscribe to this flow.
-- The entitlement is set by the flow originator, and the ARN is generated
-- as part of the originator\'s flow.
updateFlowSource_entitlementArn :: Lens.Lens' UpdateFlowSource (Prelude.Maybe Prelude.Text)
updateFlowSource_entitlementArn = Lens.lens (\UpdateFlowSource' {entitlementArn} -> entitlementArn) (\s@UpdateFlowSource' {} a -> s {entitlementArn = a} :: UpdateFlowSource)

-- | The name of the VPC interface to use for this source.
updateFlowSource_vpcInterfaceName :: Lens.Lens' UpdateFlowSource (Prelude.Maybe Prelude.Text)
updateFlowSource_vpcInterfaceName = Lens.lens (\UpdateFlowSource' {vpcInterfaceName} -> vpcInterfaceName) (\s@UpdateFlowSource' {} a -> s {vpcInterfaceName = a} :: UpdateFlowSource)

-- | The size of the buffer (in milliseconds) to use to sync incoming source
-- data.
updateFlowSource_maxSyncBuffer :: Lens.Lens' UpdateFlowSource (Prelude.Maybe Prelude.Int)
updateFlowSource_maxSyncBuffer = Lens.lens (\UpdateFlowSource' {maxSyncBuffer} -> maxSyncBuffer) (\s@UpdateFlowSource' {} a -> s {maxSyncBuffer = a} :: UpdateFlowSource)

-- | The smoothing max bitrate for RIST, RTP, and RTP-FEC streams.
updateFlowSource_maxBitrate :: Lens.Lens' UpdateFlowSource (Prelude.Maybe Prelude.Int)
updateFlowSource_maxBitrate = Lens.lens (\UpdateFlowSource' {maxBitrate} -> maxBitrate) (\s@UpdateFlowSource' {} a -> s {maxBitrate = a} :: UpdateFlowSource)

-- | The stream ID that you want to use for this transport. This parameter
-- applies only to Zixi-based streams.
updateFlowSource_streamId :: Lens.Lens' UpdateFlowSource (Prelude.Maybe Prelude.Text)
updateFlowSource_streamId = Lens.lens (\UpdateFlowSource' {streamId} -> streamId) (\s@UpdateFlowSource' {} a -> s {streamId = a} :: UpdateFlowSource)

-- | The IP address that the flow communicates with to initiate connection
-- with the sender.
updateFlowSource_senderIpAddress :: Lens.Lens' UpdateFlowSource (Prelude.Maybe Prelude.Text)
updateFlowSource_senderIpAddress = Lens.lens (\UpdateFlowSource' {senderIpAddress} -> senderIpAddress) (\s@UpdateFlowSource' {} a -> s {senderIpAddress = a} :: UpdateFlowSource)

-- | The type of encryption used on the content ingested from this source.
updateFlowSource_decryption :: Lens.Lens' UpdateFlowSource (Prelude.Maybe UpdateEncryption)
updateFlowSource_decryption = Lens.lens (\UpdateFlowSource' {decryption} -> decryption) (\s@UpdateFlowSource' {} a -> s {decryption = a} :: UpdateFlowSource)

-- | A description for the source. This value is not used or seen outside of
-- the current AWS Elemental MediaConnect account.
updateFlowSource_description :: Lens.Lens' UpdateFlowSource (Prelude.Maybe Prelude.Text)
updateFlowSource_description = Lens.lens (\UpdateFlowSource' {description} -> description) (\s@UpdateFlowSource' {} a -> s {description = a} :: UpdateFlowSource)

-- | The port that the flow uses to send outbound requests to initiate
-- connection with the sender.
updateFlowSource_senderControlPort :: Lens.Lens' UpdateFlowSource (Prelude.Maybe Prelude.Int)
updateFlowSource_senderControlPort = Lens.lens (\UpdateFlowSource' {senderControlPort} -> senderControlPort) (\s@UpdateFlowSource' {} a -> s {senderControlPort = a} :: UpdateFlowSource)

-- | The protocol that is used by the source.
updateFlowSource_protocol :: Lens.Lens' UpdateFlowSource (Prelude.Maybe Protocol)
updateFlowSource_protocol = Lens.lens (\UpdateFlowSource' {protocol} -> protocol) (\s@UpdateFlowSource' {} a -> s {protocol = a} :: UpdateFlowSource)

-- | The port that the flow will be listening on for incoming content.
updateFlowSource_ingestPort :: Lens.Lens' UpdateFlowSource (Prelude.Maybe Prelude.Int)
updateFlowSource_ingestPort = Lens.lens (\UpdateFlowSource' {ingestPort} -> ingestPort) (\s@UpdateFlowSource' {} a -> s {ingestPort = a} :: UpdateFlowSource)

-- | The range of IP addresses that should be allowed to contribute content
-- to your source. These IP addresses should be in the form of a Classless
-- Inter-Domain Routing (CIDR) block; for example, 10.0.0.0\/16.
updateFlowSource_whitelistCidr :: Lens.Lens' UpdateFlowSource (Prelude.Maybe Prelude.Text)
updateFlowSource_whitelistCidr = Lens.lens (\UpdateFlowSource' {whitelistCidr} -> whitelistCidr) (\s@UpdateFlowSource' {} a -> s {whitelistCidr = a} :: UpdateFlowSource)

-- | The minimum latency in milliseconds for SRT-based streams. In streams
-- that use the SRT protocol, this value that you set on your MediaConnect
-- source or output represents the minimal potential latency of that
-- connection. The latency of the stream is set to the highest number
-- between the sender’s minimum latency and the receiver’s minimum latency.
updateFlowSource_minLatency :: Lens.Lens' UpdateFlowSource (Prelude.Maybe Prelude.Int)
updateFlowSource_minLatency = Lens.lens (\UpdateFlowSource' {minLatency} -> minLatency) (\s@UpdateFlowSource' {} a -> s {minLatency = a} :: UpdateFlowSource)

-- | The flow that is associated with the source that you want to update.
updateFlowSource_flowArn :: Lens.Lens' UpdateFlowSource Prelude.Text
updateFlowSource_flowArn = Lens.lens (\UpdateFlowSource' {flowArn} -> flowArn) (\s@UpdateFlowSource' {} a -> s {flowArn = a} :: UpdateFlowSource)

-- | The ARN of the source that you want to update.
updateFlowSource_sourceArn :: Lens.Lens' UpdateFlowSource Prelude.Text
updateFlowSource_sourceArn = Lens.lens (\UpdateFlowSource' {sourceArn} -> sourceArn) (\s@UpdateFlowSource' {} a -> s {sourceArn = a} :: UpdateFlowSource)

instance Core.AWSRequest UpdateFlowSource where
  type
    AWSResponse UpdateFlowSource =
      UpdateFlowSourceResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateFlowSourceResponse'
            Prelude.<$> (x Core..?> "source")
            Prelude.<*> (x Core..?> "flowArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateFlowSource where
  hashWithSalt _salt UpdateFlowSource' {..} =
    _salt `Prelude.hashWithSalt` maxLatency
      `Prelude.hashWithSalt` mediaStreamSourceConfigurations
      `Prelude.hashWithSalt` entitlementArn
      `Prelude.hashWithSalt` vpcInterfaceName
      `Prelude.hashWithSalt` maxSyncBuffer
      `Prelude.hashWithSalt` maxBitrate
      `Prelude.hashWithSalt` streamId
      `Prelude.hashWithSalt` senderIpAddress
      `Prelude.hashWithSalt` decryption
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` senderControlPort
      `Prelude.hashWithSalt` protocol
      `Prelude.hashWithSalt` ingestPort
      `Prelude.hashWithSalt` whitelistCidr
      `Prelude.hashWithSalt` minLatency
      `Prelude.hashWithSalt` flowArn
      `Prelude.hashWithSalt` sourceArn

instance Prelude.NFData UpdateFlowSource where
  rnf UpdateFlowSource' {..} =
    Prelude.rnf maxLatency
      `Prelude.seq` Prelude.rnf mediaStreamSourceConfigurations
      `Prelude.seq` Prelude.rnf entitlementArn
      `Prelude.seq` Prelude.rnf vpcInterfaceName
      `Prelude.seq` Prelude.rnf maxSyncBuffer
      `Prelude.seq` Prelude.rnf maxBitrate
      `Prelude.seq` Prelude.rnf streamId
      `Prelude.seq` Prelude.rnf senderIpAddress
      `Prelude.seq` Prelude.rnf decryption
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf senderControlPort
      `Prelude.seq` Prelude.rnf protocol
      `Prelude.seq` Prelude.rnf ingestPort
      `Prelude.seq` Prelude.rnf whitelistCidr
      `Prelude.seq` Prelude.rnf minLatency
      `Prelude.seq` Prelude.rnf flowArn
      `Prelude.seq` Prelude.rnf sourceArn

instance Core.ToHeaders UpdateFlowSource where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateFlowSource where
  toJSON UpdateFlowSource' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("maxLatency" Core..=) Prelude.<$> maxLatency,
            ("mediaStreamSourceConfigurations" Core..=)
              Prelude.<$> mediaStreamSourceConfigurations,
            ("entitlementArn" Core..=)
              Prelude.<$> entitlementArn,
            ("vpcInterfaceName" Core..=)
              Prelude.<$> vpcInterfaceName,
            ("maxSyncBuffer" Core..=) Prelude.<$> maxSyncBuffer,
            ("maxBitrate" Core..=) Prelude.<$> maxBitrate,
            ("streamId" Core..=) Prelude.<$> streamId,
            ("senderIpAddress" Core..=)
              Prelude.<$> senderIpAddress,
            ("decryption" Core..=) Prelude.<$> decryption,
            ("description" Core..=) Prelude.<$> description,
            ("senderControlPort" Core..=)
              Prelude.<$> senderControlPort,
            ("protocol" Core..=) Prelude.<$> protocol,
            ("ingestPort" Core..=) Prelude.<$> ingestPort,
            ("whitelistCidr" Core..=) Prelude.<$> whitelistCidr,
            ("minLatency" Core..=) Prelude.<$> minLatency
          ]
      )

instance Core.ToPath UpdateFlowSource where
  toPath UpdateFlowSource' {..} =
    Prelude.mconcat
      [ "/v1/flows/",
        Core.toBS flowArn,
        "/source/",
        Core.toBS sourceArn
      ]

instance Core.ToQuery UpdateFlowSource where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateFlowSourceResponse' smart constructor.
data UpdateFlowSourceResponse = UpdateFlowSourceResponse'
  { -- | The settings for the source of the flow.
    source :: Prelude.Maybe Source,
    -- | The ARN of the flow that you want to update.
    flowArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateFlowSourceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'source', 'updateFlowSourceResponse_source' - The settings for the source of the flow.
--
-- 'flowArn', 'updateFlowSourceResponse_flowArn' - The ARN of the flow that you want to update.
--
-- 'httpStatus', 'updateFlowSourceResponse_httpStatus' - The response's http status code.
newUpdateFlowSourceResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateFlowSourceResponse
newUpdateFlowSourceResponse pHttpStatus_ =
  UpdateFlowSourceResponse'
    { source = Prelude.Nothing,
      flowArn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The settings for the source of the flow.
updateFlowSourceResponse_source :: Lens.Lens' UpdateFlowSourceResponse (Prelude.Maybe Source)
updateFlowSourceResponse_source = Lens.lens (\UpdateFlowSourceResponse' {source} -> source) (\s@UpdateFlowSourceResponse' {} a -> s {source = a} :: UpdateFlowSourceResponse)

-- | The ARN of the flow that you want to update.
updateFlowSourceResponse_flowArn :: Lens.Lens' UpdateFlowSourceResponse (Prelude.Maybe Prelude.Text)
updateFlowSourceResponse_flowArn = Lens.lens (\UpdateFlowSourceResponse' {flowArn} -> flowArn) (\s@UpdateFlowSourceResponse' {} a -> s {flowArn = a} :: UpdateFlowSourceResponse)

-- | The response's http status code.
updateFlowSourceResponse_httpStatus :: Lens.Lens' UpdateFlowSourceResponse Prelude.Int
updateFlowSourceResponse_httpStatus = Lens.lens (\UpdateFlowSourceResponse' {httpStatus} -> httpStatus) (\s@UpdateFlowSourceResponse' {} a -> s {httpStatus = a} :: UpdateFlowSourceResponse)

instance Prelude.NFData UpdateFlowSourceResponse where
  rnf UpdateFlowSourceResponse' {..} =
    Prelude.rnf source
      `Prelude.seq` Prelude.rnf flowArn
      `Prelude.seq` Prelude.rnf httpStatus
