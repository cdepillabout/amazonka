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
-- Module      : Amazonka.SageMaker.DescribeEndpointConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the description of an endpoint configuration created using the
-- @CreateEndpointConfig@ API.
module Amazonka.SageMaker.DescribeEndpointConfig
  ( -- * Creating a Request
    DescribeEndpointConfig (..),
    newDescribeEndpointConfig,

    -- * Request Lenses
    describeEndpointConfig_endpointConfigName,

    -- * Destructuring the Response
    DescribeEndpointConfigResponse (..),
    newDescribeEndpointConfigResponse,

    -- * Response Lenses
    describeEndpointConfigResponse_asyncInferenceConfig,
    describeEndpointConfigResponse_dataCaptureConfig,
    describeEndpointConfigResponse_kmsKeyId,
    describeEndpointConfigResponse_httpStatus,
    describeEndpointConfigResponse_endpointConfigName,
    describeEndpointConfigResponse_endpointConfigArn,
    describeEndpointConfigResponse_productionVariants,
    describeEndpointConfigResponse_creationTime,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.SageMaker.Types

-- | /See:/ 'newDescribeEndpointConfig' smart constructor.
data DescribeEndpointConfig = DescribeEndpointConfig'
  { -- | The name of the endpoint configuration.
    endpointConfigName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeEndpointConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'endpointConfigName', 'describeEndpointConfig_endpointConfigName' - The name of the endpoint configuration.
newDescribeEndpointConfig ::
  -- | 'endpointConfigName'
  Prelude.Text ->
  DescribeEndpointConfig
newDescribeEndpointConfig pEndpointConfigName_ =
  DescribeEndpointConfig'
    { endpointConfigName =
        pEndpointConfigName_
    }

-- | The name of the endpoint configuration.
describeEndpointConfig_endpointConfigName :: Lens.Lens' DescribeEndpointConfig Prelude.Text
describeEndpointConfig_endpointConfigName = Lens.lens (\DescribeEndpointConfig' {endpointConfigName} -> endpointConfigName) (\s@DescribeEndpointConfig' {} a -> s {endpointConfigName = a} :: DescribeEndpointConfig)

instance Core.AWSRequest DescribeEndpointConfig where
  type
    AWSResponse DescribeEndpointConfig =
      DescribeEndpointConfigResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeEndpointConfigResponse'
            Prelude.<$> (x Core..?> "AsyncInferenceConfig")
            Prelude.<*> (x Core..?> "DataCaptureConfig")
            Prelude.<*> (x Core..?> "KmsKeyId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "EndpointConfigName")
            Prelude.<*> (x Core..:> "EndpointConfigArn")
            Prelude.<*> (x Core..:> "ProductionVariants")
            Prelude.<*> (x Core..:> "CreationTime")
      )

instance Prelude.Hashable DescribeEndpointConfig where
  hashWithSalt _salt DescribeEndpointConfig' {..} =
    _salt `Prelude.hashWithSalt` endpointConfigName

instance Prelude.NFData DescribeEndpointConfig where
  rnf DescribeEndpointConfig' {..} =
    Prelude.rnf endpointConfigName

instance Core.ToHeaders DescribeEndpointConfig where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "SageMaker.DescribeEndpointConfig" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeEndpointConfig where
  toJSON DescribeEndpointConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("EndpointConfigName" Core..= endpointConfigName)
          ]
      )

