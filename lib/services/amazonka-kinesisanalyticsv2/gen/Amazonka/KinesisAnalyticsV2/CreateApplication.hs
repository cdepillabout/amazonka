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
-- Module      : Amazonka.KinesisAnalyticsV2.CreateApplication
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Kinesis Data Analytics application. For information about
-- creating a Kinesis Data Analytics application, see
-- <https://docs.aws.amazon.com/kinesisanalytics/latest/java/getting-started.html Creating an Application>.
module Amazonka.KinesisAnalyticsV2.CreateApplication
  ( -- * Creating a Request
    CreateApplication (..),
    newCreateApplication,

    -- * Request Lenses
    createApplication_tags,
    createApplication_applicationMode,
    createApplication_applicationConfiguration,
    createApplication_cloudWatchLoggingOptions,
    createApplication_applicationDescription,
    createApplication_applicationName,
    createApplication_runtimeEnvironment,
    createApplication_serviceExecutionRole,

    -- * Destructuring the Response
    CreateApplicationResponse (..),
    newCreateApplicationResponse,

    -- * Response Lenses
    createApplicationResponse_httpStatus,
    createApplicationResponse_applicationDetail,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.KinesisAnalyticsV2.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateApplication' smart constructor.
data CreateApplication = CreateApplication'
  { -- | A list of one or more tags to assign to the application. A tag is a
    -- key-value pair that identifies an application. Note that the maximum
    -- number of application tags includes system tags. The maximum number of
    -- user-defined application tags is 50. For more information, see
    -- <https://docs.aws.amazon.com/kinesisanalytics/latest/java/how-tagging.html Using Tagging>.
    tags :: Prelude.Maybe (Prelude.NonEmpty Tag),
    -- | Use the @STREAMING@ mode to create a Kinesis Data Analytics Studio
    -- notebook. To create a Kinesis Data Analytics Studio notebook, use the
    -- @INTERACTIVE@ mode.
    applicationMode :: Prelude.Maybe ApplicationMode,
    -- | Use this parameter to configure the application.
    applicationConfiguration :: Prelude.Maybe ApplicationConfiguration,
    -- | Use this parameter to configure an Amazon CloudWatch log stream to
    -- monitor application configuration errors.
    cloudWatchLoggingOptions :: Prelude.Maybe [CloudWatchLoggingOption],
    -- | A summary description of the application.
    applicationDescription :: Prelude.Maybe Prelude.Text,
    -- | The name of your application (for example, @sample-app@).
    applicationName :: Prelude.Text,
    -- | The runtime environment for the application (@SQL-1_0@, @FLINK-1_6@,
    -- @FLINK-1_8@, or @FLINK-1_11@).
    runtimeEnvironment :: RuntimeEnvironment,
    -- | The IAM role used by the application to access Kinesis data streams,
    -- Kinesis Data Firehose delivery streams, Amazon S3 objects, and other
    -- external resources.
    serviceExecutionRole :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateApplication' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createApplication_tags' - A list of one or more tags to assign to the application. A tag is a
-- key-value pair that identifies an application. Note that the maximum
-- number of application tags includes system tags. The maximum number of
-- user-defined application tags is 50. For more information, see
-- <https://docs.aws.amazon.com/kinesisanalytics/latest/java/how-tagging.html Using Tagging>.
--
-- 'applicationMode', 'createApplication_applicationMode' - Use the @STREAMING@ mode to create a Kinesis Data Analytics Studio
-- notebook. To create a Kinesis Data Analytics Studio notebook, use the
-- @INTERACTIVE@ mode.
--
-- 'applicationConfiguration', 'createApplication_applicationConfiguration' - Use this parameter to configure the application.
--
-- 'cloudWatchLoggingOptions', 'createApplication_cloudWatchLoggingOptions' - Use this parameter to configure an Amazon CloudWatch log stream to
-- monitor application configuration errors.
--
-- 'applicationDescription', 'createApplication_applicationDescription' - A summary description of the application.
--
-- 'applicationName', 'createApplication_applicationName' - The name of your application (for example, @sample-app@).
--
-- 'runtimeEnvironment', 'createApplication_runtimeEnvironment' - The runtime environment for the application (@SQL-1_0@, @FLINK-1_6@,
-- @FLINK-1_8@, or @FLINK-1_11@).
--
-- 'serviceExecutionRole', 'createApplication_serviceExecutionRole' - The IAM role used by the application to access Kinesis data streams,
-- Kinesis Data Firehose delivery streams, Amazon S3 objects, and other
-- external resources.
newCreateApplication ::
  -- | 'applicationName'
  Prelude.Text ->
  -- | 'runtimeEnvironment'
  RuntimeEnvironment ->
  -- | 'serviceExecutionRole'
  Prelude.Text ->
  CreateApplication
newCreateApplication
  pApplicationName_
  pRuntimeEnvironment_
  pServiceExecutionRole_ =
    CreateApplication'
      { tags = Prelude.Nothing,
        applicationMode = Prelude.Nothing,
        applicationConfiguration = Prelude.Nothing,
        cloudWatchLoggingOptions = Prelude.Nothing,
        applicationDescription = Prelude.Nothing,
        applicationName = pApplicationName_,
        runtimeEnvironment = pRuntimeEnvironment_,
        serviceExecutionRole = pServiceExecutionRole_
      }

-- | A list of one or more tags to assign to the application. A tag is a
-- key-value pair that identifies an application. Note that the maximum
-- number of application tags includes system tags. The maximum number of
-- user-defined application tags is 50. For more information, see
-- <https://docs.aws.amazon.com/kinesisanalytics/latest/java/how-tagging.html Using Tagging>.
createApplication_tags :: Lens.Lens' CreateApplication (Prelude.Maybe (Prelude.NonEmpty Tag))
createApplication_tags = Lens.lens (\CreateApplication' {tags} -> tags) (\s@CreateApplication' {} a -> s {tags = a} :: CreateApplication) Prelude.. Lens.mapping Lens.coerced

-- | Use the @STREAMING@ mode to create a Kinesis Data Analytics Studio
-- notebook. To create a Kinesis Data Analytics Studio notebook, use the
-- @INTERACTIVE@ mode.
createApplication_applicationMode :: Lens.Lens' CreateApplication (Prelude.Maybe ApplicationMode)
createApplication_applicationMode = Lens.lens (\CreateApplication' {applicationMode} -> applicationMode) (\s@CreateApplication' {} a -> s {applicationMode = a} :: CreateApplication)

-- | Use this parameter to configure the application.
createApplication_applicationConfiguration :: Lens.Lens' CreateApplication (Prelude.Maybe ApplicationConfiguration)
createApplication_applicationConfiguration = Lens.lens (\CreateApplication' {applicationConfiguration} -> applicationConfiguration) (\s@CreateApplication' {} a -> s {applicationConfiguration = a} :: CreateApplication)

-- | Use this parameter to configure an Amazon CloudWatch log stream to
-- monitor application configuration errors.
createApplication_cloudWatchLoggingOptions :: Lens.Lens' CreateApplication (Prelude.Maybe [CloudWatchLoggingOption])
createApplication_cloudWatchLoggingOptions = Lens.lens (\CreateApplication' {cloudWatchLoggingOptions} -> cloudWatchLoggingOptions) (\s@CreateApplication' {} a -> s {cloudWatchLoggingOptions = a} :: CreateApplication) Prelude.. Lens.mapping Lens.coerced

-- | A summary description of the application.
createApplication_applicationDescription :: Lens.Lens' CreateApplication (Prelude.Maybe Prelude.Text)
createApplication_applicationDescription = Lens.lens (\CreateApplication' {applicationDescription} -> applicationDescription) (\s@CreateApplication' {} a -> s {applicationDescription = a} :: CreateApplication)

-- | The name of your application (for example, @sample-app@).
createApplication_applicationName :: Lens.Lens' CreateApplication Prelude.Text
createApplication_applicationName = Lens.lens (\CreateApplication' {applicationName} -> applicationName) (\s@CreateApplication' {} a -> s {applicationName = a} :: CreateApplication)

-- | The runtime environment for the application (@SQL-1_0@, @FLINK-1_6@,
-- @FLINK-1_8@, or @FLINK-1_11@).
createApplication_runtimeEnvironment :: Lens.Lens' CreateApplication RuntimeEnvironment
createApplication_runtimeEnvironment = Lens.lens (\CreateApplication' {runtimeEnvironment} -> runtimeEnvironment) (\s@CreateApplication' {} a -> s {runtimeEnvironment = a} :: CreateApplication)

-- | The IAM role used by the application to access Kinesis data streams,
-- Kinesis Data Firehose delivery streams, Amazon S3 objects, and other
-- external resources.
createApplication_serviceExecutionRole :: Lens.Lens' CreateApplication Prelude.Text
createApplication_serviceExecutionRole = Lens.lens (\CreateApplication' {serviceExecutionRole} -> serviceExecutionRole) (\s@CreateApplication' {} a -> s {serviceExecutionRole = a} :: CreateApplication)

instance Core.AWSRequest CreateApplication where
  type
    AWSResponse CreateApplication =
      CreateApplicationResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateApplicationResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "ApplicationDetail")
      )

