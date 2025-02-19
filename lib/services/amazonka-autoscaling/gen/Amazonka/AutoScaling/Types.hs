{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.AutoScaling.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.AutoScaling.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _ActiveInstanceRefreshNotFoundFault,
    _InvalidNextToken,
    _ResourceInUseFault,
    _LimitExceededFault,
    _ServiceLinkedRoleFailure,
    _ScalingActivityInProgressFault,
    _InstanceRefreshInProgressFault,
    _AlreadyExistsFault,
    _ResourceContentionFault,

    -- * AcceleratorManufacturer
    AcceleratorManufacturer (..),

    -- * AcceleratorName
    AcceleratorName (..),

    -- * AcceleratorType
    AcceleratorType (..),

    -- * BareMetal
    BareMetal (..),

    -- * BurstablePerformance
    BurstablePerformance (..),

    -- * CpuManufacturer
    CpuManufacturer (..),

    -- * InstanceGeneration
    InstanceGeneration (..),

    -- * InstanceMetadataEndpointState
    InstanceMetadataEndpointState (..),

    -- * InstanceMetadataHttpTokensState
    InstanceMetadataHttpTokensState (..),

    -- * InstanceRefreshStatus
    InstanceRefreshStatus (..),

    -- * LifecycleState
    LifecycleState (..),

    -- * LocalStorage
    LocalStorage (..),

    -- * LocalStorageType
    LocalStorageType (..),

    -- * MetricStatistic
    MetricStatistic (..),

    -- * MetricType
    MetricType (..),

    -- * PredefinedLoadMetricType
    PredefinedLoadMetricType (..),

    -- * PredefinedMetricPairType
    PredefinedMetricPairType (..),

    -- * PredefinedScalingMetricType
    PredefinedScalingMetricType (..),

    -- * PredictiveScalingMaxCapacityBreachBehavior
    PredictiveScalingMaxCapacityBreachBehavior (..),

    -- * PredictiveScalingMode
    PredictiveScalingMode (..),

    -- * RefreshStrategy
    RefreshStrategy (..),

    -- * ScalingActivityStatusCode
    ScalingActivityStatusCode (..),

    -- * WarmPoolState
    WarmPoolState (..),

    -- * WarmPoolStatus
    WarmPoolStatus (..),

    -- * AcceleratorCountRequest
    AcceleratorCountRequest (..),
    newAcceleratorCountRequest,
    acceleratorCountRequest_max,
    acceleratorCountRequest_min,

    -- * AcceleratorTotalMemoryMiBRequest
    AcceleratorTotalMemoryMiBRequest (..),
    newAcceleratorTotalMemoryMiBRequest,
    acceleratorTotalMemoryMiBRequest_max,
    acceleratorTotalMemoryMiBRequest_min,

    -- * Activity
    Activity (..),
    newActivity,
    activity_progress,
    activity_autoScalingGroupARN,
    activity_autoScalingGroupState,
    activity_endTime,
    activity_description,
    activity_details,
    activity_statusMessage,
    activity_activityId,
    activity_autoScalingGroupName,
    activity_cause,
    activity_startTime,
    activity_statusCode,

    -- * AdjustmentType
    AdjustmentType (..),
    newAdjustmentType,
    adjustmentType_adjustmentType,

    -- * Alarm
    Alarm (..),
    newAlarm,
    alarm_alarmARN,
    alarm_alarmName,

    -- * AutoScalingGroup
    AutoScalingGroup (..),
    newAutoScalingGroup,
    autoScalingGroup_tags,
    autoScalingGroup_instances,
    autoScalingGroup_warmPoolConfiguration,
    autoScalingGroup_autoScalingGroupARN,
    autoScalingGroup_loadBalancerNames,
    autoScalingGroup_predictedCapacity,
    autoScalingGroup_healthCheckGracePeriod,
    autoScalingGroup_launchTemplate,
    autoScalingGroup_warmPoolSize,
    autoScalingGroup_serviceLinkedRoleARN,
    autoScalingGroup_context,
    autoScalingGroup_status,
    autoScalingGroup_maxInstanceLifetime,
    autoScalingGroup_vPCZoneIdentifier,
    autoScalingGroup_launchConfigurationName,
    autoScalingGroup_targetGroupARNs,
    autoScalingGroup_defaultInstanceWarmup,
    autoScalingGroup_mixedInstancesPolicy,
    autoScalingGroup_placementGroup,
    autoScalingGroup_desiredCapacityType,
    autoScalingGroup_newInstancesProtectedFromScaleIn,
    autoScalingGroup_terminationPolicies,
    autoScalingGroup_suspendedProcesses,
    autoScalingGroup_enabledMetrics,
    autoScalingGroup_capacityRebalance,
    autoScalingGroup_autoScalingGroupName,
    autoScalingGroup_minSize,
    autoScalingGroup_maxSize,
    autoScalingGroup_desiredCapacity,
    autoScalingGroup_defaultCooldown,
    autoScalingGroup_availabilityZones,
    autoScalingGroup_healthCheckType,
    autoScalingGroup_createdTime,

    -- * AutoScalingInstanceDetails
    AutoScalingInstanceDetails (..),
    newAutoScalingInstanceDetails,
    autoScalingInstanceDetails_launchTemplate,
    autoScalingInstanceDetails_launchConfigurationName,
    autoScalingInstanceDetails_instanceType,
    autoScalingInstanceDetails_weightedCapacity,
    autoScalingInstanceDetails_instanceId,
    autoScalingInstanceDetails_autoScalingGroupName,
    autoScalingInstanceDetails_availabilityZone,
    autoScalingInstanceDetails_lifecycleState,
    autoScalingInstanceDetails_healthStatus,
    autoScalingInstanceDetails_protectedFromScaleIn,

    -- * BaselineEbsBandwidthMbpsRequest
    BaselineEbsBandwidthMbpsRequest (..),
    newBaselineEbsBandwidthMbpsRequest,
    baselineEbsBandwidthMbpsRequest_max,
    baselineEbsBandwidthMbpsRequest_min,

    -- * BlockDeviceMapping
    BlockDeviceMapping (..),
    newBlockDeviceMapping,
    blockDeviceMapping_ebs,
    blockDeviceMapping_noDevice,
    blockDeviceMapping_virtualName,
    blockDeviceMapping_deviceName,

    -- * CapacityForecast
    CapacityForecast (..),
    newCapacityForecast,
    capacityForecast_timestamps,
    capacityForecast_values,

    -- * CustomizedMetricSpecification
    CustomizedMetricSpecification (..),
    newCustomizedMetricSpecification,
    customizedMetricSpecification_dimensions,
    customizedMetricSpecification_unit,
    customizedMetricSpecification_metricName,
    customizedMetricSpecification_namespace,
    customizedMetricSpecification_statistic,

    -- * DesiredConfiguration
    DesiredConfiguration (..),
    newDesiredConfiguration,
    desiredConfiguration_launchTemplate,
    desiredConfiguration_mixedInstancesPolicy,

    -- * Ebs
    Ebs (..),
    newEbs,
    ebs_deleteOnTermination,
    ebs_snapshotId,
    ebs_volumeType,
    ebs_volumeSize,
    ebs_encrypted,
    ebs_throughput,
    ebs_iops,

    -- * EnabledMetric
    EnabledMetric (..),
    newEnabledMetric,
    enabledMetric_granularity,
    enabledMetric_metric,

    -- * FailedScheduledUpdateGroupActionRequest
    FailedScheduledUpdateGroupActionRequest (..),
    newFailedScheduledUpdateGroupActionRequest,
    failedScheduledUpdateGroupActionRequest_errorMessage,
    failedScheduledUpdateGroupActionRequest_errorCode,
    failedScheduledUpdateGroupActionRequest_scheduledActionName,

    -- * Filter
    Filter (..),
    newFilter,
    filter_values,
    filter_name,

    -- * Instance
    Instance (..),
    newInstance,
    instance_launchTemplate,
    instance_launchConfigurationName,
    instance_instanceType,
    instance_weightedCapacity,
    instance_instanceId,
    instance_availabilityZone,
    instance_lifecycleState,
    instance_healthStatus,
    instance_protectedFromScaleIn,

    -- * InstanceMetadataOptions
    InstanceMetadataOptions (..),
    newInstanceMetadataOptions,
    instanceMetadataOptions_httpPutResponseHopLimit,
    instanceMetadataOptions_httpTokens,
    instanceMetadataOptions_httpEndpoint,

    -- * InstanceMonitoring
    InstanceMonitoring (..),
    newInstanceMonitoring,
    instanceMonitoring_enabled,

    -- * InstanceRefresh
    InstanceRefresh (..),
    newInstanceRefresh,
    instanceRefresh_preferences,
    instanceRefresh_progressDetails,
    instanceRefresh_instanceRefreshId,
    instanceRefresh_statusReason,
    instanceRefresh_status,
    instanceRefresh_endTime,
    instanceRefresh_autoScalingGroupName,
    instanceRefresh_desiredConfiguration,
    instanceRefresh_percentageComplete,
    instanceRefresh_startTime,
    instanceRefresh_instancesToUpdate,

    -- * InstanceRefreshLivePoolProgress
    InstanceRefreshLivePoolProgress (..),
    newInstanceRefreshLivePoolProgress,
    instanceRefreshLivePoolProgress_percentageComplete,
    instanceRefreshLivePoolProgress_instancesToUpdate,

    -- * InstanceRefreshProgressDetails
    InstanceRefreshProgressDetails (..),
    newInstanceRefreshProgressDetails,
    instanceRefreshProgressDetails_warmPoolProgress,
    instanceRefreshProgressDetails_livePoolProgress,

    -- * InstanceRefreshWarmPoolProgress
    InstanceRefreshWarmPoolProgress (..),
    newInstanceRefreshWarmPoolProgress,
    instanceRefreshWarmPoolProgress_percentageComplete,
    instanceRefreshWarmPoolProgress_instancesToUpdate,

    -- * InstanceRequirements
    InstanceRequirements (..),
    newInstanceRequirements,
    instanceRequirements_instanceGenerations,
    instanceRequirements_baselineEbsBandwidthMbps,
    instanceRequirements_bareMetal,
    instanceRequirements_spotMaxPricePercentageOverLowestPrice,
    instanceRequirements_acceleratorTypes,
    instanceRequirements_totalLocalStorageGB,
    instanceRequirements_localStorageTypes,
    instanceRequirements_onDemandMaxPricePercentageOverLowestPrice,
    instanceRequirements_acceleratorNames,
    instanceRequirements_acceleratorManufacturers,
    instanceRequirements_excludedInstanceTypes,
    instanceRequirements_networkInterfaceCount,
    instanceRequirements_requireHibernateSupport,
    instanceRequirements_acceleratorTotalMemoryMiB,
    instanceRequirements_acceleratorCount,
    instanceRequirements_burstablePerformance,
    instanceRequirements_cpuManufacturers,
    instanceRequirements_memoryGiBPerVCpu,
    instanceRequirements_localStorage,
    instanceRequirements_vCpuCount,
    instanceRequirements_memoryMiB,

    -- * InstanceReusePolicy
    InstanceReusePolicy (..),
    newInstanceReusePolicy,
    instanceReusePolicy_reuseOnScaleIn,

    -- * InstancesDistribution
    InstancesDistribution (..),
    newInstancesDistribution,
    instancesDistribution_onDemandBaseCapacity,
    instancesDistribution_onDemandPercentageAboveBaseCapacity,
    instancesDistribution_onDemandAllocationStrategy,
    instancesDistribution_spotInstancePools,
    instancesDistribution_spotMaxPrice,
    instancesDistribution_spotAllocationStrategy,

    -- * LaunchConfiguration
    LaunchConfiguration (..),
    newLaunchConfiguration,
    launchConfiguration_ebsOptimized,
    launchConfiguration_iamInstanceProfile,
    launchConfiguration_classicLinkVPCId,
    launchConfiguration_userData,
    launchConfiguration_associatePublicIpAddress,
    launchConfiguration_blockDeviceMappings,
    launchConfiguration_launchConfigurationARN,
    launchConfiguration_placementTenancy,
    launchConfiguration_securityGroups,
    launchConfiguration_ramdiskId,
    launchConfiguration_instanceMonitoring,
    launchConfiguration_keyName,
    launchConfiguration_kernelId,
    launchConfiguration_spotPrice,
    launchConfiguration_classicLinkVPCSecurityGroups,
    launchConfiguration_metadataOptions,
    launchConfiguration_launchConfigurationName,
    launchConfiguration_imageId,
    launchConfiguration_instanceType,
    launchConfiguration_createdTime,

    -- * LaunchTemplate
    LaunchTemplate (..),
    newLaunchTemplate,
    launchTemplate_launchTemplateSpecification,
    launchTemplate_overrides,

    -- * LaunchTemplateOverrides
    LaunchTemplateOverrides (..),
    newLaunchTemplateOverrides,
    launchTemplateOverrides_instanceRequirements,
    launchTemplateOverrides_launchTemplateSpecification,
    launchTemplateOverrides_instanceType,
    launchTemplateOverrides_weightedCapacity,

    -- * LaunchTemplateSpecification
    LaunchTemplateSpecification (..),
    newLaunchTemplateSpecification,
    launchTemplateSpecification_launchTemplateId,
    launchTemplateSpecification_version,
    launchTemplateSpecification_launchTemplateName,

    -- * LifecycleHook
    LifecycleHook (..),
    newLifecycleHook,
    lifecycleHook_lifecycleHookName,
    lifecycleHook_roleARN,
    lifecycleHook_notificationMetadata,
    lifecycleHook_defaultResult,
    lifecycleHook_notificationTargetARN,
    lifecycleHook_globalTimeout,
    lifecycleHook_autoScalingGroupName,
    lifecycleHook_lifecycleTransition,
    lifecycleHook_heartbeatTimeout,

    -- * LifecycleHookSpecification
    LifecycleHookSpecification (..),
    newLifecycleHookSpecification,
    lifecycleHookSpecification_roleARN,
    lifecycleHookSpecification_notificationMetadata,
    lifecycleHookSpecification_defaultResult,
    lifecycleHookSpecification_notificationTargetARN,
    lifecycleHookSpecification_heartbeatTimeout,
    lifecycleHookSpecification_lifecycleHookName,
    lifecycleHookSpecification_lifecycleTransition,

    -- * LoadBalancerState
    LoadBalancerState (..),
    newLoadBalancerState,
    loadBalancerState_loadBalancerName,
    loadBalancerState_state,

    -- * LoadBalancerTargetGroupState
    LoadBalancerTargetGroupState (..),
    newLoadBalancerTargetGroupState,
    loadBalancerTargetGroupState_state,
    loadBalancerTargetGroupState_loadBalancerTargetGroupARN,

    -- * LoadForecast
    LoadForecast (..),
    newLoadForecast,
    loadForecast_timestamps,
    loadForecast_values,
    loadForecast_metricSpecification,

    -- * MemoryGiBPerVCpuRequest
    MemoryGiBPerVCpuRequest (..),
    newMemoryGiBPerVCpuRequest,
    memoryGiBPerVCpuRequest_max,
    memoryGiBPerVCpuRequest_min,

    -- * MemoryMiBRequest
    MemoryMiBRequest (..),
    newMemoryMiBRequest,
    memoryMiBRequest_max,
    memoryMiBRequest_min,

    -- * Metric
    Metric (..),
    newMetric,
    metric_dimensions,
    metric_namespace,
    metric_metricName,

    -- * MetricCollectionType
    MetricCollectionType (..),
    newMetricCollectionType,
    metricCollectionType_metric,

    -- * MetricDataQuery
    MetricDataQuery (..),
    newMetricDataQuery,
    metricDataQuery_metricStat,
    metricDataQuery_returnData,
    metricDataQuery_label,
    metricDataQuery_expression,
    metricDataQuery_id,

    -- * MetricDimension
    MetricDimension (..),
    newMetricDimension,
    metricDimension_name,
    metricDimension_value,

    -- * MetricGranularityType
    MetricGranularityType (..),
    newMetricGranularityType,
    metricGranularityType_granularity,

    -- * MetricStat
    MetricStat (..),
    newMetricStat,
    metricStat_unit,
    metricStat_metric,
    metricStat_stat,

    -- * MixedInstancesPolicy
    MixedInstancesPolicy (..),
    newMixedInstancesPolicy,
    mixedInstancesPolicy_instancesDistribution,
    mixedInstancesPolicy_launchTemplate,

    -- * NetworkInterfaceCountRequest
    NetworkInterfaceCountRequest (..),
    newNetworkInterfaceCountRequest,
    networkInterfaceCountRequest_max,
    networkInterfaceCountRequest_min,

    -- * NotificationConfiguration
    NotificationConfiguration (..),
    newNotificationConfiguration,
    notificationConfiguration_notificationType,
    notificationConfiguration_topicARN,
    notificationConfiguration_autoScalingGroupName,

    -- * PredefinedMetricSpecification
    PredefinedMetricSpecification (..),
    newPredefinedMetricSpecification,
    predefinedMetricSpecification_resourceLabel,
    predefinedMetricSpecification_predefinedMetricType,

    -- * PredictiveScalingConfiguration
    PredictiveScalingConfiguration (..),
    newPredictiveScalingConfiguration,
    predictiveScalingConfiguration_maxCapacityBuffer,
    predictiveScalingConfiguration_maxCapacityBreachBehavior,
    predictiveScalingConfiguration_mode,
    predictiveScalingConfiguration_schedulingBufferTime,
    predictiveScalingConfiguration_metricSpecifications,

    -- * PredictiveScalingCustomizedCapacityMetric
    PredictiveScalingCustomizedCapacityMetric (..),
    newPredictiveScalingCustomizedCapacityMetric,
    predictiveScalingCustomizedCapacityMetric_metricDataQueries,

    -- * PredictiveScalingCustomizedLoadMetric
    PredictiveScalingCustomizedLoadMetric (..),
    newPredictiveScalingCustomizedLoadMetric,
    predictiveScalingCustomizedLoadMetric_metricDataQueries,

    -- * PredictiveScalingCustomizedScalingMetric
    PredictiveScalingCustomizedScalingMetric (..),
    newPredictiveScalingCustomizedScalingMetric,
    predictiveScalingCustomizedScalingMetric_metricDataQueries,

    -- * PredictiveScalingMetricSpecification
    PredictiveScalingMetricSpecification (..),
    newPredictiveScalingMetricSpecification,
    predictiveScalingMetricSpecification_customizedScalingMetricSpecification,
    predictiveScalingMetricSpecification_predefinedLoadMetricSpecification,
    predictiveScalingMetricSpecification_customizedLoadMetricSpecification,
    predictiveScalingMetricSpecification_customizedCapacityMetricSpecification,
    predictiveScalingMetricSpecification_predefinedScalingMetricSpecification,
    predictiveScalingMetricSpecification_predefinedMetricPairSpecification,
    predictiveScalingMetricSpecification_targetValue,

    -- * PredictiveScalingPredefinedLoadMetric
    PredictiveScalingPredefinedLoadMetric (..),
    newPredictiveScalingPredefinedLoadMetric,
    predictiveScalingPredefinedLoadMetric_resourceLabel,
    predictiveScalingPredefinedLoadMetric_predefinedMetricType,

    -- * PredictiveScalingPredefinedMetricPair
    PredictiveScalingPredefinedMetricPair (..),
    newPredictiveScalingPredefinedMetricPair,
    predictiveScalingPredefinedMetricPair_resourceLabel,
    predictiveScalingPredefinedMetricPair_predefinedMetricType,

    -- * PredictiveScalingPredefinedScalingMetric
    PredictiveScalingPredefinedScalingMetric (..),
    newPredictiveScalingPredefinedScalingMetric,
    predictiveScalingPredefinedScalingMetric_resourceLabel,
    predictiveScalingPredefinedScalingMetric_predefinedMetricType,

    -- * ProcessType
    ProcessType (..),
    newProcessType,
    processType_processName,

    -- * RefreshPreferences
    RefreshPreferences (..),
    newRefreshPreferences,
    refreshPreferences_checkpointPercentages,
    refreshPreferences_skipMatching,
    refreshPreferences_minHealthyPercentage,
    refreshPreferences_instanceWarmup,
    refreshPreferences_checkpointDelay,

    -- * ScalingPolicy
    ScalingPolicy (..),
    newScalingPolicy,
    scalingPolicy_policyName,
    scalingPolicy_alarms,
    scalingPolicy_metricAggregationType,
    scalingPolicy_policyType,
    scalingPolicy_cooldown,
    scalingPolicy_adjustmentType,
    scalingPolicy_estimatedInstanceWarmup,
    scalingPolicy_enabled,
    scalingPolicy_autoScalingGroupName,
    scalingPolicy_policyARN,
    scalingPolicy_targetTrackingConfiguration,
    scalingPolicy_minAdjustmentStep,
    scalingPolicy_scalingAdjustment,
    scalingPolicy_stepAdjustments,
    scalingPolicy_predictiveScalingConfiguration,
    scalingPolicy_minAdjustmentMagnitude,

    -- * ScalingProcessQuery
    ScalingProcessQuery (..),
    newScalingProcessQuery,
    scalingProcessQuery_scalingProcesses,
    scalingProcessQuery_autoScalingGroupName,

    -- * ScheduledUpdateGroupAction
    ScheduledUpdateGroupAction (..),
    newScheduledUpdateGroupAction,
    scheduledUpdateGroupAction_timeZone,
    scheduledUpdateGroupAction_time,
    scheduledUpdateGroupAction_endTime,
    scheduledUpdateGroupAction_scheduledActionARN,
    scheduledUpdateGroupAction_autoScalingGroupName,
    scheduledUpdateGroupAction_minSize,
    scheduledUpdateGroupAction_recurrence,
    scheduledUpdateGroupAction_maxSize,
    scheduledUpdateGroupAction_scheduledActionName,
    scheduledUpdateGroupAction_desiredCapacity,
    scheduledUpdateGroupAction_startTime,

    -- * ScheduledUpdateGroupActionRequest
    ScheduledUpdateGroupActionRequest (..),
    newScheduledUpdateGroupActionRequest,
    scheduledUpdateGroupActionRequest_timeZone,
    scheduledUpdateGroupActionRequest_endTime,
    scheduledUpdateGroupActionRequest_minSize,
    scheduledUpdateGroupActionRequest_recurrence,
    scheduledUpdateGroupActionRequest_maxSize,
    scheduledUpdateGroupActionRequest_desiredCapacity,
    scheduledUpdateGroupActionRequest_startTime,
    scheduledUpdateGroupActionRequest_scheduledActionName,

    -- * StepAdjustment
    StepAdjustment (..),
    newStepAdjustment,
    stepAdjustment_metricIntervalUpperBound,
    stepAdjustment_metricIntervalLowerBound,
    stepAdjustment_scalingAdjustment,

    -- * SuspendedProcess
    SuspendedProcess (..),
    newSuspendedProcess,
    suspendedProcess_suspensionReason,
    suspendedProcess_processName,

    -- * Tag
    Tag (..),
    newTag,
    tag_key,
    tag_resourceId,
    tag_resourceType,
    tag_propagateAtLaunch,
    tag_value,

    -- * TagDescription
    TagDescription (..),
    newTagDescription,
    tagDescription_resourceId,
    tagDescription_resourceType,
    tagDescription_key,
    tagDescription_propagateAtLaunch,
    tagDescription_value,

    -- * TargetTrackingConfiguration
    TargetTrackingConfiguration (..),
    newTargetTrackingConfiguration,
    targetTrackingConfiguration_disableScaleIn,
    targetTrackingConfiguration_customizedMetricSpecification,
    targetTrackingConfiguration_predefinedMetricSpecification,
    targetTrackingConfiguration_targetValue,

    -- * TotalLocalStorageGBRequest
    TotalLocalStorageGBRequest (..),
    newTotalLocalStorageGBRequest,
    totalLocalStorageGBRequest_max,
    totalLocalStorageGBRequest_min,

    -- * VCpuCountRequest
    VCpuCountRequest (..),
    newVCpuCountRequest,
    vCpuCountRequest_max,
    vCpuCountRequest_min,

    -- * WarmPoolConfiguration
    WarmPoolConfiguration (..),
    newWarmPoolConfiguration,
    warmPoolConfiguration_poolState,
    warmPoolConfiguration_status,
    warmPoolConfiguration_minSize,
    warmPoolConfiguration_instanceReusePolicy,
    warmPoolConfiguration_maxGroupPreparedCapacity,
  )
