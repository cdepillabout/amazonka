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
-- Module      : Amazonka.MQ.DescribeConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the specified configuration.
module Amazonka.MQ.DescribeConfiguration
  ( -- * Creating a Request
    DescribeConfiguration (..),
    newDescribeConfiguration,

    -- * Request Lenses
    describeConfiguration_configurationId,

    -- * Destructuring the Response
    DescribeConfigurationResponse (..),
    newDescribeConfigurationResponse,

    -- * Response Lenses
    describeConfigurationResponse_tags,
    describeConfigurationResponse_latestRevision,
    describeConfigurationResponse_name,
    describeConfigurationResponse_engineType,
    describeConfigurationResponse_created,
    describeConfigurationResponse_arn,
    describeConfigurationResponse_id,
    describeConfigurationResponse_description,
    describeConfigurationResponse_authenticationStrategy,
    describeConfigurationResponse_engineVersion,
    describeConfigurationResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MQ.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDescribeConfiguration' smart constructor.
data DescribeConfiguration = DescribeConfiguration'
  { -- | The unique ID that Amazon MQ generates for the configuration.
    configurationId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'configurationId', 'describeConfiguration_configurationId' - The unique ID that Amazon MQ generates for the configuration.
newDescribeConfiguration ::
  -- | 'configurationId'
  Prelude.Text ->
  DescribeConfiguration
newDescribeConfiguration pConfigurationId_ =
  DescribeConfiguration'
    { configurationId =
        pConfigurationId_
    }

-- | The unique ID that Amazon MQ generates for the configuration.
describeConfiguration_configurationId :: Lens.Lens' DescribeConfiguration Prelude.Text
describeConfiguration_configurationId = Lens.lens (\DescribeConfiguration' {configurationId} -> configurationId) (\s@DescribeConfiguration' {} a -> s {configurationId = a} :: DescribeConfiguration)

instance Core.AWSRequest DescribeConfiguration where
  type
    AWSResponse DescribeConfiguration =
      DescribeConfigurationResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeConfigurationResponse'
            Prelude.<$> (x Core..?> "tags" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "latestRevision")
            Prelude.<*> (x Core..?> "name")
            Prelude.<*> (x Core..?> "engineType")
            Prelude.<*> (x Core..?> "created")
            Prelude.<*> (x Core..?> "arn")
            Prelude.<*> (x Core..?> "id")
            Prelude.<*> (x Core..?> "description")
            Prelude.<*> (x Core..?> "authenticationStrategy")
            Prelude.<*> (x Core..?> "engineVersion")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeConfiguration where
  hashWithSalt _salt DescribeConfiguration' {..} =
    _salt `Prelude.hashWithSalt` configurationId

instance Prelude.NFData DescribeConfiguration where
  rnf DescribeConfiguration' {..} =
    Prelude.rnf configurationId

instance Core.ToHeaders DescribeConfiguration where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DescribeConfiguration where
  toPath DescribeConfiguration' {..} =
    Prelude.mconcat
      ["/v1/configurations/", Core.toBS configurationId]

instance Core.ToQuery DescribeConfiguration where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeConfigurationResponse' smart constructor.
data DescribeConfigurationResponse = DescribeConfigurationResponse'
  { -- | The list of all tags associated with this configuration.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | Required. The latest revision of the configuration.
    latestRevision :: Prelude.Maybe ConfigurationRevision,
    -- | Required. The name of the configuration. This value can contain only
    -- alphanumeric characters, dashes, periods, underscores, and tildes (- . _
    -- ~). This value must be 1-150 characters long.
    name :: Prelude.Maybe Prelude.Text,
    -- | Required. The type of broker engine. Currently, Amazon MQ supports
    -- ACTIVEMQ and RABBITMQ.
    engineType :: Prelude.Maybe EngineType,
    -- | Required. The date and time of the configuration revision.
    created :: Prelude.Maybe Core.POSIX,
    -- | Required. The ARN of the configuration.
    arn :: Prelude.Maybe Prelude.Text,
    -- | Required. The unique ID that Amazon MQ generates for the configuration.
    id :: Prelude.Maybe Prelude.Text,
    -- | Required. The description of the configuration.
    description :: Prelude.Maybe Prelude.Text,
    -- | Optional. The authentication strategy associated with the configuration.
    -- The default is SIMPLE.
    authenticationStrategy :: Prelude.Maybe AuthenticationStrategy,
    -- | Required. The broker engine\'s version. For a list of supported engine
    -- versions, see,
    -- <https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/broker-engine.html Supported engines>.
    engineVersion :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeConfigurationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'describeConfigurationResponse_tags' - The list of all tags associated with this configuration.
--
-- 'latestRevision', 'describeConfigurationResponse_latestRevision' - Required. The latest revision of the configuration.
--
-- 'name', 'describeConfigurationResponse_name' - Required. The name of the configuration. This value can contain only
-- alphanumeric characters, dashes, periods, underscores, and tildes (- . _
-- ~). This value must be 1-150 characters long.
--
-- 'engineType', 'describeConfigurationResponse_engineType' - Required. The type of broker engine. Currently, Amazon MQ supports
-- ACTIVEMQ and RABBITMQ.
--
-- 'created', 'describeConfigurationResponse_created' - Required. The date and time of the configuration revision.
--
-- 'arn', 'describeConfigurationResponse_arn' - Required. The ARN of the configuration.
--
-- 'id', 'describeConfigurationResponse_id' - Required. The unique ID that Amazon MQ generates for the configuration.
--
-- 'description', 'describeConfigurationResponse_description' - Required. The description of the configuration.
--
-- 'authenticationStrategy', 'describeConfigurationResponse_authenticationStrategy' - Optional. The authentication strategy associated with the configuration.
-- The default is SIMPLE.
--
-- 'engineVersion', 'describeConfigurationResponse_engineVersion' - Required. The broker engine\'s version. For a list of supported engine
-- versions, see,
-- <https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/broker-engine.html Supported engines>.
--
-- 'httpStatus', 'describeConfigurationResponse_httpStatus' - The response's http status code.
newDescribeConfigurationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeConfigurationResponse
newDescribeConfigurationResponse pHttpStatus_ =
  DescribeConfigurationResponse'
    { tags =
        Prelude.Nothing,
      latestRevision = Prelude.Nothing,
      name = Prelude.Nothing,
      engineType = Prelude.Nothing,
      created = Prelude.Nothing,
      arn = Prelude.Nothing,
      id = Prelude.Nothing,
      description = Prelude.Nothing,
      authenticationStrategy = Prelude.Nothing,
      engineVersion = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The list of all tags associated with this configuration.
describeConfigurationResponse_tags :: Lens.Lens' DescribeConfigurationResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
describeConfigurationResponse_tags = Lens.lens (\DescribeConfigurationResponse' {tags} -> tags) (\s@DescribeConfigurationResponse' {} a -> s {tags = a} :: DescribeConfigurationResponse) Prelude.. Lens.mapping Lens.coerced

-- | Required. The latest revision of the configuration.
describeConfigurationResponse_latestRevision :: Lens.Lens' DescribeConfigurationResponse (Prelude.Maybe ConfigurationRevision)
describeConfigurationResponse_latestRevision = Lens.lens (\DescribeConfigurationResponse' {latestRevision} -> latestRevision) (\s@DescribeConfigurationResponse' {} a -> s {latestRevision = a} :: DescribeConfigurationResponse)

-- | Required. The name of the configuration. This value can contain only
-- alphanumeric characters, dashes, periods, underscores, and tildes (- . _
-- ~). This value must be 1-150 characters long.
describeConfigurationResponse_name :: Lens.Lens' DescribeConfigurationResponse (Prelude.Maybe Prelude.Text)
describeConfigurationResponse_name = Lens.lens (\DescribeConfigurationResponse' {name} -> name) (\s@DescribeConfigurationResponse' {} a -> s {name = a} :: DescribeConfigurationResponse)

-- | Required. The type of broker engine. Currently, Amazon MQ supports
-- ACTIVEMQ and RABBITMQ.
describeConfigurationResponse_engineType :: Lens.Lens' DescribeConfigurationResponse (Prelude.Maybe EngineType)
describeConfigurationResponse_engineType = Lens.lens (\DescribeConfigurationResponse' {engineType} -> engineType) (\s@DescribeConfigurationResponse' {} a -> s {engineType = a} :: DescribeConfigurationResponse)

-- | Required. The date and time of the configuration revision.
describeConfigurationResponse_created :: Lens.Lens' DescribeConfigurationResponse (Prelude.Maybe Prelude.UTCTime)
describeConfigurationResponse_created = Lens.lens (\DescribeConfigurationResponse' {created} -> created) (\s@DescribeConfigurationResponse' {} a -> s {created = a} :: DescribeConfigurationResponse) Prelude.. Lens.mapping Core._Time

-- | Required. The ARN of the configuration.
describeConfigurationResponse_arn :: Lens.Lens' DescribeConfigurationResponse (Prelude.Maybe Prelude.Text)
describeConfigurationResponse_arn = Lens.lens (\DescribeConfigurationResponse' {arn} -> arn) (\s@DescribeConfigurationResponse' {} a -> s {arn = a} :: DescribeConfigurationResponse)

-- | Required. The unique ID that Amazon MQ generates for the configuration.
describeConfigurationResponse_id :: Lens.Lens' DescribeConfigurationResponse (Prelude.Maybe Prelude.Text)
describeConfigurationResponse_id = Lens.lens (\DescribeConfigurationResponse' {id} -> id) (\s@DescribeConfigurationResponse' {} a -> s {id = a} :: DescribeConfigurationResponse)

-- | Required. The description of the configuration.
describeConfigurationResponse_description :: Lens.Lens' DescribeConfigurationResponse (Prelude.Maybe Prelude.Text)
describeConfigurationResponse_description = Lens.lens (\DescribeConfigurationResponse' {description} -> description) (\s@DescribeConfigurationResponse' {} a -> s {description = a} :: DescribeConfigurationResponse)

-- | Optional. The authentication strategy associated with the configuration.
-- The default is SIMPLE.
describeConfigurationResponse_authenticationStrategy :: Lens.Lens' DescribeConfigurationResponse (Prelude.Maybe AuthenticationStrategy)
describeConfigurationResponse_authenticationStrategy = Lens.lens (\DescribeConfigurationResponse' {authenticationStrategy} -> authenticationStrategy) (\s@DescribeConfigurationResponse' {} a -> s {authenticationStrategy = a} :: DescribeConfigurationResponse)

-- | Required. The broker engine\'s version. For a list of supported engine
-- versions, see,
-- <https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/broker-engine.html Supported engines>.
describeConfigurationResponse_engineVersion :: Lens.Lens' DescribeConfigurationResponse (Prelude.Maybe Prelude.Text)
describeConfigurationResponse_engineVersion = Lens.lens (\DescribeConfigurationResponse' {engineVersion} -> engineVersion) (\s@DescribeConfigurationResponse' {} a -> s {engineVersion = a} :: DescribeConfigurationResponse)

-- | The response's http status code.
describeConfigurationResponse_httpStatus :: Lens.Lens' DescribeConfigurationResponse Prelude.Int
describeConfigurationResponse_httpStatus = Lens.lens (\DescribeConfigurationResponse' {httpStatus} -> httpStatus) (\s@DescribeConfigurationResponse' {} a -> s {httpStatus = a} :: DescribeConfigurationResponse)

instance Prelude.NFData DescribeConfigurationResponse where
  rnf DescribeConfigurationResponse' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf latestRevision
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf engineType
      `Prelude.seq` Prelude.rnf created
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf id
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf authenticationStrategy
      `Prelude.seq` Prelude.rnf engineVersion
      `Prelude.seq` Prelude.rnf httpStatus
