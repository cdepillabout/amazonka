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
-- Module      : Amazonka.Lambda.Types.AmazonManagedKafkaEventSourceConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Lambda.Types.AmazonManagedKafkaEventSourceConfig where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Specific configuration settings for an Amazon Managed Streaming for
-- Apache Kafka (Amazon MSK) event source.
--
-- /See:/ 'newAmazonManagedKafkaEventSourceConfig' smart constructor.
data AmazonManagedKafkaEventSourceConfig = AmazonManagedKafkaEventSourceConfig'
  { -- | The identifier for the Kafka consumer group to join. The consumer group
    -- ID must be unique among all your Kafka event sources. After creating a
    -- Kafka event source mapping with the consumer group ID specified, you
    -- cannot update this value. For more information, see
    -- services-msk-consumer-group-id.
    consumerGroupId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AmazonManagedKafkaEventSourceConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'consumerGroupId', 'amazonManagedKafkaEventSourceConfig_consumerGroupId' - The identifier for the Kafka consumer group to join. The consumer group
-- ID must be unique among all your Kafka event sources. After creating a
-- Kafka event source mapping with the consumer group ID specified, you
-- cannot update this value. For more information, see
-- services-msk-consumer-group-id.
newAmazonManagedKafkaEventSourceConfig ::
  AmazonManagedKafkaEventSourceConfig
newAmazonManagedKafkaEventSourceConfig =
  AmazonManagedKafkaEventSourceConfig'
    { consumerGroupId =
        Prelude.Nothing
    }

-- | The identifier for the Kafka consumer group to join. The consumer group
-- ID must be unique among all your Kafka event sources. After creating a
-- Kafka event source mapping with the consumer group ID specified, you
-- cannot update this value. For more information, see
-- services-msk-consumer-group-id.
amazonManagedKafkaEventSourceConfig_consumerGroupId :: Lens.Lens' AmazonManagedKafkaEventSourceConfig (Prelude.Maybe Prelude.Text)
amazonManagedKafkaEventSourceConfig_consumerGroupId = Lens.lens (\AmazonManagedKafkaEventSourceConfig' {consumerGroupId} -> consumerGroupId) (\s@AmazonManagedKafkaEventSourceConfig' {} a -> s {consumerGroupId = a} :: AmazonManagedKafkaEventSourceConfig)

instance
  Core.FromJSON
    AmazonManagedKafkaEventSourceConfig
  where
  parseJSON =
    Core.withObject
      "AmazonManagedKafkaEventSourceConfig"
      ( \x ->
          AmazonManagedKafkaEventSourceConfig'
            Prelude.<$> (x Core..:? "ConsumerGroupId")
      )

instance
  Prelude.Hashable
    AmazonManagedKafkaEventSourceConfig
  where
  hashWithSalt
    _salt
    AmazonManagedKafkaEventSourceConfig' {..} =
      _salt `Prelude.hashWithSalt` consumerGroupId

instance
  Prelude.NFData
    AmazonManagedKafkaEventSourceConfig
  where
  rnf AmazonManagedKafkaEventSourceConfig' {..} =
    Prelude.rnf consumerGroupId

instance
  Core.ToJSON
    AmazonManagedKafkaEventSourceConfig
  where
  toJSON AmazonManagedKafkaEventSourceConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ConsumerGroupId" Core..=)
              Prelude.<$> consumerGroupId
          ]
      )