where

import Amazonka.AutoScaling.Types.AcceleratorCountRequest
import Amazonka.AutoScaling.Types.AcceleratorManufacturer
import Amazonka.AutoScaling.Types.AcceleratorName
import Amazonka.AutoScaling.Types.AcceleratorTotalMemoryMiBRequest
import Amazonka.AutoScaling.Types.AcceleratorType
import Amazonka.AutoScaling.Types.Activity
import Amazonka.AutoScaling.Types.AdjustmentType
import Amazonka.AutoScaling.Types.Alarm
import Amazonka.AutoScaling.Types.AutoScalingGroup
import Amazonka.AutoScaling.Types.AutoScalingInstanceDetails
import Amazonka.AutoScaling.Types.BareMetal
import Amazonka.AutoScaling.Types.BaselineEbsBandwidthMbpsRequest
import Amazonka.AutoScaling.Types.BlockDeviceMapping
import Amazonka.AutoScaling.Types.BurstablePerformance
import Amazonka.AutoScaling.Types.CapacityForecast
import Amazonka.AutoScaling.Types.CpuManufacturer
import Amazonka.AutoScaling.Types.CustomizedMetricSpecification
import Amazonka.AutoScaling.Types.DesiredConfiguration
import Amazonka.AutoScaling.Types.Ebs
import Amazonka.AutoScaling.Types.EnabledMetric
import Amazonka.AutoScaling.Types.FailedScheduledUpdateGroupActionRequest
import Amazonka.AutoScaling.Types.Filter
import Amazonka.AutoScaling.Types.Instance
import Amazonka.AutoScaling.Types.InstanceGeneration
import Amazonka.AutoScaling.Types.InstanceMetadataEndpointState
import Amazonka.AutoScaling.Types.InstanceMetadataHttpTokensState
import Amazonka.AutoScaling.Types.InstanceMetadataOptions
import Amazonka.AutoScaling.Types.InstanceMonitoring
import Amazonka.AutoScaling.Types.InstanceRefresh
import Amazonka.AutoScaling.Types.InstanceRefreshLivePoolProgress
import Amazonka.AutoScaling.Types.InstanceRefreshProgressDetails
import Amazonka.AutoScaling.Types.InstanceRefreshStatus
import Amazonka.AutoScaling.Types.InstanceRefreshWarmPoolProgress
import Amazonka.AutoScaling.Types.InstanceRequirements
import Amazonka.AutoScaling.Types.InstanceReusePolicy
import Amazonka.AutoScaling.Types.InstancesDistribution
import Amazonka.AutoScaling.Types.LaunchConfiguration
import Amazonka.AutoScaling.Types.LaunchTemplate
import Amazonka.AutoScaling.Types.LaunchTemplateOverrides
import Amazonka.AutoScaling.Types.LaunchTemplateSpecification
import Amazonka.AutoScaling.Types.LifecycleHook
import Amazonka.AutoScaling.Types.LifecycleHookSpecification
import Amazonka.AutoScaling.Types.LifecycleState
import Amazonka.AutoScaling.Types.LoadBalancerState
import Amazonka.AutoScaling.Types.LoadBalancerTargetGroupState
import Amazonka.AutoScaling.Types.LoadForecast
import Amazonka.AutoScaling.Types.LocalStorage
import Amazonka.AutoScaling.Types.LocalStorageType
import Amazonka.AutoScaling.Types.MemoryGiBPerVCpuRequest
import Amazonka.AutoScaling.Types.MemoryMiBRequest
import Amazonka.AutoScaling.Types.Metric
import Amazonka.AutoScaling.Types.MetricCollectionType
import Amazonka.AutoScaling.Types.MetricDataQuery
import Amazonka.AutoScaling.Types.MetricDimension
import Amazonka.AutoScaling.Types.MetricGranularityType
import Amazonka.AutoScaling.Types.MetricStat
import Amazonka.AutoScaling.Types.MetricStatistic
import Amazonka.AutoScaling.Types.MetricType
import Amazonka.AutoScaling.Types.MixedInstancesPolicy
import Amazonka.AutoScaling.Types.NetworkInterfaceCountRequest
import Amazonka.AutoScaling.Types.NotificationConfiguration
import Amazonka.AutoScaling.Types.PredefinedLoadMetricType
import Amazonka.AutoScaling.Types.PredefinedMetricPairType
import Amazonka.AutoScaling.Types.PredefinedMetricSpecification
import Amazonka.AutoScaling.Types.PredefinedScalingMetricType
import Amazonka.AutoScaling.Types.PredictiveScalingConfiguration
import Amazonka.AutoScaling.Types.PredictiveScalingCustomizedCapacityMetric
import Amazonka.AutoScaling.Types.PredictiveScalingCustomizedLoadMetric
import Amazonka.AutoScaling.Types.PredictiveScalingCustomizedScalingMetric
import Amazonka.AutoScaling.Types.PredictiveScalingMaxCapacityBreachBehavior
import Amazonka.AutoScaling.Types.PredictiveScalingMetricSpecification
import Amazonka.AutoScaling.Types.PredictiveScalingMode
import Amazonka.AutoScaling.Types.PredictiveScalingPredefinedLoadMetric
import Amazonka.AutoScaling.Types.PredictiveScalingPredefinedMetricPair
import Amazonka.AutoScaling.Types.PredictiveScalingPredefinedScalingMetric
import Amazonka.AutoScaling.Types.ProcessType
import Amazonka.AutoScaling.Types.RefreshPreferences
import Amazonka.AutoScaling.Types.RefreshStrategy
import Amazonka.AutoScaling.Types.ScalingActivityStatusCode
import Amazonka.AutoScaling.Types.ScalingPolicy
import Amazonka.AutoScaling.Types.ScalingProcessQuery
import Amazonka.AutoScaling.Types.ScheduledUpdateGroupAction
import Amazonka.AutoScaling.Types.ScheduledUpdateGroupActionRequest
import Amazonka.AutoScaling.Types.StepAdjustment
import Amazonka.AutoScaling.Types.SuspendedProcess
import Amazonka.AutoScaling.Types.Tag
import Amazonka.AutoScaling.Types.TagDescription
import Amazonka.AutoScaling.Types.TargetTrackingConfiguration
import Amazonka.AutoScaling.Types.TotalLocalStorageGBRequest
import Amazonka.AutoScaling.Types.VCpuCountRequest
import Amazonka.AutoScaling.Types.WarmPoolConfiguration
import Amazonka.AutoScaling.Types.WarmPoolState
import Amazonka.AutoScaling.Types.WarmPoolStatus
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2011-01-01@ of the Amazon Auto Scaling SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev = "AutoScaling",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "autoscaling",
      Core._serviceSigningName = "autoscaling",
      Core._serviceVersion = "2011-01-01",
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError =
        Core.parseXMLError "AutoScaling",
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

