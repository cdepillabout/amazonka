{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.CloudDirectory.Lens
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CloudDirectory.Lens
  ( -- * Operations

    -- ** AddFacetToObject
    addFacetToObject_objectAttributeList,
    addFacetToObject_directoryArn,
    addFacetToObject_schemaFacet,
    addFacetToObject_objectReference,
    addFacetToObjectResponse_httpStatus,

    -- ** ApplySchema
    applySchema_publishedSchemaArn,
    applySchema_directoryArn,
    applySchemaResponse_directoryArn,
    applySchemaResponse_appliedSchemaArn,
    applySchemaResponse_httpStatus,

    -- ** AttachObject
    attachObject_directoryArn,
    attachObject_parentReference,
    attachObject_childReference,
    attachObject_linkName,
    attachObjectResponse_attachedObjectIdentifier,
    attachObjectResponse_httpStatus,

    -- ** AttachPolicy
    attachPolicy_directoryArn,
    attachPolicy_policyReference,
    attachPolicy_objectReference,
    attachPolicyResponse_httpStatus,

    -- ** AttachToIndex
    attachToIndex_directoryArn,
    attachToIndex_indexReference,
    attachToIndex_targetReference,
    attachToIndexResponse_attachedObjectIdentifier,
    attachToIndexResponse_httpStatus,

    -- ** AttachTypedLink
    attachTypedLink_directoryArn,
    attachTypedLink_sourceObjectReference,
    attachTypedLink_targetObjectReference,
    attachTypedLink_typedLinkFacet,
    attachTypedLink_attributes,
    attachTypedLinkResponse_typedLinkSpecifier,
    attachTypedLinkResponse_httpStatus,

    -- ** BatchRead
    batchRead_consistencyLevel,
    batchRead_directoryArn,
    batchRead_operations,
    batchReadResponse_responses,
    batchReadResponse_httpStatus,

    -- ** BatchWrite
    batchWrite_directoryArn,
    batchWrite_operations,
    batchWriteResponse_responses,
    batchWriteResponse_httpStatus,

    -- ** CreateDirectory
    createDirectory_name,
    createDirectory_schemaArn,
    createDirectoryResponse_httpStatus,
    createDirectoryResponse_directoryArn,
    createDirectoryResponse_name,
    createDirectoryResponse_objectIdentifier,
    createDirectoryResponse_appliedSchemaArn,

    -- ** CreateFacet
    createFacet_facetStyle,
    createFacet_attributes,
    createFacet_objectType,
    createFacet_schemaArn,
    createFacet_name,
    createFacetResponse_httpStatus,

    -- ** CreateIndex
    createIndex_parentReference,
    createIndex_linkName,
    createIndex_directoryArn,
    createIndex_orderedIndexedAttributeList,
    createIndex_isUnique,
    createIndexResponse_objectIdentifier,
    createIndexResponse_httpStatus,

    -- ** CreateObject
    createObject_objectAttributeList,
    createObject_parentReference,
    createObject_linkName,
    createObject_directoryArn,
    createObject_schemaFacets,
    createObjectResponse_objectIdentifier,
    createObjectResponse_httpStatus,

    -- ** CreateSchema
    createSchema_name,
    createSchemaResponse_schemaArn,
    createSchemaResponse_httpStatus,

    -- ** CreateTypedLinkFacet
    createTypedLinkFacet_schemaArn,
    createTypedLinkFacet_facet,
    createTypedLinkFacetResponse_httpStatus,

    -- ** DeleteDirectory
    deleteDirectory_directoryArn,
    deleteDirectoryResponse_httpStatus,
    deleteDirectoryResponse_directoryArn,

    -- ** DeleteFacet
    deleteFacet_schemaArn,
    deleteFacet_name,
    deleteFacetResponse_httpStatus,

    -- ** DeleteObject
    deleteObject_directoryArn,
    deleteObject_objectReference,
    deleteObjectResponse_httpStatus,

    -- ** DeleteSchema
    deleteSchema_schemaArn,
    deleteSchemaResponse_schemaArn,
    deleteSchemaResponse_httpStatus,

    -- ** DeleteTypedLinkFacet
    deleteTypedLinkFacet_schemaArn,
    deleteTypedLinkFacet_name,
    deleteTypedLinkFacetResponse_httpStatus,

    -- ** DetachFromIndex
    detachFromIndex_directoryArn,
    detachFromIndex_indexReference,
    detachFromIndex_targetReference,
    detachFromIndexResponse_detachedObjectIdentifier,
    detachFromIndexResponse_httpStatus,

    -- ** DetachObject
    detachObject_directoryArn,
    detachObject_parentReference,
    detachObject_linkName,
    detachObjectResponse_detachedObjectIdentifier,
    detachObjectResponse_httpStatus,

    -- ** DetachPolicy
    detachPolicy_directoryArn,
    detachPolicy_policyReference,
    detachPolicy_objectReference,
    detachPolicyResponse_httpStatus,

    -- ** DetachTypedLink
    detachTypedLink_directoryArn,
    detachTypedLink_typedLinkSpecifier,

    -- ** DisableDirectory
    disableDirectory_directoryArn,
    disableDirectoryResponse_httpStatus,
    disableDirectoryResponse_directoryArn,

    -- ** EnableDirectory
    enableDirectory_directoryArn,
    enableDirectoryResponse_httpStatus,
    enableDirectoryResponse_directoryArn,

    -- ** GetAppliedSchemaVersion
    getAppliedSchemaVersion_schemaArn,
    getAppliedSchemaVersionResponse_appliedSchemaArn,
    getAppliedSchemaVersionResponse_httpStatus,

    -- ** GetDirectory
    getDirectory_directoryArn,
    getDirectoryResponse_httpStatus,
    getDirectoryResponse_directory,

    -- ** GetFacet
    getFacet_schemaArn,
    getFacet_name,
    getFacetResponse_facet,
    getFacetResponse_httpStatus,

    -- ** GetLinkAttributes
    getLinkAttributes_consistencyLevel,
    getLinkAttributes_directoryArn,
    getLinkAttributes_typedLinkSpecifier,
    getLinkAttributes_attributeNames,
    getLinkAttributesResponse_attributes,
    getLinkAttributesResponse_httpStatus,

    -- ** GetObjectAttributes
    getObjectAttributes_consistencyLevel,
    getObjectAttributes_directoryArn,
    getObjectAttributes_objectReference,
    getObjectAttributes_schemaFacet,
    getObjectAttributes_attributeNames,
    getObjectAttributesResponse_attributes,
    getObjectAttributesResponse_httpStatus,

    -- ** GetObjectInformation
    getObjectInformation_consistencyLevel,
    getObjectInformation_directoryArn,
    getObjectInformation_objectReference,
    getObjectInformationResponse_objectIdentifier,
    getObjectInformationResponse_schemaFacets,
    getObjectInformationResponse_httpStatus,

    -- ** GetSchemaAsJson
    getSchemaAsJson_schemaArn,
    getSchemaAsJsonResponse_name,
    getSchemaAsJsonResponse_document,
    getSchemaAsJsonResponse_httpStatus,

    -- ** GetTypedLinkFacetInformation
    getTypedLinkFacetInformation_schemaArn,
    getTypedLinkFacetInformation_name,
    getTypedLinkFacetInformationResponse_identityAttributeOrder,
    getTypedLinkFacetInformationResponse_httpStatus,

    -- ** ListAppliedSchemaArns
    listAppliedSchemaArns_nextToken,
    listAppliedSchemaArns_schemaArn,
    listAppliedSchemaArns_maxResults,
    listAppliedSchemaArns_directoryArn,
    listAppliedSchemaArnsResponse_nextToken,
    listAppliedSchemaArnsResponse_schemaArns,
    listAppliedSchemaArnsResponse_httpStatus,

    -- ** ListAttachedIndices
    listAttachedIndices_nextToken,
    listAttachedIndices_consistencyLevel,
    listAttachedIndices_maxResults,
    listAttachedIndices_directoryArn,
    listAttachedIndices_targetReference,
    listAttachedIndicesResponse_nextToken,
    listAttachedIndicesResponse_indexAttachments,
    listAttachedIndicesResponse_httpStatus,

    -- ** ListDevelopmentSchemaArns
    listDevelopmentSchemaArns_nextToken,
    listDevelopmentSchemaArns_maxResults,
    listDevelopmentSchemaArnsResponse_nextToken,
    listDevelopmentSchemaArnsResponse_schemaArns,
    listDevelopmentSchemaArnsResponse_httpStatus,

    -- ** ListDirectories
    listDirectories_nextToken,
    listDirectories_state,
    listDirectories_maxResults,
    listDirectoriesResponse_nextToken,
    listDirectoriesResponse_httpStatus,
    listDirectoriesResponse_directories,

    -- ** ListFacetAttributes
    listFacetAttributes_nextToken,
    listFacetAttributes_maxResults,
    listFacetAttributes_schemaArn,
    listFacetAttributes_name,
    listFacetAttributesResponse_nextToken,
    listFacetAttributesResponse_attributes,
    listFacetAttributesResponse_httpStatus,

    -- ** ListFacetNames
    listFacetNames_nextToken,
    listFacetNames_maxResults,
    listFacetNames_schemaArn,
    listFacetNamesResponse_nextToken,
    listFacetNamesResponse_facetNames,
    listFacetNamesResponse_httpStatus,

    -- ** ListIncomingTypedLinks
    listIncomingTypedLinks_nextToken,
    listIncomingTypedLinks_consistencyLevel,
    listIncomingTypedLinks_maxResults,
    listIncomingTypedLinks_filterAttributeRanges,
    listIncomingTypedLinks_filterTypedLink,
    listIncomingTypedLinks_directoryArn,
    listIncomingTypedLinks_objectReference,
    listIncomingTypedLinksResponse_nextToken,
    listIncomingTypedLinksResponse_linkSpecifiers,
    listIncomingTypedLinksResponse_httpStatus,

    -- ** ListIndex
    listIndex_nextToken,
    listIndex_consistencyLevel,
    listIndex_maxResults,
    listIndex_rangesOnIndexedValues,
    listIndex_directoryArn,
    listIndex_indexReference,
    listIndexResponse_nextToken,
    listIndexResponse_indexAttachments,
    listIndexResponse_httpStatus,

    -- ** ListManagedSchemaArns
    listManagedSchemaArns_nextToken,
    listManagedSchemaArns_schemaArn,
    listManagedSchemaArns_maxResults,
    listManagedSchemaArnsResponse_nextToken,
    listManagedSchemaArnsResponse_schemaArns,
    listManagedSchemaArnsResponse_httpStatus,

    -- ** ListObjectAttributes
    listObjectAttributes_nextToken,
    listObjectAttributes_consistencyLevel,
    listObjectAttributes_maxResults,
    listObjectAttributes_facetFilter,
    listObjectAttributes_directoryArn,
    listObjectAttributes_objectReference,
    listObjectAttributesResponse_nextToken,
    listObjectAttributesResponse_attributes,
    listObjectAttributesResponse_httpStatus,

    -- ** ListObjectChildren
    listObjectChildren_nextToken,
    listObjectChildren_consistencyLevel,
    listObjectChildren_maxResults,
    listObjectChildren_directoryArn,
    listObjectChildren_objectReference,
    listObjectChildrenResponse_nextToken,
    listObjectChildrenResponse_children,
    listObjectChildrenResponse_httpStatus,

    -- ** ListObjectParentPaths
    listObjectParentPaths_nextToken,
    listObjectParentPaths_maxResults,
    listObjectParentPaths_directoryArn,
    listObjectParentPaths_objectReference,
    listObjectParentPathsResponse_nextToken,
    listObjectParentPathsResponse_pathToObjectIdentifiersList,
    listObjectParentPathsResponse_httpStatus,

    -- ** ListObjectParents
    listObjectParents_nextToken,
    listObjectParents_includeAllLinksToEachParent,
    listObjectParents_consistencyLevel,
    listObjectParents_maxResults,
    listObjectParents_directoryArn,
    listObjectParents_objectReference,
    listObjectParentsResponse_nextToken,
    listObjectParentsResponse_parentLinks,
    listObjectParentsResponse_parents,
    listObjectParentsResponse_httpStatus,

    -- ** ListObjectPolicies
    listObjectPolicies_nextToken,
    listObjectPolicies_consistencyLevel,
    listObjectPolicies_maxResults,
    listObjectPolicies_directoryArn,
    listObjectPolicies_objectReference,
    listObjectPoliciesResponse_nextToken,
    listObjectPoliciesResponse_attachedPolicyIds,
    listObjectPoliciesResponse_httpStatus,

    -- ** ListOutgoingTypedLinks
    listOutgoingTypedLinks_nextToken,
    listOutgoingTypedLinks_consistencyLevel,
    listOutgoingTypedLinks_maxResults,
    listOutgoingTypedLinks_filterAttributeRanges,
    listOutgoingTypedLinks_filterTypedLink,
    listOutgoingTypedLinks_directoryArn,
    listOutgoingTypedLinks_objectReference,
    listOutgoingTypedLinksResponse_nextToken,
    listOutgoingTypedLinksResponse_typedLinkSpecifiers,
    listOutgoingTypedLinksResponse_httpStatus,

    -- ** ListPolicyAttachments
    listPolicyAttachments_nextToken,
    listPolicyAttachments_consistencyLevel,
    listPolicyAttachments_maxResults,
    listPolicyAttachments_directoryArn,
    listPolicyAttachments_policyReference,
    listPolicyAttachmentsResponse_nextToken,
    listPolicyAttachmentsResponse_objectIdentifiers,
    listPolicyAttachmentsResponse_httpStatus,

    -- ** ListPublishedSchemaArns
    listPublishedSchemaArns_nextToken,
    listPublishedSchemaArns_schemaArn,
    listPublishedSchemaArns_maxResults,
    listPublishedSchemaArnsResponse_nextToken,
    listPublishedSchemaArnsResponse_schemaArns,
    listPublishedSchemaArnsResponse_httpStatus,

    -- ** ListTagsForResource
    listTagsForResource_nextToken,
    listTagsForResource_maxResults,
    listTagsForResource_resourceArn,
    listTagsForResourceResponse_tags,
    listTagsForResourceResponse_nextToken,
    listTagsForResourceResponse_httpStatus,

    -- ** ListTypedLinkFacetAttributes
    listTypedLinkFacetAttributes_nextToken,
    listTypedLinkFacetAttributes_maxResults,
    listTypedLinkFacetAttributes_schemaArn,
    listTypedLinkFacetAttributes_name,
    listTypedLinkFacetAttributesResponse_nextToken,
    listTypedLinkFacetAttributesResponse_attributes,
    listTypedLinkFacetAttributesResponse_httpStatus,

    -- ** ListTypedLinkFacetNames
    listTypedLinkFacetNames_nextToken,
    listTypedLinkFacetNames_maxResults,
    listTypedLinkFacetNames_schemaArn,
    listTypedLinkFacetNamesResponse_nextToken,
    listTypedLinkFacetNamesResponse_facetNames,
    listTypedLinkFacetNamesResponse_httpStatus,

    -- ** LookupPolicy
    lookupPolicy_nextToken,
    lookupPolicy_maxResults,
    lookupPolicy_directoryArn,
    lookupPolicy_objectReference,
    lookupPolicyResponse_nextToken,
    lookupPolicyResponse_policyToPathList,
    lookupPolicyResponse_httpStatus,

    -- ** PublishSchema
    publishSchema_name,
    publishSchema_minorVersion,
    publishSchema_developmentSchemaArn,
    publishSchema_version,
    publishSchemaResponse_publishedSchemaArn,
    publishSchemaResponse_httpStatus,

    -- ** PutSchemaFromJson
    putSchemaFromJson_schemaArn,
    putSchemaFromJson_document,
    putSchemaFromJsonResponse_arn,
    putSchemaFromJsonResponse_httpStatus,

    -- ** RemoveFacetFromObject
    removeFacetFromObject_directoryArn,
    removeFacetFromObject_schemaFacet,
    removeFacetFromObject_objectReference,
    removeFacetFromObjectResponse_httpStatus,

    -- ** TagResource
    tagResource_resourceArn,
    tagResource_tags,
    tagResourceResponse_httpStatus,

    -- ** UntagResource
    untagResource_resourceArn,
    untagResource_tagKeys,
    untagResourceResponse_httpStatus,

    -- ** UpdateFacet
    updateFacet_attributeUpdates,
    updateFacet_objectType,
    updateFacet_schemaArn,
    updateFacet_name,
    updateFacetResponse_httpStatus,

    -- ** UpdateLinkAttributes
    updateLinkAttributes_directoryArn,
    updateLinkAttributes_typedLinkSpecifier,
    updateLinkAttributes_attributeUpdates,
    updateLinkAttributesResponse_httpStatus,

    -- ** UpdateObjectAttributes
    updateObjectAttributes_directoryArn,
    updateObjectAttributes_objectReference,
    updateObjectAttributes_attributeUpdates,
    updateObjectAttributesResponse_objectIdentifier,
    updateObjectAttributesResponse_httpStatus,

    -- ** UpdateSchema
    updateSchema_schemaArn,
    updateSchema_name,
    updateSchemaResponse_schemaArn,
    updateSchemaResponse_httpStatus,

    -- ** UpdateTypedLinkFacet
    updateTypedLinkFacet_schemaArn,
    updateTypedLinkFacet_name,
    updateTypedLinkFacet_attributeUpdates,
    updateTypedLinkFacet_identityAttributeOrder,
    updateTypedLinkFacetResponse_httpStatus,

    -- ** UpgradeAppliedSchema
    upgradeAppliedSchema_dryRun,
    upgradeAppliedSchema_publishedSchemaArn,
    upgradeAppliedSchema_directoryArn,
    upgradeAppliedSchemaResponse_directoryArn,
    upgradeAppliedSchemaResponse_upgradedSchemaArn,
    upgradeAppliedSchemaResponse_httpStatus,

    -- ** UpgradePublishedSchema
    upgradePublishedSchema_dryRun,
    upgradePublishedSchema_developmentSchemaArn,
    upgradePublishedSchema_publishedSchemaArn,
    upgradePublishedSchema_minorVersion,
    upgradePublishedSchemaResponse_upgradedSchemaArn,
    upgradePublishedSchemaResponse_httpStatus,

    -- * Types

    -- ** AttributeKey
    attributeKey_schemaArn,
    attributeKey_facetName,
    attributeKey_name,

    -- ** AttributeKeyAndValue
    attributeKeyAndValue_key,
    attributeKeyAndValue_value,

    -- ** AttributeNameAndValue
    attributeNameAndValue_attributeName,
    attributeNameAndValue_value,

    -- ** BatchAddFacetToObject
    batchAddFacetToObject_schemaFacet,
    batchAddFacetToObject_objectAttributeList,
    batchAddFacetToObject_objectReference,

    -- ** BatchAddFacetToObjectResponse

    -- ** BatchAttachObject
    batchAttachObject_parentReference,
    batchAttachObject_childReference,
    batchAttachObject_linkName,

    -- ** BatchAttachObjectResponse
    batchAttachObjectResponse_attachedObjectIdentifier,

    -- ** BatchAttachPolicy
    batchAttachPolicy_policyReference,
    batchAttachPolicy_objectReference,

    -- ** BatchAttachPolicyResponse

    -- ** BatchAttachToIndex
    batchAttachToIndex_indexReference,
    batchAttachToIndex_targetReference,

    -- ** BatchAttachToIndexResponse
    batchAttachToIndexResponse_attachedObjectIdentifier,

    -- ** BatchAttachTypedLink
    batchAttachTypedLink_sourceObjectReference,
    batchAttachTypedLink_targetObjectReference,
    batchAttachTypedLink_typedLinkFacet,
    batchAttachTypedLink_attributes,

    -- ** BatchAttachTypedLinkResponse
    batchAttachTypedLinkResponse_typedLinkSpecifier,

    -- ** BatchCreateIndex
    batchCreateIndex_batchReferenceName,
    batchCreateIndex_parentReference,
    batchCreateIndex_linkName,
    batchCreateIndex_orderedIndexedAttributeList,
    batchCreateIndex_isUnique,

    -- ** BatchCreateIndexResponse
    batchCreateIndexResponse_objectIdentifier,

    -- ** BatchCreateObject
    batchCreateObject_batchReferenceName,
    batchCreateObject_parentReference,
    batchCreateObject_linkName,
    batchCreateObject_schemaFacet,
    batchCreateObject_objectAttributeList,

    -- ** BatchCreateObjectResponse
    batchCreateObjectResponse_objectIdentifier,

    -- ** BatchDeleteObject
    batchDeleteObject_objectReference,

    -- ** BatchDeleteObjectResponse

    -- ** BatchDetachFromIndex
    batchDetachFromIndex_indexReference,
    batchDetachFromIndex_targetReference,

    -- ** BatchDetachFromIndexResponse
    batchDetachFromIndexResponse_detachedObjectIdentifier,

    -- ** BatchDetachObject
    batchDetachObject_batchReferenceName,
    batchDetachObject_parentReference,
    batchDetachObject_linkName,

    -- ** BatchDetachObjectResponse
    batchDetachObjectResponse_detachedObjectIdentifier,

    -- ** BatchDetachPolicy
    batchDetachPolicy_policyReference,
    batchDetachPolicy_objectReference,

    -- ** BatchDetachPolicyResponse

    -- ** BatchDetachTypedLink
    batchDetachTypedLink_typedLinkSpecifier,

    -- ** BatchDetachTypedLinkResponse

    -- ** BatchGetLinkAttributes
    batchGetLinkAttributes_typedLinkSpecifier,
    batchGetLinkAttributes_attributeNames,

    -- ** BatchGetLinkAttributesResponse
    batchGetLinkAttributesResponse_attributes,

    -- ** BatchGetObjectAttributes
    batchGetObjectAttributes_objectReference,
    batchGetObjectAttributes_schemaFacet,
    batchGetObjectAttributes_attributeNames,

    -- ** BatchGetObjectAttributesResponse
    batchGetObjectAttributesResponse_attributes,

    -- ** BatchGetObjectInformation
    batchGetObjectInformation_objectReference,

    -- ** BatchGetObjectInformationResponse
    batchGetObjectInformationResponse_objectIdentifier,
    batchGetObjectInformationResponse_schemaFacets,

    -- ** BatchListAttachedIndices
    batchListAttachedIndices_nextToken,
    batchListAttachedIndices_maxResults,
    batchListAttachedIndices_targetReference,

    -- ** BatchListAttachedIndicesResponse
    batchListAttachedIndicesResponse_nextToken,
    batchListAttachedIndicesResponse_indexAttachments,

    -- ** BatchListIncomingTypedLinks
    batchListIncomingTypedLinks_nextToken,
    batchListIncomingTypedLinks_maxResults,
    batchListIncomingTypedLinks_filterAttributeRanges,
    batchListIncomingTypedLinks_filterTypedLink,
    batchListIncomingTypedLinks_objectReference,

    -- ** BatchListIncomingTypedLinksResponse
    batchListIncomingTypedLinksResponse_nextToken,
    batchListIncomingTypedLinksResponse_linkSpecifiers,

    -- ** BatchListIndex
    batchListIndex_nextToken,
    batchListIndex_maxResults,
    batchListIndex_rangesOnIndexedValues,
    batchListIndex_indexReference,

    -- ** BatchListIndexResponse
    batchListIndexResponse_nextToken,
    batchListIndexResponse_indexAttachments,

    -- ** BatchListObjectAttributes
    batchListObjectAttributes_nextToken,
    batchListObjectAttributes_maxResults,
    batchListObjectAttributes_facetFilter,
    batchListObjectAttributes_objectReference,

    -- ** BatchListObjectAttributesResponse
    batchListObjectAttributesResponse_nextToken,
    batchListObjectAttributesResponse_attributes,

    -- ** BatchListObjectChildren
    batchListObjectChildren_nextToken,
    batchListObjectChildren_maxResults,
    batchListObjectChildren_objectReference,

    -- ** BatchListObjectChildrenResponse
    batchListObjectChildrenResponse_nextToken,
    batchListObjectChildrenResponse_children,

    -- ** BatchListObjectParentPaths
    batchListObjectParentPaths_nextToken,
    batchListObjectParentPaths_maxResults,
    batchListObjectParentPaths_objectReference,

    -- ** BatchListObjectParentPathsResponse
    batchListObjectParentPathsResponse_nextToken,
    batchListObjectParentPathsResponse_pathToObjectIdentifiersList,

    -- ** BatchListObjectParents
    batchListObjectParents_nextToken,
    batchListObjectParents_maxResults,
    batchListObjectParents_objectReference,

    -- ** BatchListObjectParentsResponse
    batchListObjectParentsResponse_nextToken,
    batchListObjectParentsResponse_parentLinks,

    -- ** BatchListObjectPolicies
    batchListObjectPolicies_nextToken,
    batchListObjectPolicies_maxResults,
    batchListObjectPolicies_objectReference,

    -- ** BatchListObjectPoliciesResponse
    batchListObjectPoliciesResponse_nextToken,
    batchListObjectPoliciesResponse_attachedPolicyIds,

    -- ** BatchListOutgoingTypedLinks
    batchListOutgoingTypedLinks_nextToken,
    batchListOutgoingTypedLinks_maxResults,
    batchListOutgoingTypedLinks_filterAttributeRanges,
    batchListOutgoingTypedLinks_filterTypedLink,
    batchListOutgoingTypedLinks_objectReference,

    -- ** BatchListOutgoingTypedLinksResponse
    batchListOutgoingTypedLinksResponse_nextToken,
    batchListOutgoingTypedLinksResponse_typedLinkSpecifiers,

    -- ** BatchListPolicyAttachments
    batchListPolicyAttachments_nextToken,
    batchListPolicyAttachments_maxResults,
    batchListPolicyAttachments_policyReference,

    -- ** BatchListPolicyAttachmentsResponse
    batchListPolicyAttachmentsResponse_nextToken,
    batchListPolicyAttachmentsResponse_objectIdentifiers,

    -- ** BatchLookupPolicy
    batchLookupPolicy_nextToken,
    batchLookupPolicy_maxResults,
    batchLookupPolicy_objectReference,

    -- ** BatchLookupPolicyResponse
    batchLookupPolicyResponse_nextToken,
    batchLookupPolicyResponse_policyToPathList,

    -- ** BatchReadException
    batchReadException_message,
    batchReadException_type,

    -- ** BatchReadOperation
    batchReadOperation_listOutgoingTypedLinks,
    batchReadOperation_getObjectAttributes,
    batchReadOperation_listObjectChildren,
    batchReadOperation_listPolicyAttachments,
    batchReadOperation_listObjectPolicies,
    batchReadOperation_listIncomingTypedLinks,
    batchReadOperation_getObjectInformation,
    batchReadOperation_listObjectAttributes,
    batchReadOperation_lookupPolicy,
    batchReadOperation_getLinkAttributes,
    batchReadOperation_listObjectParents,
    batchReadOperation_listObjectParentPaths,
    batchReadOperation_listAttachedIndices,
    batchReadOperation_listIndex,

    -- ** BatchReadOperationResponse
    batchReadOperationResponse_exceptionResponse,
    batchReadOperationResponse_successfulResponse,

    -- ** BatchReadSuccessfulResponse
    batchReadSuccessfulResponse_listOutgoingTypedLinks,
    batchReadSuccessfulResponse_getObjectAttributes,
    batchReadSuccessfulResponse_listObjectChildren,
    batchReadSuccessfulResponse_listPolicyAttachments,
    batchReadSuccessfulResponse_listObjectPolicies,
    batchReadSuccessfulResponse_listIncomingTypedLinks,
    batchReadSuccessfulResponse_getObjectInformation,
    batchReadSuccessfulResponse_listObjectAttributes,
    batchReadSuccessfulResponse_lookupPolicy,
    batchReadSuccessfulResponse_getLinkAttributes,
    batchReadSuccessfulResponse_listObjectParents,
    batchReadSuccessfulResponse_listObjectParentPaths,
    batchReadSuccessfulResponse_listAttachedIndices,
    batchReadSuccessfulResponse_listIndex,

    -- ** BatchRemoveFacetFromObject
    batchRemoveFacetFromObject_schemaFacet,
    batchRemoveFacetFromObject_objectReference,

    -- ** BatchRemoveFacetFromObjectResponse

    -- ** BatchUpdateLinkAttributes
    batchUpdateLinkAttributes_typedLinkSpecifier,
    batchUpdateLinkAttributes_attributeUpdates,

    -- ** BatchUpdateLinkAttributesResponse

    -- ** BatchUpdateObjectAttributes
    batchUpdateObjectAttributes_objectReference,
    batchUpdateObjectAttributes_attributeUpdates,

    -- ** BatchUpdateObjectAttributesResponse
    batchUpdateObjectAttributesResponse_objectIdentifier,

    -- ** BatchWriteOperation
    batchWriteOperation_attachToIndex,
    batchWriteOperation_updateObjectAttributes,
    batchWriteOperation_deleteObject,
    batchWriteOperation_detachObject,
    batchWriteOperation_detachTypedLink,
    batchWriteOperation_updateLinkAttributes,
    batchWriteOperation_createObject,
    batchWriteOperation_addFacetToObject,
    batchWriteOperation_detachFromIndex,
    batchWriteOperation_attachPolicy,
    batchWriteOperation_createIndex,
    batchWriteOperation_detachPolicy,
    batchWriteOperation_removeFacetFromObject,
    batchWriteOperation_attachTypedLink,
    batchWriteOperation_attachObject,

    -- ** BatchWriteOperationResponse
    batchWriteOperationResponse_attachToIndex,
    batchWriteOperationResponse_updateObjectAttributes,
    batchWriteOperationResponse_deleteObject,
    batchWriteOperationResponse_detachObject,
    batchWriteOperationResponse_detachTypedLink,
    batchWriteOperationResponse_updateLinkAttributes,
    batchWriteOperationResponse_createObject,
    batchWriteOperationResponse_addFacetToObject,
    batchWriteOperationResponse_detachFromIndex,
    batchWriteOperationResponse_attachPolicy,
    batchWriteOperationResponse_createIndex,
    batchWriteOperationResponse_detachPolicy,
    batchWriteOperationResponse_removeFacetFromObject,
    batchWriteOperationResponse_attachTypedLink,
    batchWriteOperationResponse_attachObject,

    -- ** Directory
    directory_name,
    directory_creationDateTime,
    directory_directoryArn,
    directory_state,

    -- ** Facet
    facet_name,
    facet_facetStyle,
    facet_objectType,

    -- ** FacetAttribute
    facetAttribute_attributeReference,
    facetAttribute_requiredBehavior,
    facetAttribute_attributeDefinition,
    facetAttribute_name,

    -- ** FacetAttributeDefinition
    facetAttributeDefinition_rules,
    facetAttributeDefinition_defaultValue,
    facetAttributeDefinition_isImmutable,
    facetAttributeDefinition_type,

    -- ** FacetAttributeReference
    facetAttributeReference_targetFacetName,
    facetAttributeReference_targetAttributeName,

    -- ** FacetAttributeUpdate
    facetAttributeUpdate_attribute,
    facetAttributeUpdate_action,

    -- ** IndexAttachment
    indexAttachment_objectIdentifier,
    indexAttachment_indexedAttributes,

    -- ** LinkAttributeAction
    linkAttributeAction_attributeActionType,
    linkAttributeAction_attributeUpdateValue,

    -- ** LinkAttributeUpdate
    linkAttributeUpdate_attributeAction,
    linkAttributeUpdate_attributeKey,

    -- ** ObjectAttributeAction
    objectAttributeAction_objectAttributeUpdateValue,
    objectAttributeAction_objectAttributeActionType,

    -- ** ObjectAttributeRange
    objectAttributeRange_range,
    objectAttributeRange_attributeKey,

    -- ** ObjectAttributeUpdate
    objectAttributeUpdate_objectAttributeKey,
    objectAttributeUpdate_objectAttributeAction,

    -- ** ObjectIdentifierAndLinkNameTuple
    objectIdentifierAndLinkNameTuple_objectIdentifier,
    objectIdentifierAndLinkNameTuple_linkName,

    -- ** ObjectReference
    objectReference_selector,

    -- ** PathToObjectIdentifiers
    pathToObjectIdentifiers_path,
    pathToObjectIdentifiers_objectIdentifiers,

    -- ** PolicyAttachment
    policyAttachment_policyId,
    policyAttachment_objectIdentifier,
    policyAttachment_policyType,

    -- ** PolicyToPath
    policyToPath_path,
    policyToPath_policies,

    -- ** Rule
    rule_type,
    rule_parameters,

    -- ** SchemaFacet
    schemaFacet_facetName,
    schemaFacet_schemaArn,

    -- ** Tag
    tag_key,
    tag_value,

    -- ** TypedAttributeValue
    typedAttributeValue_datetimeValue,
    typedAttributeValue_numberValue,
    typedAttributeValue_booleanValue,
    typedAttributeValue_binaryValue,
    typedAttributeValue_stringValue,

    -- ** TypedAttributeValueRange
    typedAttributeValueRange_endValue,
    typedAttributeValueRange_startValue,
    typedAttributeValueRange_startMode,
    typedAttributeValueRange_endMode,

    -- ** TypedLinkAttributeDefinition
    typedLinkAttributeDefinition_rules,
    typedLinkAttributeDefinition_defaultValue,
    typedLinkAttributeDefinition_isImmutable,
    typedLinkAttributeDefinition_name,
    typedLinkAttributeDefinition_type,
    typedLinkAttributeDefinition_requiredBehavior,

    -- ** TypedLinkAttributeRange
    typedLinkAttributeRange_attributeName,
    typedLinkAttributeRange_range,

    -- ** TypedLinkFacet
    typedLinkFacet_name,
    typedLinkFacet_attributes,
    typedLinkFacet_identityAttributeOrder,

    -- ** TypedLinkFacetAttributeUpdate
    typedLinkFacetAttributeUpdate_attribute,
    typedLinkFacetAttributeUpdate_action,

    -- ** TypedLinkSchemaAndFacetName
    typedLinkSchemaAndFacetName_schemaArn,
    typedLinkSchemaAndFacetName_typedLinkName,

    -- ** TypedLinkSpecifier
    typedLinkSpecifier_typedLinkFacet,
    typedLinkSpecifier_sourceObjectReference,
    typedLinkSpecifier_targetObjectReference,
    typedLinkSpecifier_identityAttributeValues,
  )
where

import Amazonka.CloudDirectory.AddFacetToObject
import Amazonka.CloudDirectory.ApplySchema
import Amazonka.CloudDirectory.AttachObject
import Amazonka.CloudDirectory.AttachPolicy
import Amazonka.CloudDirectory.AttachToIndex
import Amazonka.CloudDirectory.AttachTypedLink
import Amazonka.CloudDirectory.BatchRead
import Amazonka.CloudDirectory.BatchWrite
import Amazonka.CloudDirectory.CreateDirectory
import Amazonka.CloudDirectory.CreateFacet
import Amazonka.CloudDirectory.CreateIndex
import Amazonka.CloudDirectory.CreateObject
import Amazonka.CloudDirectory.CreateSchema
import Amazonka.CloudDirectory.CreateTypedLinkFacet
import Amazonka.CloudDirectory.DeleteDirectory
import Amazonka.CloudDirectory.DeleteFacet
import Amazonka.CloudDirectory.DeleteObject
import Amazonka.CloudDirectory.DeleteSchema
import Amazonka.CloudDirectory.DeleteTypedLinkFacet
import Amazonka.CloudDirectory.DetachFromIndex
import Amazonka.CloudDirectory.DetachObject
import Amazonka.CloudDirectory.DetachPolicy
import Amazonka.CloudDirectory.DetachTypedLink
import Amazonka.CloudDirectory.DisableDirectory
import Amazonka.CloudDirectory.EnableDirectory
import Amazonka.CloudDirectory.GetAppliedSchemaVersion
import Amazonka.CloudDirectory.GetDirectory
import Amazonka.CloudDirectory.GetFacet
import Amazonka.CloudDirectory.GetLinkAttributes
import Amazonka.CloudDirectory.GetObjectAttributes
import Amazonka.CloudDirectory.GetObjectInformation
import Amazonka.CloudDirectory.GetSchemaAsJson
import Amazonka.CloudDirectory.GetTypedLinkFacetInformation
import Amazonka.CloudDirectory.ListAppliedSchemaArns
import Amazonka.CloudDirectory.ListAttachedIndices
import Amazonka.CloudDirectory.ListDevelopmentSchemaArns
import Amazonka.CloudDirectory.ListDirectories
import Amazonka.CloudDirectory.ListFacetAttributes
import Amazonka.CloudDirectory.ListFacetNames
import Amazonka.CloudDirectory.ListIncomingTypedLinks
import Amazonka.CloudDirectory.ListIndex
import Amazonka.CloudDirectory.ListManagedSchemaArns
import Amazonka.CloudDirectory.ListObjectAttributes
import Amazonka.CloudDirectory.ListObjectChildren
import Amazonka.CloudDirectory.ListObjectParentPaths
import Amazonka.CloudDirectory.ListObjectParents
import Amazonka.CloudDirectory.ListObjectPolicies
import Amazonka.CloudDirectory.ListOutgoingTypedLinks
import Amazonka.CloudDirectory.ListPolicyAttachments
import Amazonka.CloudDirectory.ListPublishedSchemaArns
import Amazonka.CloudDirectory.ListTagsForResource
import Amazonka.CloudDirectory.ListTypedLinkFacetAttributes
import Amazonka.CloudDirectory.ListTypedLinkFacetNames
import Amazonka.CloudDirectory.LookupPolicy
import Amazonka.CloudDirectory.PublishSchema
import Amazonka.CloudDirectory.PutSchemaFromJson
import Amazonka.CloudDirectory.RemoveFacetFromObject
import Amazonka.CloudDirectory.TagResource
import Amazonka.CloudDirectory.Types.AttributeKey
import Amazonka.CloudDirectory.Types.AttributeKeyAndValue
import Amazonka.CloudDirectory.Types.AttributeNameAndValue
import Amazonka.CloudDirectory.Types.BatchAddFacetToObject
import Amazonka.CloudDirectory.Types.BatchAddFacetToObjectResponse
import Amazonka.CloudDirectory.Types.BatchAttachObject
import Amazonka.CloudDirectory.Types.BatchAttachObjectResponse
import Amazonka.CloudDirectory.Types.BatchAttachPolicy
import Amazonka.CloudDirectory.Types.BatchAttachPolicyResponse
import Amazonka.CloudDirectory.Types.BatchAttachToIndex
import Amazonka.CloudDirectory.Types.BatchAttachToIndexResponse
import Amazonka.CloudDirectory.Types.BatchAttachTypedLink
import Amazonka.CloudDirectory.Types.BatchAttachTypedLinkResponse
import Amazonka.CloudDirectory.Types.BatchCreateIndex
import Amazonka.CloudDirectory.Types.BatchCreateIndexResponse
import Amazonka.CloudDirectory.Types.BatchCreateObject
import Amazonka.CloudDirectory.Types.BatchCreateObjectResponse
import Amazonka.CloudDirectory.Types.BatchDeleteObject
import Amazonka.CloudDirectory.Types.BatchDeleteObjectResponse
import Amazonka.CloudDirectory.Types.BatchDetachFromIndex
import Amazonka.CloudDirectory.Types.BatchDetachFromIndexResponse
import Amazonka.CloudDirectory.Types.BatchDetachObject
import Amazonka.CloudDirectory.Types.BatchDetachObjectResponse
import Amazonka.CloudDirectory.Types.BatchDetachPolicy
import Amazonka.CloudDirectory.Types.BatchDetachPolicyResponse
import Amazonka.CloudDirectory.Types.BatchDetachTypedLink
import Amazonka.CloudDirectory.Types.BatchDetachTypedLinkResponse
import Amazonka.CloudDirectory.Types.BatchGetLinkAttributes
import Amazonka.CloudDirectory.Types.BatchGetLinkAttributesResponse
import Amazonka.CloudDirectory.Types.BatchGetObjectAttributes
import Amazonka.CloudDirectory.Types.BatchGetObjectAttributesResponse
import Amazonka.CloudDirectory.Types.BatchGetObjectInformation
import Amazonka.CloudDirectory.Types.BatchGetObjectInformationResponse
import Amazonka.CloudDirectory.Types.BatchListAttachedIndices
import Amazonka.CloudDirectory.Types.BatchListAttachedIndicesResponse
import Amazonka.CloudDirectory.Types.BatchListIncomingTypedLinks
import Amazonka.CloudDirectory.Types.BatchListIncomingTypedLinksResponse
import Amazonka.CloudDirectory.Types.BatchListIndex
import Amazonka.CloudDirectory.Types.BatchListIndexResponse
import Amazonka.CloudDirectory.Types.BatchListObjectAttributes
import Amazonka.CloudDirectory.Types.BatchListObjectAttributesResponse
import Amazonka.CloudDirectory.Types.BatchListObjectChildren
import Amazonka.CloudDirectory.Types.BatchListObjectChildrenResponse
import Amazonka.CloudDirectory.Types.BatchListObjectParentPaths
import Amazonka.CloudDirectory.Types.BatchListObjectParentPathsResponse
import Amazonka.CloudDirectory.Types.BatchListObjectParents
import Amazonka.CloudDirectory.Types.BatchListObjectParentsResponse
import Amazonka.CloudDirectory.Types.BatchListObjectPolicies
import Amazonka.CloudDirectory.Types.BatchListObjectPoliciesResponse
import Amazonka.CloudDirectory.Types.BatchListOutgoingTypedLinks
import Amazonka.CloudDirectory.Types.BatchListOutgoingTypedLinksResponse
import Amazonka.CloudDirectory.Types.BatchListPolicyAttachments
import Amazonka.CloudDirectory.Types.BatchListPolicyAttachmentsResponse
import Amazonka.CloudDirectory.Types.BatchLookupPolicy
import Amazonka.CloudDirectory.Types.BatchLookupPolicyResponse
import Amazonka.CloudDirectory.Types.BatchReadException
import Amazonka.CloudDirectory.Types.BatchReadOperation
import Amazonka.CloudDirectory.Types.BatchReadOperationResponse
import Amazonka.CloudDirectory.Types.BatchReadSuccessfulResponse
import Amazonka.CloudDirectory.Types.BatchRemoveFacetFromObject
import Amazonka.CloudDirectory.Types.BatchRemoveFacetFromObjectResponse
import Amazonka.CloudDirectory.Types.BatchUpdateLinkAttributes
import Amazonka.CloudDirectory.Types.BatchUpdateLinkAttributesResponse
import Amazonka.CloudDirectory.Types.BatchUpdateObjectAttributes
import Amazonka.CloudDirectory.Types.BatchUpdateObjectAttributesResponse
import Amazonka.CloudDirectory.Types.BatchWriteOperation
import Amazonka.CloudDirectory.Types.BatchWriteOperationResponse
import Amazonka.CloudDirectory.Types.Directory
import Amazonka.CloudDirectory.Types.Facet
import Amazonka.CloudDirectory.Types.FacetAttribute
import Amazonka.CloudDirectory.Types.FacetAttributeDefinition
import Amazonka.CloudDirectory.Types.FacetAttributeReference
import Amazonka.CloudDirectory.Types.FacetAttributeUpdate
import Amazonka.CloudDirectory.Types.IndexAttachment
import Amazonka.CloudDirectory.Types.LinkAttributeAction
import Amazonka.CloudDirectory.Types.LinkAttributeUpdate
import Amazonka.CloudDirectory.Types.ObjectAttributeAction
import Amazonka.CloudDirectory.Types.ObjectAttributeRange
import Amazonka.CloudDirectory.Types.ObjectAttributeUpdate
import Amazonka.CloudDirectory.Types.ObjectIdentifierAndLinkNameTuple
import Amazonka.CloudDirectory.Types.ObjectReference
import Amazonka.CloudDirectory.Types.PathToObjectIdentifiers
import Amazonka.CloudDirectory.Types.PolicyAttachment
import Amazonka.CloudDirectory.Types.PolicyToPath
import Amazonka.CloudDirectory.Types.Rule
import Amazonka.CloudDirectory.Types.SchemaFacet
import Amazonka.CloudDirectory.Types.Tag
import Amazonka.CloudDirectory.Types.TypedAttributeValue
import Amazonka.CloudDirectory.Types.TypedAttributeValueRange
import Amazonka.CloudDirectory.Types.TypedLinkAttributeDefinition
import Amazonka.CloudDirectory.Types.TypedLinkAttributeRange
import Amazonka.CloudDirectory.Types.TypedLinkFacet
import Amazonka.CloudDirectory.Types.TypedLinkFacetAttributeUpdate
import Amazonka.CloudDirectory.Types.TypedLinkSchemaAndFacetName
import Amazonka.CloudDirectory.Types.TypedLinkSpecifier
import Amazonka.CloudDirectory.UntagResource
import Amazonka.CloudDirectory.UpdateFacet
import Amazonka.CloudDirectory.UpdateLinkAttributes
import Amazonka.CloudDirectory.UpdateObjectAttributes
import Amazonka.CloudDirectory.UpdateSchema
import Amazonka.CloudDirectory.UpdateTypedLinkFacet
import Amazonka.CloudDirectory.UpgradeAppliedSchema
import Amazonka.CloudDirectory.UpgradePublishedSchema
