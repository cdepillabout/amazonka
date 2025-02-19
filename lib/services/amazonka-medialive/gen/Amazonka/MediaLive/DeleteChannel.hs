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
-- Module      : Amazonka.MediaLive.DeleteChannel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts deletion of channel. The associated outputs are also deleted.
module Amazonka.MediaLive.DeleteChannel
  ( -- * Creating a Request
    DeleteChannel (..),
    newDeleteChannel,

    -- * Request Lenses
    deleteChannel_channelId,

    -- * Destructuring the Response
    DeleteChannelResponse (..),
    newDeleteChannelResponse,

    -- * Response Lenses
    deleteChannelResponse_tags,
    deleteChannelResponse_name,
    deleteChannelResponse_maintenance,
    deleteChannelResponse_roleArn,
    deleteChannelResponse_vpc,
    deleteChannelResponse_logLevel,
    deleteChannelResponse_arn,
    deleteChannelResponse_state,
    deleteChannelResponse_inputSpecification,
    deleteChannelResponse_channelClass,
    deleteChannelResponse_id,
    deleteChannelResponse_pipelineDetails,
    deleteChannelResponse_cdiInputSpecification,
    deleteChannelResponse_inputAttachments,
    deleteChannelResponse_pipelinesRunningCount,
    deleteChannelResponse_destinations,
    deleteChannelResponse_encoderSettings,
    deleteChannelResponse_egressEndpoints,
    deleteChannelResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MediaLive.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | Placeholder documentation for DeleteChannelRequest
--
-- /See:/ 'newDeleteChannel' smart constructor.
data DeleteChannel = DeleteChannel'
  { -- | Unique ID of the channel.
    channelId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteChannel' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'channelId', 'deleteChannel_channelId' - Unique ID of the channel.
newDeleteChannel ::
  -- | 'channelId'
  Prelude.Text ->
  DeleteChannel
newDeleteChannel pChannelId_ =
  DeleteChannel' {channelId = pChannelId_}

-- | Unique ID of the channel.
deleteChannel_channelId :: Lens.Lens' DeleteChannel Prelude.Text
deleteChannel_channelId = Lens.lens (\DeleteChannel' {channelId} -> channelId) (\s@DeleteChannel' {} a -> s {channelId = a} :: DeleteChannel)

instance Core.AWSRequest DeleteChannel where
  type
    AWSResponse DeleteChannel =
      DeleteChannelResponse
  request = Request.delete defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteChannelResponse'
            Prelude.<$> (x Core..?> "tags" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "name")
            Prelude.<*> (x Core..?> "maintenance")
            Prelude.<*> (x Core..?> "roleArn")
            Prelude.<*> (x Core..?> "vpc")
            Prelude.<*> (x Core..?> "logLevel")
            Prelude.<*> (x Core..?> "arn")
            Prelude.<*> (x Core..?> "state")
            Prelude.<*> (x Core..?> "inputSpecification")
            Prelude.<*> (x Core..?> "channelClass")
            Prelude.<*> (x Core..?> "id")
            Prelude.<*> ( x Core..?> "pipelineDetails"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "cdiInputSpecification")
            Prelude.<*> ( x Core..?> "inputAttachments"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "pipelinesRunningCount")
            Prelude.<*> (x Core..?> "destinations" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "encoderSettings")
            Prelude.<*> ( x Core..?> "egressEndpoints"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteChannel where
  hashWithSalt _salt DeleteChannel' {..} =
    _salt `Prelude.hashWithSalt` channelId

instance Prelude.NFData DeleteChannel where
  rnf DeleteChannel' {..} = Prelude.rnf channelId

instance Core.ToHeaders DeleteChannel where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeleteChannel where
  toPath DeleteChannel' {..} =
    Prelude.mconcat
      ["/prod/channels/", Core.toBS channelId]

instance Core.ToQuery DeleteChannel where
  toQuery = Prelude.const Prelude.mempty

-- | Placeholder documentation for DeleteChannelResponse
--
-- /See:/ 'newDeleteChannelResponse' smart constructor.
data DeleteChannelResponse = DeleteChannelResponse'
  { -- | A collection of key-value pairs.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The name of the channel. (user-mutable)
    name :: Prelude.Maybe Prelude.Text,
    -- | Maintenance settings for this channel.
    maintenance :: Prelude.Maybe MaintenanceStatus,
    -- | The Amazon Resource Name (ARN) of the role assumed when running the
    -- Channel.
    roleArn :: Prelude.Maybe Prelude.Text,
    -- | Settings for VPC output
    vpc :: Prelude.Maybe VpcOutputSettingsDescription,
    -- | The log level being written to CloudWatch Logs.
    logLevel :: Prelude.Maybe LogLevel,
    -- | The unique arn of the channel.
    arn :: Prelude.Maybe Prelude.Text,
    state :: Prelude.Maybe ChannelState,
    -- | Specification of network and file inputs for this channel
    inputSpecification :: Prelude.Maybe InputSpecification,
    -- | The class for this channel. STANDARD for a channel with two pipelines or
    -- SINGLE_PIPELINE for a channel with one pipeline.
    channelClass :: Prelude.Maybe ChannelClass,
    -- | The unique id of the channel.
    id :: Prelude.Maybe Prelude.Text,
    -- | Runtime details for the pipelines of a running channel.
    pipelineDetails :: Prelude.Maybe [PipelineDetail],
    -- | Specification of CDI inputs for this channel
    cdiInputSpecification :: Prelude.Maybe CdiInputSpecification,
    -- | List of input attachments for channel.
    inputAttachments :: Prelude.Maybe [InputAttachment],
    -- | The number of currently healthy pipelines.
    pipelinesRunningCount :: Prelude.Maybe Prelude.Int,
    -- | A list of destinations of the channel. For UDP outputs, there is one
    -- destination per output. For other types (HLS, for example), there is one
    -- destination per packager.
    destinations :: Prelude.Maybe [OutputDestination],
    encoderSettings :: Prelude.Maybe EncoderSettings,
    -- | The endpoints where outgoing connections initiate from
    egressEndpoints :: Prelude.Maybe [ChannelEgressEndpoint],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteChannelResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'deleteChannelResponse_tags' - A collection of key-value pairs.
--
-- 'name', 'deleteChannelResponse_name' - The name of the channel. (user-mutable)
--
-- 'maintenance', 'deleteChannelResponse_maintenance' - Maintenance settings for this channel.
--
-- 'roleArn', 'deleteChannelResponse_roleArn' - The Amazon Resource Name (ARN) of the role assumed when running the
-- Channel.
--
-- 'vpc', 'deleteChannelResponse_vpc' - Settings for VPC output
--
-- 'logLevel', 'deleteChannelResponse_logLevel' - The log level being written to CloudWatch Logs.
--
-- 'arn', 'deleteChannelResponse_arn' - The unique arn of the channel.
--
-- 'state', 'deleteChannelResponse_state' - Undocumented member.
--
-- 'inputSpecification', 'deleteChannelResponse_inputSpecification' - Specification of network and file inputs for this channel
--
-- 'channelClass', 'deleteChannelResponse_channelClass' - The class for this channel. STANDARD for a channel with two pipelines or
-- SINGLE_PIPELINE for a channel with one pipeline.
--
-- 'id', 'deleteChannelResponse_id' - The unique id of the channel.
--
-- 'pipelineDetails', 'deleteChannelResponse_pipelineDetails' - Runtime details for the pipelines of a running channel.
--
-- 'cdiInputSpecification', 'deleteChannelResponse_cdiInputSpecification' - Specification of CDI inputs for this channel
--
-- 'inputAttachments', 'deleteChannelResponse_inputAttachments' - List of input attachments for channel.
--
-- 'pipelinesRunningCount', 'deleteChannelResponse_pipelinesRunningCount' - The number of currently healthy pipelines.
--
-- 'destinations', 'deleteChannelResponse_destinations' - A list of destinations of the channel. For UDP outputs, there is one
-- destination per output. For other types (HLS, for example), there is one
-- destination per packager.
--
-- 'encoderSettings', 'deleteChannelResponse_encoderSettings' - Undocumented member.
--
-- 'egressEndpoints', 'deleteChannelResponse_egressEndpoints' - The endpoints where outgoing connections initiate from
--
-- 'httpStatus', 'deleteChannelResponse_httpStatus' - The response's http status code.
newDeleteChannelResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteChannelResponse
newDeleteChannelResponse pHttpStatus_ =
  DeleteChannelResponse'
    { tags = Prelude.Nothing,
      name = Prelude.Nothing,
      maintenance = Prelude.Nothing,
      roleArn = Prelude.Nothing,
      vpc = Prelude.Nothing,
      logLevel = Prelude.Nothing,
      arn = Prelude.Nothing,
      state = Prelude.Nothing,
      inputSpecification = Prelude.Nothing,
      channelClass = Prelude.Nothing,
      id = Prelude.Nothing,
      pipelineDetails = Prelude.Nothing,
      cdiInputSpecification = Prelude.Nothing,
      inputAttachments = Prelude.Nothing,
      pipelinesRunningCount = Prelude.Nothing,
      destinations = Prelude.Nothing,
      encoderSettings = Prelude.Nothing,
      egressEndpoints = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A collection of key-value pairs.
deleteChannelResponse_tags :: Lens.Lens' DeleteChannelResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
deleteChannelResponse_tags = Lens.lens (\DeleteChannelResponse' {tags} -> tags) (\s@DeleteChannelResponse' {} a -> s {tags = a} :: DeleteChannelResponse) Prelude.. Lens.mapping Lens.coerced

-- | The name of the channel. (user-mutable)
deleteChannelResponse_name :: Lens.Lens' DeleteChannelResponse (Prelude.Maybe Prelude.Text)
deleteChannelResponse_name = Lens.lens (\DeleteChannelResponse' {name} -> name) (\s@DeleteChannelResponse' {} a -> s {name = a} :: DeleteChannelResponse)

-- | Maintenance settings for this channel.
deleteChannelResponse_maintenance :: Lens.Lens' DeleteChannelResponse (Prelude.Maybe MaintenanceStatus)
deleteChannelResponse_maintenance = Lens.lens (\DeleteChannelResponse' {maintenance} -> maintenance) (\s@DeleteChannelResponse' {} a -> s {maintenance = a} :: DeleteChannelResponse)

-- | The Amazon Resource Name (ARN) of the role assumed when running the
-- Channel.
deleteChannelResponse_roleArn :: Lens.Lens' DeleteChannelResponse (Prelude.Maybe Prelude.Text)
deleteChannelResponse_roleArn = Lens.lens (\DeleteChannelResponse' {roleArn} -> roleArn) (\s@DeleteChannelResponse' {} a -> s {roleArn = a} :: DeleteChannelResponse)

-- | Settings for VPC output
deleteChannelResponse_vpc :: Lens.Lens' DeleteChannelResponse (Prelude.Maybe VpcOutputSettingsDescription)
deleteChannelResponse_vpc = Lens.lens (\DeleteChannelResponse' {vpc} -> vpc) (\s@DeleteChannelResponse' {} a -> s {vpc = a} :: DeleteChannelResponse)

-- | The log level being written to CloudWatch Logs.
deleteChannelResponse_logLevel :: Lens.Lens' DeleteChannelResponse (Prelude.Maybe LogLevel)
deleteChannelResponse_logLevel = Lens.lens (\DeleteChannelResponse' {logLevel} -> logLevel) (\s@DeleteChannelResponse' {} a -> s {logLevel = a} :: DeleteChannelResponse)

-- | The unique arn of the channel.
deleteChannelResponse_arn :: Lens.Lens' DeleteChannelResponse (Prelude.Maybe Prelude.Text)
deleteChannelResponse_arn = Lens.lens (\DeleteChannelResponse' {arn} -> arn) (\s@DeleteChannelResponse' {} a -> s {arn = a} :: DeleteChannelResponse)

-- | Undocumented member.
deleteChannelResponse_state :: Lens.Lens' DeleteChannelResponse (Prelude.Maybe ChannelState)
deleteChannelResponse_state = Lens.lens (\DeleteChannelResponse' {state} -> state) (\s@DeleteChannelResponse' {} a -> s {state = a} :: DeleteChannelResponse)

-- | Specification of network and file inputs for this channel
deleteChannelResponse_inputSpecification :: Lens.Lens' DeleteChannelResponse (Prelude.Maybe InputSpecification)
deleteChannelResponse_inputSpecification = Lens.lens (\DeleteChannelResponse' {inputSpecification} -> inputSpecification) (\s@DeleteChannelResponse' {} a -> s {inputSpecification = a} :: DeleteChannelResponse)

-- | The class for this channel. STANDARD for a channel with two pipelines or
-- SINGLE_PIPELINE for a channel with one pipeline.
deleteChannelResponse_channelClass :: Lens.Lens' DeleteChannelResponse (Prelude.Maybe ChannelClass)
deleteChannelResponse_channelClass = Lens.lens (\DeleteChannelResponse' {channelClass} -> channelClass) (\s@DeleteChannelResponse' {} a -> s {channelClass = a} :: DeleteChannelResponse)

-- | The unique id of the channel.
deleteChannelResponse_id :: Lens.Lens' DeleteChannelResponse (Prelude.Maybe Prelude.Text)
deleteChannelResponse_id = Lens.lens (\DeleteChannelResponse' {id} -> id) (\s@DeleteChannelResponse' {} a -> s {id = a} :: DeleteChannelResponse)

-- | Runtime details for the pipelines of a running channel.
deleteChannelResponse_pipelineDetails :: Lens.Lens' DeleteChannelResponse (Prelude.Maybe [PipelineDetail])
deleteChannelResponse_pipelineDetails = Lens.lens (\DeleteChannelResponse' {pipelineDetails} -> pipelineDetails) (\s@DeleteChannelResponse' {} a -> s {pipelineDetails = a} :: DeleteChannelResponse) Prelude.. Lens.mapping Lens.coerced

-- | Specification of CDI inputs for this channel
deleteChannelResponse_cdiInputSpecification :: Lens.Lens' DeleteChannelResponse (Prelude.Maybe CdiInputSpecification)
deleteChannelResponse_cdiInputSpecification = Lens.lens (\DeleteChannelResponse' {cdiInputSpecification} -> cdiInputSpecification) (\s@DeleteChannelResponse' {} a -> s {cdiInputSpecification = a} :: DeleteChannelResponse)

-- | List of input attachments for channel.
deleteChannelResponse_inputAttachments :: Lens.Lens' DeleteChannelResponse (Prelude.Maybe [InputAttachment])
deleteChannelResponse_inputAttachments = Lens.lens (\DeleteChannelResponse' {inputAttachments} -> inputAttachments) (\s@DeleteChannelResponse' {} a -> s {inputAttachments = a} :: DeleteChannelResponse) Prelude.. Lens.mapping Lens.coerced

-- | The number of currently healthy pipelines.
deleteChannelResponse_pipelinesRunningCount :: Lens.Lens' DeleteChannelResponse (Prelude.Maybe Prelude.Int)
deleteChannelResponse_pipelinesRunningCount = Lens.lens (\DeleteChannelResponse' {pipelinesRunningCount} -> pipelinesRunningCount) (\s@DeleteChannelResponse' {} a -> s {pipelinesRunningCount = a} :: DeleteChannelResponse)

-- | A list of destinations of the channel. For UDP outputs, there is one
-- destination per output. For other types (HLS, for example), there is one
-- destination per packager.
deleteChannelResponse_destinations :: Lens.Lens' DeleteChannelResponse (Prelude.Maybe [OutputDestination])
deleteChannelResponse_destinations = Lens.lens (\DeleteChannelResponse' {destinations} -> destinations) (\s@DeleteChannelResponse' {} a -> s {destinations = a} :: DeleteChannelResponse) Prelude.. Lens.mapping Lens.coerced

-- | Undocumented member.
deleteChannelResponse_encoderSettings :: Lens.Lens' DeleteChannelResponse (Prelude.Maybe EncoderSettings)
deleteChannelResponse_encoderSettings = Lens.lens (\DeleteChannelResponse' {encoderSettings} -> encoderSettings) (\s@DeleteChannelResponse' {} a -> s {encoderSettings = a} :: DeleteChannelResponse)

-- | The endpoints where outgoing connections initiate from
deleteChannelResponse_egressEndpoints :: Lens.Lens' DeleteChannelResponse (Prelude.Maybe [ChannelEgressEndpoint])
deleteChannelResponse_egressEndpoints = Lens.lens (\DeleteChannelResponse' {egressEndpoints} -> egressEndpoints) (\s@DeleteChannelResponse' {} a -> s {egressEndpoints = a} :: DeleteChannelResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
deleteChannelResponse_httpStatus :: Lens.Lens' DeleteChannelResponse Prelude.Int
deleteChannelResponse_httpStatus = Lens.lens (\DeleteChannelResponse' {httpStatus} -> httpStatus) (\s@DeleteChannelResponse' {} a -> s {httpStatus = a} :: DeleteChannelResponse)

instance Prelude.NFData DeleteChannelResponse where
  rnf DeleteChannelResponse' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf maintenance
      `Prelude.seq` Prelude.rnf roleArn
      `Prelude.seq` Prelude.rnf vpc
      `Prelude.seq` Prelude.rnf logLevel
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf state
      `Prelude.seq` Prelude.rnf inputSpecification
      `Prelude.seq` Prelude.rnf channelClass
      `Prelude.seq` Prelude.rnf id
      `Prelude.seq` Prelude.rnf pipelineDetails
      `Prelude.seq` Prelude.rnf cdiInputSpecification
      `Prelude.seq` Prelude.rnf inputAttachments
      `Prelude.seq` Prelude.rnf pipelinesRunningCount
      `Prelude.seq` Prelude.rnf destinations
      `Prelude.seq` Prelude.rnf encoderSettings
      `Prelude.seq` Prelude.rnf egressEndpoints
      `Prelude.seq` Prelude.rnf httpStatus
