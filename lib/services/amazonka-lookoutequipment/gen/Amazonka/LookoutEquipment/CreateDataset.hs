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
-- Module      : Amazonka.LookoutEquipment.CreateDataset
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a container for a collection of data being ingested for
-- analysis. The dataset contains the metadata describing where the data is
-- and what the data actually looks like. In other words, it contains the
-- location of the data source, the data schema, and other information. A
-- dataset also contains any tags associated with the ingested data.
module Amazonka.LookoutEquipment.CreateDataset
  ( -- * Creating a Request
    CreateDataset (..),
    newCreateDataset,

    -- * Request Lenses
    createDataset_tags,
    createDataset_serverSideKmsKeyId,
    createDataset_datasetSchema,
    createDataset_datasetName,
    createDataset_clientToken,

    -- * Destructuring the Response
    CreateDatasetResponse (..),
    newCreateDatasetResponse,

    -- * Response Lenses
    createDatasetResponse_datasetName,
    createDatasetResponse_status,
    createDatasetResponse_datasetArn,
    createDatasetResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.LookoutEquipment.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateDataset' smart constructor.
data CreateDataset = CreateDataset'
  { -- | Any tags associated with the ingested data described in the dataset.
    tags :: Prelude.Maybe [Tag],
    -- | Provides the identifier of the KMS key used to encrypt dataset data by
    -- Amazon Lookout for Equipment.
    serverSideKmsKeyId :: Prelude.Maybe Prelude.Text,
    -- | A JSON description of the data that is in each time series dataset,
    -- including names, column names, and data types.
    datasetSchema :: Prelude.Maybe DatasetSchema,
    -- | The name of the dataset being created.
    datasetName :: Prelude.Text,
    -- | A unique identifier for the request. If you do not set the client
    -- request token, Amazon Lookout for Equipment generates one.
    clientToken :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateDataset' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createDataset_tags' - Any tags associated with the ingested data described in the dataset.
--
-- 'serverSideKmsKeyId', 'createDataset_serverSideKmsKeyId' - Provides the identifier of the KMS key used to encrypt dataset data by
-- Amazon Lookout for Equipment.
--
-- 'datasetSchema', 'createDataset_datasetSchema' - A JSON description of the data that is in each time series dataset,
-- including names, column names, and data types.
--
-- 'datasetName', 'createDataset_datasetName' - The name of the dataset being created.
--
-- 'clientToken', 'createDataset_clientToken' - A unique identifier for the request. If you do not set the client
-- request token, Amazon Lookout for Equipment generates one.
newCreateDataset ::
  -- | 'datasetName'
  Prelude.Text ->
  -- | 'clientToken'
  Prelude.Text ->
  CreateDataset
newCreateDataset pDatasetName_ pClientToken_ =
  CreateDataset'
    { tags = Prelude.Nothing,
      serverSideKmsKeyId = Prelude.Nothing,
      datasetSchema = Prelude.Nothing,
      datasetName = pDatasetName_,
      clientToken = pClientToken_
    }

-- | Any tags associated with the ingested data described in the dataset.
createDataset_tags :: Lens.Lens' CreateDataset (Prelude.Maybe [Tag])
createDataset_tags = Lens.lens (\CreateDataset' {tags} -> tags) (\s@CreateDataset' {} a -> s {tags = a} :: CreateDataset) Prelude.. Lens.mapping Lens.coerced

-- | Provides the identifier of the KMS key used to encrypt dataset data by
-- Amazon Lookout for Equipment.
createDataset_serverSideKmsKeyId :: Lens.Lens' CreateDataset (Prelude.Maybe Prelude.Text)
createDataset_serverSideKmsKeyId = Lens.lens (\CreateDataset' {serverSideKmsKeyId} -> serverSideKmsKeyId) (\s@CreateDataset' {} a -> s {serverSideKmsKeyId = a} :: CreateDataset)

-- | A JSON description of the data that is in each time series dataset,
-- including names, column names, and data types.
createDataset_datasetSchema :: Lens.Lens' CreateDataset (Prelude.Maybe DatasetSchema)
createDataset_datasetSchema = Lens.lens (\CreateDataset' {datasetSchema} -> datasetSchema) (\s@CreateDataset' {} a -> s {datasetSchema = a} :: CreateDataset)

-- | The name of the dataset being created.
createDataset_datasetName :: Lens.Lens' CreateDataset Prelude.Text
createDataset_datasetName = Lens.lens (\CreateDataset' {datasetName} -> datasetName) (\s@CreateDataset' {} a -> s {datasetName = a} :: CreateDataset)

-- | A unique identifier for the request. If you do not set the client
-- request token, Amazon Lookout for Equipment generates one.
createDataset_clientToken :: Lens.Lens' CreateDataset Prelude.Text
createDataset_clientToken = Lens.lens (\CreateDataset' {clientToken} -> clientToken) (\s@CreateDataset' {} a -> s {clientToken = a} :: CreateDataset)

instance Core.AWSRequest CreateDataset where
  type
    AWSResponse CreateDataset =
      CreateDatasetResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateDatasetResponse'
            Prelude.<$> (x Core..?> "DatasetName")
            Prelude.<*> (x Core..?> "Status")
            Prelude.<*> (x Core..?> "DatasetArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateDataset where
  hashWithSalt _salt CreateDataset' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` serverSideKmsKeyId
      `Prelude.hashWithSalt` datasetSchema
      `Prelude.hashWithSalt` datasetName
      `Prelude.hashWithSalt` clientToken

instance Prelude.NFData CreateDataset where
  rnf CreateDataset' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf serverSideKmsKeyId
      `Prelude.seq` Prelude.rnf datasetSchema
      `Prelude.seq` Prelude.rnf datasetName
      `Prelude.seq` Prelude.rnf clientToken

instance Core.ToHeaders CreateDataset where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSLookoutEquipmentFrontendService.CreateDataset" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateDataset where
  toJSON CreateDataset' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Tags" Core..=) Prelude.<$> tags,
            ("ServerSideKmsKeyId" Core..=)
              Prelude.<$> serverSideKmsKeyId,
            ("DatasetSchema" Core..=) Prelude.<$> datasetSchema,
            Prelude.Just ("DatasetName" Core..= datasetName),
            Prelude.Just ("ClientToken" Core..= clientToken)
          ]
      )

instance Core.ToPath CreateDataset where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateDataset where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateDatasetResponse' smart constructor.
data CreateDatasetResponse = CreateDatasetResponse'
  { -- | The name of the dataset being created.
    datasetName :: Prelude.Maybe Prelude.Text,
    -- | Indicates the status of the @CreateDataset@ operation.
    status :: Prelude.Maybe DatasetStatus,
    -- | The Amazon Resource Name (ARN) of the dataset being created.
    datasetArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateDatasetResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'datasetName', 'createDatasetResponse_datasetName' - The name of the dataset being created.
--
-- 'status', 'createDatasetResponse_status' - Indicates the status of the @CreateDataset@ operation.
--
-- 'datasetArn', 'createDatasetResponse_datasetArn' - The Amazon Resource Name (ARN) of the dataset being created.
--
-- 'httpStatus', 'createDatasetResponse_httpStatus' - The response's http status code.
newCreateDatasetResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateDatasetResponse
newCreateDatasetResponse pHttpStatus_ =
  CreateDatasetResponse'
    { datasetName =
        Prelude.Nothing,
      status = Prelude.Nothing,
      datasetArn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The name of the dataset being created.
createDatasetResponse_datasetName :: Lens.Lens' CreateDatasetResponse (Prelude.Maybe Prelude.Text)
createDatasetResponse_datasetName = Lens.lens (\CreateDatasetResponse' {datasetName} -> datasetName) (\s@CreateDatasetResponse' {} a -> s {datasetName = a} :: CreateDatasetResponse)

-- | Indicates the status of the @CreateDataset@ operation.
createDatasetResponse_status :: Lens.Lens' CreateDatasetResponse (Prelude.Maybe DatasetStatus)
createDatasetResponse_status = Lens.lens (\CreateDatasetResponse' {status} -> status) (\s@CreateDatasetResponse' {} a -> s {status = a} :: CreateDatasetResponse)

-- | The Amazon Resource Name (ARN) of the dataset being created.
createDatasetResponse_datasetArn :: Lens.Lens' CreateDatasetResponse (Prelude.Maybe Prelude.Text)
createDatasetResponse_datasetArn = Lens.lens (\CreateDatasetResponse' {datasetArn} -> datasetArn) (\s@CreateDatasetResponse' {} a -> s {datasetArn = a} :: CreateDatasetResponse)

-- | The response's http status code.
createDatasetResponse_httpStatus :: Lens.Lens' CreateDatasetResponse Prelude.Int
createDatasetResponse_httpStatus = Lens.lens (\CreateDatasetResponse' {httpStatus} -> httpStatus) (\s@CreateDatasetResponse' {} a -> s {httpStatus = a} :: CreateDatasetResponse)

instance Prelude.NFData CreateDatasetResponse where
  rnf CreateDatasetResponse' {..} =
    Prelude.rnf datasetName
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf datasetArn
      `Prelude.seq` Prelude.rnf httpStatus
