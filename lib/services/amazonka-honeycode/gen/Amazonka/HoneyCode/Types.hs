{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.HoneyCode.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.HoneyCode.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _AccessDeniedException,
    _InternalServerException,
    _ServiceQuotaExceededException,
    _ServiceUnavailableException,
    _ResourceNotFoundException,
    _AutomationExecutionTimeoutException,
    _ThrottlingException,
    _RequestTimeoutException,
    _ValidationException,
    _AutomationExecutionException,

    -- * ErrorCode
    ErrorCode (..),

    -- * Format
    Format (..),

    -- * ImportDataCharacterEncoding
    ImportDataCharacterEncoding (..),

    -- * ImportSourceDataFormat
    ImportSourceDataFormat (..),

    -- * TableDataImportJobStatus
    TableDataImportJobStatus (..),

    -- * UpsertAction
    UpsertAction (..),

    -- * Cell
    Cell (..),
    newCell,
    cell_format,
    cell_formattedValue,
    cell_formula,
    cell_formattedValues,
    cell_rawValue,

    -- * CellInput
    CellInput (..),
    newCellInput,
    cellInput_facts,
    cellInput_fact,

    -- * ColumnMetadata
    ColumnMetadata (..),
    newColumnMetadata,
    columnMetadata_name,
    columnMetadata_format,

    -- * CreateRowData
    CreateRowData (..),
    newCreateRowData,
    createRowData_batchItemId,
    createRowData_cellsToCreate,

    -- * DataItem
    DataItem (..),
    newDataItem,
    dataItem_formattedValue,
    dataItem_overrideFormat,
    dataItem_rawValue,

    -- * DelimitedTextImportOptions
    DelimitedTextImportOptions (..),
    newDelimitedTextImportOptions,
    delimitedTextImportOptions_hasHeaderRow,
    delimitedTextImportOptions_ignoreEmptyRows,
    delimitedTextImportOptions_dataCharacterEncoding,
    delimitedTextImportOptions_delimiter,

    -- * DestinationOptions
    DestinationOptions (..),
    newDestinationOptions,
    destinationOptions_columnMap,

    -- * FailedBatchItem
    FailedBatchItem (..),
    newFailedBatchItem,
    failedBatchItem_id,
    failedBatchItem_errorMessage,

    -- * Filter
    Filter (..),
    newFilter,
    filter_contextRowId,
    filter_formula,

    -- * ImportDataSource
    ImportDataSource (..),
    newImportDataSource,
    importDataSource_dataSourceConfig,

    -- * ImportDataSourceConfig
    ImportDataSourceConfig (..),
    newImportDataSourceConfig,
    importDataSourceConfig_dataSourceUrl,

    -- * ImportJobSubmitter
    ImportJobSubmitter (..),
    newImportJobSubmitter,
    importJobSubmitter_email,
    importJobSubmitter_userArn,

    -- * ImportOptions
    ImportOptions (..),
    newImportOptions,
    importOptions_destinationOptions,
    importOptions_delimitedTextOptions,

    -- * ResultRow
    ResultRow (..),
    newResultRow,
    resultRow_rowId,
    resultRow_dataItems,

    -- * ResultSet
    ResultSet (..),
    newResultSet,
    resultSet_headers,
    resultSet_rows,

    -- * SourceDataColumnProperties
    SourceDataColumnProperties (..),
    newSourceDataColumnProperties,
    sourceDataColumnProperties_columnIndex,

    -- * Table
    Table (..),
    newTable,
    table_tableName,
    table_tableId,

    -- * TableColumn
    TableColumn (..),
    newTableColumn,
    tableColumn_format,
    tableColumn_tableColumnName,
    tableColumn_tableColumnId,

    -- * TableDataImportJobMetadata
    TableDataImportJobMetadata (..),
    newTableDataImportJobMetadata,
    tableDataImportJobMetadata_submitter,
    tableDataImportJobMetadata_submitTime,
    tableDataImportJobMetadata_importOptions,
    tableDataImportJobMetadata_dataSource,

    -- * TableRow
    TableRow (..),
    newTableRow,
    tableRow_rowId,
    tableRow_cells,

    -- * UpdateRowData
    UpdateRowData (..),
    newUpdateRowData,
    updateRowData_rowId,
    updateRowData_cellsToUpdate,

    -- * UpsertRowData
    UpsertRowData (..),
    newUpsertRowData,
    upsertRowData_batchItemId,
    upsertRowData_filter,
    upsertRowData_cellsToUpdate,

    -- * UpsertRowsResult
    UpsertRowsResult (..),
    newUpsertRowsResult,
    upsertRowsResult_rowIds,
    upsertRowsResult_upsertAction,

    -- * VariableValue
    VariableValue (..),
    newVariableValue,
    variableValue_rawValue,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.HoneyCode.Types.Cell
import Amazonka.HoneyCode.Types.CellInput
import Amazonka.HoneyCode.Types.ColumnMetadata
import Amazonka.HoneyCode.Types.CreateRowData
import Amazonka.HoneyCode.Types.DataItem
import Amazonka.HoneyCode.Types.DelimitedTextImportOptions
import Amazonka.HoneyCode.Types.DestinationOptions
import Amazonka.HoneyCode.Types.ErrorCode
import Amazonka.HoneyCode.Types.FailedBatchItem
import Amazonka.HoneyCode.Types.Filter
import Amazonka.HoneyCode.Types.Format
import Amazonka.HoneyCode.Types.ImportDataCharacterEncoding
import Amazonka.HoneyCode.Types.ImportDataSource
import Amazonka.HoneyCode.Types.ImportDataSourceConfig
import Amazonka.HoneyCode.Types.ImportJobSubmitter
import Amazonka.HoneyCode.Types.ImportOptions
import Amazonka.HoneyCode.Types.ImportSourceDataFormat
import Amazonka.HoneyCode.Types.ResultRow
import Amazonka.HoneyCode.Types.ResultSet
import Amazonka.HoneyCode.Types.SourceDataColumnProperties
import Amazonka.HoneyCode.Types.Table
import Amazonka.HoneyCode.Types.TableColumn
import Amazonka.HoneyCode.Types.TableDataImportJobMetadata
import Amazonka.HoneyCode.Types.TableDataImportJobStatus
import Amazonka.HoneyCode.Types.TableRow
import Amazonka.HoneyCode.Types.UpdateRowData
import Amazonka.HoneyCode.Types.UpsertAction
import Amazonka.HoneyCode.Types.UpsertRowData
import Amazonka.HoneyCode.Types.UpsertRowsResult
import Amazonka.HoneyCode.Types.VariableValue
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2020-03-01@ of the Amazon Honeycode SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev = "HoneyCode",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "honeycode",
      Core._serviceSigningName = "honeycode",
      Core._serviceVersion = "2020-03-01",
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError = Core.parseJSONError "HoneyCode",
      Core._serviceRetry = retry
    }
  where
    retry =
      Core.Exponential
        { Core._retryBase = 5.0e-2,
          Core._retryGrowth = 2,
          Core._retryAttempts = 5,
          Core._retryCheck = check
        }
    check e
      | Lens.has (Core.hasStatus 429) e =
        Prelude.Just "too_many_requests"
      | Lens.has
          ( Core.hasCode "RequestThrottledException"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "request_throttled_exception"
      | Lens.has (Core.hasStatus 502) e =
        Prelude.Just "bad_gateway"
      | Lens.has (Core.hasStatus 500) e =
        Prelude.Just "general_server_error"
      | Lens.has
          ( Core.hasCode "Throttling"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "throttling"
      | Lens.has (Core.hasStatus 503) e =
        Prelude.Just "service_unavailable"
      | Lens.has (Core.hasStatus 509) e =
        Prelude.Just "limit_exceeded"
      | Lens.has
          ( Core.hasCode "ThrottledException"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "throttled_exception"
      | Lens.has
          ( Core.hasCode "ThrottlingException"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "throttling_exception"
      | Lens.has (Core.hasStatus 504) e =
        Prelude.Just "gateway_timeout"
      | Lens.has
          ( Core.hasCode
              "ProvisionedThroughputExceededException"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "throughput_exceeded"
      | Prelude.otherwise = Prelude.Nothing

-- | You do not have sufficient access to perform this action. Check that the
-- workbook is owned by you and your IAM policy allows access to the
-- resource in the request.
_AccessDeniedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_AccessDeniedException =
  Core._MatchServiceError
    defaultService
    "AccessDeniedException"
    Prelude.. Core.hasStatus 403

-- | There were unexpected errors from the server.
_InternalServerException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InternalServerException =
  Core._MatchServiceError
    defaultService
    "InternalServerException"
    Prelude.. Core.hasStatus 500

-- | The request caused service quota to be breached.
_ServiceQuotaExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ServiceQuotaExceededException =
  Core._MatchServiceError
    defaultService
    "ServiceQuotaExceededException"
    Prelude.. Core.hasStatus 402

-- | Remote service is unreachable.
_ServiceUnavailableException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ServiceUnavailableException =
  Core._MatchServiceError
    defaultService
    "ServiceUnavailableException"
    Prelude.. Core.hasStatus 503

-- | A Workbook, Table, App, Screen or Screen Automation was not found with
-- the given ID.
_ResourceNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceNotFoundException =
  Core._MatchServiceError
    defaultService
    "ResourceNotFoundException"
    Prelude.. Core.hasStatus 404

-- | The automation execution timed out.
_AutomationExecutionTimeoutException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_AutomationExecutionTimeoutException =
  Core._MatchServiceError
    defaultService
    "AutomationExecutionTimeoutException"
    Prelude.. Core.hasStatus 504

-- | Tps(transactions per second) rate reached.
_ThrottlingException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ThrottlingException =
  Core._MatchServiceError
    defaultService
    "ThrottlingException"
    Prelude.. Core.hasStatus 429

-- | The request timed out.
_RequestTimeoutException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_RequestTimeoutException =
  Core._MatchServiceError
    defaultService
    "RequestTimeoutException"
    Prelude.. Core.hasStatus 504

-- | Request is invalid. The message in the response contains details on why
-- the request is invalid.
_ValidationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ValidationException =
  Core._MatchServiceError
    defaultService
    "ValidationException"
    Prelude.. Core.hasStatus 400

-- | The automation execution did not end successfully.
_AutomationExecutionException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_AutomationExecutionException =
  Core._MatchServiceError
    defaultService
    "AutomationExecutionException"
    Prelude.. Core.hasStatus 400