instance Prelude.Hashable CreateApplication where
  hashWithSalt _salt CreateApplication' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` applicationMode
      `Prelude.hashWithSalt` applicationConfiguration
      `Prelude.hashWithSalt` cloudWatchLoggingOptions
      `Prelude.hashWithSalt` applicationDescription
      `Prelude.hashWithSalt` applicationName
      `Prelude.hashWithSalt` runtimeEnvironment
      `Prelude.hashWithSalt` serviceExecutionRole

instance Prelude.NFData CreateApplication where
  rnf CreateApplication' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf applicationMode
      `Prelude.seq` Prelude.rnf applicationConfiguration
      `Prelude.seq` Prelude.rnf cloudWatchLoggingOptions
      `Prelude.seq` Prelude.rnf applicationDescription
      `Prelude.seq` Prelude.rnf applicationName
      `Prelude.seq` Prelude.rnf runtimeEnvironment
      `Prelude.seq` Prelude.rnf serviceExecutionRole

instance Core.ToHeaders CreateApplication where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "KinesisAnalytics_20180523.CreateApplication" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateApplication where
  toJSON CreateApplication' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Tags" Core..=) Prelude.<$> tags,
            ("ApplicationMode" Core..=)
              Prelude.<$> applicationMode,
            ("ApplicationConfiguration" Core..=)
              Prelude.<$> applicationConfiguration,
            ("CloudWatchLoggingOptions" Core..=)
              Prelude.<$> cloudWatchLoggingOptions,
            ("ApplicationDescription" Core..=)
              Prelude.<$> applicationDescription,
            Prelude.Just
              ("ApplicationName" Core..= applicationName),
            Prelude.Just
              ("RuntimeEnvironment" Core..= runtimeEnvironment),
            Prelude.Just
              ( "ServiceExecutionRole"
                  Core..= serviceExecutionRole
              )
          ]
      )

