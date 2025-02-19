{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.ComputeOptimizer.Types.ExportableAutoScalingGroupField
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ComputeOptimizer.Types.ExportableAutoScalingGroupField
  ( ExportableAutoScalingGroupField
      ( ..,
        ExportableAutoScalingGroupField_AccountId,
        ExportableAutoScalingGroupField_AutoScalingGroupArn,
        ExportableAutoScalingGroupField_AutoScalingGroupName,
        ExportableAutoScalingGroupField_CurrentConfigurationDesiredCapacity,
        ExportableAutoScalingGroupField_CurrentConfigurationInstanceType,
        ExportableAutoScalingGroupField_CurrentConfigurationMaxSize,
        ExportableAutoScalingGroupField_CurrentConfigurationMinSize,
        ExportableAutoScalingGroupField_CurrentMemory,
        ExportableAutoScalingGroupField_CurrentNetwork,
        ExportableAutoScalingGroupField_CurrentOnDemandPrice,
        ExportableAutoScalingGroupField_CurrentPerformanceRisk,
        ExportableAutoScalingGroupField_CurrentStandardOneYearNoUpfrontReservedPrice,
        ExportableAutoScalingGroupField_CurrentStandardThreeYearNoUpfrontReservedPrice,
        ExportableAutoScalingGroupField_CurrentStorage,
        ExportableAutoScalingGroupField_CurrentVCpus,
        ExportableAutoScalingGroupField_EffectiveRecommendationPreferencesCpuVendorArchitectures,
        ExportableAutoScalingGroupField_EffectiveRecommendationPreferencesEnhancedInfrastructureMetrics,
        ExportableAutoScalingGroupField_EffectiveRecommendationPreferencesInferredWorkloadTypes,
        ExportableAutoScalingGroupField_Finding,
        ExportableAutoScalingGroupField_InferredWorkloadTypes,
        ExportableAutoScalingGroupField_LastRefreshTimestamp,
        ExportableAutoScalingGroupField_LookbackPeriodInDays,
        ExportableAutoScalingGroupField_RecommendationOptionsConfigurationDesiredCapacity,
        ExportableAutoScalingGroupField_RecommendationOptionsConfigurationInstanceType,
        ExportableAutoScalingGroupField_RecommendationOptionsConfigurationMaxSize,
        ExportableAutoScalingGroupField_RecommendationOptionsConfigurationMinSize,
        ExportableAutoScalingGroupField_RecommendationOptionsEstimatedMonthlySavingsCurrency,
        ExportableAutoScalingGroupField_RecommendationOptionsEstimatedMonthlySavingsValue,
        ExportableAutoScalingGroupField_RecommendationOptionsMemory,
        ExportableAutoScalingGroupField_RecommendationOptionsMigrationEffort,
        ExportableAutoScalingGroupField_RecommendationOptionsNetwork,
        ExportableAutoScalingGroupField_RecommendationOptionsOnDemandPrice,
        ExportableAutoScalingGroupField_RecommendationOptionsPerformanceRisk,
        ExportableAutoScalingGroupField_RecommendationOptionsProjectedUtilizationMetricsCpuMaximum,
        ExportableAutoScalingGroupField_RecommendationOptionsProjectedUtilizationMetricsMemoryMaximum,
        ExportableAutoScalingGroupField_RecommendationOptionsSavingsOpportunityPercentage,
        ExportableAutoScalingGroupField_RecommendationOptionsStandardOneYearNoUpfrontReservedPrice,
        ExportableAutoScalingGroupField_RecommendationOptionsStandardThreeYearNoUpfrontReservedPrice,
        ExportableAutoScalingGroupField_RecommendationOptionsStorage,
        ExportableAutoScalingGroupField_RecommendationOptionsVcpus,
        ExportableAutoScalingGroupField_UtilizationMetricsCpuMaximum,
        ExportableAutoScalingGroupField_UtilizationMetricsDiskReadBytesPerSecondMaximum,
        ExportableAutoScalingGroupField_UtilizationMetricsDiskReadOpsPerSecondMaximum,
        ExportableAutoScalingGroupField_UtilizationMetricsDiskWriteBytesPerSecondMaximum,
        ExportableAutoScalingGroupField_UtilizationMetricsDiskWriteOpsPerSecondMaximum,
        ExportableAutoScalingGroupField_UtilizationMetricsEbsReadBytesPerSecondMaximum,
        ExportableAutoScalingGroupField_UtilizationMetricsEbsReadOpsPerSecondMaximum,
        ExportableAutoScalingGroupField_UtilizationMetricsEbsWriteBytesPerSecondMaximum,
        ExportableAutoScalingGroupField_UtilizationMetricsEbsWriteOpsPerSecondMaximum,
        ExportableAutoScalingGroupField_UtilizationMetricsMemoryMaximum,
        ExportableAutoScalingGroupField_UtilizationMetricsNetworkInBytesPerSecondMaximum,
        ExportableAutoScalingGroupField_UtilizationMetricsNetworkOutBytesPerSecondMaximum,
        ExportableAutoScalingGroupField_UtilizationMetricsNetworkPacketsInPerSecondMaximum,
        ExportableAutoScalingGroupField_UtilizationMetricsNetworkPacketsOutPerSecondMaximum
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype ExportableAutoScalingGroupField = ExportableAutoScalingGroupField'
  { fromExportableAutoScalingGroupField ::
      Core.Text
  }
  deriving stock
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Generic
    )
  deriving newtype
    ( Prelude.Hashable,
      Prelude.NFData,
      Core.FromText,
      Core.ToText,
      Core.ToByteString,
      Core.ToLog,
      Core.ToHeader,
      Core.ToQuery,
      Core.FromJSON,
      Core.FromJSONKey,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromXML,
      Core.ToXML
    )

pattern ExportableAutoScalingGroupField_AccountId :: ExportableAutoScalingGroupField
pattern ExportableAutoScalingGroupField_AccountId = ExportableAutoScalingGroupField' "AccountId"

pattern ExportableAutoScalingGroupField_AutoScalingGroupArn :: ExportableAutoScalingGroupField
pattern ExportableAutoScalingGroupField_AutoScalingGroupArn = ExportableAutoScalingGroupField' "AutoScalingGroupArn"

pattern ExportableAutoScalingGroupField_AutoScalingGroupName :: ExportableAutoScalingGroupField
pattern ExportableAutoScalingGroupField_AutoScalingGroupName = ExportableAutoScalingGroupField' "AutoScalingGroupName"

pattern ExportableAutoScalingGroupField_CurrentConfigurationDesiredCapacity :: ExportableAutoScalingGroupField
pattern ExportableAutoScalingGroupField_CurrentConfigurationDesiredCapacity = ExportableAutoScalingGroupField' "CurrentConfigurationDesiredCapacity"

pattern ExportableAutoScalingGroupField_CurrentConfigurationInstanceType :: ExportableAutoScalingGroupField
pattern ExportableAutoScalingGroupField_CurrentConfigurationInstanceType = ExportableAutoScalingGroupField' "CurrentConfigurationInstanceType"

pattern ExportableAutoScalingGroupField_CurrentConfigurationMaxSize :: ExportableAutoScalingGroupField
pattern ExportableAutoScalingGroupField_CurrentConfigurationMaxSize = ExportableAutoScalingGroupField' "CurrentConfigurationMaxSize"

pattern ExportableAutoScalingGroupField_CurrentConfigurationMinSize :: ExportableAutoScalingGroupField
pattern ExportableAutoScalingGroupField_CurrentConfigurationMinSize = ExportableAutoScalingGroupField' "CurrentConfigurationMinSize"

pattern ExportableAutoScalingGroupField_CurrentMemory :: ExportableAutoScalingGroupField
pattern ExportableAutoScalingGroupField_CurrentMemory = ExportableAutoScalingGroupField' "CurrentMemory"

pattern ExportableAutoScalingGroupField_CurrentNetwork :: ExportableAutoScalingGroupField
pattern ExportableAutoScalingGroupField_CurrentNetwork = ExportableAutoScalingGroupField' "CurrentNetwork"

pattern ExportableAutoScalingGroupField_CurrentOnDemandPrice :: ExportableAutoScalingGroupField
pattern ExportableAutoScalingGroupField_CurrentOnDemandPrice = ExportableAutoScalingGroupField' "CurrentOnDemandPrice"

pattern ExportableAutoScalingGroupField_CurrentPerformanceRisk :: ExportableAutoScalingGroupField
pattern ExportableAutoScalingGroupField_CurrentPerformanceRisk = ExportableAutoScalingGroupField' "CurrentPerformanceRisk"

pattern ExportableAutoScalingGroupField_CurrentStandardOneYearNoUpfrontReservedPrice :: ExportableAutoScalingGroupField
pattern ExportableAutoScalingGroupField_CurrentStandardOneYearNoUpfrontReservedPrice = ExportableAutoScalingGroupField' "CurrentStandardOneYearNoUpfrontReservedPrice"

pattern ExportableAutoScalingGroupField_CurrentStandardThreeYearNoUpfrontReservedPrice :: ExportableAutoScalingGroupField
pattern ExportableAutoScalingGroupField_CurrentStandardThreeYearNoUpfrontReservedPrice = ExportableAutoScalingGroupField' "CurrentStandardThreeYearNoUpfrontReservedPrice"

pattern ExportableAutoScalingGroupField_CurrentStorage :: ExportableAutoScalingGroupField
pattern ExportableAutoScalingGroupField_CurrentStorage = ExportableAutoScalingGroupField' "CurrentStorage"

pattern ExportableAutoScalingGroupField_CurrentVCpus :: ExportableAutoScalingGroupField
pattern ExportableAutoScalingGroupField_CurrentVCpus = ExportableAutoScalingGroupField' "CurrentVCpus"

pattern ExportableAutoScalingGroupField_EffectiveRecommendationPreferencesCpuVendorArchitectures :: ExportableAutoScalingGroupField
pattern ExportableAutoScalingGroupField_EffectiveRecommendationPreferencesCpuVendorArchitectures = ExportableAutoScalingGroupField' "EffectiveRecommendationPreferencesCpuVendorArchitectures"

pattern ExportableAutoScalingGroupField_EffectiveRecommendationPreferencesEnhancedInfrastructureMetrics :: ExportableAutoScalingGroupField
pattern ExportableAutoScalingGroupField_EffectiveRecommendationPreferencesEnhancedInfrastructureMetrics = ExportableAutoScalingGroupField' "EffectiveRecommendationPreferencesEnhancedInfrastructureMetrics"

pattern ExportableAutoScalingGroupField_EffectiveRecommendationPreferencesInferredWorkloadTypes :: ExportableAutoScalingGroupField
pattern ExportableAutoScalingGroupField_EffectiveRecommendationPreferencesInferredWorkloadTypes = ExportableAutoScalingGroupField' "EffectiveRecommendationPreferencesInferredWorkloadTypes"

pattern ExportableAutoScalingGroupField_Finding :: ExportableAutoScalingGroupField
pattern ExportableAutoScalingGroupField_Finding = ExportableAutoScalingGroupField' "Finding"

pattern ExportableAutoScalingGroupField_InferredWorkloadTypes :: ExportableAutoScalingGroupField
pattern ExportableAutoScalingGroupField_InferredWorkloadTypes = ExportableAutoScalingGroupField' "InferredWorkloadTypes"

pattern ExportableAutoScalingGroupField_LastRefreshTimestamp :: ExportableAutoScalingGroupField
pattern ExportableAutoScalingGroupField_LastRefreshTimestamp = ExportableAutoScalingGroupField' "LastRefreshTimestamp"

pattern ExportableAutoScalingGroupField_LookbackPeriodInDays :: ExportableAutoScalingGroupField
pattern ExportableAutoScalingGroupField_LookbackPeriodInDays = ExportableAutoScalingGroupField' "LookbackPeriodInDays"

pattern ExportableAutoScalingGroupField_RecommendationOptionsConfigurationDesiredCapacity :: ExportableAutoScalingGroupField
pattern ExportableAutoScalingGroupField_RecommendationOptionsConfigurationDesiredCapacity = ExportableAutoScalingGroupField' "RecommendationOptionsConfigurationDesiredCapacity"

pattern ExportableAutoScalingGroupField_RecommendationOptionsConfigurationInstanceType :: ExportableAutoScalingGroupField
pattern ExportableAutoScalingGroupField_RecommendationOptionsConfigurationInstanceType = ExportableAutoScalingGroupField' "RecommendationOptionsConfigurationInstanceType"

pattern ExportableAutoScalingGroupField_RecommendationOptionsConfigurationMaxSize :: ExportableAutoScalingGroupField
pattern ExportableAutoScalingGroupField_RecommendationOptionsConfigurationMaxSize = ExportableAutoScalingGroupField' "RecommendationOptionsConfigurationMaxSize"

pattern ExportableAutoScalingGroupField_RecommendationOptionsConfigurationMinSize :: ExportableAutoScalingGroupField
pattern ExportableAutoScalingGroupField_RecommendationOptionsConfigurationMinSize = ExportableAutoScalingGroupField' "RecommendationOptionsConfigurationMinSize"

pattern ExportableAutoScalingGroupField_RecommendationOptionsEstimatedMonthlySavingsCurrency :: ExportableAutoScalingGroupField
pattern ExportableAutoScalingGroupField_RecommendationOptionsEstimatedMonthlySavingsCurrency = ExportableAutoScalingGroupField' "RecommendationOptionsEstimatedMonthlySavingsCurrency"

pattern ExportableAutoScalingGroupField_RecommendationOptionsEstimatedMonthlySavingsValue :: ExportableAutoScalingGroupField
pattern ExportableAutoScalingGroupField_RecommendationOptionsEstimatedMonthlySavingsValue = ExportableAutoScalingGroupField' "RecommendationOptionsEstimatedMonthlySavingsValue"

pattern ExportableAutoScalingGroupField_RecommendationOptionsMemory :: ExportableAutoScalingGroupField
pattern ExportableAutoScalingGroupField_RecommendationOptionsMemory = ExportableAutoScalingGroupField' "RecommendationOptionsMemory"

pattern ExportableAutoScalingGroupField_RecommendationOptionsMigrationEffort :: ExportableAutoScalingGroupField
pattern ExportableAutoScalingGroupField_RecommendationOptionsMigrationEffort = ExportableAutoScalingGroupField' "RecommendationOptionsMigrationEffort"

pattern ExportableAutoScalingGroupField_RecommendationOptionsNetwork :: ExportableAutoScalingGroupField
pattern ExportableAutoScalingGroupField_RecommendationOptionsNetwork = ExportableAutoScalingGroupField' "RecommendationOptionsNetwork"

pattern ExportableAutoScalingGroupField_RecommendationOptionsOnDemandPrice :: ExportableAutoScalingGroupField
pattern ExportableAutoScalingGroupField_RecommendationOptionsOnDemandPrice = ExportableAutoScalingGroupField' "RecommendationOptionsOnDemandPrice"

pattern ExportableAutoScalingGroupField_RecommendationOptionsPerformanceRisk :: ExportableAutoScalingGroupField
pattern ExportableAutoScalingGroupField_RecommendationOptionsPerformanceRisk = ExportableAutoScalingGroupField' "RecommendationOptionsPerformanceRisk"

pattern ExportableAutoScalingGroupField_RecommendationOptionsProjectedUtilizationMetricsCpuMaximum :: ExportableAutoScalingGroupField
pattern ExportableAutoScalingGroupField_RecommendationOptionsProjectedUtilizationMetricsCpuMaximum = ExportableAutoScalingGroupField' "RecommendationOptionsProjectedUtilizationMetricsCpuMaximum"

pattern ExportableAutoScalingGroupField_RecommendationOptionsProjectedUtilizationMetricsMemoryMaximum :: ExportableAutoScalingGroupField
pattern ExportableAutoScalingGroupField_RecommendationOptionsProjectedUtilizationMetricsMemoryMaximum = ExportableAutoScalingGroupField' "RecommendationOptionsProjectedUtilizationMetricsMemoryMaximum"

pattern ExportableAutoScalingGroupField_RecommendationOptionsSavingsOpportunityPercentage :: ExportableAutoScalingGroupField
pattern ExportableAutoScalingGroupField_RecommendationOptionsSavingsOpportunityPercentage = ExportableAutoScalingGroupField' "RecommendationOptionsSavingsOpportunityPercentage"

pattern ExportableAutoScalingGroupField_RecommendationOptionsStandardOneYearNoUpfrontReservedPrice :: ExportableAutoScalingGroupField
pattern ExportableAutoScalingGroupField_RecommendationOptionsStandardOneYearNoUpfrontReservedPrice = ExportableAutoScalingGroupField' "RecommendationOptionsStandardOneYearNoUpfrontReservedPrice"

pattern ExportableAutoScalingGroupField_RecommendationOptionsStandardThreeYearNoUpfrontReservedPrice :: ExportableAutoScalingGroupField
pattern ExportableAutoScalingGroupField_RecommendationOptionsStandardThreeYearNoUpfrontReservedPrice = ExportableAutoScalingGroupField' "RecommendationOptionsStandardThreeYearNoUpfrontReservedPrice"

pattern ExportableAutoScalingGroupField_RecommendationOptionsStorage :: ExportableAutoScalingGroupField
pattern ExportableAutoScalingGroupField_RecommendationOptionsStorage = ExportableAutoScalingGroupField' "RecommendationOptionsStorage"

pattern ExportableAutoScalingGroupField_RecommendationOptionsVcpus :: ExportableAutoScalingGroupField
pattern ExportableAutoScalingGroupField_RecommendationOptionsVcpus = ExportableAutoScalingGroupField' "RecommendationOptionsVcpus"

pattern ExportableAutoScalingGroupField_UtilizationMetricsCpuMaximum :: ExportableAutoScalingGroupField
pattern ExportableAutoScalingGroupField_UtilizationMetricsCpuMaximum = ExportableAutoScalingGroupField' "UtilizationMetricsCpuMaximum"

pattern ExportableAutoScalingGroupField_UtilizationMetricsDiskReadBytesPerSecondMaximum :: ExportableAutoScalingGroupField
pattern ExportableAutoScalingGroupField_UtilizationMetricsDiskReadBytesPerSecondMaximum = ExportableAutoScalingGroupField' "UtilizationMetricsDiskReadBytesPerSecondMaximum"

pattern ExportableAutoScalingGroupField_UtilizationMetricsDiskReadOpsPerSecondMaximum :: ExportableAutoScalingGroupField
pattern ExportableAutoScalingGroupField_UtilizationMetricsDiskReadOpsPerSecondMaximum = ExportableAutoScalingGroupField' "UtilizationMetricsDiskReadOpsPerSecondMaximum"

pattern ExportableAutoScalingGroupField_UtilizationMetricsDiskWriteBytesPerSecondMaximum :: ExportableAutoScalingGroupField
pattern ExportableAutoScalingGroupField_UtilizationMetricsDiskWriteBytesPerSecondMaximum = ExportableAutoScalingGroupField' "UtilizationMetricsDiskWriteBytesPerSecondMaximum"

pattern ExportableAutoScalingGroupField_UtilizationMetricsDiskWriteOpsPerSecondMaximum :: ExportableAutoScalingGroupField
pattern ExportableAutoScalingGroupField_UtilizationMetricsDiskWriteOpsPerSecondMaximum = ExportableAutoScalingGroupField' "UtilizationMetricsDiskWriteOpsPerSecondMaximum"

pattern ExportableAutoScalingGroupField_UtilizationMetricsEbsReadBytesPerSecondMaximum :: ExportableAutoScalingGroupField
pattern ExportableAutoScalingGroupField_UtilizationMetricsEbsReadBytesPerSecondMaximum = ExportableAutoScalingGroupField' "UtilizationMetricsEbsReadBytesPerSecondMaximum"

pattern ExportableAutoScalingGroupField_UtilizationMetricsEbsReadOpsPerSecondMaximum :: ExportableAutoScalingGroupField
pattern ExportableAutoScalingGroupField_UtilizationMetricsEbsReadOpsPerSecondMaximum = ExportableAutoScalingGroupField' "UtilizationMetricsEbsReadOpsPerSecondMaximum"

pattern ExportableAutoScalingGroupField_UtilizationMetricsEbsWriteBytesPerSecondMaximum :: ExportableAutoScalingGroupField
pattern ExportableAutoScalingGroupField_UtilizationMetricsEbsWriteBytesPerSecondMaximum = ExportableAutoScalingGroupField' "UtilizationMetricsEbsWriteBytesPerSecondMaximum"

pattern ExportableAutoScalingGroupField_UtilizationMetricsEbsWriteOpsPerSecondMaximum :: ExportableAutoScalingGroupField
pattern ExportableAutoScalingGroupField_UtilizationMetricsEbsWriteOpsPerSecondMaximum = ExportableAutoScalingGroupField' "UtilizationMetricsEbsWriteOpsPerSecondMaximum"

pattern ExportableAutoScalingGroupField_UtilizationMetricsMemoryMaximum :: ExportableAutoScalingGroupField
pattern ExportableAutoScalingGroupField_UtilizationMetricsMemoryMaximum = ExportableAutoScalingGroupField' "UtilizationMetricsMemoryMaximum"

pattern ExportableAutoScalingGroupField_UtilizationMetricsNetworkInBytesPerSecondMaximum :: ExportableAutoScalingGroupField
pattern ExportableAutoScalingGroupField_UtilizationMetricsNetworkInBytesPerSecondMaximum = ExportableAutoScalingGroupField' "UtilizationMetricsNetworkInBytesPerSecondMaximum"

pattern ExportableAutoScalingGroupField_UtilizationMetricsNetworkOutBytesPerSecondMaximum :: ExportableAutoScalingGroupField
pattern ExportableAutoScalingGroupField_UtilizationMetricsNetworkOutBytesPerSecondMaximum = ExportableAutoScalingGroupField' "UtilizationMetricsNetworkOutBytesPerSecondMaximum"

pattern ExportableAutoScalingGroupField_UtilizationMetricsNetworkPacketsInPerSecondMaximum :: ExportableAutoScalingGroupField
pattern ExportableAutoScalingGroupField_UtilizationMetricsNetworkPacketsInPerSecondMaximum = ExportableAutoScalingGroupField' "UtilizationMetricsNetworkPacketsInPerSecondMaximum"

pattern ExportableAutoScalingGroupField_UtilizationMetricsNetworkPacketsOutPerSecondMaximum :: ExportableAutoScalingGroupField
pattern ExportableAutoScalingGroupField_UtilizationMetricsNetworkPacketsOutPerSecondMaximum = ExportableAutoScalingGroupField' "UtilizationMetricsNetworkPacketsOutPerSecondMaximum"

{-# COMPLETE
  ExportableAutoScalingGroupField_AccountId,
  ExportableAutoScalingGroupField_AutoScalingGroupArn,
  ExportableAutoScalingGroupField_AutoScalingGroupName,
  ExportableAutoScalingGroupField_CurrentConfigurationDesiredCapacity,
  ExportableAutoScalingGroupField_CurrentConfigurationInstanceType,
  ExportableAutoScalingGroupField_CurrentConfigurationMaxSize,
  ExportableAutoScalingGroupField_CurrentConfigurationMinSize,
  ExportableAutoScalingGroupField_CurrentMemory,
  ExportableAutoScalingGroupField_CurrentNetwork,
  ExportableAutoScalingGroupField_CurrentOnDemandPrice,
  ExportableAutoScalingGroupField_CurrentPerformanceRisk,
  ExportableAutoScalingGroupField_CurrentStandardOneYearNoUpfrontReservedPrice,
  ExportableAutoScalingGroupField_CurrentStandardThreeYearNoUpfrontReservedPrice,
  ExportableAutoScalingGroupField_CurrentStorage,
  ExportableAutoScalingGroupField_CurrentVCpus,
  ExportableAutoScalingGroupField_EffectiveRecommendationPreferencesCpuVendorArchitectures,
  ExportableAutoScalingGroupField_EffectiveRecommendationPreferencesEnhancedInfrastructureMetrics,
  ExportableAutoScalingGroupField_EffectiveRecommendationPreferencesInferredWorkloadTypes,
  ExportableAutoScalingGroupField_Finding,
  ExportableAutoScalingGroupField_InferredWorkloadTypes,
  ExportableAutoScalingGroupField_LastRefreshTimestamp,
  ExportableAutoScalingGroupField_LookbackPeriodInDays,
  ExportableAutoScalingGroupField_RecommendationOptionsConfigurationDesiredCapacity,
  ExportableAutoScalingGroupField_RecommendationOptionsConfigurationInstanceType,
  ExportableAutoScalingGroupField_RecommendationOptionsConfigurationMaxSize,
  ExportableAutoScalingGroupField_RecommendationOptionsConfigurationMinSize,
  ExportableAutoScalingGroupField_RecommendationOptionsEstimatedMonthlySavingsCurrency,
  ExportableAutoScalingGroupField_RecommendationOptionsEstimatedMonthlySavingsValue,
  ExportableAutoScalingGroupField_RecommendationOptionsMemory,
  ExportableAutoScalingGroupField_RecommendationOptionsMigrationEffort,
  ExportableAutoScalingGroupField_RecommendationOptionsNetwork,
  ExportableAutoScalingGroupField_RecommendationOptionsOnDemandPrice,
  ExportableAutoScalingGroupField_RecommendationOptionsPerformanceRisk,
  ExportableAutoScalingGroupField_RecommendationOptionsProjectedUtilizationMetricsCpuMaximum,
  ExportableAutoScalingGroupField_RecommendationOptionsProjectedUtilizationMetricsMemoryMaximum,
  ExportableAutoScalingGroupField_RecommendationOptionsSavingsOpportunityPercentage,
  ExportableAutoScalingGroupField_RecommendationOptionsStandardOneYearNoUpfrontReservedPrice,
  ExportableAutoScalingGroupField_RecommendationOptionsStandardThreeYearNoUpfrontReservedPrice,
  ExportableAutoScalingGroupField_RecommendationOptionsStorage,
  ExportableAutoScalingGroupField_RecommendationOptionsVcpus,
  ExportableAutoScalingGroupField_UtilizationMetricsCpuMaximum,
  ExportableAutoScalingGroupField_UtilizationMetricsDiskReadBytesPerSecondMaximum,
  ExportableAutoScalingGroupField_UtilizationMetricsDiskReadOpsPerSecondMaximum,
  ExportableAutoScalingGroupField_UtilizationMetricsDiskWriteBytesPerSecondMaximum,
  ExportableAutoScalingGroupField_UtilizationMetricsDiskWriteOpsPerSecondMaximum,
  ExportableAutoScalingGroupField_UtilizationMetricsEbsReadBytesPerSecondMaximum,
  ExportableAutoScalingGroupField_UtilizationMetricsEbsReadOpsPerSecondMaximum,
  ExportableAutoScalingGroupField_UtilizationMetricsEbsWriteBytesPerSecondMaximum,
  ExportableAutoScalingGroupField_UtilizationMetricsEbsWriteOpsPerSecondMaximum,
  ExportableAutoScalingGroupField_UtilizationMetricsMemoryMaximum,
  ExportableAutoScalingGroupField_UtilizationMetricsNetworkInBytesPerSecondMaximum,
  ExportableAutoScalingGroupField_UtilizationMetricsNetworkOutBytesPerSecondMaximum,
  ExportableAutoScalingGroupField_UtilizationMetricsNetworkPacketsInPerSecondMaximum,
  ExportableAutoScalingGroupField_UtilizationMetricsNetworkPacketsOutPerSecondMaximum,
  ExportableAutoScalingGroupField'
  #-}