-- | The request failed because an active instance refresh for the specified
-- Auto Scaling group was not found.
_ActiveInstanceRefreshNotFoundFault :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ActiveInstanceRefreshNotFoundFault =
  Core._MatchServiceError
    defaultService
    "ActiveInstanceRefreshNotFound"
    Prelude.. Core.hasStatus 400

-- | The @NextToken@ value is not valid.
_InvalidNextToken :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidNextToken =
  Core._MatchServiceError
    defaultService
    "InvalidNextToken"
    Prelude.. Core.hasStatus 400

-- | The operation can\'t be performed because the resource is in use.
_ResourceInUseFault :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceInUseFault =
  Core._MatchServiceError
    defaultService
    "ResourceInUse"
    Prelude.. Core.hasStatus 400

-- | You have already reached a limit for your Amazon EC2 Auto Scaling
-- resources (for example, Auto Scaling groups, launch configurations, or
-- lifecycle hooks). For more information, see
-- <https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeAccountLimits.html DescribeAccountLimits>
-- in the /Amazon EC2 Auto Scaling API Reference/.
_LimitExceededFault :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_LimitExceededFault =
  Core._MatchServiceError
    defaultService
    "LimitExceeded"
    Prelude.. Core.hasStatus 400

-- | The service-linked role is not yet ready for use.
_ServiceLinkedRoleFailure :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ServiceLinkedRoleFailure =
  Core._MatchServiceError
    defaultService
    "ServiceLinkedRoleFailure"
    Prelude.. Core.hasStatus 500

-- | The operation can\'t be performed because there are scaling activities
-- in progress.
_ScalingActivityInProgressFault :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ScalingActivityInProgressFault =
  Core._MatchServiceError
    defaultService
    "ScalingActivityInProgress"
    Prelude.. Core.hasStatus 400

-- | The request failed because an active instance refresh operation already
-- exists for the specified Auto Scaling group.
_InstanceRefreshInProgressFault :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InstanceRefreshInProgressFault =
  Core._MatchServiceError
    defaultService
    "InstanceRefreshInProgress"
    Prelude.. Core.hasStatus 400

-- | You already have an Auto Scaling group or launch configuration with this
-- name.
_AlreadyExistsFault :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_AlreadyExistsFault =
  Core._MatchServiceError
    defaultService
    "AlreadyExists"
    Prelude.. Core.hasStatus 400

-- | You already have a pending update to an Amazon EC2 Auto Scaling resource
-- (for example, an Auto Scaling group, instance, or load balancer).
_ResourceContentionFault :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceContentionFault =
  Core._MatchServiceError
    defaultService
    "ResourceContention"
    Prelude.. Core.hasStatus 500
