{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.KinesisAnalyticsV2.DiscoverInputSchema
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Infers a schema for a SQL-based Kinesis Data Analytics application by
-- evaluating sample records on the specified streaming source (Kinesis
-- data stream or Kinesis Data Firehose delivery stream) or Amazon S3
-- object. In the response, the operation returns the inferred schema and
-- also the sample records that the operation used to infer the schema.
--
-- You can use the inferred schema when configuring a streaming source for
-- your application. When you create an application using the Kinesis Data
-- Analytics console, the console uses this operation to infer a schema and
-- show it in the console user interface.
module Amazonka.KinesisAnalyticsV2.DiscoverInputSchema
  ( -- * Creating a Request
    DiscoverInputSchema (..),
    newDiscoverInputSchema,

    -- * Request Lenses
    discoverInputSchema_s3Configuration,
    discoverInputSchema_inputProcessingConfiguration,
    discoverInputSchema_inputStartingPositionConfiguration,
    discoverInputSchema_resourceARN,
    discoverInputSchema_serviceExecutionRole,

    -- * Destructuring the Response
    DiscoverInputSchemaResponse (..),
    newDiscoverInputSchemaResponse,

    -- * Response Lenses
    discoverInputSchemaResponse_parsedInputRecords,
    discoverInputSchemaResponse_processedInputRecords,
    discoverInputSchemaResponse_rawInputRecords,
    discoverInputSchemaResponse_inputSchema,
    discoverInputSchemaResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.KinesisAnalyticsV2.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDiscoverInputSchema' smart constructor.
data DiscoverInputSchema = DiscoverInputSchema'
  { -- | Specify this parameter to discover a schema from data in an Amazon S3
    -- object.
    s3Configuration :: Prelude.Maybe S3Configuration,
    -- | The InputProcessingConfiguration to use to preprocess the records before
    -- discovering the schema of the records.
    inputProcessingConfiguration :: Prelude.Maybe InputProcessingConfiguration,
    -- | The point at which you want Kinesis Data Analytics to start reading
    -- records from the specified streaming source discovery purposes.
    inputStartingPositionConfiguration :: Prelude.Maybe InputStartingPositionConfiguration,
    -- | The Amazon Resource Name (ARN) of the streaming source.
    resourceARN :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the role that is used to access the streaming source.
    serviceExecutionRole :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DiscoverInputSchema' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 's3Configuration', 'discoverInputSchema_s3Configuration' - Specify this parameter to discover a schema from data in an Amazon S3
-- object.
--
-- 'inputProcessingConfiguration', 'discoverInputSchema_inputProcessingConfiguration' - The InputProcessingConfiguration to use to preprocess the records before
-- discovering the schema of the records.
--
-- 'inputStartingPositionConfiguration', 'discoverInputSchema_inputStartingPositionConfiguration' - The point at which you want Kinesis Data Analytics to start reading
-- records from the specified streaming source discovery purposes.
--
-- 'resourceARN', 'discoverInputSchema_resourceARN' - The Amazon Resource Name (ARN) of the streaming source.
--
-- 'serviceExecutionRole', 'discoverInputSchema_serviceExecutionRole' - The ARN of the role that is used to access the streaming source.
newDiscoverInputSchema ::
  -- | 'serviceExecutionRole'
  Prelude.Text ->
  DiscoverInputSchema
newDiscoverInputSchema pServiceExecutionRole_ =
  DiscoverInputSchema'
    { s3Configuration =
        Prelude.Nothing,
      inputProcessingConfiguration = Prelude.Nothing,
      inputStartingPositionConfiguration = Prelude.Nothing,
      resourceARN = Prelude.Nothing,
      serviceExecutionRole = pServiceExecutionRole_
    }

-- | Specify this parameter to discover a schema from data in an Amazon S3
-- object.
discoverInputSchema_s3Configuration :: Lens.Lens' DiscoverInputSchema (Prelude.Maybe S3Configuration)
discoverInputSchema_s3Configuration = Lens.lens (\DiscoverInputSchema' {s3Configuration} -> s3Configuration) (\s@DiscoverInputSchema' {} a -> s {s3Configuration = a} :: DiscoverInputSchema)

-- | The InputProcessingConfiguration to use to preprocess the records before
-- discovering the schema of the records.
discoverInputSchema_inputProcessingConfiguration :: Lens.Lens' DiscoverInputSchema (Prelude.Maybe InputProcessingConfiguration)
discoverInputSchema_inputProcessingConfiguration = Lens.lens (\DiscoverInputSchema' {inputProcessingConfiguration} -> inputProcessingConfiguration) (\s@DiscoverInputSchema' {} a -> s {inputProcessingConfiguration = a} :: DiscoverInputSchema)

-- | The point at which you want Kinesis Data Analytics to start reading
-- records from the specified streaming source discovery purposes.
discoverInputSchema_inputStartingPositionConfiguration :: Lens.Lens' DiscoverInputSchema (Prelude.Maybe InputStartingPositionConfiguration)
discoverInputSchema_inputStartingPositionConfiguration = Lens.lens (\DiscoverInputSchema' {inputStartingPositionConfiguration} -> inputStartingPositionConfiguration) (\s@DiscoverInputSchema' {} a -> s {inputStartingPositionConfiguration = a} :: DiscoverInputSchema)

-- | The Amazon Resource Name (ARN) of the streaming source.
discoverInputSchema_resourceARN :: Lens.Lens' DiscoverInputSchema (Prelude.Maybe Prelude.Text)
discoverInputSchema_resourceARN = Lens.lens (\DiscoverInputSchema' {resourceARN} -> resourceARN) (\s@DiscoverInputSchema' {} a -> s {resourceARN = a} :: DiscoverInputSchema)

-- | The ARN of the role that is used to access the streaming source.
discoverInputSchema_serviceExecutionRole :: Lens.Lens' DiscoverInputSchema Prelude.Text
discoverInputSchema_serviceExecutionRole = Lens.lens (\DiscoverInputSchema' {serviceExecutionRole} -> serviceExecutionRole) (\s@DiscoverInputSchema' {} a -> s {serviceExecutionRole = a} :: DiscoverInputSchema)

instance Core.AWSRequest DiscoverInputSchema where
  type
    AWSResponse DiscoverInputSchema =
      DiscoverInputSchemaResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DiscoverInputSchemaResponse'
            Prelude.<$> ( x Core..?> "ParsedInputRecords"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> ( x Core..?> "ProcessedInputRecords"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> ( x Core..?> "RawInputRecords"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "InputSchema")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DiscoverInputSchema where
  hashWithSalt _salt DiscoverInputSchema' {..} =
    _salt `Prelude.hashWithSalt` s3Configuration
      `Prelude.hashWithSalt` inputProcessingConfiguration
      `Prelude.hashWithSalt` inputStartingPositionConfiguration
      `Prelude.hashWithSalt` resourceARN
      `Prelude.hashWithSalt` serviceExecutionRole

instance Prelude.NFData DiscoverInputSchema where
  rnf DiscoverInputSchema' {..} =
    Prelude.rnf s3Configuration
      `Prelude.seq` Prelude.rnf inputProcessingConfiguration
      `Prelude.seq` Prelude.rnf inputStartingPositionConfiguration
      `Prelude.seq` Prelude.rnf resourceARN
      `Prelude.seq` Prelude.rnf serviceExecutionRole

instance Core.ToHeaders DiscoverInputSchema where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "KinesisAnalytics_20180523.DiscoverInputSchema" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DiscoverInputSchema where
  toJSON DiscoverInputSchema' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("S3Configuration" Core..=)
              Prelude.<$> s3Configuration,
            ("InputProcessingConfiguration" Core..=)
              Prelude.<$> inputProcessingConfiguration,
            ("InputStartingPositionConfiguration" Core..=)
              Prelude.<$> inputStartingPositionConfiguration,
            ("ResourceARN" Core..=) Prelude.<$> resourceARN,
            Prelude.Just
              ( "ServiceExecutionRole"
                  Core..= serviceExecutionRole
              )
          ]
      )

instance Core.ToPath DiscoverInputSchema where
  toPath = Prelude.const "/"

instance Core.ToQuery DiscoverInputSchema where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDiscoverInputSchemaResponse' smart constructor.
data DiscoverInputSchemaResponse = DiscoverInputSchemaResponse'
  { -- | An array of elements, where each element corresponds to a row in a
    -- stream record (a stream record can have more than one row).
    parsedInputRecords :: Prelude.Maybe [[Prelude.Text]],
    -- | The stream data that was modified by the processor specified in the
    -- @InputProcessingConfiguration@ parameter.
    processedInputRecords :: Prelude.Maybe [Prelude.Text],
    -- | The raw stream data that was sampled to infer the schema.
    rawInputRecords :: Prelude.Maybe [Prelude.Text],
    -- | The schema inferred from the streaming source. It identifies the format
    -- of the data in the streaming source and how each data element maps to
    -- corresponding columns in the in-application stream that you can create.
    inputSchema :: Prelude.Maybe SourceSchema,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DiscoverInputSchemaResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'parsedInputRecords', 'discoverInputSchemaResponse_parsedInputRecords' - An array of elements, where each element corresponds to a row in a
-- stream record (a stream record can have more than one row).
--
-- 'processedInputRecords', 'discoverInputSchemaResponse_processedInputRecords' - The stream data that was modified by the processor specified in the
-- @InputProcessingConfiguration@ parameter.
--
-- 'rawInputRecords', 'discoverInputSchemaResponse_rawInputRecords' - The raw stream data that was sampled to infer the schema.
--
-- 'inputSchema', 'discoverInputSchemaResponse_inputSchema' - The schema inferred from the streaming source. It identifies the format
-- of the data in the streaming source and how each data element maps to
-- corresponding columns in the in-application stream that you can create.
--
-- 'httpStatus', 'discoverInputSchemaResponse_httpStatus' - The response's http status code.
newDiscoverInputSchemaResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DiscoverInputSchemaResponse
newDiscoverInputSchemaResponse pHttpStatus_ =
  DiscoverInputSchemaResponse'
    { parsedInputRecords =
        Prelude.Nothing,
      processedInputRecords = Prelude.Nothing,
      rawInputRecords = Prelude.Nothing,
      inputSchema = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An array of elements, where each element corresponds to a row in a
-- stream record (a stream record can have more than one row).
discoverInputSchemaResponse_parsedInputRecords :: Lens.Lens' DiscoverInputSchemaResponse (Prelude.Maybe [[Prelude.Text]])
discoverInputSchemaResponse_parsedInputRecords = Lens.lens (\DiscoverInputSchemaResponse' {parsedInputRecords} -> parsedInputRecords) (\s@DiscoverInputSchemaResponse' {} a -> s {parsedInputRecords = a} :: DiscoverInputSchemaResponse) Prelude.. Lens.mapping Lens.coerced

-- | The stream data that was modified by the processor specified in the
-- @InputProcessingConfiguration@ parameter.
discoverInputSchemaResponse_processedInputRecords :: Lens.Lens' DiscoverInputSchemaResponse (Prelude.Maybe [Prelude.Text])
discoverInputSchemaResponse_processedInputRecords = Lens.lens (\DiscoverInputSchemaResponse' {processedInputRecords} -> processedInputRecords) (\s@DiscoverInputSchemaResponse' {} a -> s {processedInputRecords = a} :: DiscoverInputSchemaResponse) Prelude.. Lens.mapping Lens.coerced

-- | The raw stream data that was sampled to infer the schema.
discoverInputSchemaResponse_rawInputRecords :: Lens.Lens' DiscoverInputSchemaResponse (Prelude.Maybe [Prelude.Text])
discoverInputSchemaResponse_rawInputRecords = Lens.lens (\DiscoverInputSchemaResponse' {rawInputRecords} -> rawInputRecords) (\s@DiscoverInputSchemaResponse' {} a -> s {rawInputRecords = a} :: DiscoverInputSchemaResponse) Prelude.. Lens.mapping Lens.coerced

-- | The schema inferred from the streaming source. It identifies the format
-- of the data in the streaming source and how each data element maps to
-- corresponding columns in the in-application stream that you can create.
discoverInputSchemaResponse_inputSchema :: Lens.Lens' DiscoverInputSchemaResponse (Prelude.Maybe SourceSchema)
discoverInputSchemaResponse_inputSchema = Lens.lens (\DiscoverInputSchemaResponse' {inputSchema} -> inputSchema) (\s@DiscoverInputSchemaResponse' {} a -> s {inputSchema = a} :: DiscoverInputSchemaResponse)

-- | The response's http status code.
discoverInputSchemaResponse_httpStatus :: Lens.Lens' DiscoverInputSchemaResponse Prelude.Int
discoverInputSchemaResponse_httpStatus = Lens.lens (\DiscoverInputSchemaResponse' {httpStatus} -> httpStatus) (\s@DiscoverInputSchemaResponse' {} a -> s {httpStatus = a} :: DiscoverInputSchemaResponse)

instance Prelude.NFData DiscoverInputSchemaResponse where
  rnf DiscoverInputSchemaResponse' {..} =
    Prelude.rnf parsedInputRecords
      `Prelude.seq` Prelude.rnf processedInputRecords
      `Prelude.seq` Prelude.rnf rawInputRecords
      `Prelude.seq` Prelude.rnf inputSchema
      `Prelude.seq` Prelude.rnf httpStatus
