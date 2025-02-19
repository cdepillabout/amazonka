{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.ConnectParticipant.Lens
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ConnectParticipant.Lens
  ( -- * Operations

    -- ** CompleteAttachmentUpload
    completeAttachmentUpload_attachmentIds,
    completeAttachmentUpload_clientToken,
    completeAttachmentUpload_connectionToken,
    completeAttachmentUploadResponse_httpStatus,

    -- ** CreateParticipantConnection
    createParticipantConnection_connectParticipant,
    createParticipantConnection_type,
    createParticipantConnection_participantToken,
    createParticipantConnectionResponse_connectionCredentials,
    createParticipantConnectionResponse_websocket,
    createParticipantConnectionResponse_httpStatus,

    -- ** DisconnectParticipant
    disconnectParticipant_clientToken,
    disconnectParticipant_connectionToken,
    disconnectParticipantResponse_httpStatus,

    -- ** GetAttachment
    getAttachment_attachmentId,
    getAttachment_connectionToken,
    getAttachmentResponse_url,
    getAttachmentResponse_urlExpiry,
    getAttachmentResponse_httpStatus,

    -- ** GetTranscript
    getTranscript_sortOrder,
    getTranscript_nextToken,
    getTranscript_contactId,
    getTranscript_startPosition,
    getTranscript_maxResults,
    getTranscript_scanDirection,
    getTranscript_connectionToken,
    getTranscriptResponse_nextToken,
    getTranscriptResponse_transcript,
    getTranscriptResponse_initialContactId,
    getTranscriptResponse_httpStatus,

    -- ** SendEvent
    sendEvent_clientToken,
    sendEvent_content,
    sendEvent_contentType,
    sendEvent_connectionToken,
    sendEventResponse_id,
    sendEventResponse_absoluteTime,
    sendEventResponse_httpStatus,

    -- ** SendMessage
    sendMessage_clientToken,
    sendMessage_contentType,
    sendMessage_content,
    sendMessage_connectionToken,
    sendMessageResponse_id,
    sendMessageResponse_absoluteTime,
    sendMessageResponse_httpStatus,

    -- ** StartAttachmentUpload
    startAttachmentUpload_contentType,
    startAttachmentUpload_attachmentSizeInBytes,
    startAttachmentUpload_attachmentName,
    startAttachmentUpload_clientToken,
    startAttachmentUpload_connectionToken,
    startAttachmentUploadResponse_attachmentId,
    startAttachmentUploadResponse_uploadMetadata,
    startAttachmentUploadResponse_httpStatus,

    -- * Types

    -- ** AttachmentItem
    attachmentItem_status,
    attachmentItem_attachmentId,
    attachmentItem_attachmentName,
    attachmentItem_contentType,

    -- ** ConnectionCredentials
    connectionCredentials_expiry,
    connectionCredentials_connectionToken,

    -- ** Item
    item_type,
    item_participantId,
    item_displayName,
    item_id,
    item_absoluteTime,
    item_participantRole,
    item_attachments,
    item_content,
    item_contentType,

    -- ** StartPosition
    startPosition_id,
    startPosition_absoluteTime,
    startPosition_mostRecent,

    -- ** UploadMetadata
    uploadMetadata_url,
    uploadMetadata_headersToInclude,
    uploadMetadata_urlExpiry,

    -- ** Websocket
    websocket_connectionExpiry,
    websocket_url,
  )
where

import Amazonka.ConnectParticipant.CompleteAttachmentUpload
import Amazonka.ConnectParticipant.CreateParticipantConnection
import Amazonka.ConnectParticipant.DisconnectParticipant
import Amazonka.ConnectParticipant.GetAttachment
import Amazonka.ConnectParticipant.GetTranscript
import Amazonka.ConnectParticipant.SendEvent
import Amazonka.ConnectParticipant.SendMessage
import Amazonka.ConnectParticipant.StartAttachmentUpload
import Amazonka.ConnectParticipant.Types.AttachmentItem
import Amazonka.ConnectParticipant.Types.ConnectionCredentials
import Amazonka.ConnectParticipant.Types.Item
import Amazonka.ConnectParticipant.Types.StartPosition
import Amazonka.ConnectParticipant.Types.UploadMetadata
import Amazonka.ConnectParticipant.Types.Websocket
