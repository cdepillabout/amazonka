{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.ResourceGroups.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ResourceGroups.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _UnauthorizedException,
    _NotFoundException,
    _InternalServerErrorException,
    _ForbiddenException,
    _MethodNotAllowedException,
    _BadRequestException,
    _TooManyRequestsException,

    -- * GroupConfigurationStatus
    GroupConfigurationStatus (..),

    -- * GroupFilterName
    GroupFilterName (..),

    -- * QueryErrorCode
    QueryErrorCode (..),

    -- * QueryType
    QueryType (..),

    -- * ResourceFilterName
    ResourceFilterName (..),

    -- * ResourceStatusValue
    ResourceStatusValue (..),

    -- * FailedResource
    FailedResource (..),
    newFailedResource,
    failedResource_errorMessage,
    failedResource_errorCode,
    failedResource_resourceArn,

    -- * Group
    Group (..),
    newGroup,
    group_description,
    group_groupArn,
    group_name,

    -- * GroupConfiguration
    GroupConfiguration (..),
    newGroupConfiguration,
    groupConfiguration_proposedConfiguration,
    groupConfiguration_configuration,
    groupConfiguration_status,
    groupConfiguration_failureReason,

    -- * GroupConfigurationItem
    GroupConfigurationItem (..),
    newGroupConfigurationItem,
    groupConfigurationItem_parameters,
    groupConfigurationItem_type,

    -- * GroupConfigurationParameter
    GroupConfigurationParameter (..),
    newGroupConfigurationParameter,
    groupConfigurationParameter_values,
    groupConfigurationParameter_name,

    -- * GroupFilter
    GroupFilter (..),
    newGroupFilter,
    groupFilter_name,
    groupFilter_values,

    -- * GroupIdentifier
    GroupIdentifier (..),
    newGroupIdentifier,
    groupIdentifier_groupName,
    groupIdentifier_groupArn,

    -- * GroupQuery
    GroupQuery (..),
    newGroupQuery,
    groupQuery_groupName,
    groupQuery_resourceQuery,

    -- * ListGroupResourcesItem
    ListGroupResourcesItem (..),
    newListGroupResourcesItem,
    listGroupResourcesItem_status,
    listGroupResourcesItem_identifier,

    -- * PendingResource
    PendingResource (..),
    newPendingResource,
    pendingResource_resourceArn,

    -- * QueryError
    QueryError (..),
    newQueryError,
    queryError_message,
    queryError_errorCode,

    -- * ResourceFilter
    ResourceFilter (..),
    newResourceFilter,
    resourceFilter_name,
    resourceFilter_values,

    -- * ResourceIdentifier
    ResourceIdentifier (..),
    newResourceIdentifier,
    resourceIdentifier_resourceType,
    resourceIdentifier_resourceArn,

    -- * ResourceQuery
    ResourceQuery (..),
    newResourceQuery,
    resourceQuery_type,
    resourceQuery_searchQuery,

    -- * ResourceStatus
    ResourceStatus (..),
    newResourceStatus,
    resourceStatus_name,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.ResourceGroups.Types.FailedResource
import Amazonka.ResourceGroups.Types.Group
import Amazonka.ResourceGroups.Types.GroupConfiguration
import Amazonka.ResourceGroups.Types.GroupConfigurationItem
import Amazonka.ResourceGroups.Types.GroupConfigurationParameter
import Amazonka.ResourceGroups.Types.GroupConfigurationStatus
import Amazonka.ResourceGroups.Types.GroupFilter
import Amazonka.ResourceGroups.Types.GroupFilterName
import Amazonka.ResourceGroups.Types.GroupIdentifier
import Amazonka.ResourceGroups.Types.GroupQuery
import Amazonka.ResourceGroups.Types.ListGroupResourcesItem
import Amazonka.ResourceGroups.Types.PendingResource
import Amazonka.ResourceGroups.Types.QueryError
import Amazonka.ResourceGroups.Types.QueryErrorCode
import Amazonka.ResourceGroups.Types.QueryType
import Amazonka.ResourceGroups.Types.ResourceFilter
import Amazonka.ResourceGroups.Types.ResourceFilterName
import Amazonka.ResourceGroups.Types.ResourceIdentifier
import Amazonka.ResourceGroups.Types.ResourceQuery
import Amazonka.ResourceGroups.Types.ResourceStatus
import Amazonka.ResourceGroups.Types.ResourceStatusValue
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2017-11-27@ of the Amazon Resource Groups SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev =
        "ResourceGroups",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "resource-groups",
      Core._serviceSigningName = "resource-groups",
      Core._serviceVersion = "2017-11-27",
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError =
        Core.parseJSONError "ResourceGroups",
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

-- | The request was rejected because it doesn\'t have valid credentials for
-- the target resource.
_UnauthorizedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_UnauthorizedException =
  Core._MatchServiceError
    defaultService
    "UnauthorizedException"
    Prelude.. Core.hasStatus 401

-- | One or more of the specified resources don\'t exist.
_NotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_NotFoundException =
  Core._MatchServiceError
    defaultService
    "NotFoundException"
    Prelude.. Core.hasStatus 404

-- | An internal error occurred while processing the request. Try again
-- later.
_InternalServerErrorException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InternalServerErrorException =
  Core._MatchServiceError
    defaultService
    "InternalServerErrorException"
    Prelude.. Core.hasStatus 500

-- | The caller isn\'t authorized to make the request. Check permissions.
_ForbiddenException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ForbiddenException =
  Core._MatchServiceError
    defaultService
    "ForbiddenException"
    Prelude.. Core.hasStatus 403

-- | The request uses an HTTP method that isn\'t allowed for the specified
-- resource.
_MethodNotAllowedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_MethodNotAllowedException =
  Core._MatchServiceError
    defaultService
    "MethodNotAllowedException"
    Prelude.. Core.hasStatus 405

-- | The request includes one or more parameters that violate validation
-- rules.
_BadRequestException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_BadRequestException =
  Core._MatchServiceError
    defaultService
    "BadRequestException"
    Prelude.. Core.hasStatus 400

-- | You\'ve exceeded throttling limits by making too many requests in a
-- period of time.
_TooManyRequestsException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_TooManyRequestsException =
  Core._MatchServiceError
    defaultService
    "TooManyRequestsException"
    Prelude.. Core.hasStatus 429
