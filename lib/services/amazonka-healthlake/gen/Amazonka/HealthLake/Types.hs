{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.HealthLake.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.HealthLake.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _AccessDeniedException,
    _InternalServerException,
    _ResourceNotFoundException,
    _ConflictException,
    _ThrottlingException,
    _ValidationException,

    -- * CmkType
    CmkType (..),

    -- * DatastoreStatus
    DatastoreStatus (..),

    -- * FHIRVersion
    FHIRVersion (..),

    -- * JobStatus
    JobStatus (..),

    -- * PreloadDataType
    PreloadDataType (..),

    -- * DatastoreFilter
    DatastoreFilter (..),
    newDatastoreFilter,
    datastoreFilter_createdBefore,
    datastoreFilter_datastoreName,
    datastoreFilter_createdAfter,
    datastoreFilter_datastoreStatus,

    -- * DatastoreProperties
    DatastoreProperties (..),
    newDatastoreProperties,
    datastoreProperties_datastoreName,
    datastoreProperties_sseConfiguration,
    datastoreProperties_preloadDataConfig,
    datastoreProperties_createdAt,
    datastoreProperties_datastoreId,
    datastoreProperties_datastoreArn,
    datastoreProperties_datastoreStatus,
    datastoreProperties_datastoreTypeVersion,
    datastoreProperties_datastoreEndpoint,

    -- * ExportJobProperties
    ExportJobProperties (..),
    newExportJobProperties,
    exportJobProperties_message,
    exportJobProperties_jobName,
    exportJobProperties_dataAccessRoleArn,
    exportJobProperties_endTime,
    exportJobProperties_jobId,
    exportJobProperties_jobStatus,
    exportJobProperties_submitTime,
    exportJobProperties_datastoreId,
    exportJobProperties_outputDataConfig,

    -- * ImportJobProperties
    ImportJobProperties (..),
    newImportJobProperties,
    importJobProperties_message,
    importJobProperties_jobName,
    importJobProperties_jobOutputDataConfig,
    importJobProperties_dataAccessRoleArn,
    importJobProperties_endTime,
    importJobProperties_jobId,
    importJobProperties_jobStatus,
    importJobProperties_submitTime,
    importJobProperties_datastoreId,
    importJobProperties_inputDataConfig,

    -- * InputDataConfig
    InputDataConfig (..),
    newInputDataConfig,
    inputDataConfig_s3Uri,

    -- * KmsEncryptionConfig
    KmsEncryptionConfig (..),
    newKmsEncryptionConfig,
    kmsEncryptionConfig_kmsKeyId,
    kmsEncryptionConfig_cmkType,

    -- * OutputDataConfig
    OutputDataConfig (..),
    newOutputDataConfig,
    outputDataConfig_s3Configuration,

    -- * PreloadDataConfig
    PreloadDataConfig (..),
    newPreloadDataConfig,
    preloadDataConfig_preloadDataType,

    -- * S3Configuration
    S3Configuration (..),
    newS3Configuration,
    s3Configuration_s3Uri,
    s3Configuration_kmsKeyId,

    -- * SseConfiguration
    SseConfiguration (..),
    newSseConfiguration,
    sseConfiguration_kmsEncryptionConfig,

    -- * Tag
    Tag (..),
    newTag,
    tag_key,
    tag_value,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.HealthLake.Types.CmkType
import Amazonka.HealthLake.Types.DatastoreFilter
import Amazonka.HealthLake.Types.DatastoreProperties
import Amazonka.HealthLake.Types.DatastoreStatus
import Amazonka.HealthLake.Types.ExportJobProperties
import Amazonka.HealthLake.Types.FHIRVersion
import Amazonka.HealthLake.Types.ImportJobProperties
import Amazonka.HealthLake.Types.InputDataConfig
import Amazonka.HealthLake.Types.JobStatus
import Amazonka.HealthLake.Types.KmsEncryptionConfig
import Amazonka.HealthLake.Types.OutputDataConfig
import Amazonka.HealthLake.Types.PreloadDataConfig
import Amazonka.HealthLake.Types.PreloadDataType
import Amazonka.HealthLake.Types.S3Configuration
import Amazonka.HealthLake.Types.SseConfiguration
import Amazonka.HealthLake.Types.Tag
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2017-07-01@ of the Amazon HealthLake SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev = "HealthLake",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "healthlake",
      Core._serviceSigningName = "healthlake",
      Core._serviceVersion = "2017-07-01",
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError =
        Core.parseJSONError "HealthLake",
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

-- | Access is denied. Your account is not authorized to perform this
-- operation.
_AccessDeniedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_AccessDeniedException =
  Core._MatchServiceError
    defaultService
    "AccessDeniedException"

-- | Unknown error occurs in the service.
_InternalServerException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InternalServerException =
  Core._MatchServiceError
    defaultService
    "InternalServerException"

-- | The requested Data Store was not found.
_ResourceNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceNotFoundException =
  Core._MatchServiceError
    defaultService
    "ResourceNotFoundException"

-- | The Data Store is in a transition state and the user requested action
-- can not be performed.
_ConflictException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ConflictException =
  Core._MatchServiceError
    defaultService
    "ConflictException"

-- | The user has exceeded their maximum number of allowed calls to the given
-- API.
_ThrottlingException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ThrottlingException =
  Core._MatchServiceError
    defaultService
    "ThrottlingException"

-- | The user input parameter was invalid.
_ValidationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ValidationException =
  Core._MatchServiceError
    defaultService
    "ValidationException"