instance Core.ToPath CreateApplication where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateApplication where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateApplicationResponse' smart constructor.
data CreateApplicationResponse = CreateApplicationResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | In response to your @CreateApplication@ request, Kinesis Data Analytics
    -- returns a response with details of the application it created.
    applicationDetail :: ApplicationDetail
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateApplicationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'createApplicationResponse_httpStatus' - The response's http status code.
--
-- 'applicationDetail', 'createApplicationResponse_applicationDetail' - In response to your @CreateApplication@ request, Kinesis Data Analytics
-- returns a response with details of the application it created.
newCreateApplicationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'applicationDetail'
  ApplicationDetail ->
  CreateApplicationResponse
newCreateApplicationResponse
  pHttpStatus_
  pApplicationDetail_ =
    CreateApplicationResponse'
      { httpStatus =
          pHttpStatus_,
        applicationDetail = pApplicationDetail_
      }

-- | The response's http status code.
createApplicationResponse_httpStatus :: Lens.Lens' CreateApplicationResponse Prelude.Int
createApplicationResponse_httpStatus = Lens.lens (\CreateApplicationResponse' {httpStatus} -> httpStatus) (\s@CreateApplicationResponse' {} a -> s {httpStatus = a} :: CreateApplicationResponse)

-- | In response to your @CreateApplication@ request, Kinesis Data Analytics
-- returns a response with details of the application it created.
createApplicationResponse_applicationDetail :: Lens.Lens' CreateApplicationResponse ApplicationDetail
createApplicationResponse_applicationDetail = Lens.lens (\CreateApplicationResponse' {applicationDetail} -> applicationDetail) (\s@CreateApplicationResponse' {} a -> s {applicationDetail = a} :: CreateApplicationResponse)

instance Prelude.NFData CreateApplicationResponse where
  rnf CreateApplicationResponse' {..} =
    Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf applicationDetail
