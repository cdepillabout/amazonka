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
-- Module      : Amazonka.KinesisAnalyticsV2.Types.InputDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.KinesisAnalyticsV2.Types.InputDescription where

import qualified Amazonka.Core as Core
import Amazonka.KinesisAnalyticsV2.Types.InputParallelism
import Amazonka.KinesisAnalyticsV2.Types.InputProcessingConfigurationDescription
import Amazonka.KinesisAnalyticsV2.Types.InputStartingPositionConfiguration
import Amazonka.KinesisAnalyticsV2.Types.KinesisFirehoseInputDescription
import Amazonka.KinesisAnalyticsV2.Types.KinesisStreamsInputDescription
import Amazonka.KinesisAnalyticsV2.Types.SourceSchema
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes the application input configuration for a SQL-based Kinesis
-- Data Analytics application.
--
-- /See:/ 'newInputDescription' smart constructor.
data InputDescription = InputDescription'
  { -- | Returns the in-application stream names that are mapped to the stream
    -- source.
    inAppStreamNames :: Prelude.Maybe [Prelude.Text],
    -- | If a Kinesis Data Firehose delivery stream is configured as a streaming
    -- source, provides the delivery stream\'s ARN.
    kinesisFirehoseInputDescription :: Prelude.Maybe KinesisFirehoseInputDescription,
    -- | If a Kinesis data stream is configured as a streaming source, provides
    -- the Kinesis data stream\'s Amazon Resource Name (ARN).
    kinesisStreamsInputDescription :: Prelude.Maybe KinesisStreamsInputDescription,
    -- | Describes the configured parallelism (number of in-application streams
    -- mapped to the streaming source).
    inputParallelism :: Prelude.Maybe InputParallelism,
    -- | The description of the preprocessor that executes on records in this
    -- input before the application\'s code is run.
    inputProcessingConfigurationDescription :: Prelude.Maybe InputProcessingConfigurationDescription,
    -- | The in-application name prefix.
    namePrefix :: Prelude.Maybe Prelude.Text,
    -- | The point at which the application is configured to read from the input
    -- stream.
    inputStartingPositionConfiguration :: Prelude.Maybe InputStartingPositionConfiguration,
    -- | The input ID that is associated with the application input. This is the
    -- ID that Kinesis Data Analytics assigns to each input configuration that
    -- you add to your application.
    inputId :: Prelude.Maybe Prelude.Text,
    -- | Describes the format of the data in the streaming source, and how each
    -- data element maps to corresponding columns in the in-application stream
    -- that is being created.
    inputSchema :: Prelude.Maybe SourceSchema
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InputDescription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'inAppStreamNames', 'inputDescription_inAppStreamNames' - Returns the in-application stream names that are mapped to the stream
-- source.
--
-- 'kinesisFirehoseInputDescription', 'inputDescription_kinesisFirehoseInputDescription' - If a Kinesis Data Firehose delivery stream is configured as a streaming
-- source, provides the delivery stream\'s ARN.
--
-- 'kinesisStreamsInputDescription', 'inputDescription_kinesisStreamsInputDescription' - If a Kinesis data stream is configured as a streaming source, provides
-- the Kinesis data stream\'s Amazon Resource Name (ARN).
--
-- 'inputParallelism', 'inputDescription_inputParallelism' - Describes the configured parallelism (number of in-application streams
-- mapped to the streaming source).
--
-- 'inputProcessingConfigurationDescription', 'inputDescription_inputProcessingConfigurationDescription' - The description of the preprocessor that executes on records in this
-- input before the application\'s code is run.
--
-- 'namePrefix', 'inputDescription_namePrefix' - The in-application name prefix.
--
-- 'inputStartingPositionConfiguration', 'inputDescription_inputStartingPositionConfiguration' - The point at which the application is configured to read from the input
-- stream.
--
-- 'inputId', 'inputDescription_inputId' - The input ID that is associated with the application input. This is the
-- ID that Kinesis Data Analytics assigns to each input configuration that
-- you add to your application.
--
-- 'inputSchema', 'inputDescription_inputSchema' - Describes the format of the data in the streaming source, and how each
-- data element maps to corresponding columns in the in-application stream
-- that is being created.
newInputDescription ::
  InputDescription
newInputDescription =
  InputDescription'
    { inAppStreamNames =
        Prelude.Nothing,
      kinesisFirehoseInputDescription = Prelude.Nothing,
      kinesisStreamsInputDescription = Prelude.Nothing,
      inputParallelism = Prelude.Nothing,
      inputProcessingConfigurationDescription =
        Prelude.Nothing,
      namePrefix = Prelude.Nothing,
      inputStartingPositionConfiguration = Prelude.Nothing,
      inputId = Prelude.Nothing,
      inputSchema = Prelude.Nothing
    }

-- | Returns the in-application stream names that are mapped to the stream
-- source.
inputDescription_inAppStreamNames :: Lens.Lens' InputDescription (Prelude.Maybe [Prelude.Text])
inputDescription_inAppStreamNames = Lens.lens (\InputDescription' {inAppStreamNames} -> inAppStreamNames) (\s@InputDescription' {} a -> s {inAppStreamNames = a} :: InputDescription) Prelude.. Lens.mapping Lens.coerced

-- | If a Kinesis Data Firehose delivery stream is configured as a streaming
-- source, provides the delivery stream\'s ARN.
inputDescription_kinesisFirehoseInputDescription :: Lens.Lens' InputDescription (Prelude.Maybe KinesisFirehoseInputDescription)
inputDescription_kinesisFirehoseInputDescription = Lens.lens (\InputDescription' {kinesisFirehoseInputDescription} -> kinesisFirehoseInputDescription) (\s@InputDescription' {} a -> s {kinesisFirehoseInputDescription = a} :: InputDescription)

-- | If a Kinesis data stream is configured as a streaming source, provides
-- the Kinesis data stream\'s Amazon Resource Name (ARN).
inputDescription_kinesisStreamsInputDescription :: Lens.Lens' InputDescription (Prelude.Maybe KinesisStreamsInputDescription)
inputDescription_kinesisStreamsInputDescription = Lens.lens (\InputDescription' {kinesisStreamsInputDescription} -> kinesisStreamsInputDescription) (\s@InputDescription' {} a -> s {kinesisStreamsInputDescription = a} :: InputDescription)

-- | Describes the configured parallelism (number of in-application streams
-- mapped to the streaming source).
inputDescription_inputParallelism :: Lens.Lens' InputDescription (Prelude.Maybe InputParallelism)
inputDescription_inputParallelism = Lens.lens (\InputDescription' {inputParallelism} -> inputParallelism) (\s@InputDescription' {} a -> s {inputParallelism = a} :: InputDescription)

-- | The description of the preprocessor that executes on records in this
-- input before the application\'s code is run.
inputDescription_inputProcessingConfigurationDescription :: Lens.Lens' InputDescription (Prelude.Maybe InputProcessingConfigurationDescription)
inputDescription_inputProcessingConfigurationDescription = Lens.lens (\InputDescription' {inputProcessingConfigurationDescription} -> inputProcessingConfigurationDescription) (\s@InputDescription' {} a -> s {inputProcessingConfigurationDescription = a} :: InputDescription)

-- | The in-application name prefix.
inputDescription_namePrefix :: Lens.Lens' InputDescription (Prelude.Maybe Prelude.Text)
inputDescription_namePrefix = Lens.lens (\InputDescription' {namePrefix} -> namePrefix) (\s@InputDescription' {} a -> s {namePrefix = a} :: InputDescription)

-- | The point at which the application is configured to read from the input
-- stream.
inputDescription_inputStartingPositionConfiguration :: Lens.Lens' InputDescription (Prelude.Maybe InputStartingPositionConfiguration)
inputDescription_inputStartingPositionConfiguration = Lens.lens (\InputDescription' {inputStartingPositionConfiguration} -> inputStartingPositionConfiguration) (\s@InputDescription' {} a -> s {inputStartingPositionConfiguration = a} :: InputDescription)

-- | The input ID that is associated with the application input. This is the
-- ID that Kinesis Data Analytics assigns to each input configuration that
-- you add to your application.
inputDescription_inputId :: Lens.Lens' InputDescription (Prelude.Maybe Prelude.Text)
inputDescription_inputId = Lens.lens (\InputDescription' {inputId} -> inputId) (\s@InputDescription' {} a -> s {inputId = a} :: InputDescription)

-- | Describes the format of the data in the streaming source, and how each
-- data element maps to corresponding columns in the in-application stream
-- that is being created.
inputDescription_inputSchema :: Lens.Lens' InputDescription (Prelude.Maybe SourceSchema)
inputDescription_inputSchema = Lens.lens (\InputDescription' {inputSchema} -> inputSchema) (\s@InputDescription' {} a -> s {inputSchema = a} :: InputDescription)

instance Core.FromJSON InputDescription where
  parseJSON =
    Core.withObject
      "InputDescription"
      ( \x ->
          InputDescription'
            Prelude.<$> ( x Core..:? "InAppStreamNames"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "KinesisFirehoseInputDescription")
            Prelude.<*> (x Core..:? "KinesisStreamsInputDescription")
            Prelude.<*> (x Core..:? "InputParallelism")
            Prelude.<*> ( x
                            Core..:? "InputProcessingConfigurationDescription"
                        )
            Prelude.<*> (x Core..:? "NamePrefix")
            Prelude.<*> (x Core..:? "InputStartingPositionConfiguration")
            Prelude.<*> (x Core..:? "InputId")
            Prelude.<*> (x Core..:? "InputSchema")
      )

instance Prelude.Hashable InputDescription where
  hashWithSalt _salt InputDescription' {..} =
    _salt `Prelude.hashWithSalt` inAppStreamNames
      `Prelude.hashWithSalt` kinesisFirehoseInputDescription
      `Prelude.hashWithSalt` kinesisStreamsInputDescription
      `Prelude.hashWithSalt` inputParallelism
      `Prelude.hashWithSalt` inputProcessingConfigurationDescription
      `Prelude.hashWithSalt` namePrefix
      `Prelude.hashWithSalt` inputStartingPositionConfiguration
      `Prelude.hashWithSalt` inputId
      `Prelude.hashWithSalt` inputSchema

instance Prelude.NFData InputDescription where
  rnf InputDescription' {..} =
    Prelude.rnf inAppStreamNames
      `Prelude.seq` Prelude.rnf kinesisFirehoseInputDescription
      `Prelude.seq` Prelude.rnf kinesisStreamsInputDescription
      `Prelude.seq` Prelude.rnf inputParallelism
      `Prelude.seq` Prelude.rnf inputProcessingConfigurationDescription
      `Prelude.seq` Prelude.rnf namePrefix
      `Prelude.seq` Prelude.rnf inputStartingPositionConfiguration
      `Prelude.seq` Prelude.rnf inputId
      `Prelude.seq` Prelude.rnf inputSchema
