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
-- Module      : Amazonka.ImageBuilder.CreateDistributionConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new distribution configuration. Distribution configurations
-- define and configure the outputs of your pipeline.
module Amazonka.ImageBuilder.CreateDistributionConfiguration
  ( -- * Creating a Request
    CreateDistributionConfiguration (..),
    newCreateDistributionConfiguration,

    -- * Request Lenses
    createDistributionConfiguration_tags,
    createDistributionConfiguration_description,
    createDistributionConfiguration_name,
    createDistributionConfiguration_distributions,
    createDistributionConfiguration_clientToken,

    -- * Destructuring the Response
    CreateDistributionConfigurationResponse (..),
    newCreateDistributionConfigurationResponse,

    -- * Response Lenses
    createDistributionConfigurationResponse_clientToken,
    createDistributionConfigurationResponse_requestId,
    createDistributionConfigurationResponse_distributionConfigurationArn,
    createDistributionConfigurationResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.ImageBuilder.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateDistributionConfiguration' smart constructor.
data CreateDistributionConfiguration = CreateDistributionConfiguration'
  { -- | The tags of the distribution configuration.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The description of the distribution configuration.
    description :: Prelude.Maybe Prelude.Text,
    -- | The name of the distribution configuration.
    name :: Prelude.Text,
    -- | The distributions of the distribution configuration.
    distributions :: [Distribution],
    -- | The idempotency token of the distribution configuration.
    clientToken :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateDistributionConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createDistributionConfiguration_tags' - The tags of the distribution configuration.
--
-- 'description', 'createDistributionConfiguration_description' - The description of the distribution configuration.
--
-- 'name', 'createDistributionConfiguration_name' - The name of the distribution configuration.
--
-- 'distributions', 'createDistributionConfiguration_distributions' - The distributions of the distribution configuration.
--
-- 'clientToken', 'createDistributionConfiguration_clientToken' - The idempotency token of the distribution configuration.
newCreateDistributionConfiguration ::
  -- | 'name'
  Prelude.Text ->
  -- | 'clientToken'
  Prelude.Text ->
  CreateDistributionConfiguration
newCreateDistributionConfiguration
  pName_
  pClientToken_ =
    CreateDistributionConfiguration'
      { tags =
          Prelude.Nothing,
        description = Prelude.Nothing,
        name = pName_,
        distributions = Prelude.mempty,
        clientToken = pClientToken_
      }

-- | The tags of the distribution configuration.
createDistributionConfiguration_tags :: Lens.Lens' CreateDistributionConfiguration (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createDistributionConfiguration_tags = Lens.lens (\CreateDistributionConfiguration' {tags} -> tags) (\s@CreateDistributionConfiguration' {} a -> s {tags = a} :: CreateDistributionConfiguration) Prelude.. Lens.mapping Lens.coerced

-- | The description of the distribution configuration.
createDistributionConfiguration_description :: Lens.Lens' CreateDistributionConfiguration (Prelude.Maybe Prelude.Text)
createDistributionConfiguration_description = Lens.lens (\CreateDistributionConfiguration' {description} -> description) (\s@CreateDistributionConfiguration' {} a -> s {description = a} :: CreateDistributionConfiguration)

-- | The name of the distribution configuration.
createDistributionConfiguration_name :: Lens.Lens' CreateDistributionConfiguration Prelude.Text
createDistributionConfiguration_name = Lens.lens (\CreateDistributionConfiguration' {name} -> name) (\s@CreateDistributionConfiguration' {} a -> s {name = a} :: CreateDistributionConfiguration)

-- | The distributions of the distribution configuration.
createDistributionConfiguration_distributions :: Lens.Lens' CreateDistributionConfiguration [Distribution]
createDistributionConfiguration_distributions = Lens.lens (\CreateDistributionConfiguration' {distributions} -> distributions) (\s@CreateDistributionConfiguration' {} a -> s {distributions = a} :: CreateDistributionConfiguration) Prelude.. Lens.coerced

-- | The idempotency token of the distribution configuration.
createDistributionConfiguration_clientToken :: Lens.Lens' CreateDistributionConfiguration Prelude.Text
createDistributionConfiguration_clientToken = Lens.lens (\CreateDistributionConfiguration' {clientToken} -> clientToken) (\s@CreateDistributionConfiguration' {} a -> s {clientToken = a} :: CreateDistributionConfiguration)

instance
  Core.AWSRequest
    CreateDistributionConfiguration
  where
  type
    AWSResponse CreateDistributionConfiguration =
      CreateDistributionConfigurationResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateDistributionConfigurationResponse'
            Prelude.<$> (x Core..?> "clientToken")
            Prelude.<*> (x Core..?> "requestId")
            Prelude.<*> (x Core..?> "distributionConfigurationArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    CreateDistributionConfiguration
  where
  hashWithSalt
    _salt
    CreateDistributionConfiguration' {..} =
      _salt `Prelude.hashWithSalt` tags
        `Prelude.hashWithSalt` description
        `Prelude.hashWithSalt` name
        `Prelude.hashWithSalt` distributions
        `Prelude.hashWithSalt` clientToken

instance
  Prelude.NFData
    CreateDistributionConfiguration
  where
  rnf CreateDistributionConfiguration' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf distributions
      `Prelude.seq` Prelude.rnf clientToken

instance
  Core.ToHeaders
    CreateDistributionConfiguration
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateDistributionConfiguration where
  toJSON CreateDistributionConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("tags" Core..=) Prelude.<$> tags,
            ("description" Core..=) Prelude.<$> description,
            Prelude.Just ("name" Core..= name),
            Prelude.Just ("distributions" Core..= distributions),
            Prelude.Just ("clientToken" Core..= clientToken)
          ]
      )

instance Core.ToPath CreateDistributionConfiguration where
  toPath =
    Prelude.const "/CreateDistributionConfiguration"

instance Core.ToQuery CreateDistributionConfiguration where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateDistributionConfigurationResponse' smart constructor.
data CreateDistributionConfigurationResponse = CreateDistributionConfigurationResponse'
  { -- | The idempotency token used to make this request idempotent.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | The request ID that uniquely identifies this request.
    requestId :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the distribution configuration that
    -- was created by this request.
    distributionConfigurationArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateDistributionConfigurationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientToken', 'createDistributionConfigurationResponse_clientToken' - The idempotency token used to make this request idempotent.
--
-- 'requestId', 'createDistributionConfigurationResponse_requestId' - The request ID that uniquely identifies this request.
--
-- 'distributionConfigurationArn', 'createDistributionConfigurationResponse_distributionConfigurationArn' - The Amazon Resource Name (ARN) of the distribution configuration that
-- was created by this request.
--
-- 'httpStatus', 'createDistributionConfigurationResponse_httpStatus' - The response's http status code.
newCreateDistributionConfigurationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateDistributionConfigurationResponse
newCreateDistributionConfigurationResponse
  pHttpStatus_ =
    CreateDistributionConfigurationResponse'
      { clientToken =
          Prelude.Nothing,
        requestId = Prelude.Nothing,
        distributionConfigurationArn =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The idempotency token used to make this request idempotent.
createDistributionConfigurationResponse_clientToken :: Lens.Lens' CreateDistributionConfigurationResponse (Prelude.Maybe Prelude.Text)
createDistributionConfigurationResponse_clientToken = Lens.lens (\CreateDistributionConfigurationResponse' {clientToken} -> clientToken) (\s@CreateDistributionConfigurationResponse' {} a -> s {clientToken = a} :: CreateDistributionConfigurationResponse)

-- | The request ID that uniquely identifies this request.
createDistributionConfigurationResponse_requestId :: Lens.Lens' CreateDistributionConfigurationResponse (Prelude.Maybe Prelude.Text)
createDistributionConfigurationResponse_requestId = Lens.lens (\CreateDistributionConfigurationResponse' {requestId} -> requestId) (\s@CreateDistributionConfigurationResponse' {} a -> s {requestId = a} :: CreateDistributionConfigurationResponse)

-- | The Amazon Resource Name (ARN) of the distribution configuration that
-- was created by this request.
createDistributionConfigurationResponse_distributionConfigurationArn :: Lens.Lens' CreateDistributionConfigurationResponse (Prelude.Maybe Prelude.Text)
createDistributionConfigurationResponse_distributionConfigurationArn = Lens.lens (\CreateDistributionConfigurationResponse' {distributionConfigurationArn} -> distributionConfigurationArn) (\s@CreateDistributionConfigurationResponse' {} a -> s {distributionConfigurationArn = a} :: CreateDistributionConfigurationResponse)

-- | The response's http status code.
createDistributionConfigurationResponse_httpStatus :: Lens.Lens' CreateDistributionConfigurationResponse Prelude.Int
createDistributionConfigurationResponse_httpStatus = Lens.lens (\CreateDistributionConfigurationResponse' {httpStatus} -> httpStatus) (\s@CreateDistributionConfigurationResponse' {} a -> s {httpStatus = a} :: CreateDistributionConfigurationResponse)

instance
  Prelude.NFData
    CreateDistributionConfigurationResponse
  where
  rnf CreateDistributionConfigurationResponse' {..} =
    Prelude.rnf clientToken
      `Prelude.seq` Prelude.rnf requestId
      `Prelude.seq` Prelude.rnf distributionConfigurationArn
      `Prelude.seq` Prelude.rnf httpStatus