instance Core.ToPath DescribeEndpointConfig where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeEndpointConfig where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeEndpointConfigResponse' smart constructor.
data DescribeEndpointConfigResponse = DescribeEndpointConfigResponse'
  { -- | Returns the description of an endpoint configuration created using the
    -- <https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateEndpointConfig.html CreateEndpointConfig>
    -- API.
    asyncInferenceConfig :: Prelude.Maybe AsyncInferenceConfig,
    dataCaptureConfig :: Prelude.Maybe DataCaptureConfig,
    -- | Amazon Web Services KMS key ID Amazon SageMaker uses to encrypt data
    -- when storing it on the ML storage volume attached to the instance.
    kmsKeyId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | Name of the SageMaker endpoint configuration.
    endpointConfigName :: Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the endpoint configuration.
    endpointConfigArn :: Prelude.Text,
    -- | An array of @ProductionVariant@ objects, one for each model that you
    -- want to host at this endpoint.
    productionVariants :: Prelude.NonEmpty ProductionVariant,
    -- | A timestamp that shows when the endpoint configuration was created.
    creationTime :: Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeEndpointConfigResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'asyncInferenceConfig', 'describeEndpointConfigResponse_asyncInferenceConfig' - Returns the description of an endpoint configuration created using the
-- <https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateEndpointConfig.html CreateEndpointConfig>
-- API.
--
-- 'dataCaptureConfig', 'describeEndpointConfigResponse_dataCaptureConfig' - Undocumented member.
--
-- 'kmsKeyId', 'describeEndpointConfigResponse_kmsKeyId' - Amazon Web Services KMS key ID Amazon SageMaker uses to encrypt data
-- when storing it on the ML storage volume attached to the instance.
--
-- 'httpStatus', 'describeEndpointConfigResponse_httpStatus' - The response's http status code.
--
-- 'endpointConfigName', 'describeEndpointConfigResponse_endpointConfigName' - Name of the SageMaker endpoint configuration.
--
-- 'endpointConfigArn', 'describeEndpointConfigResponse_endpointConfigArn' - The Amazon Resource Name (ARN) of the endpoint configuration.
--
-- 'productionVariants', 'describeEndpointConfigResponse_productionVariants' - An array of @ProductionVariant@ objects, one for each model that you
-- want to host at this endpoint.
--
-- 'creationTime', 'describeEndpointConfigResponse_creationTime' - A timestamp that shows when the endpoint configuration was created.
newDescribeEndpointConfigResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'endpointConfigName'
  Prelude.Text ->
  -- | 'endpointConfigArn'
  Prelude.Text ->
  -- | 'productionVariants'
  Prelude.NonEmpty ProductionVariant ->
  -- | 'creationTime'
  Prelude.UTCTime ->
  DescribeEndpointConfigResponse
newDescribeEndpointConfigResponse
  pHttpStatus_
  pEndpointConfigName_
  pEndpointConfigArn_
  pProductionVariants_
  pCreationTime_ =
    DescribeEndpointConfigResponse'
      { asyncInferenceConfig =
          Prelude.Nothing,
        dataCaptureConfig = Prelude.Nothing,
        kmsKeyId = Prelude.Nothing,
        httpStatus = pHttpStatus_,
        endpointConfigName = pEndpointConfigName_,
        endpointConfigArn = pEndpointConfigArn_,
        productionVariants =
          Lens.coerced Lens.# pProductionVariants_,
        creationTime =
          Core._Time Lens.# pCreationTime_
      }

-- | Returns the description of an endpoint configuration created using the
-- <https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateEndpointConfig.html CreateEndpointConfig>
-- API.
describeEndpointConfigResponse_asyncInferenceConfig :: Lens.Lens' DescribeEndpointConfigResponse (Prelude.Maybe AsyncInferenceConfig)
describeEndpointConfigResponse_asyncInferenceConfig = Lens.lens (\DescribeEndpointConfigResponse' {asyncInferenceConfig} -> asyncInferenceConfig) (\s@DescribeEndpointConfigResponse' {} a -> s {asyncInferenceConfig = a} :: DescribeEndpointConfigResponse)

-- | Undocumented member.
describeEndpointConfigResponse_dataCaptureConfig :: Lens.Lens' DescribeEndpointConfigResponse (Prelude.Maybe DataCaptureConfig)
describeEndpointConfigResponse_dataCaptureConfig = Lens.lens (\DescribeEndpointConfigResponse' {dataCaptureConfig} -> dataCaptureConfig) (\s@DescribeEndpointConfigResponse' {} a -> s {dataCaptureConfig = a} :: DescribeEndpointConfigResponse)

-- | Amazon Web Services KMS key ID Amazon SageMaker uses to encrypt data
-- when storing it on the ML storage volume attached to the instance.
describeEndpointConfigResponse_kmsKeyId :: Lens.Lens' DescribeEndpointConfigResponse (Prelude.Maybe Prelude.Text)
describeEndpointConfigResponse_kmsKeyId = Lens.lens (\DescribeEndpointConfigResponse' {kmsKeyId} -> kmsKeyId) (\s@DescribeEndpointConfigResponse' {} a -> s {kmsKeyId = a} :: DescribeEndpointConfigResponse)

-- | The response's http status code.
describeEndpointConfigResponse_httpStatus :: Lens.Lens' DescribeEndpointConfigResponse Prelude.Int
describeEndpointConfigResponse_httpStatus = Lens.lens (\DescribeEndpointConfigResponse' {httpStatus} -> httpStatus) (\s@DescribeEndpointConfigResponse' {} a -> s {httpStatus = a} :: DescribeEndpointConfigResponse)

-- | Name of the SageMaker endpoint configuration.
describeEndpointConfigResponse_endpointConfigName :: Lens.Lens' DescribeEndpointConfigResponse Prelude.Text
describeEndpointConfigResponse_endpointConfigName = Lens.lens (\DescribeEndpointConfigResponse' {endpointConfigName} -> endpointConfigName) (\s@DescribeEndpointConfigResponse' {} a -> s {endpointConfigName = a} :: DescribeEndpointConfigResponse)

-- | The Amazon Resource Name (ARN) of the endpoint configuration.
describeEndpointConfigResponse_endpointConfigArn :: Lens.Lens' DescribeEndpointConfigResponse Prelude.Text
describeEndpointConfigResponse_endpointConfigArn = Lens.lens (\DescribeEndpointConfigResponse' {endpointConfigArn} -> endpointConfigArn) (\s@DescribeEndpointConfigResponse' {} a -> s {endpointConfigArn = a} :: DescribeEndpointConfigResponse)

-- | An array of @ProductionVariant@ objects, one for each model that you
-- want to host at this endpoint.
describeEndpointConfigResponse_productionVariants :: Lens.Lens' DescribeEndpointConfigResponse (Prelude.NonEmpty ProductionVariant)
describeEndpointConfigResponse_productionVariants = Lens.lens (\DescribeEndpointConfigResponse' {productionVariants} -> productionVariants) (\s@DescribeEndpointConfigResponse' {} a -> s {productionVariants = a} :: DescribeEndpointConfigResponse) Prelude.. Lens.coerced

-- | A timestamp that shows when the endpoint configuration was created.
describeEndpointConfigResponse_creationTime :: Lens.Lens' DescribeEndpointConfigResponse Prelude.UTCTime
describeEndpointConfigResponse_creationTime = Lens.lens (\DescribeEndpointConfigResponse' {creationTime} -> creationTime) (\s@DescribeEndpointConfigResponse' {} a -> s {creationTime = a} :: DescribeEndpointConfigResponse) Prelude.. Core._Time

instance
  Prelude.NFData
    DescribeEndpointConfigResponse
  where
  rnf DescribeEndpointConfigResponse' {..} =
    Prelude.rnf asyncInferenceConfig
      `Prelude.seq` Prelude.rnf dataCaptureConfig
      `Prelude.seq` Prelude.rnf kmsKeyId
      `Prelude.seq` Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf endpointConfigName
      `Prelude.seq` Prelude.rnf endpointConfigArn
      `Prelude.seq` Prelude.rnf productionVariants
      `Prelude.seq` Prelude.rnf creationTime
