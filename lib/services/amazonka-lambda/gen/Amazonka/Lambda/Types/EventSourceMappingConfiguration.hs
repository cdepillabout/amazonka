{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.Lambda.Types.EventSourceMappingConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Lambda.Types.EventSourceMappingConfiguration where

import qualified Amazonka.Core as Core
import Amazonka.Lambda.Types.AmazonManagedKafkaEventSourceConfig
import Amazonka.Lambda.Types.DestinationConfig
import Amazonka.Lambda.Types.EventSourcePosition
import Amazonka.Lambda.Types.FilterCriteria
import Amazonka.Lambda.Types.FunctionResponseType
import Amazonka.Lambda.Types.SelfManagedEventSource
import Amazonka.Lambda.Types.SelfManagedKafkaEventSourceConfig
import Amazonka.Lambda.Types.SourceAccessConfiguration
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A mapping between an Amazon Web Services resource and a Lambda function.
-- For details, see CreateEventSourceMapping.
--
-- /See:/ 'newEventSourceMappingConfiguration' smart constructor.
data EventSourceMappingConfiguration = EventSourceMappingConfiguration'
  { -- | (Streams only) Discard records older than the specified age. The default
    -- value is -1, which sets the maximum age to infinite. When the value is
    -- set to infinite, Lambda never discards old records.
    maximumRecordAgeInSeconds :: Prelude.Maybe Prelude.Int,
    -- | The ARN of the Lambda function.
    functionArn :: Prelude.Maybe Prelude.Text,
    -- | The position in a stream from which to start reading. Required for
    -- Amazon Kinesis, Amazon DynamoDB, and Amazon MSK stream sources.
    -- @AT_TIMESTAMP@ is supported only for Amazon Kinesis streams.
    startingPosition :: Prelude.Maybe EventSourcePosition,
    -- | (Streams and Amazon SQS) A list of current response type enums applied
    -- to the event source mapping.
    functionResponseTypes :: Prelude.Maybe [FunctionResponseType],
    -- | Specific configuration settings for an Amazon Managed Streaming for
    -- Apache Kafka (Amazon MSK) event source.
    amazonManagedKafkaEventSourceConfig :: Prelude.Maybe AmazonManagedKafkaEventSourceConfig,
    -- | (Streams only) The number of batches to process concurrently from each
    -- shard. The default value is 1.
    parallelizationFactor :: Prelude.Maybe Prelude.Natural,
    -- | The result of the last Lambda invocation of your function.
    lastProcessingResult :: Prelude.Maybe Prelude.Text,
    -- | The state of the event source mapping. It can be one of the following:
    -- @Creating@, @Enabling@, @Enabled@, @Disabling@, @Disabled@, @Updating@,
    -- or @Deleting@.
    state :: Prelude.Maybe Prelude.Text,
    -- | The identifier of the event source mapping.
    uuid :: Prelude.Maybe Prelude.Text,
    -- | (Streams and Amazon SQS standard queues) The maximum amount of time, in
    -- seconds, that Lambda spends gathering records before invoking the
    -- function.
    --
    -- Default: 0
    --
    -- Related setting: When you set @BatchSize@ to a value greater than 10,
    -- you must set @MaximumBatchingWindowInSeconds@ to at least 1.
    maximumBatchingWindowInSeconds :: Prelude.Maybe Prelude.Natural,
    -- | Indicates whether a user or Lambda made the last change to the event
    -- source mapping.
    stateTransitionReason :: Prelude.Maybe Prelude.Text,
    -- | (Streams and Amazon SQS) An object that defines the filter criteria that
    -- determine whether Lambda should process an event. For more information,
    -- see
    -- <https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventfiltering.html Lambda event filtering>.
    filterCriteria :: Prelude.Maybe FilterCriteria,
    -- | The self-managed Apache Kafka cluster for your event source.
    selfManagedEventSource :: Prelude.Maybe SelfManagedEventSource,
    -- | Specific configuration settings for a self-managed Apache Kafka event
    -- source.
    selfManagedKafkaEventSourceConfig :: Prelude.Maybe SelfManagedKafkaEventSourceConfig,
    -- | (Streams only) An Amazon SQS queue or Amazon SNS topic destination for
    -- discarded records.
    destinationConfig :: Prelude.Maybe DestinationConfig,
    -- | The Amazon Resource Name (ARN) of the event source.
    eventSourceArn :: Prelude.Maybe Prelude.Text,
    -- | (Streams only) Discard records after the specified number of retries.
    -- The default value is -1, which sets the maximum number of retries to
    -- infinite. When MaximumRetryAttempts is infinite, Lambda retries failed
    -- records until the record expires in the event source.
    maximumRetryAttempts :: Prelude.Maybe Prelude.Int,
    -- | The date that the event source mapping was last updated or that its
    -- state changed.
    lastModified :: Prelude.Maybe Core.POSIX,
    -- | The maximum number of records in each batch that Lambda pulls from your
    -- stream or queue and sends to your function. Lambda passes all of the
    -- records in the batch to the function in a single call, up to the payload
    -- limit for synchronous invocation (6 MB).
    --
    -- Default value: Varies by service. For Amazon SQS, the default is 10. For
    -- all other services, the default is 100.
    --
    -- Related setting: When you set @BatchSize@ to a value greater than 10,
    -- you must set @MaximumBatchingWindowInSeconds@ to at least 1.
    batchSize :: Prelude.Maybe Prelude.Natural,
    -- | The name of the Kafka topic.
    topics :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | (Amazon MQ) The name of the Amazon MQ broker destination queue to
    -- consume.
    queues :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | (Streams only) If the function returns an error, split the batch in two
    -- and retry. The default value is false.
    bisectBatchOnFunctionError :: Prelude.Maybe Prelude.Bool,
    -- | (Streams only) The duration in seconds of a processing window. The range
    -- is 1–900 seconds.
    tumblingWindowInSeconds :: Prelude.Maybe Prelude.Natural,
    -- | With @StartingPosition@ set to @AT_TIMESTAMP@, the time from which to
    -- start reading.
    startingPositionTimestamp :: Prelude.Maybe Core.POSIX,
    -- | An array of the authentication protocol, VPC components, or virtual host
    -- to secure and define your event source.
    sourceAccessConfigurations :: Prelude.Maybe [SourceAccessConfiguration]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EventSourceMappingConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'maximumRecordAgeInSeconds', 'eventSourceMappingConfiguration_maximumRecordAgeInSeconds' - (Streams only) Discard records older than the specified age. The default
-- value is -1, which sets the maximum age to infinite. When the value is
-- set to infinite, Lambda never discards old records.
--
-- 'functionArn', 'eventSourceMappingConfiguration_functionArn' - The ARN of the Lambda function.
--
-- 'startingPosition', 'eventSourceMappingConfiguration_startingPosition' - The position in a stream from which to start reading. Required for
-- Amazon Kinesis, Amazon DynamoDB, and Amazon MSK stream sources.
-- @AT_TIMESTAMP@ is supported only for Amazon Kinesis streams.
--
-- 'functionResponseTypes', 'eventSourceMappingConfiguration_functionResponseTypes' - (Streams and Amazon SQS) A list of current response type enums applied
-- to the event source mapping.
--
-- 'amazonManagedKafkaEventSourceConfig', 'eventSourceMappingConfiguration_amazonManagedKafkaEventSourceConfig' - Specific configuration settings for an Amazon Managed Streaming for
-- Apache Kafka (Amazon MSK) event source.
--
-- 'parallelizationFactor', 'eventSourceMappingConfiguration_parallelizationFactor' - (Streams only) The number of batches to process concurrently from each
-- shard. The default value is 1.
--
-- 'lastProcessingResult', 'eventSourceMappingConfiguration_lastProcessingResult' - The result of the last Lambda invocation of your function.
--
-- 'state', 'eventSourceMappingConfiguration_state' - The state of the event source mapping. It can be one of the following:
-- @Creating@, @Enabling@, @Enabled@, @Disabling@, @Disabled@, @Updating@,
-- or @Deleting@.
--
-- 'uuid', 'eventSourceMappingConfiguration_uuid' - The identifier of the event source mapping.
--
-- 'maximumBatchingWindowInSeconds', 'eventSourceMappingConfiguration_maximumBatchingWindowInSeconds' - (Streams and Amazon SQS standard queues) The maximum amount of time, in
-- seconds, that Lambda spends gathering records before invoking the
-- function.
--
-- Default: 0
--
-- Related setting: When you set @BatchSize@ to a value greater than 10,
-- you must set @MaximumBatchingWindowInSeconds@ to at least 1.
--
-- 'stateTransitionReason', 'eventSourceMappingConfiguration_stateTransitionReason' - Indicates whether a user or Lambda made the last change to the event
-- source mapping.
--
-- 'filterCriteria', 'eventSourceMappingConfiguration_filterCriteria' - (Streams and Amazon SQS) An object that defines the filter criteria that
-- determine whether Lambda should process an event. For more information,
-- see
-- <https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventfiltering.html Lambda event filtering>.
--
-- 'selfManagedEventSource', 'eventSourceMappingConfiguration_selfManagedEventSource' - The self-managed Apache Kafka cluster for your event source.
--
-- 'selfManagedKafkaEventSourceConfig', 'eventSourceMappingConfiguration_selfManagedKafkaEventSourceConfig' - Specific configuration settings for a self-managed Apache Kafka event
-- source.
--
-- 'destinationConfig', 'eventSourceMappingConfiguration_destinationConfig' - (Streams only) An Amazon SQS queue or Amazon SNS topic destination for
-- discarded records.
--
-- 'eventSourceArn', 'eventSourceMappingConfiguration_eventSourceArn' - The Amazon Resource Name (ARN) of the event source.
--
-- 'maximumRetryAttempts', 'eventSourceMappingConfiguration_maximumRetryAttempts' - (Streams only) Discard records after the specified number of retries.
-- The default value is -1, which sets the maximum number of retries to
-- infinite. When MaximumRetryAttempts is infinite, Lambda retries failed
-- records until the record expires in the event source.
--
-- 'lastModified', 'eventSourceMappingConfiguration_lastModified' - The date that the event source mapping was last updated or that its
-- state changed.
--
-- 'batchSize', 'eventSourceMappingConfiguration_batchSize' - The maximum number of records in each batch that Lambda pulls from your
-- stream or queue and sends to your function. Lambda passes all of the
-- records in the batch to the function in a single call, up to the payload
-- limit for synchronous invocation (6 MB).
--
-- Default value: Varies by service. For Amazon SQS, the default is 10. For
-- all other services, the default is 100.
--
-- Related setting: When you set @BatchSize@ to a value greater than 10,
-- you must set @MaximumBatchingWindowInSeconds@ to at least 1.
--
-- 'topics', 'eventSourceMappingConfiguration_topics' - The name of the Kafka topic.
--
-- 'queues', 'eventSourceMappingConfiguration_queues' - (Amazon MQ) The name of the Amazon MQ broker destination queue to
-- consume.
--
-- 'bisectBatchOnFunctionError', 'eventSourceMappingConfiguration_bisectBatchOnFunctionError' - (Streams only) If the function returns an error, split the batch in two
-- and retry. The default value is false.
--
-- 'tumblingWindowInSeconds', 'eventSourceMappingConfiguration_tumblingWindowInSeconds' - (Streams only) The duration in seconds of a processing window. The range
-- is 1–900 seconds.
--
-- 'startingPositionTimestamp', 'eventSourceMappingConfiguration_startingPositionTimestamp' - With @StartingPosition@ set to @AT_TIMESTAMP@, the time from which to
-- start reading.
--
-- 'sourceAccessConfigurations', 'eventSourceMappingConfiguration_sourceAccessConfigurations' - An array of the authentication protocol, VPC components, or virtual host
-- to secure and define your event source.
newEventSourceMappingConfiguration ::
  EventSourceMappingConfiguration
newEventSourceMappingConfiguration =
  EventSourceMappingConfiguration'
    { maximumRecordAgeInSeconds =
        Prelude.Nothing,
      functionArn = Prelude.Nothing,
      startingPosition = Prelude.Nothing,
      functionResponseTypes = Prelude.Nothing,
      amazonManagedKafkaEventSourceConfig =
        Prelude.Nothing,
      parallelizationFactor = Prelude.Nothing,
      lastProcessingResult = Prelude.Nothing,
      state = Prelude.Nothing,
      uuid = Prelude.Nothing,
      maximumBatchingWindowInSeconds =
        Prelude.Nothing,
      stateTransitionReason = Prelude.Nothing,
      filterCriteria = Prelude.Nothing,
      selfManagedEventSource = Prelude.Nothing,
      selfManagedKafkaEventSourceConfig =
        Prelude.Nothing,
      destinationConfig = Prelude.Nothing,
      eventSourceArn = Prelude.Nothing,
      maximumRetryAttempts = Prelude.Nothing,
      lastModified = Prelude.Nothing,
      batchSize = Prelude.Nothing,
      topics = Prelude.Nothing,
      queues = Prelude.Nothing,
      bisectBatchOnFunctionError =
        Prelude.Nothing,
      tumblingWindowInSeconds = Prelude.Nothing,
      startingPositionTimestamp =
        Prelude.Nothing,
      sourceAccessConfigurations =
        Prelude.Nothing
    }

-- | (Streams only) Discard records older than the specified age. The default
-- value is -1, which sets the maximum age to infinite. When the value is
-- set to infinite, Lambda never discards old records.
eventSourceMappingConfiguration_maximumRecordAgeInSeconds :: Lens.Lens' EventSourceMappingConfiguration (Prelude.Maybe Prelude.Int)
eventSourceMappingConfiguration_maximumRecordAgeInSeconds = Lens.lens (\EventSourceMappingConfiguration' {maximumRecordAgeInSeconds} -> maximumRecordAgeInSeconds) (\s@EventSourceMappingConfiguration' {} a -> s {maximumRecordAgeInSeconds = a} :: EventSourceMappingConfiguration)

-- | The ARN of the Lambda function.
eventSourceMappingConfiguration_functionArn :: Lens.Lens' EventSourceMappingConfiguration (Prelude.Maybe Prelude.Text)
eventSourceMappingConfiguration_functionArn = Lens.lens (\EventSourceMappingConfiguration' {functionArn} -> functionArn) (\s@EventSourceMappingConfiguration' {} a -> s {functionArn = a} :: EventSourceMappingConfiguration)

-- | The position in a stream from which to start reading. Required for
-- Amazon Kinesis, Amazon DynamoDB, and Amazon MSK stream sources.
-- @AT_TIMESTAMP@ is supported only for Amazon Kinesis streams.
eventSourceMappingConfiguration_startingPosition :: Lens.Lens' EventSourceMappingConfiguration (Prelude.Maybe EventSourcePosition)
eventSourceMappingConfiguration_startingPosition = Lens.lens (\EventSourceMappingConfiguration' {startingPosition} -> startingPosition) (\s@EventSourceMappingConfiguration' {} a -> s {startingPosition = a} :: EventSourceMappingConfiguration)

-- | (Streams and Amazon SQS) A list of current response type enums applied
-- to the event source mapping.
eventSourceMappingConfiguration_functionResponseTypes :: Lens.Lens' EventSourceMappingConfiguration (Prelude.Maybe [FunctionResponseType])
eventSourceMappingConfiguration_functionResponseTypes = Lens.lens (\EventSourceMappingConfiguration' {functionResponseTypes} -> functionResponseTypes) (\s@EventSourceMappingConfiguration' {} a -> s {functionResponseTypes = a} :: EventSourceMappingConfiguration) Prelude.. Lens.mapping Lens.coerced

-- | Specific configuration settings for an Amazon Managed Streaming for
-- Apache Kafka (Amazon MSK) event source.
eventSourceMappingConfiguration_amazonManagedKafkaEventSourceConfig :: Lens.Lens' EventSourceMappingConfiguration (Prelude.Maybe AmazonManagedKafkaEventSourceConfig)
eventSourceMappingConfiguration_amazonManagedKafkaEventSourceConfig = Lens.lens (\EventSourceMappingConfiguration' {amazonManagedKafkaEventSourceConfig} -> amazonManagedKafkaEventSourceConfig) (\s@EventSourceMappingConfiguration' {} a -> s {amazonManagedKafkaEventSourceConfig = a} :: EventSourceMappingConfiguration)

-- | (Streams only) The number of batches to process concurrently from each
-- shard. The default value is 1.
eventSourceMappingConfiguration_parallelizationFactor :: Lens.Lens' EventSourceMappingConfiguration (Prelude.Maybe Prelude.Natural)
eventSourceMappingConfiguration_parallelizationFactor = Lens.lens (\EventSourceMappingConfiguration' {parallelizationFactor} -> parallelizationFactor) (\s@EventSourceMappingConfiguration' {} a -> s {parallelizationFactor = a} :: EventSourceMappingConfiguration)

-- | The result of the last Lambda invocation of your function.
eventSourceMappingConfiguration_lastProcessingResult :: Lens.Lens' EventSourceMappingConfiguration (Prelude.Maybe Prelude.Text)
eventSourceMappingConfiguration_lastProcessingResult = Lens.lens (\EventSourceMappingConfiguration' {lastProcessingResult} -> lastProcessingResult) (\s@EventSourceMappingConfiguration' {} a -> s {lastProcessingResult = a} :: EventSourceMappingConfiguration)

-- | The state of the event source mapping. It can be one of the following:
-- @Creating@, @Enabling@, @Enabled@, @Disabling@, @Disabled@, @Updating@,
-- or @Deleting@.
eventSourceMappingConfiguration_state :: Lens.Lens' EventSourceMappingConfiguration (Prelude.Maybe Prelude.Text)
eventSourceMappingConfiguration_state = Lens.lens (\EventSourceMappingConfiguration' {state} -> state) (\s@EventSourceMappingConfiguration' {} a -> s {state = a} :: EventSourceMappingConfiguration)

-- | The identifier of the event source mapping.
eventSourceMappingConfiguration_uuid :: Lens.Lens' EventSourceMappingConfiguration (Prelude.Maybe Prelude.Text)
eventSourceMappingConfiguration_uuid = Lens.lens (\EventSourceMappingConfiguration' {uuid} -> uuid) (\s@EventSourceMappingConfiguration' {} a -> s {uuid = a} :: EventSourceMappingConfiguration)

-- | (Streams and Amazon SQS standard queues) The maximum amount of time, in
-- seconds, that Lambda spends gathering records before invoking the
-- function.
--
-- Default: 0
--
-- Related setting: When you set @BatchSize@ to a value greater than 10,
-- you must set @MaximumBatchingWindowInSeconds@ to at least 1.
eventSourceMappingConfiguration_maximumBatchingWindowInSeconds :: Lens.Lens' EventSourceMappingConfiguration (Prelude.Maybe Prelude.Natural)
eventSourceMappingConfiguration_maximumBatchingWindowInSeconds = Lens.lens (\EventSourceMappingConfiguration' {maximumBatchingWindowInSeconds} -> maximumBatchingWindowInSeconds) (\s@EventSourceMappingConfiguration' {} a -> s {maximumBatchingWindowInSeconds = a} :: EventSourceMappingConfiguration)

-- | Indicates whether a user or Lambda made the last change to the event
-- source mapping.
eventSourceMappingConfiguration_stateTransitionReason :: Lens.Lens' EventSourceMappingConfiguration (Prelude.Maybe Prelude.Text)
eventSourceMappingConfiguration_stateTransitionReason = Lens.lens (\EventSourceMappingConfiguration' {stateTransitionReason} -> stateTransitionReason) (\s@EventSourceMappingConfiguration' {} a -> s {stateTransitionReason = a} :: EventSourceMappingConfiguration)

-- | (Streams and Amazon SQS) An object that defines the filter criteria that
-- determine whether Lambda should process an event. For more information,
-- see
-- <https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventfiltering.html Lambda event filtering>.
eventSourceMappingConfiguration_filterCriteria :: Lens.Lens' EventSourceMappingConfiguration (Prelude.Maybe FilterCriteria)
eventSourceMappingConfiguration_filterCriteria = Lens.lens (\EventSourceMappingConfiguration' {filterCriteria} -> filterCriteria) (\s@EventSourceMappingConfiguration' {} a -> s {filterCriteria = a} :: EventSourceMappingConfiguration)

-- | The self-managed Apache Kafka cluster for your event source.
eventSourceMappingConfiguration_selfManagedEventSource :: Lens.Lens' EventSourceMappingConfiguration (Prelude.Maybe SelfManagedEventSource)
eventSourceMappingConfiguration_selfManagedEventSource = Lens.lens (\EventSourceMappingConfiguration' {selfManagedEventSource} -> selfManagedEventSource) (\s@EventSourceMappingConfiguration' {} a -> s {selfManagedEventSource = a} :: EventSourceMappingConfiguration)

-- | Specific configuration settings for a self-managed Apache Kafka event
-- source.
eventSourceMappingConfiguration_selfManagedKafkaEventSourceConfig :: Lens.Lens' EventSourceMappingConfiguration (Prelude.Maybe SelfManagedKafkaEventSourceConfig)
eventSourceMappingConfiguration_selfManagedKafkaEventSourceConfig = Lens.lens (\EventSourceMappingConfiguration' {selfManagedKafkaEventSourceConfig} -> selfManagedKafkaEventSourceConfig) (\s@EventSourceMappingConfiguration' {} a -> s {selfManagedKafkaEventSourceConfig = a} :: EventSourceMappingConfiguration)

-- | (Streams only) An Amazon SQS queue or Amazon SNS topic destination for
-- discarded records.
eventSourceMappingConfiguration_destinationConfig :: Lens.Lens' EventSourceMappingConfiguration (Prelude.Maybe DestinationConfig)
eventSourceMappingConfiguration_destinationConfig = Lens.lens (\EventSourceMappingConfiguration' {destinationConfig} -> destinationConfig) (\s@EventSourceMappingConfiguration' {} a -> s {destinationConfig = a} :: EventSourceMappingConfiguration)

-- | The Amazon Resource Name (ARN) of the event source.
eventSourceMappingConfiguration_eventSourceArn :: Lens.Lens' EventSourceMappingConfiguration (Prelude.Maybe Prelude.Text)
eventSourceMappingConfiguration_eventSourceArn = Lens.lens (\EventSourceMappingConfiguration' {eventSourceArn} -> eventSourceArn) (\s@EventSourceMappingConfiguration' {} a -> s {eventSourceArn = a} :: EventSourceMappingConfiguration)

-- | (Streams only) Discard records after the specified number of retries.
-- The default value is -1, which sets the maximum number of retries to
-- infinite. When MaximumRetryAttempts is infinite, Lambda retries failed
-- records until the record expires in the event source.
eventSourceMappingConfiguration_maximumRetryAttempts :: Lens.Lens' EventSourceMappingConfiguration (Prelude.Maybe Prelude.Int)
eventSourceMappingConfiguration_maximumRetryAttempts = Lens.lens (\EventSourceMappingConfiguration' {maximumRetryAttempts} -> maximumRetryAttempts) (\s@EventSourceMappingConfiguration' {} a -> s {maximumRetryAttempts = a} :: EventSourceMappingConfiguration)

-- | The date that the event source mapping was last updated or that its
-- state changed.
eventSourceMappingConfiguration_lastModified :: Lens.Lens' EventSourceMappingConfiguration (Prelude.Maybe Prelude.UTCTime)
eventSourceMappingConfiguration_lastModified = Lens.lens (\EventSourceMappingConfiguration' {lastModified} -> lastModified) (\s@EventSourceMappingConfiguration' {} a -> s {lastModified = a} :: EventSourceMappingConfiguration) Prelude.. Lens.mapping Core._Time

-- | The maximum number of records in each batch that Lambda pulls from your
-- stream or queue and sends to your function. Lambda passes all of the
-- records in the batch to the function in a single call, up to the payload
-- limit for synchronous invocation (6 MB).
--
-- Default value: Varies by service. For Amazon SQS, the default is 10. For
-- all other services, the default is 100.
--
-- Related setting: When you set @BatchSize@ to a value greater than 10,
-- you must set @MaximumBatchingWindowInSeconds@ to at least 1.
eventSourceMappingConfiguration_batchSize :: Lens.Lens' EventSourceMappingConfiguration (Prelude.Maybe Prelude.Natural)
eventSourceMappingConfiguration_batchSize = Lens.lens (\EventSourceMappingConfiguration' {batchSize} -> batchSize) (\s@EventSourceMappingConfiguration' {} a -> s {batchSize = a} :: EventSourceMappingConfiguration)

-- | The name of the Kafka topic.
eventSourceMappingConfiguration_topics :: Lens.Lens' EventSourceMappingConfiguration (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
eventSourceMappingConfiguration_topics = Lens.lens (\EventSourceMappingConfiguration' {topics} -> topics) (\s@EventSourceMappingConfiguration' {} a -> s {topics = a} :: EventSourceMappingConfiguration) Prelude.. Lens.mapping Lens.coerced

-- | (Amazon MQ) The name of the Amazon MQ broker destination queue to
-- consume.
eventSourceMappingConfiguration_queues :: Lens.Lens' EventSourceMappingConfiguration (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
eventSourceMappingConfiguration_queues = Lens.lens (\EventSourceMappingConfiguration' {queues} -> queues) (\s@EventSourceMappingConfiguration' {} a -> s {queues = a} :: EventSourceMappingConfiguration) Prelude.. Lens.mapping Lens.coerced

-- | (Streams only) If the function returns an error, split the batch in two
-- and retry. The default value is false.
eventSourceMappingConfiguration_bisectBatchOnFunctionError :: Lens.Lens' EventSourceMappingConfiguration (Prelude.Maybe Prelude.Bool)
eventSourceMappingConfiguration_bisectBatchOnFunctionError = Lens.lens (\EventSourceMappingConfiguration' {bisectBatchOnFunctionError} -> bisectBatchOnFunctionError) (\s@EventSourceMappingConfiguration' {} a -> s {bisectBatchOnFunctionError = a} :: EventSourceMappingConfiguration)

-- | (Streams only) The duration in seconds of a processing window. The range
-- is 1–900 seconds.
eventSourceMappingConfiguration_tumblingWindowInSeconds :: Lens.Lens' EventSourceMappingConfiguration (Prelude.Maybe Prelude.Natural)
eventSourceMappingConfiguration_tumblingWindowInSeconds = Lens.lens (\EventSourceMappingConfiguration' {tumblingWindowInSeconds} -> tumblingWindowInSeconds) (\s@EventSourceMappingConfiguration' {} a -> s {tumblingWindowInSeconds = a} :: EventSourceMappingConfiguration)

-- | With @StartingPosition@ set to @AT_TIMESTAMP@, the time from which to
-- start reading.
eventSourceMappingConfiguration_startingPositionTimestamp :: Lens.Lens' EventSourceMappingConfiguration (Prelude.Maybe Prelude.UTCTime)
eventSourceMappingConfiguration_startingPositionTimestamp = Lens.lens (\EventSourceMappingConfiguration' {startingPositionTimestamp} -> startingPositionTimestamp) (\s@EventSourceMappingConfiguration' {} a -> s {startingPositionTimestamp = a} :: EventSourceMappingConfiguration) Prelude.. Lens.mapping Core._Time

-- | An array of the authentication protocol, VPC components, or virtual host
-- to secure and define your event source.
eventSourceMappingConfiguration_sourceAccessConfigurations :: Lens.Lens' EventSourceMappingConfiguration (Prelude.Maybe [SourceAccessConfiguration])
eventSourceMappingConfiguration_sourceAccessConfigurations = Lens.lens (\EventSourceMappingConfiguration' {sourceAccessConfigurations} -> sourceAccessConfigurations) (\s@EventSourceMappingConfiguration' {} a -> s {sourceAccessConfigurations = a} :: EventSourceMappingConfiguration) Prelude.. Lens.mapping Lens.coerced

instance
  Core.FromJSON
    EventSourceMappingConfiguration
  where
  parseJSON =
    Core.withObject
      "EventSourceMappingConfiguration"
      ( \x ->
          EventSourceMappingConfiguration'
            Prelude.<$> (x Core..:? "MaximumRecordAgeInSeconds")
            Prelude.<*> (x Core..:? "FunctionArn")
            Prelude.<*> (x Core..:? "StartingPosition")
            Prelude.<*> ( x Core..:? "FunctionResponseTypes"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "AmazonManagedKafkaEventSourceConfig")
            Prelude.<*> (x Core..:? "ParallelizationFactor")
            Prelude.<*> (x Core..:? "LastProcessingResult")
            Prelude.<*> (x Core..:? "State")
            Prelude.<*> (x Core..:? "UUID")
            Prelude.<*> (x Core..:? "MaximumBatchingWindowInSeconds")
            Prelude.<*> (x Core..:? "StateTransitionReason")
            Prelude.<*> (x Core..:? "FilterCriteria")
            Prelude.<*> (x Core..:? "SelfManagedEventSource")
            Prelude.<*> (x Core..:? "SelfManagedKafkaEventSourceConfig")
            Prelude.<*> (x Core..:? "DestinationConfig")
            Prelude.<*> (x Core..:? "EventSourceArn")
            Prelude.<*> (x Core..:? "MaximumRetryAttempts")
            Prelude.<*> (x Core..:? "LastModified")
            Prelude.<*> (x Core..:? "BatchSize")
            Prelude.<*> (x Core..:? "Topics")
            Prelude.<*> (x Core..:? "Queues")
            Prelude.<*> (x Core..:? "BisectBatchOnFunctionError")
            Prelude.<*> (x Core..:? "TumblingWindowInSeconds")
            Prelude.<*> (x Core..:? "StartingPositionTimestamp")
            Prelude.<*> ( x Core..:? "SourceAccessConfigurations"
                            Core..!= Prelude.mempty
                        )
      )

instance
  Prelude.Hashable
    EventSourceMappingConfiguration
  where
  hashWithSalt
    _salt
    EventSourceMappingConfiguration' {..} =
      _salt
        `Prelude.hashWithSalt` maximumRecordAgeInSeconds
        `Prelude.hashWithSalt` functionArn
        `Prelude.hashWithSalt` startingPosition
        `Prelude.hashWithSalt` functionResponseTypes
        `Prelude.hashWithSalt` amazonManagedKafkaEventSourceConfig
        `Prelude.hashWithSalt` parallelizationFactor
        `Prelude.hashWithSalt` lastProcessingResult
        `Prelude.hashWithSalt` state
        `Prelude.hashWithSalt` uuid
        `Prelude.hashWithSalt` maximumBatchingWindowInSeconds
        `Prelude.hashWithSalt` stateTransitionReason
        `Prelude.hashWithSalt` filterCriteria
        `Prelude.hashWithSalt` selfManagedEventSource
        `Prelude.hashWithSalt` selfManagedKafkaEventSourceConfig
        `Prelude.hashWithSalt` destinationConfig
        `Prelude.hashWithSalt` eventSourceArn
        `Prelude.hashWithSalt` maximumRetryAttempts
        `Prelude.hashWithSalt` lastModified
        `Prelude.hashWithSalt` batchSize
        `Prelude.hashWithSalt` topics
        `Prelude.hashWithSalt` queues
        `Prelude.hashWithSalt` bisectBatchOnFunctionError
        `Prelude.hashWithSalt` tumblingWindowInSeconds
        `Prelude.hashWithSalt` startingPositionTimestamp
        `Prelude.hashWithSalt` sourceAccessConfigurations

instance
  Prelude.NFData
    EventSourceMappingConfiguration
  where
  rnf EventSourceMappingConfiguration' {..} =
    Prelude.rnf maximumRecordAgeInSeconds
      `Prelude.seq` Prelude.rnf functionArn
      `Prelude.seq` Prelude.rnf startingPosition
      `Prelude.seq` Prelude.rnf functionResponseTypes
      `Prelude.seq` Prelude.rnf amazonManagedKafkaEventSourceConfig
      `Prelude.seq` Prelude.rnf parallelizationFactor
      `Prelude.seq` Prelude.rnf lastProcessingResult
      `Prelude.seq` Prelude.rnf state
      `Prelude.seq` Prelude.rnf uuid
      `Prelude.seq` Prelude.rnf maximumBatchingWindowInSeconds
      `Prelude.seq` Prelude.rnf stateTransitionReason
      `Prelude.seq` Prelude.rnf filterCriteria
      `Prelude.seq` Prelude.rnf selfManagedEventSource
      `Prelude.seq` Prelude.rnf
        selfManagedKafkaEventSourceConfig
      `Prelude.seq` Prelude.rnf destinationConfig
      `Prelude.seq` Prelude.rnf eventSourceArn
      `Prelude.seq` Prelude.rnf maximumRetryAttempts
      `Prelude.seq` Prelude.rnf lastModified
      `Prelude.seq` Prelude.rnf batchSize
      `Prelude.seq` Prelude.rnf topics
      `Prelude.seq` Prelude.rnf queues
      `Prelude.seq` Prelude.rnf
        bisectBatchOnFunctionError
      `Prelude.seq` Prelude.rnf
        tumblingWindowInSeconds
      `Prelude.seq` Prelude.rnf
        startingPositionTimestamp
      `Prelude.seq` Prelude.rnf
        sourceAccessConfigurations
