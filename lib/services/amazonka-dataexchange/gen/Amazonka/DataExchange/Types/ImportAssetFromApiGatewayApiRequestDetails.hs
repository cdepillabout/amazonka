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
-- Module      : Amazonka.DataExchange.Types.ImportAssetFromApiGatewayApiRequestDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DataExchange.Types.ImportAssetFromApiGatewayApiRequestDetails where

import qualified Amazonka.Core as Core
import Amazonka.DataExchange.Types.ProtocolType
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The request details.
--
-- /See:/ 'newImportAssetFromApiGatewayApiRequestDetails' smart constructor.
data ImportAssetFromApiGatewayApiRequestDetails = ImportAssetFromApiGatewayApiRequestDetails'
  { -- | The API Gateway API key.
    apiKey :: Prelude.Maybe Prelude.Text,
    -- | The API description. Markdown supported.
    apiDescription :: Prelude.Maybe Prelude.Text,
    -- | The API name.
    apiName :: Prelude.Text,
    -- | The protocol type.
    protocolType :: ProtocolType,
    -- | The Base64-encoded MD5 hash of the OpenAPI 3.0 JSON API specification
    -- file. It is used to ensure the integrity of the file.
    apiSpecificationMd5Hash :: Prelude.Text,
    -- | The API stage.
    stage :: Prelude.Text,
    -- | The data set ID.
    dataSetId :: Prelude.Text,
    -- | The API Gateway API ID.
    apiId :: Prelude.Text,
    -- | The revision ID.
    revisionId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ImportAssetFromApiGatewayApiRequestDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'apiKey', 'importAssetFromApiGatewayApiRequestDetails_apiKey' - The API Gateway API key.
--
-- 'apiDescription', 'importAssetFromApiGatewayApiRequestDetails_apiDescription' - The API description. Markdown supported.
--
-- 'apiName', 'importAssetFromApiGatewayApiRequestDetails_apiName' - The API name.
--
-- 'protocolType', 'importAssetFromApiGatewayApiRequestDetails_protocolType' - The protocol type.
--
-- 'apiSpecificationMd5Hash', 'importAssetFromApiGatewayApiRequestDetails_apiSpecificationMd5Hash' - The Base64-encoded MD5 hash of the OpenAPI 3.0 JSON API specification
-- file. It is used to ensure the integrity of the file.
--
-- 'stage', 'importAssetFromApiGatewayApiRequestDetails_stage' - The API stage.
--
-- 'dataSetId', 'importAssetFromApiGatewayApiRequestDetails_dataSetId' - The data set ID.
--
-- 'apiId', 'importAssetFromApiGatewayApiRequestDetails_apiId' - The API Gateway API ID.
--
-- 'revisionId', 'importAssetFromApiGatewayApiRequestDetails_revisionId' - The revision ID.
newImportAssetFromApiGatewayApiRequestDetails ::
  -- | 'apiName'
  Prelude.Text ->
  -- | 'protocolType'
  ProtocolType ->
  -- | 'apiSpecificationMd5Hash'
  Prelude.Text ->
  -- | 'stage'
  Prelude.Text ->
  -- | 'dataSetId'
  Prelude.Text ->
  -- | 'apiId'
  Prelude.Text ->
  -- | 'revisionId'
  Prelude.Text ->
  ImportAssetFromApiGatewayApiRequestDetails
newImportAssetFromApiGatewayApiRequestDetails
  pApiName_
  pProtocolType_
  pApiSpecificationMd5Hash_
  pStage_
  pDataSetId_
  pApiId_
  pRevisionId_ =
    ImportAssetFromApiGatewayApiRequestDetails'
      { apiKey =
          Prelude.Nothing,
        apiDescription =
          Prelude.Nothing,
        apiName = pApiName_,
        protocolType = pProtocolType_,
        apiSpecificationMd5Hash =
          pApiSpecificationMd5Hash_,
        stage = pStage_,
        dataSetId = pDataSetId_,
        apiId = pApiId_,
        revisionId = pRevisionId_
      }

-- | The API Gateway API key.
importAssetFromApiGatewayApiRequestDetails_apiKey :: Lens.Lens' ImportAssetFromApiGatewayApiRequestDetails (Prelude.Maybe Prelude.Text)
importAssetFromApiGatewayApiRequestDetails_apiKey = Lens.lens (\ImportAssetFromApiGatewayApiRequestDetails' {apiKey} -> apiKey) (\s@ImportAssetFromApiGatewayApiRequestDetails' {} a -> s {apiKey = a} :: ImportAssetFromApiGatewayApiRequestDetails)

-- | The API description. Markdown supported.
importAssetFromApiGatewayApiRequestDetails_apiDescription :: Lens.Lens' ImportAssetFromApiGatewayApiRequestDetails (Prelude.Maybe Prelude.Text)
importAssetFromApiGatewayApiRequestDetails_apiDescription = Lens.lens (\ImportAssetFromApiGatewayApiRequestDetails' {apiDescription} -> apiDescription) (\s@ImportAssetFromApiGatewayApiRequestDetails' {} a -> s {apiDescription = a} :: ImportAssetFromApiGatewayApiRequestDetails)

-- | The API name.
importAssetFromApiGatewayApiRequestDetails_apiName :: Lens.Lens' ImportAssetFromApiGatewayApiRequestDetails Prelude.Text
importAssetFromApiGatewayApiRequestDetails_apiName = Lens.lens (\ImportAssetFromApiGatewayApiRequestDetails' {apiName} -> apiName) (\s@ImportAssetFromApiGatewayApiRequestDetails' {} a -> s {apiName = a} :: ImportAssetFromApiGatewayApiRequestDetails)

-- | The protocol type.
importAssetFromApiGatewayApiRequestDetails_protocolType :: Lens.Lens' ImportAssetFromApiGatewayApiRequestDetails ProtocolType
importAssetFromApiGatewayApiRequestDetails_protocolType = Lens.lens (\ImportAssetFromApiGatewayApiRequestDetails' {protocolType} -> protocolType) (\s@ImportAssetFromApiGatewayApiRequestDetails' {} a -> s {protocolType = a} :: ImportAssetFromApiGatewayApiRequestDetails)

-- | The Base64-encoded MD5 hash of the OpenAPI 3.0 JSON API specification
-- file. It is used to ensure the integrity of the file.
importAssetFromApiGatewayApiRequestDetails_apiSpecificationMd5Hash :: Lens.Lens' ImportAssetFromApiGatewayApiRequestDetails Prelude.Text
importAssetFromApiGatewayApiRequestDetails_apiSpecificationMd5Hash = Lens.lens (\ImportAssetFromApiGatewayApiRequestDetails' {apiSpecificationMd5Hash} -> apiSpecificationMd5Hash) (\s@ImportAssetFromApiGatewayApiRequestDetails' {} a -> s {apiSpecificationMd5Hash = a} :: ImportAssetFromApiGatewayApiRequestDetails)

-- | The API stage.
importAssetFromApiGatewayApiRequestDetails_stage :: Lens.Lens' ImportAssetFromApiGatewayApiRequestDetails Prelude.Text
importAssetFromApiGatewayApiRequestDetails_stage = Lens.lens (\ImportAssetFromApiGatewayApiRequestDetails' {stage} -> stage) (\s@ImportAssetFromApiGatewayApiRequestDetails' {} a -> s {stage = a} :: ImportAssetFromApiGatewayApiRequestDetails)

-- | The data set ID.
importAssetFromApiGatewayApiRequestDetails_dataSetId :: Lens.Lens' ImportAssetFromApiGatewayApiRequestDetails Prelude.Text
importAssetFromApiGatewayApiRequestDetails_dataSetId = Lens.lens (\ImportAssetFromApiGatewayApiRequestDetails' {dataSetId} -> dataSetId) (\s@ImportAssetFromApiGatewayApiRequestDetails' {} a -> s {dataSetId = a} :: ImportAssetFromApiGatewayApiRequestDetails)

-- | The API Gateway API ID.
importAssetFromApiGatewayApiRequestDetails_apiId :: Lens.Lens' ImportAssetFromApiGatewayApiRequestDetails Prelude.Text
importAssetFromApiGatewayApiRequestDetails_apiId = Lens.lens (\ImportAssetFromApiGatewayApiRequestDetails' {apiId} -> apiId) (\s@ImportAssetFromApiGatewayApiRequestDetails' {} a -> s {apiId = a} :: ImportAssetFromApiGatewayApiRequestDetails)

-- | The revision ID.
importAssetFromApiGatewayApiRequestDetails_revisionId :: Lens.Lens' ImportAssetFromApiGatewayApiRequestDetails Prelude.Text
importAssetFromApiGatewayApiRequestDetails_revisionId = Lens.lens (\ImportAssetFromApiGatewayApiRequestDetails' {revisionId} -> revisionId) (\s@ImportAssetFromApiGatewayApiRequestDetails' {} a -> s {revisionId = a} :: ImportAssetFromApiGatewayApiRequestDetails)

instance
  Prelude.Hashable
    ImportAssetFromApiGatewayApiRequestDetails
  where
  hashWithSalt
    _salt
    ImportAssetFromApiGatewayApiRequestDetails' {..} =
      _salt `Prelude.hashWithSalt` apiKey
        `Prelude.hashWithSalt` apiDescription
        `Prelude.hashWithSalt` apiName
        `Prelude.hashWithSalt` protocolType
        `Prelude.hashWithSalt` apiSpecificationMd5Hash
        `Prelude.hashWithSalt` stage
        `Prelude.hashWithSalt` dataSetId
        `Prelude.hashWithSalt` apiId
        `Prelude.hashWithSalt` revisionId

instance
  Prelude.NFData
    ImportAssetFromApiGatewayApiRequestDetails
  where
  rnf ImportAssetFromApiGatewayApiRequestDetails' {..} =
    Prelude.rnf apiKey
      `Prelude.seq` Prelude.rnf apiDescription
      `Prelude.seq` Prelude.rnf apiName
      `Prelude.seq` Prelude.rnf protocolType
      `Prelude.seq` Prelude.rnf apiSpecificationMd5Hash
      `Prelude.seq` Prelude.rnf stage
      `Prelude.seq` Prelude.rnf dataSetId
      `Prelude.seq` Prelude.rnf apiId
      `Prelude.seq` Prelude.rnf revisionId

instance
  Core.ToJSON
    ImportAssetFromApiGatewayApiRequestDetails
  where
  toJSON
    ImportAssetFromApiGatewayApiRequestDetails' {..} =
      Core.object
        ( Prelude.catMaybes
            [ ("ApiKey" Core..=) Prelude.<$> apiKey,
              ("ApiDescription" Core..=)
                Prelude.<$> apiDescription,
              Prelude.Just ("ApiName" Core..= apiName),
              Prelude.Just ("ProtocolType" Core..= protocolType),
              Prelude.Just
                ( "ApiSpecificationMd5Hash"
                    Core..= apiSpecificationMd5Hash
                ),
              Prelude.Just ("Stage" Core..= stage),
              Prelude.Just ("DataSetId" Core..= dataSetId),
              Prelude.Just ("ApiId" Core..= apiId),
              Prelude.Just ("RevisionId" Core..= revisionId)
            ]
        )
