{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.LakeFormation.Lens
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.LakeFormation.Lens
  ( -- * Operations

    -- ** AddLFTagsToResource
    addLFTagsToResource_catalogId,
    addLFTagsToResource_resource,
    addLFTagsToResource_lFTags,
    addLFTagsToResourceResponse_failures,
    addLFTagsToResourceResponse_httpStatus,

    -- ** AssumeDecoratedRoleWithSAML
    assumeDecoratedRoleWithSAML_durationSeconds,
    assumeDecoratedRoleWithSAML_sAMLAssertion,
    assumeDecoratedRoleWithSAML_roleArn,
    assumeDecoratedRoleWithSAML_principalArn,
    assumeDecoratedRoleWithSAMLResponse_sessionToken,
    assumeDecoratedRoleWithSAMLResponse_expiration,
    assumeDecoratedRoleWithSAMLResponse_secretAccessKey,
    assumeDecoratedRoleWithSAMLResponse_accessKeyId,
    assumeDecoratedRoleWithSAMLResponse_httpStatus,

    -- ** BatchGrantPermissions
    batchGrantPermissions_catalogId,
    batchGrantPermissions_entries,
    batchGrantPermissionsResponse_failures,
    batchGrantPermissionsResponse_httpStatus,

    -- ** BatchRevokePermissions
    batchRevokePermissions_catalogId,
    batchRevokePermissions_entries,
    batchRevokePermissionsResponse_failures,
    batchRevokePermissionsResponse_httpStatus,

    -- ** CancelTransaction
    cancelTransaction_transactionId,
    cancelTransactionResponse_httpStatus,

    -- ** CommitTransaction
    commitTransaction_transactionId,
    commitTransactionResponse_transactionStatus,
    commitTransactionResponse_httpStatus,

    -- ** CreateDataCellsFilter
    createDataCellsFilter_tableData,
    createDataCellsFilterResponse_httpStatus,

    -- ** CreateLFTag
    createLFTag_catalogId,
    createLFTag_tagKey,
    createLFTag_tagValues,
    createLFTagResponse_httpStatus,

    -- ** DeleteDataCellsFilter
    deleteDataCellsFilter_tableName,
    deleteDataCellsFilter_name,
    deleteDataCellsFilter_databaseName,
    deleteDataCellsFilter_tableCatalogId,
    deleteDataCellsFilterResponse_httpStatus,

    -- ** DeleteLFTag
    deleteLFTag_catalogId,
    deleteLFTag_tagKey,
    deleteLFTagResponse_httpStatus,

    -- ** DeleteObjectsOnCancel
    deleteObjectsOnCancel_catalogId,
    deleteObjectsOnCancel_databaseName,
    deleteObjectsOnCancel_tableName,
    deleteObjectsOnCancel_transactionId,
    deleteObjectsOnCancel_objects,
    deleteObjectsOnCancelResponse_httpStatus,

    -- ** DeregisterResource
    deregisterResource_resourceArn,
    deregisterResourceResponse_httpStatus,

    -- ** DescribeResource
    describeResource_resourceArn,
    describeResourceResponse_resourceInfo,
    describeResourceResponse_httpStatus,

    -- ** DescribeTransaction
    describeTransaction_transactionId,
    describeTransactionResponse_transactionDescription,
    describeTransactionResponse_httpStatus,

    -- ** ExtendTransaction
    extendTransaction_transactionId,
    extendTransactionResponse_httpStatus,

    -- ** GetDataLakeSettings
    getDataLakeSettings_catalogId,
    getDataLakeSettingsResponse_dataLakeSettings,
    getDataLakeSettingsResponse_httpStatus,

    -- ** GetEffectivePermissionsForPath
    getEffectivePermissionsForPath_nextToken,
    getEffectivePermissionsForPath_maxResults,
    getEffectivePermissionsForPath_catalogId,
    getEffectivePermissionsForPath_resourceArn,
    getEffectivePermissionsForPathResponse_nextToken,
    getEffectivePermissionsForPathResponse_permissions,
    getEffectivePermissionsForPathResponse_httpStatus,

    -- ** GetLFTag
    getLFTag_catalogId,
    getLFTag_tagKey,
    getLFTagResponse_tagValues,
    getLFTagResponse_tagKey,
    getLFTagResponse_catalogId,
    getLFTagResponse_httpStatus,

    -- ** GetQueryState
    getQueryState_queryId,
    getQueryStateResponse_error,
    getQueryStateResponse_httpStatus,
    getQueryStateResponse_state,

    -- ** GetQueryStatistics
    getQueryStatistics_queryId,
    getQueryStatisticsResponse_querySubmissionTime,
    getQueryStatisticsResponse_executionStatistics,
    getQueryStatisticsResponse_planningStatistics,
    getQueryStatisticsResponse_httpStatus,

    -- ** GetResourceLFTags
    getResourceLFTags_catalogId,
    getResourceLFTags_showAssignedLFTags,
    getResourceLFTags_resource,
    getResourceLFTagsResponse_lFTagsOnTable,
    getResourceLFTagsResponse_lFTagOnDatabase,
    getResourceLFTagsResponse_lFTagsOnColumns,
    getResourceLFTagsResponse_httpStatus,

    -- ** GetTableObjects
    getTableObjects_nextToken,
    getTableObjects_partitionPredicate,
    getTableObjects_queryAsOfTime,
    getTableObjects_maxResults,
    getTableObjects_catalogId,
    getTableObjects_transactionId,
    getTableObjects_databaseName,
    getTableObjects_tableName,
    getTableObjectsResponse_nextToken,
    getTableObjectsResponse_objects,
    getTableObjectsResponse_httpStatus,

    -- ** GetTemporaryGluePartitionCredentials
    getTemporaryGluePartitionCredentials_auditContext,
    getTemporaryGluePartitionCredentials_permissions,
    getTemporaryGluePartitionCredentials_durationSeconds,
    getTemporaryGluePartitionCredentials_tableArn,
    getTemporaryGluePartitionCredentials_partition,
    getTemporaryGluePartitionCredentials_supportedPermissionTypes,
    getTemporaryGluePartitionCredentialsResponse_sessionToken,
    getTemporaryGluePartitionCredentialsResponse_expiration,
    getTemporaryGluePartitionCredentialsResponse_secretAccessKey,
    getTemporaryGluePartitionCredentialsResponse_accessKeyId,
    getTemporaryGluePartitionCredentialsResponse_httpStatus,

    -- ** GetTemporaryGlueTableCredentials
    getTemporaryGlueTableCredentials_auditContext,
    getTemporaryGlueTableCredentials_permissions,
    getTemporaryGlueTableCredentials_durationSeconds,
    getTemporaryGlueTableCredentials_tableArn,
    getTemporaryGlueTableCredentials_supportedPermissionTypes,
    getTemporaryGlueTableCredentialsResponse_sessionToken,
    getTemporaryGlueTableCredentialsResponse_expiration,
    getTemporaryGlueTableCredentialsResponse_secretAccessKey,
    getTemporaryGlueTableCredentialsResponse_accessKeyId,
    getTemporaryGlueTableCredentialsResponse_httpStatus,

    -- ** GetWorkUnitResults
    getWorkUnitResults_queryId,
    getWorkUnitResults_workUnitId,
    getWorkUnitResults_workUnitToken,
    getWorkUnitResultsResponse_httpStatus,
    getWorkUnitResultsResponse_resultStream,

    -- ** GetWorkUnits
    getWorkUnits_nextToken,
    getWorkUnits_pageSize,
    getWorkUnits_queryId,
    getWorkUnitsResponse_nextToken,
    getWorkUnitsResponse_httpStatus,
    getWorkUnitsResponse_queryId,
    getWorkUnitsResponse_workUnitRanges,

    -- ** GrantPermissions
    grantPermissions_catalogId,
    grantPermissions_permissionsWithGrantOption,
    grantPermissions_principal,
    grantPermissions_resource,
    grantPermissions_permissions,
    grantPermissionsResponse_httpStatus,

    -- ** ListDataCellsFilter
    listDataCellsFilter_nextToken,
    listDataCellsFilter_maxResults,
    listDataCellsFilter_table,
    listDataCellsFilterResponse_dataCellsFilters,
    listDataCellsFilterResponse_nextToken,
    listDataCellsFilterResponse_httpStatus,

    -- ** ListLFTags
    listLFTags_nextToken,
    listLFTags_resourceShareType,
    listLFTags_maxResults,
    listLFTags_catalogId,
    listLFTagsResponse_nextToken,
    listLFTagsResponse_lFTags,
    listLFTagsResponse_httpStatus,

    -- ** ListPermissions
    listPermissions_principal,
    listPermissions_resourceType,
    listPermissions_nextToken,
    listPermissions_includeRelated,
    listPermissions_maxResults,
    listPermissions_catalogId,
    listPermissions_resource,
    listPermissionsResponse_nextToken,
    listPermissionsResponse_principalResourcePermissions,
    listPermissionsResponse_httpStatus,

    -- ** ListResources
    listResources_nextToken,
    listResources_filterConditionList,
    listResources_maxResults,
    listResourcesResponse_nextToken,
    listResourcesResponse_resourceInfoList,
    listResourcesResponse_httpStatus,

    -- ** ListTableStorageOptimizers
    listTableStorageOptimizers_storageOptimizerType,
    listTableStorageOptimizers_nextToken,
    listTableStorageOptimizers_maxResults,
    listTableStorageOptimizers_catalogId,
    listTableStorageOptimizers_databaseName,
    listTableStorageOptimizers_tableName,
    listTableStorageOptimizersResponse_nextToken,
    listTableStorageOptimizersResponse_storageOptimizerList,
    listTableStorageOptimizersResponse_httpStatus,

    -- ** ListTransactions
    listTransactions_nextToken,
    listTransactions_maxResults,
    listTransactions_catalogId,
    listTransactions_statusFilter,
    listTransactionsResponse_nextToken,
    listTransactionsResponse_transactions,
    listTransactionsResponse_httpStatus,

    -- ** PutDataLakeSettings
    putDataLakeSettings_catalogId,
    putDataLakeSettings_dataLakeSettings,
    putDataLakeSettingsResponse_httpStatus,

    -- ** RegisterResource
    registerResource_roleArn,
    registerResource_useServiceLinkedRole,
    registerResource_resourceArn,
    registerResourceResponse_httpStatus,

    -- ** RemoveLFTagsFromResource
    removeLFTagsFromResource_catalogId,
    removeLFTagsFromResource_resource,
    removeLFTagsFromResource_lFTags,
    removeLFTagsFromResourceResponse_failures,
    removeLFTagsFromResourceResponse_httpStatus,

    -- ** RevokePermissions
    revokePermissions_catalogId,
    revokePermissions_permissionsWithGrantOption,
    revokePermissions_principal,
    revokePermissions_resource,
    revokePermissions_permissions,
    revokePermissionsResponse_httpStatus,

    -- ** SearchDatabasesByLFTags
    searchDatabasesByLFTags_nextToken,
    searchDatabasesByLFTags_maxResults,
    searchDatabasesByLFTags_catalogId,
    searchDatabasesByLFTags_expression,
    searchDatabasesByLFTagsResponse_nextToken,
    searchDatabasesByLFTagsResponse_databaseList,
    searchDatabasesByLFTagsResponse_httpStatus,

    -- ** SearchTablesByLFTags
    searchTablesByLFTags_nextToken,
    searchTablesByLFTags_maxResults,
    searchTablesByLFTags_catalogId,
    searchTablesByLFTags_expression,
    searchTablesByLFTagsResponse_nextToken,
    searchTablesByLFTagsResponse_tableList,
    searchTablesByLFTagsResponse_httpStatus,

    -- ** StartQueryPlanning
    startQueryPlanning_queryPlanningContext,
    startQueryPlanning_queryString,
    startQueryPlanningResponse_httpStatus,
    startQueryPlanningResponse_queryId,

    -- ** StartTransaction
    startTransaction_transactionType,
    startTransactionResponse_transactionId,
    startTransactionResponse_httpStatus,

    -- ** UpdateLFTag
    updateLFTag_catalogId,
    updateLFTag_tagValuesToDelete,
    updateLFTag_tagValuesToAdd,
    updateLFTag_tagKey,
    updateLFTagResponse_httpStatus,

    -- ** UpdateResource
    updateResource_roleArn,
    updateResource_resourceArn,
    updateResourceResponse_httpStatus,

    -- ** UpdateTableObjects
    updateTableObjects_catalogId,
    updateTableObjects_transactionId,
    updateTableObjects_databaseName,
    updateTableObjects_tableName,
    updateTableObjects_writeOperations,
    updateTableObjectsResponse_httpStatus,

    -- ** UpdateTableStorageOptimizer
    updateTableStorageOptimizer_catalogId,
    updateTableStorageOptimizer_databaseName,
    updateTableStorageOptimizer_tableName,
    updateTableStorageOptimizer_storageOptimizerConfig,
    updateTableStorageOptimizerResponse_result,
    updateTableStorageOptimizerResponse_httpStatus,

    -- * Types

    -- ** AddObjectInput
    addObjectInput_partitionValues,
    addObjectInput_uri,
    addObjectInput_eTag,
    addObjectInput_size,

    -- ** AllRowsWildcard

    -- ** AuditContext
    auditContext_additionalAuditContext,

    -- ** BatchPermissionsFailureEntry
    batchPermissionsFailureEntry_requestEntry,
    batchPermissionsFailureEntry_error,

    -- ** BatchPermissionsRequestEntry
    batchPermissionsRequestEntry_principal,
    batchPermissionsRequestEntry_permissions,
    batchPermissionsRequestEntry_permissionsWithGrantOption,
    batchPermissionsRequestEntry_resource,
    batchPermissionsRequestEntry_id,

    -- ** CatalogResource

    -- ** ColumnLFTag
    columnLFTag_name,
    columnLFTag_lFTags,

    -- ** ColumnWildcard
    columnWildcard_excludedColumnNames,

    -- ** DataCellsFilter
    dataCellsFilter_rowFilter,
    dataCellsFilter_columnNames,
    dataCellsFilter_columnWildcard,
    dataCellsFilter_tableCatalogId,
    dataCellsFilter_databaseName,
    dataCellsFilter_tableName,
    dataCellsFilter_name,

    -- ** DataCellsFilterResource
    dataCellsFilterResource_tableName,
    dataCellsFilterResource_name,
    dataCellsFilterResource_databaseName,
    dataCellsFilterResource_tableCatalogId,

    -- ** DataLakePrincipal
    dataLakePrincipal_dataLakePrincipalIdentifier,

    -- ** DataLakeSettings
    dataLakeSettings_dataLakeAdmins,
    dataLakeSettings_createDatabaseDefaultPermissions,
    dataLakeSettings_allowExternalDataFiltering,
    dataLakeSettings_trustedResourceOwners,
    dataLakeSettings_authorizedSessionTagValueList,
    dataLakeSettings_createTableDefaultPermissions,
    dataLakeSettings_externalDataFilteringAllowList,

    -- ** DataLocationResource
    dataLocationResource_catalogId,
    dataLocationResource_resourceArn,

    -- ** DatabaseResource
    databaseResource_catalogId,
    databaseResource_name,

    -- ** DeleteObjectInput
    deleteObjectInput_partitionValues,
    deleteObjectInput_eTag,
    deleteObjectInput_uri,

    -- ** DetailsMap
    detailsMap_resourceShare,

    -- ** ErrorDetail
    errorDetail_errorMessage,
    errorDetail_errorCode,

    -- ** ExecutionStatistics
    executionStatistics_workUnitsExecutedCount,
    executionStatistics_averageExecutionTimeMillis,
    executionStatistics_dataScannedBytes,

    -- ** FilterCondition
    filterCondition_field,
    filterCondition_comparisonOperator,
    filterCondition_stringValueList,

    -- ** LFTag
    lFTag_tagKey,
    lFTag_tagValues,

    -- ** LFTagError
    lFTagError_lFTag,
    lFTagError_error,

    -- ** LFTagKeyResource
    lFTagKeyResource_catalogId,
    lFTagKeyResource_tagKey,
    lFTagKeyResource_tagValues,

    -- ** LFTagPair
    lFTagPair_catalogId,
    lFTagPair_tagKey,
    lFTagPair_tagValues,

    -- ** LFTagPolicyResource
    lFTagPolicyResource_catalogId,
    lFTagPolicyResource_resourceType,
    lFTagPolicyResource_expression,

    -- ** PartitionObjects
    partitionObjects_objects,
    partitionObjects_partitionValues,

    -- ** PartitionValueList
    partitionValueList_values,

    -- ** PlanningStatistics
    planningStatistics_planningTimeMillis,
    planningStatistics_workUnitsGeneratedCount,
    planningStatistics_estimatedDataToScanBytes,
    planningStatistics_queueTimeMillis,

    -- ** PrincipalPermissions
    principalPermissions_principal,
    principalPermissions_permissions,

    -- ** PrincipalResourcePermissions
    principalResourcePermissions_principal,
    principalResourcePermissions_additionalDetails,
    principalResourcePermissions_permissions,
    principalResourcePermissions_permissionsWithGrantOption,
    principalResourcePermissions_resource,

    -- ** QueryPlanningContext
    queryPlanningContext_queryAsOfTime,
    queryPlanningContext_queryParameters,
    queryPlanningContext_catalogId,
    queryPlanningContext_transactionId,
    queryPlanningContext_databaseName,

    -- ** Resource
    resource_tableWithColumns,
    resource_catalog,
    resource_lFTag,
    resource_lFTagPolicy,
    resource_dataCellsFilter,
    resource_database,
    resource_dataLocation,
    resource_table,

    -- ** ResourceInfo
    resourceInfo_roleArn,
    resourceInfo_lastModified,
    resourceInfo_resourceArn,

    -- ** RowFilter
    rowFilter_allRowsWildcard,
    rowFilter_filterExpression,

    -- ** StorageOptimizer
    storageOptimizer_storageOptimizerType,
    storageOptimizer_errorMessage,
    storageOptimizer_warnings,
    storageOptimizer_lastRunDetails,
    storageOptimizer_config,

    -- ** TableObject
    tableObject_size,
    tableObject_uri,
    tableObject_eTag,

    -- ** TableResource
    tableResource_name,
    tableResource_tableWildcard,
    tableResource_catalogId,
    tableResource_databaseName,

    -- ** TableWildcard

    -- ** TableWithColumnsResource
    tableWithColumnsResource_columnNames,
    tableWithColumnsResource_columnWildcard,
    tableWithColumnsResource_catalogId,
    tableWithColumnsResource_databaseName,
    tableWithColumnsResource_name,

    -- ** TaggedDatabase
    taggedDatabase_lFTags,
    taggedDatabase_database,

    -- ** TaggedTable
    taggedTable_lFTagsOnTable,
    taggedTable_table,
    taggedTable_lFTagOnDatabase,
    taggedTable_lFTagsOnColumns,

    -- ** TransactionDescription
    transactionDescription_transactionStartTime,
    transactionDescription_transactionId,
    transactionDescription_transactionStatus,
    transactionDescription_transactionEndTime,

    -- ** VirtualObject
    virtualObject_eTag,
    virtualObject_uri,

    -- ** WorkUnitRange
    workUnitRange_workUnitIdMax,
    workUnitRange_workUnitIdMin,
    workUnitRange_workUnitToken,

    -- ** WriteOperation
    writeOperation_deleteObject,
    writeOperation_addObject,
  )
where

import Amazonka.LakeFormation.AddLFTagsToResource
import Amazonka.LakeFormation.AssumeDecoratedRoleWithSAML
import Amazonka.LakeFormation.BatchGrantPermissions
import Amazonka.LakeFormation.BatchRevokePermissions
import Amazonka.LakeFormation.CancelTransaction
import Amazonka.LakeFormation.CommitTransaction
import Amazonka.LakeFormation.CreateDataCellsFilter
import Amazonka.LakeFormation.CreateLFTag
import Amazonka.LakeFormation.DeleteDataCellsFilter
import Amazonka.LakeFormation.DeleteLFTag
import Amazonka.LakeFormation.DeleteObjectsOnCancel
import Amazonka.LakeFormation.DeregisterResource
import Amazonka.LakeFormation.DescribeResource
import Amazonka.LakeFormation.DescribeTransaction
import Amazonka.LakeFormation.ExtendTransaction
import Amazonka.LakeFormation.GetDataLakeSettings
import Amazonka.LakeFormation.GetEffectivePermissionsForPath
import Amazonka.LakeFormation.GetLFTag
import Amazonka.LakeFormation.GetQueryState
import Amazonka.LakeFormation.GetQueryStatistics
import Amazonka.LakeFormation.GetResourceLFTags
import Amazonka.LakeFormation.GetTableObjects
import Amazonka.LakeFormation.GetTemporaryGluePartitionCredentials
import Amazonka.LakeFormation.GetTemporaryGlueTableCredentials
import Amazonka.LakeFormation.GetWorkUnitResults
import Amazonka.LakeFormation.GetWorkUnits
import Amazonka.LakeFormation.GrantPermissions
import Amazonka.LakeFormation.ListDataCellsFilter
import Amazonka.LakeFormation.ListLFTags
import Amazonka.LakeFormation.ListPermissions
import Amazonka.LakeFormation.ListResources
import Amazonka.LakeFormation.ListTableStorageOptimizers
import Amazonka.LakeFormation.ListTransactions
import Amazonka.LakeFormation.PutDataLakeSettings
import Amazonka.LakeFormation.RegisterResource
import Amazonka.LakeFormation.RemoveLFTagsFromResource
import Amazonka.LakeFormation.RevokePermissions
import Amazonka.LakeFormation.SearchDatabasesByLFTags
import Amazonka.LakeFormation.SearchTablesByLFTags
import Amazonka.LakeFormation.StartQueryPlanning
import Amazonka.LakeFormation.StartTransaction
import Amazonka.LakeFormation.Types.AddObjectInput
import Amazonka.LakeFormation.Types.AllRowsWildcard
import Amazonka.LakeFormation.Types.AuditContext
import Amazonka.LakeFormation.Types.BatchPermissionsFailureEntry
import Amazonka.LakeFormation.Types.BatchPermissionsRequestEntry
import Amazonka.LakeFormation.Types.CatalogResource
import Amazonka.LakeFormation.Types.ColumnLFTag
import Amazonka.LakeFormation.Types.ColumnWildcard
import Amazonka.LakeFormation.Types.DataCellsFilter
import Amazonka.LakeFormation.Types.DataCellsFilterResource
import Amazonka.LakeFormation.Types.DataLakePrincipal
import Amazonka.LakeFormation.Types.DataLakeSettings
import Amazonka.LakeFormation.Types.DataLocationResource
import Amazonka.LakeFormation.Types.DatabaseResource
import Amazonka.LakeFormation.Types.DeleteObjectInput
import Amazonka.LakeFormation.Types.DetailsMap
import Amazonka.LakeFormation.Types.ErrorDetail
import Amazonka.LakeFormation.Types.ExecutionStatistics
import Amazonka.LakeFormation.Types.FilterCondition
import Amazonka.LakeFormation.Types.LFTag
import Amazonka.LakeFormation.Types.LFTagError
import Amazonka.LakeFormation.Types.LFTagKeyResource
import Amazonka.LakeFormation.Types.LFTagPair
import Amazonka.LakeFormation.Types.LFTagPolicyResource
import Amazonka.LakeFormation.Types.PartitionObjects
import Amazonka.LakeFormation.Types.PartitionValueList
import Amazonka.LakeFormation.Types.PlanningStatistics
import Amazonka.LakeFormation.Types.PrincipalPermissions
import Amazonka.LakeFormation.Types.PrincipalResourcePermissions
import Amazonka.LakeFormation.Types.QueryPlanningContext
import Amazonka.LakeFormation.Types.Resource
import Amazonka.LakeFormation.Types.ResourceInfo
import Amazonka.LakeFormation.Types.RowFilter
import Amazonka.LakeFormation.Types.StorageOptimizer
import Amazonka.LakeFormation.Types.TableObject
import Amazonka.LakeFormation.Types.TableResource
import Amazonka.LakeFormation.Types.TableWildcard
import Amazonka.LakeFormation.Types.TableWithColumnsResource
import Amazonka.LakeFormation.Types.TaggedDatabase
import Amazonka.LakeFormation.Types.TaggedTable
import Amazonka.LakeFormation.Types.TransactionDescription
import Amazonka.LakeFormation.Types.VirtualObject
import Amazonka.LakeFormation.Types.WorkUnitRange
import Amazonka.LakeFormation.Types.WriteOperation
import Amazonka.LakeFormation.UpdateLFTag
import Amazonka.LakeFormation.UpdateResource
import Amazonka.LakeFormation.UpdateTableObjects
import Amazonka.LakeFormation.UpdateTableStorageOptimizer
