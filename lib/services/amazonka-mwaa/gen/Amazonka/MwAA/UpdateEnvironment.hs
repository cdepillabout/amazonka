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
-- Module      : Amazonka.MwAA.UpdateEnvironment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an Amazon Managed Workflows for Apache Airflow (MWAA)
-- environment.
module Amazonka.MwAA.UpdateEnvironment
  ( -- * Creating a Request
    UpdateEnvironment (..),
    newUpdateEnvironment,

    -- * Request Lenses
    updateEnvironment_schedulers,
    updateEnvironment_pluginsS3ObjectVersion,
    updateEnvironment_requirementsS3Path,
    updateEnvironment_pluginsS3Path,
    updateEnvironment_airflowVersion,
    updateEnvironment_dagS3Path,
    updateEnvironment_sourceBucketArn,
    updateEnvironment_airflowConfigurationOptions,
    updateEnvironment_networkConfiguration,
    updateEnvironment_minWorkers,
    updateEnvironment_environmentClass,
    updateEnvironment_weeklyMaintenanceWindowStart,
    updateEnvironment_requirementsS3ObjectVersion,
    updateEnvironment_executionRoleArn,
    updateEnvironment_webserverAccessMode,
    updateEnvironment_maxWorkers,
    updateEnvironment_loggingConfiguration,
    updateEnvironment_name,

    -- * Destructuring the Response
    UpdateEnvironmentResponse (..),
    newUpdateEnvironmentResponse,

    -- * Response Lenses
    updateEnvironmentResponse_arn,
    updateEnvironmentResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MwAA.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateEnvironment' smart constructor.
data UpdateEnvironment = UpdateEnvironment'
  { -- | The number of Apache Airflow schedulers to run in your Amazon MWAA
    -- environment.
    schedulers :: Prelude.Maybe Prelude.Int,
    -- | The version of the plugins.zip file on your Amazon S3 bucket. A version
    -- must be specified each time a plugins.zip file is updated. To learn
    -- more, see
    -- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/versioning-workflows.html How S3 Versioning works>.
    pluginsS3ObjectVersion :: Prelude.Maybe Prelude.Text,
    -- | The relative path to the @requirements.txt@ file on your Amazon S3
    -- bucket. For example, @requirements.txt@. If specified, then a file
    -- version is required. To learn more, see
    -- <https://docs.aws.amazon.com/mwaa/latest/userguide/working-dags-dependencies.html Installing Python dependencies>.
    requirementsS3Path :: Prelude.Maybe Prelude.Text,
    -- | The relative path to the @plugins.zip@ file on your Amazon S3 bucket.
    -- For example, @plugins.zip@. If specified, then the plugins.zip version
    -- is required. To learn more, see
    -- <https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-import-plugins.html Installing custom plugins>.
    pluginsS3Path :: Prelude.Maybe Prelude.Text,
    -- | The Apache Airflow version for your environment. If no value is
    -- specified, defaults to the latest version. Valid values: @1.10.12@,
    -- @2.0.2@, and @2.2.2@.
    airflowVersion :: Prelude.Maybe Prelude.Text,
    -- | The relative path to the DAGs folder on your Amazon S3 bucket. For
    -- example, @dags@. To learn more, see
    -- <https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-folder.html Adding or updating DAGs>.
    dagS3Path :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the Amazon S3 bucket where your DAG
    -- code and supporting files are stored. For example,
    -- @arn:aws:s3:::my-airflow-bucket-unique-name@. To learn more, see
    -- <https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-s3-bucket.html Create an Amazon S3 bucket for Amazon MWAA>.
    sourceBucketArn :: Prelude.Maybe Prelude.Text,
    -- | A list of key-value pairs containing the Apache Airflow configuration
    -- options you want to attach to your environment. To learn more, see
    -- <https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-env-variables.html Apache Airflow configuration options>.
    airflowConfigurationOptions :: Prelude.Maybe (Core.Sensitive (Prelude.HashMap Prelude.Text (Core.Sensitive Prelude.Text))),
    -- | The VPC networking components used to secure and enable network traffic
    -- between the Amazon Web Services resources for your environment. To learn
    -- more, see
    -- <https://docs.aws.amazon.com/mwaa/latest/userguide/networking-about.html About networking on Amazon MWAA>.
    networkConfiguration :: Prelude.Maybe UpdateNetworkConfigurationInput,
    -- | The minimum number of workers that you want to run in your environment.
    -- MWAA scales the number of Apache Airflow workers up to the number you
    -- specify in the @MaxWorkers@ field. When there are no more tasks running,
    -- and no more in the queue, MWAA disposes of the extra workers leaving the
    -- worker count you specify in the @MinWorkers@ field. For example, @2@.
    minWorkers :: Prelude.Maybe Prelude.Natural,
    -- | The environment class type. Valid values: @mw1.small@, @mw1.medium@,
    -- @mw1.large@. To learn more, see
    -- <https://docs.aws.amazon.com/mwaa/latest/userguide/environment-class.html Amazon MWAA environment class>.
    environmentClass :: Prelude.Maybe Prelude.Text,
    -- | The day and time of the week in Coordinated Universal Time (UTC) 24-hour
    -- standard time to start weekly maintenance updates of your environment in
    -- the following format: @DAY:HH:MM@. For example: @TUE:03:30@. You can
    -- specify a start time in 30 minute increments only.
    weeklyMaintenanceWindowStart :: Prelude.Maybe Prelude.Text,
    -- | The version of the requirements.txt file on your Amazon S3 bucket. A
    -- version must be specified each time a requirements.txt file is updated.
    -- To learn more, see
    -- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/versioning-workflows.html How S3 Versioning works>.
    requirementsS3ObjectVersion :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the execution role in IAM that allows
    -- MWAA to access Amazon Web Services resources in your environment. For
    -- example, @arn:aws:iam::123456789:role\/my-execution-role@. To learn
    -- more, see
    -- <https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-create-role.html Amazon MWAA Execution role>.
    executionRoleArn :: Prelude.Maybe Prelude.Text,
    -- | The Apache Airflow /Web server/ access mode. To learn more, see
    -- <https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-networking.html Apache Airflow access modes>.
    webserverAccessMode :: Prelude.Maybe WebserverAccessMode,
    -- | The maximum number of workers that you want to run in your environment.
    -- MWAA scales the number of Apache Airflow workers up to the number you
    -- specify in the @MaxWorkers@ field. For example, @20@. When there are no
    -- more tasks running, and no more in the queue, MWAA disposes of the extra
    -- workers leaving the one worker that is included with your environment,
    -- or the number you specify in @MinWorkers@.
    maxWorkers :: Prelude.Maybe Prelude.Natural,
    -- | The Apache Airflow log types to send to CloudWatch Logs.
    loggingConfiguration :: Prelude.Maybe LoggingConfigurationInput,
    -- | The name of your Amazon MWAA environment. For example,
    -- @MyMWAAEnvironment@.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateEnvironment' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'schedulers', 'updateEnvironment_schedulers' - The number of Apache Airflow schedulers to run in your Amazon MWAA
-- environment.
--
-- 'pluginsS3ObjectVersion', 'updateEnvironment_pluginsS3ObjectVersion' - The version of the plugins.zip file on your Amazon S3 bucket. A version
-- must be specified each time a plugins.zip file is updated. To learn
-- more, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/versioning-workflows.html How S3 Versioning works>.
--
-- 'requirementsS3Path', 'updateEnvironment_requirementsS3Path' - The relative path to the @requirements.txt@ file on your Amazon S3
-- bucket. For example, @requirements.txt@. If specified, then a file
-- version is required. To learn more, see
-- <https://docs.aws.amazon.com/mwaa/latest/userguide/working-dags-dependencies.html Installing Python dependencies>.
--
-- 'pluginsS3Path', 'updateEnvironment_pluginsS3Path' - The relative path to the @plugins.zip@ file on your Amazon S3 bucket.
-- For example, @plugins.zip@. If specified, then the plugins.zip version
-- is required. To learn more, see
-- <https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-import-plugins.html Installing custom plugins>.
--
-- 'airflowVersion', 'updateEnvironment_airflowVersion' - The Apache Airflow version for your environment. If no value is
-- specified, defaults to the latest version. Valid values: @1.10.12@,
-- @2.0.2@, and @2.2.2@.
--
-- 'dagS3Path', 'updateEnvironment_dagS3Path' - The relative path to the DAGs folder on your Amazon S3 bucket. For
-- example, @dags@. To learn more, see
-- <https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-folder.html Adding or updating DAGs>.
--
-- 'sourceBucketArn', 'updateEnvironment_sourceBucketArn' - The Amazon Resource Name (ARN) of the Amazon S3 bucket where your DAG
-- code and supporting files are stored. For example,
-- @arn:aws:s3:::my-airflow-bucket-unique-name@. To learn more, see
-- <https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-s3-bucket.html Create an Amazon S3 bucket for Amazon MWAA>.
--
-- 'airflowConfigurationOptions', 'updateEnvironment_airflowConfigurationOptions' - A list of key-value pairs containing the Apache Airflow configuration
-- options you want to attach to your environment. To learn more, see
-- <https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-env-variables.html Apache Airflow configuration options>.
--
-- 'networkConfiguration', 'updateEnvironment_networkConfiguration' - The VPC networking components used to secure and enable network traffic
-- between the Amazon Web Services resources for your environment. To learn
-- more, see
-- <https://docs.aws.amazon.com/mwaa/latest/userguide/networking-about.html About networking on Amazon MWAA>.
--
-- 'minWorkers', 'updateEnvironment_minWorkers' - The minimum number of workers that you want to run in your environment.
-- MWAA scales the number of Apache Airflow workers up to the number you
-- specify in the @MaxWorkers@ field. When there are no more tasks running,
-- and no more in the queue, MWAA disposes of the extra workers leaving the
-- worker count you specify in the @MinWorkers@ field. For example, @2@.
--
-- 'environmentClass', 'updateEnvironment_environmentClass' - The environment class type. Valid values: @mw1.small@, @mw1.medium@,
-- @mw1.large@. To learn more, see
-- <https://docs.aws.amazon.com/mwaa/latest/userguide/environment-class.html Amazon MWAA environment class>.
--
-- 'weeklyMaintenanceWindowStart', 'updateEnvironment_weeklyMaintenanceWindowStart' - The day and time of the week in Coordinated Universal Time (UTC) 24-hour
-- standard time to start weekly maintenance updates of your environment in
-- the following format: @DAY:HH:MM@. For example: @TUE:03:30@. You can
-- specify a start time in 30 minute increments only.
--
-- 'requirementsS3ObjectVersion', 'updateEnvironment_requirementsS3ObjectVersion' - The version of the requirements.txt file on your Amazon S3 bucket. A
-- version must be specified each time a requirements.txt file is updated.
-- To learn more, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/versioning-workflows.html How S3 Versioning works>.
--
-- 'executionRoleArn', 'updateEnvironment_executionRoleArn' - The Amazon Resource Name (ARN) of the execution role in IAM that allows
-- MWAA to access Amazon Web Services resources in your environment. For
-- example, @arn:aws:iam::123456789:role\/my-execution-role@. To learn
-- more, see
-- <https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-create-role.html Amazon MWAA Execution role>.
--
-- 'webserverAccessMode', 'updateEnvironment_webserverAccessMode' - The Apache Airflow /Web server/ access mode. To learn more, see
-- <https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-networking.html Apache Airflow access modes>.
--
-- 'maxWorkers', 'updateEnvironment_maxWorkers' - The maximum number of workers that you want to run in your environment.
-- MWAA scales the number of Apache Airflow workers up to the number you
-- specify in the @MaxWorkers@ field. For example, @20@. When there are no
-- more tasks running, and no more in the queue, MWAA disposes of the extra
-- workers leaving the one worker that is included with your environment,
-- or the number you specify in @MinWorkers@.
--
-- 'loggingConfiguration', 'updateEnvironment_loggingConfiguration' - The Apache Airflow log types to send to CloudWatch Logs.
--
-- 'name', 'updateEnvironment_name' - The name of your Amazon MWAA environment. For example,
-- @MyMWAAEnvironment@.
newUpdateEnvironment ::
  -- | 'name'
  Prelude.Text ->
  UpdateEnvironment
newUpdateEnvironment pName_ =
  UpdateEnvironment'
    { schedulers = Prelude.Nothing,
      pluginsS3ObjectVersion = Prelude.Nothing,
      requirementsS3Path = Prelude.Nothing,
      pluginsS3Path = Prelude.Nothing,
      airflowVersion = Prelude.Nothing,
      dagS3Path = Prelude.Nothing,
      sourceBucketArn = Prelude.Nothing,
      airflowConfigurationOptions = Prelude.Nothing,
      networkConfiguration = Prelude.Nothing,
      minWorkers = Prelude.Nothing,
      environmentClass = Prelude.Nothing,
      weeklyMaintenanceWindowStart = Prelude.Nothing,
      requirementsS3ObjectVersion = Prelude.Nothing,
      executionRoleArn = Prelude.Nothing,
      webserverAccessMode = Prelude.Nothing,
      maxWorkers = Prelude.Nothing,
      loggingConfiguration = Prelude.Nothing,
      name = pName_
    }

-- | The number of Apache Airflow schedulers to run in your Amazon MWAA
-- environment.
updateEnvironment_schedulers :: Lens.Lens' UpdateEnvironment (Prelude.Maybe Prelude.Int)
updateEnvironment_schedulers = Lens.lens (\UpdateEnvironment' {schedulers} -> schedulers) (\s@UpdateEnvironment' {} a -> s {schedulers = a} :: UpdateEnvironment)

-- | The version of the plugins.zip file on your Amazon S3 bucket. A version
-- must be specified each time a plugins.zip file is updated. To learn
-- more, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/versioning-workflows.html How S3 Versioning works>.
updateEnvironment_pluginsS3ObjectVersion :: Lens.Lens' UpdateEnvironment (Prelude.Maybe Prelude.Text)
updateEnvironment_pluginsS3ObjectVersion = Lens.lens (\UpdateEnvironment' {pluginsS3ObjectVersion} -> pluginsS3ObjectVersion) (\s@UpdateEnvironment' {} a -> s {pluginsS3ObjectVersion = a} :: UpdateEnvironment)

-- | The relative path to the @requirements.txt@ file on your Amazon S3
-- bucket. For example, @requirements.txt@. If specified, then a file
-- version is required. To learn more, see
-- <https://docs.aws.amazon.com/mwaa/latest/userguide/working-dags-dependencies.html Installing Python dependencies>.
updateEnvironment_requirementsS3Path :: Lens.Lens' UpdateEnvironment (Prelude.Maybe Prelude.Text)
updateEnvironment_requirementsS3Path = Lens.lens (\UpdateEnvironment' {requirementsS3Path} -> requirementsS3Path) (\s@UpdateEnvironment' {} a -> s {requirementsS3Path = a} :: UpdateEnvironment)

-- | The relative path to the @plugins.zip@ file on your Amazon S3 bucket.
-- For example, @plugins.zip@. If specified, then the plugins.zip version
-- is required. To learn more, see
-- <https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-import-plugins.html Installing custom plugins>.
updateEnvironment_pluginsS3Path :: Lens.Lens' UpdateEnvironment (Prelude.Maybe Prelude.Text)
updateEnvironment_pluginsS3Path = Lens.lens (\UpdateEnvironment' {pluginsS3Path} -> pluginsS3Path) (\s@UpdateEnvironment' {} a -> s {pluginsS3Path = a} :: UpdateEnvironment)

-- | The Apache Airflow version for your environment. If no value is
-- specified, defaults to the latest version. Valid values: @1.10.12@,
-- @2.0.2@, and @2.2.2@.
updateEnvironment_airflowVersion :: Lens.Lens' UpdateEnvironment (Prelude.Maybe Prelude.Text)
updateEnvironment_airflowVersion = Lens.lens (\UpdateEnvironment' {airflowVersion} -> airflowVersion) (\s@UpdateEnvironment' {} a -> s {airflowVersion = a} :: UpdateEnvironment)

-- | The relative path to the DAGs folder on your Amazon S3 bucket. For
-- example, @dags@. To learn more, see
-- <https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-folder.html Adding or updating DAGs>.
updateEnvironment_dagS3Path :: Lens.Lens' UpdateEnvironment (Prelude.Maybe Prelude.Text)
updateEnvironment_dagS3Path = Lens.lens (\UpdateEnvironment' {dagS3Path} -> dagS3Path) (\s@UpdateEnvironment' {} a -> s {dagS3Path = a} :: UpdateEnvironment)

-- | The Amazon Resource Name (ARN) of the Amazon S3 bucket where your DAG
-- code and supporting files are stored. For example,
-- @arn:aws:s3:::my-airflow-bucket-unique-name@. To learn more, see
-- <https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-s3-bucket.html Create an Amazon S3 bucket for Amazon MWAA>.
updateEnvironment_sourceBucketArn :: Lens.Lens' UpdateEnvironment (Prelude.Maybe Prelude.Text)
updateEnvironment_sourceBucketArn = Lens.lens (\UpdateEnvironment' {sourceBucketArn} -> sourceBucketArn) (\s@UpdateEnvironment' {} a -> s {sourceBucketArn = a} :: UpdateEnvironment)

-- | A list of key-value pairs containing the Apache Airflow configuration
-- options you want to attach to your environment. To learn more, see
-- <https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-env-variables.html Apache Airflow configuration options>.
updateEnvironment_airflowConfigurationOptions :: Lens.Lens' UpdateEnvironment (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
updateEnvironment_airflowConfigurationOptions = Lens.lens (\UpdateEnvironment' {airflowConfigurationOptions} -> airflowConfigurationOptions) (\s@UpdateEnvironment' {} a -> s {airflowConfigurationOptions = a} :: UpdateEnvironment) Prelude.. Lens.mapping (Core._Sensitive Prelude.. Lens.coerced)

-- | The VPC networking components used to secure and enable network traffic
-- between the Amazon Web Services resources for your environment. To learn
-- more, see
-- <https://docs.aws.amazon.com/mwaa/latest/userguide/networking-about.html About networking on Amazon MWAA>.
updateEnvironment_networkConfiguration :: Lens.Lens' UpdateEnvironment (Prelude.Maybe UpdateNetworkConfigurationInput)
updateEnvironment_networkConfiguration = Lens.lens (\UpdateEnvironment' {networkConfiguration} -> networkConfiguration) (\s@UpdateEnvironment' {} a -> s {networkConfiguration = a} :: UpdateEnvironment)

-- | The minimum number of workers that you want to run in your environment.
-- MWAA scales the number of Apache Airflow workers up to the number you
-- specify in the @MaxWorkers@ field. When there are no more tasks running,
-- and no more in the queue, MWAA disposes of the extra workers leaving the
-- worker count you specify in the @MinWorkers@ field. For example, @2@.
updateEnvironment_minWorkers :: Lens.Lens' UpdateEnvironment (Prelude.Maybe Prelude.Natural)
updateEnvironment_minWorkers = Lens.lens (\UpdateEnvironment' {minWorkers} -> minWorkers) (\s@UpdateEnvironment' {} a -> s {minWorkers = a} :: UpdateEnvironment)

-- | The environment class type. Valid values: @mw1.small@, @mw1.medium@,
-- @mw1.large@. To learn more, see
-- <https://docs.aws.amazon.com/mwaa/latest/userguide/environment-class.html Amazon MWAA environment class>.
updateEnvironment_environmentClass :: Lens.Lens' UpdateEnvironment (Prelude.Maybe Prelude.Text)
updateEnvironment_environmentClass = Lens.lens (\UpdateEnvironment' {environmentClass} -> environmentClass) (\s@UpdateEnvironment' {} a -> s {environmentClass = a} :: UpdateEnvironment)

-- | The day and time of the week in Coordinated Universal Time (UTC) 24-hour
-- standard time to start weekly maintenance updates of your environment in
-- the following format: @DAY:HH:MM@. For example: @TUE:03:30@. You can
-- specify a start time in 30 minute increments only.
updateEnvironment_weeklyMaintenanceWindowStart :: Lens.Lens' UpdateEnvironment (Prelude.Maybe Prelude.Text)
updateEnvironment_weeklyMaintenanceWindowStart = Lens.lens (\UpdateEnvironment' {weeklyMaintenanceWindowStart} -> weeklyMaintenanceWindowStart) (\s@UpdateEnvironment' {} a -> s {weeklyMaintenanceWindowStart = a} :: UpdateEnvironment)

-- | The version of the requirements.txt file on your Amazon S3 bucket. A
-- version must be specified each time a requirements.txt file is updated.
-- To learn more, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/versioning-workflows.html How S3 Versioning works>.
updateEnvironment_requirementsS3ObjectVersion :: Lens.Lens' UpdateEnvironment (Prelude.Maybe Prelude.Text)
updateEnvironment_requirementsS3ObjectVersion = Lens.lens (\UpdateEnvironment' {requirementsS3ObjectVersion} -> requirementsS3ObjectVersion) (\s@UpdateEnvironment' {} a -> s {requirementsS3ObjectVersion = a} :: UpdateEnvironment)

-- | The Amazon Resource Name (ARN) of the execution role in IAM that allows
-- MWAA to access Amazon Web Services resources in your environment. For
-- example, @arn:aws:iam::123456789:role\/my-execution-role@. To learn
-- more, see
-- <https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-create-role.html Amazon MWAA Execution role>.
updateEnvironment_executionRoleArn :: Lens.Lens' UpdateEnvironment (Prelude.Maybe Prelude.Text)
updateEnvironment_executionRoleArn = Lens.lens (\UpdateEnvironment' {executionRoleArn} -> executionRoleArn) (\s@UpdateEnvironment' {} a -> s {executionRoleArn = a} :: UpdateEnvironment)

-- | The Apache Airflow /Web server/ access mode. To learn more, see
-- <https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-networking.html Apache Airflow access modes>.
updateEnvironment_webserverAccessMode :: Lens.Lens' UpdateEnvironment (Prelude.Maybe WebserverAccessMode)
updateEnvironment_webserverAccessMode = Lens.lens (\UpdateEnvironment' {webserverAccessMode} -> webserverAccessMode) (\s@UpdateEnvironment' {} a -> s {webserverAccessMode = a} :: UpdateEnvironment)

-- | The maximum number of workers that you want to run in your environment.
-- MWAA scales the number of Apache Airflow workers up to the number you
-- specify in the @MaxWorkers@ field. For example, @20@. When there are no
-- more tasks running, and no more in the queue, MWAA disposes of the extra
-- workers leaving the one worker that is included with your environment,
-- or the number you specify in @MinWorkers@.
updateEnvironment_maxWorkers :: Lens.Lens' UpdateEnvironment (Prelude.Maybe Prelude.Natural)
updateEnvironment_maxWorkers = Lens.lens (\UpdateEnvironment' {maxWorkers} -> maxWorkers) (\s@UpdateEnvironment' {} a -> s {maxWorkers = a} :: UpdateEnvironment)

-- | The Apache Airflow log types to send to CloudWatch Logs.
updateEnvironment_loggingConfiguration :: Lens.Lens' UpdateEnvironment (Prelude.Maybe LoggingConfigurationInput)
updateEnvironment_loggingConfiguration = Lens.lens (\UpdateEnvironment' {loggingConfiguration} -> loggingConfiguration) (\s@UpdateEnvironment' {} a -> s {loggingConfiguration = a} :: UpdateEnvironment)

-- | The name of your Amazon MWAA environment. For example,
-- @MyMWAAEnvironment@.
updateEnvironment_name :: Lens.Lens' UpdateEnvironment Prelude.Text
updateEnvironment_name = Lens.lens (\UpdateEnvironment' {name} -> name) (\s@UpdateEnvironment' {} a -> s {name = a} :: UpdateEnvironment)

instance Core.AWSRequest UpdateEnvironment where
  type
    AWSResponse UpdateEnvironment =
      UpdateEnvironmentResponse
  request = Request.patchJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateEnvironmentResponse'
            Prelude.<$> (x Core..?> "Arn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateEnvironment where
  hashWithSalt _salt UpdateEnvironment' {..} =
    _salt `Prelude.hashWithSalt` schedulers
      `Prelude.hashWithSalt` pluginsS3ObjectVersion
      `Prelude.hashWithSalt` requirementsS3Path
      `Prelude.hashWithSalt` pluginsS3Path
      `Prelude.hashWithSalt` airflowVersion
      `Prelude.hashWithSalt` dagS3Path
      `Prelude.hashWithSalt` sourceBucketArn
      `Prelude.hashWithSalt` airflowConfigurationOptions
      `Prelude.hashWithSalt` networkConfiguration
      `Prelude.hashWithSalt` minWorkers
      `Prelude.hashWithSalt` environmentClass
      `Prelude.hashWithSalt` weeklyMaintenanceWindowStart
      `Prelude.hashWithSalt` requirementsS3ObjectVersion
      `Prelude.hashWithSalt` executionRoleArn
      `Prelude.hashWithSalt` webserverAccessMode
      `Prelude.hashWithSalt` maxWorkers
      `Prelude.hashWithSalt` loggingConfiguration
      `Prelude.hashWithSalt` name

instance Prelude.NFData UpdateEnvironment where
  rnf UpdateEnvironment' {..} =
    Prelude.rnf schedulers
      `Prelude.seq` Prelude.rnf pluginsS3ObjectVersion
      `Prelude.seq` Prelude.rnf requirementsS3Path
      `Prelude.seq` Prelude.rnf pluginsS3Path
      `Prelude.seq` Prelude.rnf airflowVersion
      `Prelude.seq` Prelude.rnf dagS3Path
      `Prelude.seq` Prelude.rnf sourceBucketArn
      `Prelude.seq` Prelude.rnf airflowConfigurationOptions
      `Prelude.seq` Prelude.rnf networkConfiguration
      `Prelude.seq` Prelude.rnf minWorkers
      `Prelude.seq` Prelude.rnf environmentClass
      `Prelude.seq` Prelude.rnf weeklyMaintenanceWindowStart
      `Prelude.seq` Prelude.rnf requirementsS3ObjectVersion
      `Prelude.seq` Prelude.rnf executionRoleArn
      `Prelude.seq` Prelude.rnf webserverAccessMode
      `Prelude.seq` Prelude.rnf maxWorkers
      `Prelude.seq` Prelude.rnf loggingConfiguration
      `Prelude.seq` Prelude.rnf name

instance Core.ToHeaders UpdateEnvironment where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateEnvironment where
  toJSON UpdateEnvironment' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Schedulers" Core..=) Prelude.<$> schedulers,
            ("PluginsS3ObjectVersion" Core..=)
              Prelude.<$> pluginsS3ObjectVersion,
            ("RequirementsS3Path" Core..=)
              Prelude.<$> requirementsS3Path,
            ("PluginsS3Path" Core..=) Prelude.<$> pluginsS3Path,
            ("AirflowVersion" Core..=)
              Prelude.<$> airflowVersion,
            ("DagS3Path" Core..=) Prelude.<$> dagS3Path,
            ("SourceBucketArn" Core..=)
              Prelude.<$> sourceBucketArn,
            ("AirflowConfigurationOptions" Core..=)
              Prelude.<$> airflowConfigurationOptions,
            ("NetworkConfiguration" Core..=)
              Prelude.<$> networkConfiguration,
            ("MinWorkers" Core..=) Prelude.<$> minWorkers,
            ("EnvironmentClass" Core..=)
              Prelude.<$> environmentClass,
            ("WeeklyMaintenanceWindowStart" Core..=)
              Prelude.<$> weeklyMaintenanceWindowStart,
            ("RequirementsS3ObjectVersion" Core..=)
              Prelude.<$> requirementsS3ObjectVersion,
            ("ExecutionRoleArn" Core..=)
              Prelude.<$> executionRoleArn,
            ("WebserverAccessMode" Core..=)
              Prelude.<$> webserverAccessMode,
            ("MaxWorkers" Core..=) Prelude.<$> maxWorkers,
            ("LoggingConfiguration" Core..=)
              Prelude.<$> loggingConfiguration
          ]
      )

instance Core.ToPath UpdateEnvironment where
  toPath UpdateEnvironment' {..} =
    Prelude.mconcat ["/environments/", Core.toBS name]

instance Core.ToQuery UpdateEnvironment where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateEnvironmentResponse' smart constructor.
data UpdateEnvironmentResponse = UpdateEnvironmentResponse'
  { -- | The Amazon Resource Name (ARN) of the Amazon MWAA environment. For
    -- example,
    -- @arn:aws:airflow:us-east-1:123456789012:environment\/MyMWAAEnvironment@.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateEnvironmentResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'arn', 'updateEnvironmentResponse_arn' - The Amazon Resource Name (ARN) of the Amazon MWAA environment. For
-- example,
-- @arn:aws:airflow:us-east-1:123456789012:environment\/MyMWAAEnvironment@.
--
-- 'httpStatus', 'updateEnvironmentResponse_httpStatus' - The response's http status code.
newUpdateEnvironmentResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateEnvironmentResponse
newUpdateEnvironmentResponse pHttpStatus_ =
  UpdateEnvironmentResponse'
    { arn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The Amazon Resource Name (ARN) of the Amazon MWAA environment. For
-- example,
-- @arn:aws:airflow:us-east-1:123456789012:environment\/MyMWAAEnvironment@.
updateEnvironmentResponse_arn :: Lens.Lens' UpdateEnvironmentResponse (Prelude.Maybe Prelude.Text)
updateEnvironmentResponse_arn = Lens.lens (\UpdateEnvironmentResponse' {arn} -> arn) (\s@UpdateEnvironmentResponse' {} a -> s {arn = a} :: UpdateEnvironmentResponse)

-- | The response's http status code.
updateEnvironmentResponse_httpStatus :: Lens.Lens' UpdateEnvironmentResponse Prelude.Int
updateEnvironmentResponse_httpStatus = Lens.lens (\UpdateEnvironmentResponse' {httpStatus} -> httpStatus) (\s@UpdateEnvironmentResponse' {} a -> s {httpStatus = a} :: UpdateEnvironmentResponse)

instance Prelude.NFData UpdateEnvironmentResponse where
  rnf UpdateEnvironmentResponse' {..} =
    Prelude.rnf arn
      `Prelude.seq` Prelude.rnf httpStatus
