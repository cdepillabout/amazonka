{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.LookoutVision.Lens
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.LookoutVision.Lens
  ( -- * Operations

    -- ** CreateDataset
    createDataset_clientToken,
    createDataset_datasetSource,
    createDataset_projectName,
    createDataset_datasetType,
    createDatasetResponse_datasetMetadata,
    createDatasetResponse_httpStatus,

    -- ** CreateModel
    createModel_tags,
    createModel_clientToken,
    createModel_description,
    createModel_kmsKeyId,
    createModel_projectName,
    createModel_outputConfig,
    createModelResponse_modelMetadata,
    createModelResponse_httpStatus,

    -- ** CreateProject
    createProject_clientToken,
    createProject_projectName,
    createProjectResponse_projectMetadata,
    createProjectResponse_httpStatus,

    -- ** DeleteDataset
    deleteDataset_clientToken,
    deleteDataset_projectName,
    deleteDataset_datasetType,
    deleteDatasetResponse_httpStatus,

    -- ** DeleteModel
    deleteModel_clientToken,
    deleteModel_projectName,
    deleteModel_modelVersion,
    deleteModelResponse_modelArn,
    deleteModelResponse_httpStatus,

    -- ** DeleteProject
    deleteProject_clientToken,
    deleteProject_projectName,
    deleteProjectResponse_projectArn,
    deleteProjectResponse_httpStatus,

    -- ** DescribeDataset
    describeDataset_projectName,
    describeDataset_datasetType,
    describeDatasetResponse_datasetDescription,
    describeDatasetResponse_httpStatus,

    -- ** DescribeModel
    describeModel_projectName,
    describeModel_modelVersion,
    describeModelResponse_modelDescription,
    describeModelResponse_httpStatus,

    -- ** DescribeModelPackagingJob
    describeModelPackagingJob_projectName,
    describeModelPackagingJob_jobName,
    describeModelPackagingJobResponse_modelPackagingDescription,
    describeModelPackagingJobResponse_httpStatus,

    -- ** DescribeProject
    describeProject_projectName,
    describeProjectResponse_projectDescription,
    describeProjectResponse_httpStatus,

    -- ** DetectAnomalies
    detectAnomalies_projectName,
    detectAnomalies_modelVersion,
    detectAnomalies_contentType,
    detectAnomalies_body,
    detectAnomaliesResponse_detectAnomalyResult,
    detectAnomaliesResponse_httpStatus,

    -- ** ListDatasetEntries
    listDatasetEntries_nextToken,
    listDatasetEntries_labeled,
    listDatasetEntries_sourceRefContains,
    listDatasetEntries_afterCreationDate,
    listDatasetEntries_beforeCreationDate,
    listDatasetEntries_anomalyClass,
    listDatasetEntries_maxResults,
    listDatasetEntries_projectName,
    listDatasetEntries_datasetType,
    listDatasetEntriesResponse_nextToken,
    listDatasetEntriesResponse_datasetEntries,
    listDatasetEntriesResponse_httpStatus,

    -- ** ListModelPackagingJobs
    listModelPackagingJobs_nextToken,
    listModelPackagingJobs_maxResults,
    listModelPackagingJobs_projectName,
    listModelPackagingJobsResponse_nextToken,
    listModelPackagingJobsResponse_modelPackagingJobs,
    listModelPackagingJobsResponse_httpStatus,

    -- ** ListModels
    listModels_nextToken,
    listModels_maxResults,
    listModels_projectName,
    listModelsResponse_nextToken,
    listModelsResponse_models,
    listModelsResponse_httpStatus,

    -- ** ListProjects
    listProjects_nextToken,
    listProjects_maxResults,
    listProjectsResponse_projects,
    listProjectsResponse_nextToken,
    listProjectsResponse_httpStatus,

    -- ** ListTagsForResource
    listTagsForResource_resourceArn,
    listTagsForResourceResponse_tags,
    listTagsForResourceResponse_httpStatus,

    -- ** StartModel
    startModel_clientToken,
    startModel_maxInferenceUnits,
    startModel_projectName,
    startModel_modelVersion,
    startModel_minInferenceUnits,
    startModelResponse_status,
    startModelResponse_httpStatus,

    -- ** StartModelPackagingJob
    startModelPackagingJob_clientToken,
    startModelPackagingJob_jobName,
    startModelPackagingJob_description,
    startModelPackagingJob_projectName,
    startModelPackagingJob_modelVersion,
    startModelPackagingJob_configuration,
    startModelPackagingJobResponse_jobName,
    startModelPackagingJobResponse_httpStatus,

    -- ** StopModel
    stopModel_clientToken,
    stopModel_projectName,
    stopModel_modelVersion,
    stopModelResponse_status,
    stopModelResponse_httpStatus,

    -- ** TagResource
    tagResource_resourceArn,
    tagResource_tags,
    tagResourceResponse_httpStatus,

    -- ** UntagResource
    untagResource_resourceArn,
    untagResource_tagKeys,
    untagResourceResponse_httpStatus,

    -- ** UpdateDatasetEntries
    updateDatasetEntries_clientToken,
    updateDatasetEntries_projectName,
    updateDatasetEntries_datasetType,
    updateDatasetEntries_changes,
    updateDatasetEntriesResponse_status,
    updateDatasetEntriesResponse_httpStatus,

    -- * Types

    -- ** Anomaly
    anomaly_name,
    anomaly_pixelAnomaly,

    -- ** DatasetDescription
    datasetDescription_lastUpdatedTimestamp,
    datasetDescription_datasetType,
    datasetDescription_status,
    datasetDescription_creationTimestamp,
    datasetDescription_projectName,
    datasetDescription_statusMessage,
    datasetDescription_imageStats,

    -- ** DatasetGroundTruthManifest
    datasetGroundTruthManifest_s3Object,

    -- ** DatasetImageStats
    datasetImageStats_total,
    datasetImageStats_labeled,
    datasetImageStats_anomaly,
    datasetImageStats_normal,

    -- ** DatasetMetadata
    datasetMetadata_datasetType,
    datasetMetadata_status,
    datasetMetadata_creationTimestamp,
    datasetMetadata_statusMessage,

    -- ** DatasetSource
    datasetSource_groundTruthManifest,

    -- ** DetectAnomalyResult
    detectAnomalyResult_anomalies,
    detectAnomalyResult_confidence,
    detectAnomalyResult_source,
    detectAnomalyResult_isAnomalous,
    detectAnomalyResult_anomalyMask,

    -- ** GreengrassConfiguration
    greengrassConfiguration_componentDescription,
    greengrassConfiguration_tags,
    greengrassConfiguration_componentVersion,
    greengrassConfiguration_targetDevice,
    greengrassConfiguration_targetPlatform,
    greengrassConfiguration_compilerOptions,
    greengrassConfiguration_s3OutputLocation,
    greengrassConfiguration_componentName,

    -- ** GreengrassOutputDetails
    greengrassOutputDetails_componentVersion,
    greengrassOutputDetails_componentName,
    greengrassOutputDetails_componentVersionArn,

    -- ** ImageSource
    imageSource_type,

    -- ** InputS3Object
    inputS3Object_versionId,
    inputS3Object_bucket,
    inputS3Object_key,

    -- ** ModelDescription
    modelDescription_evaluationManifest,
    modelDescription_minInferenceUnits,
    modelDescription_modelVersion,
    modelDescription_evaluationEndTimestamp,
    modelDescription_status,
    modelDescription_description,
    modelDescription_creationTimestamp,
    modelDescription_performance,
    modelDescription_modelArn,
    modelDescription_evaluationResult,
    modelDescription_kmsKeyId,
    modelDescription_maxInferenceUnits,
    modelDescription_statusMessage,
    modelDescription_outputConfig,

    -- ** ModelMetadata
    modelMetadata_modelVersion,
    modelMetadata_status,
    modelMetadata_description,
    modelMetadata_creationTimestamp,
    modelMetadata_performance,
    modelMetadata_modelArn,
    modelMetadata_statusMessage,

    -- ** ModelPackagingConfiguration
    modelPackagingConfiguration_greengrass,

    -- ** ModelPackagingDescription
    modelPackagingDescription_lastUpdatedTimestamp,
    modelPackagingDescription_jobName,
    modelPackagingDescription_modelPackagingOutputDetails,
    modelPackagingDescription_modelVersion,
    modelPackagingDescription_status,
    modelPackagingDescription_creationTimestamp,
    modelPackagingDescription_modelPackagingJobDescription,
    modelPackagingDescription_modelPackagingMethod,
    modelPackagingDescription_projectName,
    modelPackagingDescription_statusMessage,
    modelPackagingDescription_modelPackagingConfiguration,

    -- ** ModelPackagingJobMetadata
    modelPackagingJobMetadata_lastUpdatedTimestamp,
    modelPackagingJobMetadata_jobName,
    modelPackagingJobMetadata_modelVersion,
    modelPackagingJobMetadata_status,
    modelPackagingJobMetadata_creationTimestamp,
    modelPackagingJobMetadata_modelPackagingJobDescription,
    modelPackagingJobMetadata_modelPackagingMethod,
    modelPackagingJobMetadata_projectName,
    modelPackagingJobMetadata_statusMessage,

    -- ** ModelPackagingOutputDetails
    modelPackagingOutputDetails_greengrass,

    -- ** ModelPerformance
    modelPerformance_f1Score,
    modelPerformance_recall,
    modelPerformance_precision,

    -- ** OutputConfig
    outputConfig_s3Location,

    -- ** OutputS3Object
    outputS3Object_bucket,
    outputS3Object_key,

    -- ** PixelAnomaly
    pixelAnomaly_color,
    pixelAnomaly_totalPercentageArea,

    -- ** ProjectDescription
    projectDescription_datasets,
    projectDescription_creationTimestamp,
    projectDescription_projectName,
    projectDescription_projectArn,

    -- ** ProjectMetadata
    projectMetadata_creationTimestamp,
    projectMetadata_projectName,
    projectMetadata_projectArn,

    -- ** S3Location
    s3Location_prefix,
    s3Location_bucket,

    -- ** Tag
    tag_key,
    tag_value,

    -- ** TargetPlatform
    targetPlatform_accelerator,
    targetPlatform_os,
    targetPlatform_arch,
  )
where

import Amazonka.LookoutVision.CreateDataset
import Amazonka.LookoutVision.CreateModel
import Amazonka.LookoutVision.CreateProject
import Amazonka.LookoutVision.DeleteDataset
import Amazonka.LookoutVision.DeleteModel
import Amazonka.LookoutVision.DeleteProject
import Amazonka.LookoutVision.DescribeDataset
import Amazonka.LookoutVision.DescribeModel
import Amazonka.LookoutVision.DescribeModelPackagingJob
import Amazonka.LookoutVision.DescribeProject
import Amazonka.LookoutVision.DetectAnomalies
import Amazonka.LookoutVision.ListDatasetEntries
import Amazonka.LookoutVision.ListModelPackagingJobs
import Amazonka.LookoutVision.ListModels
import Amazonka.LookoutVision.ListProjects
import Amazonka.LookoutVision.ListTagsForResource
import Amazonka.LookoutVision.StartModel
import Amazonka.LookoutVision.StartModelPackagingJob
import Amazonka.LookoutVision.StopModel
import Amazonka.LookoutVision.TagResource
import Amazonka.LookoutVision.Types.Anomaly
import Amazonka.LookoutVision.Types.DatasetDescription
import Amazonka.LookoutVision.Types.DatasetGroundTruthManifest
import Amazonka.LookoutVision.Types.DatasetImageStats
import Amazonka.LookoutVision.Types.DatasetMetadata
import Amazonka.LookoutVision.Types.DatasetSource
import Amazonka.LookoutVision.Types.DetectAnomalyResult
import Amazonka.LookoutVision.Types.GreengrassConfiguration
import Amazonka.LookoutVision.Types.GreengrassOutputDetails
import Amazonka.LookoutVision.Types.ImageSource
import Amazonka.LookoutVision.Types.InputS3Object
import Amazonka.LookoutVision.Types.ModelDescription
import Amazonka.LookoutVision.Types.ModelMetadata
import Amazonka.LookoutVision.Types.ModelPackagingConfiguration
import Amazonka.LookoutVision.Types.ModelPackagingDescription
import Amazonka.LookoutVision.Types.ModelPackagingJobMetadata
import Amazonka.LookoutVision.Types.ModelPackagingOutputDetails
import Amazonka.LookoutVision.Types.ModelPerformance
import Amazonka.LookoutVision.Types.OutputConfig
import Amazonka.LookoutVision.Types.OutputS3Object
import Amazonka.LookoutVision.Types.PixelAnomaly
import Amazonka.LookoutVision.Types.ProjectDescription
import Amazonka.LookoutVision.Types.ProjectMetadata
import Amazonka.LookoutVision.Types.S3Location
import Amazonka.LookoutVision.Types.Tag
import Amazonka.LookoutVision.Types.TargetPlatform
import Amazonka.LookoutVision.UntagResource
import Amazonka.LookoutVision.UpdateDatasetEntries
