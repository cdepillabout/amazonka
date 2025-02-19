{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.QLDBSession.Lens
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.QLDBSession.Lens
  ( -- * Operations

    -- ** SendCommand
    sendCommand_abortTransaction,
    sendCommand_sessionToken,
    sendCommand_executeStatement,
    sendCommand_endSession,
    sendCommand_startTransaction,
    sendCommand_startSession,
    sendCommand_commitTransaction,
    sendCommand_fetchPage,
    sendCommandResponse_abortTransaction,
    sendCommandResponse_executeStatement,
    sendCommandResponse_endSession,
    sendCommandResponse_startTransaction,
    sendCommandResponse_startSession,
    sendCommandResponse_commitTransaction,
    sendCommandResponse_fetchPage,
    sendCommandResponse_httpStatus,

    -- * Types

    -- ** AbortTransactionRequest

    -- ** AbortTransactionResult
    abortTransactionResult_timingInformation,

    -- ** CommitTransactionRequest
    commitTransactionRequest_transactionId,
    commitTransactionRequest_commitDigest,

    -- ** CommitTransactionResult
    commitTransactionResult_commitDigest,
    commitTransactionResult_timingInformation,
    commitTransactionResult_consumedIOs,
    commitTransactionResult_transactionId,

    -- ** EndSessionRequest

    -- ** EndSessionResult
    endSessionResult_timingInformation,

    -- ** ExecuteStatementRequest
    executeStatementRequest_parameters,
    executeStatementRequest_transactionId,
    executeStatementRequest_statement,

    -- ** ExecuteStatementResult
    executeStatementResult_timingInformation,
    executeStatementResult_consumedIOs,
    executeStatementResult_firstPage,

    -- ** FetchPageRequest
    fetchPageRequest_transactionId,
    fetchPageRequest_nextPageToken,

    -- ** FetchPageResult
    fetchPageResult_timingInformation,
    fetchPageResult_consumedIOs,
    fetchPageResult_page,

    -- ** IOUsage
    iOUsage_readIOs,
    iOUsage_writeIOs,

    -- ** Page
    page_nextPageToken,
    page_values,

    -- ** StartSessionRequest
    startSessionRequest_ledgerName,

    -- ** StartSessionResult
    startSessionResult_timingInformation,
    startSessionResult_sessionToken,

    -- ** StartTransactionRequest

    -- ** StartTransactionResult
    startTransactionResult_timingInformation,
    startTransactionResult_transactionId,

    -- ** TimingInformation
    timingInformation_processingTimeMilliseconds,

    -- ** ValueHolder
    valueHolder_ionBinary,
    valueHolder_ionText,
  )
where

import Amazonka.QLDBSession.SendCommand
import Amazonka.QLDBSession.Types.AbortTransactionRequest
import Amazonka.QLDBSession.Types.AbortTransactionResult
import Amazonka.QLDBSession.Types.CommitTransactionRequest
import Amazonka.QLDBSession.Types.CommitTransactionResult
import Amazonka.QLDBSession.Types.EndSessionRequest
import Amazonka.QLDBSession.Types.EndSessionResult
import Amazonka.QLDBSession.Types.ExecuteStatementRequest
import Amazonka.QLDBSession.Types.ExecuteStatementResult
import Amazonka.QLDBSession.Types.FetchPageRequest
import Amazonka.QLDBSession.Types.FetchPageResult
import Amazonka.QLDBSession.Types.IOUsage
import Amazonka.QLDBSession.Types.Page
import Amazonka.QLDBSession.Types.StartSessionRequest
import Amazonka.QLDBSession.Types.StartSessionResult
import Amazonka.QLDBSession.Types.StartTransactionRequest
import Amazonka.QLDBSession.Types.StartTransactionResult
import Amazonka.QLDBSession.Types.TimingInformation
import Amazonka.QLDBSession.Types.ValueHolder
