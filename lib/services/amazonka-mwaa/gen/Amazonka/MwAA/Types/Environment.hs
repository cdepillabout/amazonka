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
-- Module      : Amazonka.MwAA.Types.Environment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MwAA.Types.Environment where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MwAA.Types.EnvironmentStatus
import Amazonka.MwAA.Types.LastUpdate
import Amazonka.MwAA.Types.LoggingConfiguration
import Amazonka.MwAA.Types.NetworkConfiguration
import Amazonka.MwAA.Types.WebserverAccessMode
import qualified Amazonka.Prelude as Prelude

-- | Describes an Amazon Managed Workflows for Apache Airflow (MWAA)
-- environment.
--
-- /See:/ 'newEnvironment' smart constructor.
data Environment = Environment'
  { -- | The key-value tag pairs associated to your environment. For example,
    -- @\"Environment\": \"Staging\"@. To learn more, see
    -- <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging Amazon Web Services resources>.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The number of Apache Airflow schedulers that run in your Amazon MWAA
    -- environment.
    schedulers :: Prelude.Maybe Prelude.Int,
    -- | The version of the plugins.zip file on your Amazon S3 bucket. To learn
    -- more, see
    -- <https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-import-plugins.html Installing custom plugins>.
    pluginsS3ObjectVersion :: Prelude.Maybe Prelude.Text,
    -- | The name of the Amazon MWAA environment. For example,
    -- @MyMWAAEnvironment@.
    name :: Prelude.Maybe Prelude.Text,
    -- | The relative path to the @requirements.txt@ file on your Amazon S3
    -- bucket. For example, @requirements.txt@. To learn more, see
    -- <https://docs.aws.amazon.com/mwaa/latest/userguide/working-dags-dependencies.html Installing Python dependencies>.
    requirementsS3Path :: Prelude.Maybe Prelude.Text,
    -- | The relative path to the @plugins.zip@ file on your Amazon S3 bucket.
    -- For example, @plugins.zip@. To learn more, see
    -- <https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-import-plugins.html Installing custom plugins>.
    pluginsS3Path :: Prelude.Maybe Prelude.Text,
    -- | The Apache Airflow version on your environment. Valid values: @1.10.12@,
    -- @2.0.2@, and @2.2.2@.
    airflowVersion :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) for the service-linked role of the
    -- environment. To learn more, see
    -- <https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-slr.html Amazon MWAA Service-linked role>.
    serviceRoleArn :: Prelude.Maybe Prelude.Text,
    -- | The relative path to the DAGs folder on your Amazon S3 bucket. For
    -- example, @dags@. To learn more, see
    -- <https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-folder.html Adding or updating DAGs>.
    dagS3Path :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the Amazon S3 bucket where your DAG
    -- code and supporting files are stored. For example,
    -- @arn:aws:s3:::my-airflow-bucket-unique-name@. To learn more, see
    -- <https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-s3-bucket.html Create an Amazon S3 bucket for Amazon MWAA>.
    sourceBucketArn :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Web Services Key Management Service (KMS) encryption key used
    -- to encrypt the data in your environment.
    kmsKey :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the Amazon MWAA environment.
    arn :: Prelude.Maybe Prelude.Text,
    -- | A list of key-value pairs containing the Apache Airflow configuration
    -- options attached to your environment. To learn more, see
    -- <https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-env-variables.html Apache Airflow configuration options>.
    airflowConfigurationOptions :: Prelude.Maybe (Core.Sensitive (Prelude.HashMap Prelude.Text (Core.Sensitive Prelude.Text))),
    -- | Describes the VPC networking components used to secure and enable
    -- network traffic between the Amazon Web Services resources for your
    -- environment. To learn more, see
    -- <https://docs.aws.amazon.com/mwaa/latest/userguide/networking-about.html About networking on Amazon MWAA>.
    networkConfiguration :: Prelude.Maybe NetworkConfiguration,
    -- | The status of the Amazon MWAA environment. Valid values:
    --
    -- -   @CREATING@ - Indicates the request to create the environment is in
    --     progress.
    --
    -- -   @CREATE_FAILED@ - Indicates the request to create the environment
    --     failed, and the environment could not be created.
    --
    -- -   @AVAILABLE@ - Indicates the request was successful and the
    --     environment is ready to use.
    --
    -- -   @UPDATING@ - Indicates the request to update the environment is in
    --     progress.
    --
    -- -   @DELETING@ - Indicates the request to delete the environment is in
    --     progress.
    --
    -- -   @DELETED@ - Indicates the request to delete the environment is
    --     complete, and the environment has been deleted.
    --
    -- -   @UNAVAILABLE@ - Indicates the request failed, but the environment
    --     was unable to rollback and is not in a stable state.
    --
    -- -   @UPDATE_FAILED@ - Indicates the request to update the environment
    --     failed, and the environment has rolled back successfully and is
    --     ready to use.
    --
    -- We recommend reviewing our troubleshooting guide for a list of common
    -- errors and their solutions. To learn more, see
    -- <https://docs.aws.amazon.com/mwaa/latest/userguide/troubleshooting.html Amazon MWAA troubleshooting>.
    status :: Prelude.Maybe EnvironmentStatus,
    -- | The minimum number of workers that run in your environment. For example,
    -- @2@.
    minWorkers :: Prelude.Maybe Prelude.Natural,
    -- | The environment class type. Valid values: @mw1.small@, @mw1.medium@,
    -- @mw1.large@. To learn more, see
    -- <https://docs.aws.amazon.com/mwaa/latest/userguide/environment-class.html Amazon MWAA environment class>.
    environmentClass :: Prelude.Maybe Prelude.Text,
    -- | The day and time of the week in Coordinated Universal Time (UTC) 24-hour
    -- standard time that weekly maintenance updates are scheduled. For
    -- example: @TUE:03:30@.
    weeklyMaintenanceWindowStart :: Prelude.Maybe Prelude.Text,
    -- | The status of the last update on the environment.
    lastUpdate :: Prelude.Maybe LastUpdate,
    -- | The version of the requirements.txt file on your Amazon S3 bucket. To
    -- learn more, see
    -- <https://docs.aws.amazon.com/mwaa/latest/userguide/working-dags-dependencies.html Installing Python dependencies>.
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
    -- | The maximum number of workers that run in your environment. For example,
    -- @20@.
    maxWorkers :: Prelude.Maybe Prelude.Natural,
    -- | The day and time the environment was created.
    createdAt :: Prelude.Maybe Core.POSIX,
    -- | The Apache Airflow /Web server/ host name for the Amazon MWAA
    -- environment. To learn more, see
    -- <https://docs.aws.amazon.com/mwaa/latest/userguide/access-airflow-ui.html Accessing the Apache Airflow UI>.
    webserverUrl :: Prelude.Maybe Prelude.Text,
    -- | The Apache Airflow logs published to CloudWatch Logs.
    loggingConfiguration :: Prelude.Maybe LoggingConfiguration
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Environment' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'environment_tags' - The key-value tag pairs associated to your environment. For example,
-- @\"Environment\": \"Staging\"@. To learn more, see
-- <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging Amazon Web Services resources>.
--
-- 'schedulers', 'environment_schedulers' - The number of Apache Airflow schedulers that run in your Amazon MWAA
-- environment.
--
-- 'pluginsS3ObjectVersion', 'environment_pluginsS3ObjectVersion' - The version of the plugins.zip file on your Amazon S3 bucket. To learn
-- more, see
-- <https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-import-plugins.html Installing custom plugins>.
--
-- 'name', 'environment_name' - The name of the Amazon MWAA environment. For example,
-- @MyMWAAEnvironment@.
--
-- 'requirementsS3Path', 'environment_requirementsS3Path' - The relative path to the @requirements.txt@ file on your Amazon S3
-- bucket. For example, @requirements.txt@. To learn more, see
-- <https://docs.aws.amazon.com/mwaa/latest/userguide/working-dags-dependencies.html Installing Python dependencies>.
--
-- 'pluginsS3Path', 'environment_pluginsS3Path' - The relative path to the @plugins.zip@ file on your Amazon S3 bucket.
-- For example, @plugins.zip@. To learn more, see
-- <https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-import-plugins.html Installing custom plugins>.
--
-- 'airflowVersion', 'environment_airflowVersion' - The Apache Airflow version on your environment. Valid values: @1.10.12@,
-- @2.0.2@, and @2.2.2@.
--
-- 'serviceRoleArn', 'environment_serviceRoleArn' - The Amazon Resource Name (ARN) for the service-linked role of the
-- environment. To learn more, see
-- <https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-slr.html Amazon MWAA Service-linked role>.
--
-- 'dagS3Path', 'environment_dagS3Path' - The relative path to the DAGs folder on your Amazon S3 bucket. For
-- example, @dags@. To learn more, see
-- <https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-folder.html Adding or updating DAGs>.
--
-- 'sourceBucketArn', 'environment_sourceBucketArn' - The Amazon Resource Name (ARN) of the Amazon S3 bucket where your DAG
-- code and supporting files are stored. For example,
-- @arn:aws:s3:::my-airflow-bucket-unique-name@. To learn more, see
-- <https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-s3-bucket.html Create an Amazon S3 bucket for Amazon MWAA>.
--
-- 'kmsKey', 'environment_kmsKey' - The Amazon Web Services Key Management Service (KMS) encryption key used
-- to encrypt the data in your environment.
--
-- 'arn', 'environment_arn' - The Amazon Resource Name (ARN) of the Amazon MWAA environment.
--
-- 'airflowConfigurationOptions', 'environment_airflowConfigurationOptions' - A list of key-value pairs containing the Apache Airflow configuration
-- options attached to your environment. To learn more, see
-- <https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-env-variables.html Apache Airflow configuration options>.
--
-- 'networkConfiguration', 'environment_networkConfiguration' - Describes the VPC networking components used to secure and enable
-- network traffic between the Amazon Web Services resources for your
-- environment. To learn more, see
-- <https://docs.aws.amazon.com/mwaa/latest/userguide/networking-about.html About networking on Amazon MWAA>.
--
-- 'status', 'environment_status' - The status of the Amazon MWAA environment. Valid values:
--
-- -   @CREATING@ - Indicates the request to create the environment is in
--     progress.
--
-- -   @CREATE_FAILED@ - Indicates the request to create the environment
--     failed, and the environment could not be created.
--
-- -   @AVAILABLE@ - Indicates the request was successful and the
--     environment is ready to use.
--
-- -   @UPDATING@ - Indicates the request to update the environment is in
--     progress.
--
-- -   @DELETING@ - Indicates the request to delete the environment is in
--     progress.
--
-- -   @DELETED@ - Indicates the request to delete the environment is
--     complete, and the environment has been deleted.
--
-- -   @UNAVAILABLE@ - Indicates the request failed, but the environment
--     was unable to rollback and is not in a stable state.
--
-- -   @UPDATE_FAILED@ - Indicates the request to update the environment
--     failed, and the environment has rolled back successfully and is
--     ready to use.
--
-- We recommend reviewing our troubleshooting guide for a list of common
-- errors and their solutions. To learn more, see
-- <https://docs.aws.amazon.com/mwaa/latest/userguide/troubleshooting.html Amazon MWAA troubleshooting>.
--
-- 'minWorkers', 'environment_minWorkers' - The minimum number of workers that run in your environment. For example,
-- @2@.
--
-- 'environmentClass', 'environment_environmentClass' - The environment class type. Valid values: @mw1.small@, @mw1.medium@,
-- @mw1.large@. To learn more, see
-- <https://docs.aws.amazon.com/mwaa/latest/userguide/environment-class.html Amazon MWAA environment class>.
--
-- 'weeklyMaintenanceWindowStart', 'environment_weeklyMaintenanceWindowStart' - The day and time of the week in Coordinated Universal Time (UTC) 24-hour
-- standard time that weekly maintenance updates are scheduled. For
-- example: @TUE:03:30@.
--
-- 'lastUpdate', 'environment_lastUpdate' - The status of the last update on the environment.
--
-- 'requirementsS3ObjectVersion', 'environment_requirementsS3ObjectVersion' - The version of the requirements.txt file on your Amazon S3 bucket. To
-- learn more, see
-- <https://docs.aws.amazon.com/mwaa/latest/userguide/working-dags-dependencies.html Installing Python dependencies>.
--
-- 'executionRoleArn', 'environment_executionRoleArn' - The Amazon Resource Name (ARN) of the execution role in IAM that allows
-- MWAA to access Amazon Web Services resources in your environment. For
-- example, @arn:aws:iam::123456789:role\/my-execution-role@. To learn
-- more, see
-- <https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-create-role.html Amazon MWAA Execution role>.
--
-- 'webserverAccessMode', 'environment_webserverAccessMode' - The Apache Airflow /Web server/ access mode. To learn more, see
-- <https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-networking.html Apache Airflow access modes>.
--
-- 'maxWorkers', 'environment_maxWorkers' - The maximum number of workers that run in your environment. For example,
-- @20@.
--
-- 'createdAt', 'environment_createdAt' - The day and time the environment was created.
--
-- 'webserverUrl', 'environment_webserverUrl' - The Apache Airflow /Web server/ host name for the Amazon MWAA
-- environment. To learn more, see
-- <https://docs.aws.amazon.com/mwaa/latest/userguide/access-airflow-ui.html Accessing the Apache Airflow UI>.
--
-- 'loggingConfiguration', 'environment_loggingConfiguration' - The Apache Airflow logs published to CloudWatch Logs.
newEnvironment ::
  Environment
newEnvironment =
  Environment'
    { tags = Prelude.Nothing,
      schedulers = Prelude.Nothing,
      pluginsS3ObjectVersion = Prelude.Nothing,
      name = Prelude.Nothing,
      requirementsS3Path = Prelude.Nothing,
      pluginsS3Path = Prelude.Nothing,
      airflowVersion = Prelude.Nothing,
      serviceRoleArn = Prelude.Nothing,
      dagS3Path = Prelude.Nothing,
      sourceBucketArn = Prelude.Nothing,
      kmsKey = Prelude.Nothing,
      arn = Prelude.Nothing,
      airflowConfigurationOptions = Prelude.Nothing,
      networkConfiguration = Prelude.Nothing,
      status = Prelude.Nothing,
      minWorkers = Prelude.Nothing,
      environmentClass = Prelude.Nothing,
      weeklyMaintenanceWindowStart = Prelude.Nothing,
      lastUpdate = Prelude.Nothing,
      requirementsS3ObjectVersion = Prelude.Nothing,
      executionRoleArn = Prelude.Nothing,
      webserverAccessMode = Prelude.Nothing,
      maxWorkers = Prelude.Nothing,
      createdAt = Prelude.Nothing,
      webserverUrl = Prelude.Nothing,
      loggingConfiguration = Prelude.Nothing
    }

-- | The key-value tag pairs associated to your environment. For example,
-- @\"Environment\": \"Staging\"@. To learn more, see
-- <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging Amazon Web Services resources>.
environment_tags :: Lens.Lens' Environment (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
environment_tags = Lens.lens (\Environment' {tags} -> tags) (\s@Environment' {} a -> s {tags = a} :: Environment) Prelude.. Lens.mapping Lens.coerced

-- | The number of Apache Airflow schedulers that run in your Amazon MWAA
-- environment.
environment_schedulers :: Lens.Lens' Environment (Prelude.Maybe Prelude.Int)
environment_schedulers = Lens.lens (\Environment' {schedulers} -> schedulers) (\s@Environment' {} a -> s {schedulers = a} :: Environment)

-- | The version of the plugins.zip file on your Amazon S3 bucket. To learn
-- more, see
-- <https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-import-plugins.html Installing custom plugins>.
environment_pluginsS3ObjectVersion :: Lens.Lens' Environment (Prelude.Maybe Prelude.Text)
environment_pluginsS3ObjectVersion = Lens.lens (\Environment' {pluginsS3ObjectVersion} -> pluginsS3ObjectVersion) (\s@Environment' {} a -> s {pluginsS3ObjectVersion = a} :: Environment)

-- | The name of the Amazon MWAA environment. For example,
-- @MyMWAAEnvironment@.
environment_name :: Lens.Lens' Environment (Prelude.Maybe Prelude.Text)
environment_name = Lens.lens (\Environment' {name} -> name) (\s@Environment' {} a -> s {name = a} :: Environment)

-- | The relative path to the @requirements.txt@ file on your Amazon S3
-- bucket. For example, @requirements.txt@. To learn more, see
-- <https://docs.aws.amazon.com/mwaa/latest/userguide/working-dags-dependencies.html Installing Python dependencies>.
environment_requirementsS3Path :: Lens.Lens' Environment (Prelude.Maybe Prelude.Text)
environment_requirementsS3Path = Lens.lens (\Environment' {requirementsS3Path} -> requirementsS3Path) (\s@Environment' {} a -> s {requirementsS3Path = a} :: Environment)

-- | The relative path to the @plugins.zip@ file on your Amazon S3 bucket.
-- For example, @plugins.zip@. To learn more, see
-- <https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-import-plugins.html Installing custom plugins>.
environment_pluginsS3Path :: Lens.Lens' Environment (Prelude.Maybe Prelude.Text)
environment_pluginsS3Path = Lens.lens (\Environment' {pluginsS3Path} -> pluginsS3Path) (\s@Environment' {} a -> s {pluginsS3Path = a} :: Environment)

-- | The Apache Airflow version on your environment. Valid values: @1.10.12@,
-- @2.0.2@, and @2.2.2@.
environment_airflowVersion :: Lens.Lens' Environment (Prelude.Maybe Prelude.Text)
environment_airflowVersion = Lens.lens (\Environment' {airflowVersion} -> airflowVersion) (\s@Environment' {} a -> s {airflowVersion = a} :: Environment)

-- | The Amazon Resource Name (ARN) for the service-linked role of the
-- environment. To learn more, see
-- <https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-slr.html Amazon MWAA Service-linked role>.
environment_serviceRoleArn :: Lens.Lens' Environment (Prelude.Maybe Prelude.Text)
environment_serviceRoleArn = Lens.lens (\Environment' {serviceRoleArn} -> serviceRoleArn) (\s@Environment' {} a -> s {serviceRoleArn = a} :: Environment)

-- | The relative path to the DAGs folder on your Amazon S3 bucket. For
-- example, @dags@. To learn more, see
-- <https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-folder.html Adding or updating DAGs>.
environment_dagS3Path :: Lens.Lens' Environment (Prelude.Maybe Prelude.Text)
environment_dagS3Path = Lens.lens (\Environment' {dagS3Path} -> dagS3Path) (\s@Environment' {} a -> s {dagS3Path = a} :: Environment)

-- | The Amazon Resource Name (ARN) of the Amazon S3 bucket where your DAG
-- code and supporting files are stored. For example,
-- @arn:aws:s3:::my-airflow-bucket-unique-name@. To learn more, see
-- <https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-s3-bucket.html Create an Amazon S3 bucket for Amazon MWAA>.
environment_sourceBucketArn :: Lens.Lens' Environment (Prelude.Maybe Prelude.Text)
environment_sourceBucketArn = Lens.lens (\Environment' {sourceBucketArn} -> sourceBucketArn) (\s@Environment' {} a -> s {sourceBucketArn = a} :: Environment)

-- | The Amazon Web Services Key Management Service (KMS) encryption key used
-- to encrypt the data in your environment.
environment_kmsKey :: Lens.Lens' Environment (Prelude.Maybe Prelude.Text)
environment_kmsKey = Lens.lens (\Environment' {kmsKey} -> kmsKey) (\s@Environment' {} a -> s {kmsKey = a} :: Environment)

-- | The Amazon Resource Name (ARN) of the Amazon MWAA environment.
environment_arn :: Lens.Lens' Environment (Prelude.Maybe Prelude.Text)
environment_arn = Lens.lens (\Environment' {arn} -> arn) (\s@Environment' {} a -> s {arn = a} :: Environment)

-- | A list of key-value pairs containing the Apache Airflow configuration
-- options attached to your environment. To learn more, see
-- <https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-env-variables.html Apache Airflow configuration options>.
environment_airflowConfigurationOptions :: Lens.Lens' Environment (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
environment_airflowConfigurationOptions = Lens.lens (\Environment' {airflowConfigurationOptions} -> airflowConfigurationOptions) (\s@Environment' {} a -> s {airflowConfigurationOptions = a} :: Environment) Prelude.. Lens.mapping (Core._Sensitive Prelude.. Lens.coerced)

-- | Describes the VPC networking components used to secure and enable
-- network traffic between the Amazon Web Services resources for your
-- environment. To learn more, see
-- <https://docs.aws.amazon.com/mwaa/latest/userguide/networking-about.html About networking on Amazon MWAA>.
environment_networkConfiguration :: Lens.Lens' Environment (Prelude.Maybe NetworkConfiguration)
environment_networkConfiguration = Lens.lens (\Environment' {networkConfiguration} -> networkConfiguration) (\s@Environment' {} a -> s {networkConfiguration = a} :: Environment)

-- | The status of the Amazon MWAA environment. Valid values:
--
-- -   @CREATING@ - Indicates the request to create the environment is in
--     progress.
--
-- -   @CREATE_FAILED@ - Indicates the request to create the environment
--     failed, and the environment could not be created.
--
-- -   @AVAILABLE@ - Indicates the request was successful and the
--     environment is ready to use.
--
-- -   @UPDATING@ - Indicates the request to update the environment is in
--     progress.
--
-- -   @DELETING@ - Indicates the request to delete the environment is in
--     progress.
--
-- -   @DELETED@ - Indicates the request to delete the environment is
--     complete, and the environment has been deleted.
--
-- -   @UNAVAILABLE@ - Indicates the request failed, but the environment
--     was unable to rollback and is not in a stable state.
--
-- -   @UPDATE_FAILED@ - Indicates the request to update the environment
--     failed, and the environment has rolled back successfully and is
--     ready to use.
--
-- We recommend reviewing our troubleshooting guide for a list of common
-- errors and their solutions. To learn more, see
-- <https://docs.aws.amazon.com/mwaa/latest/userguide/troubleshooting.html Amazon MWAA troubleshooting>.
environment_status :: Lens.Lens' Environment (Prelude.Maybe EnvironmentStatus)
environment_status = Lens.lens (\Environment' {status} -> status) (\s@Environment' {} a -> s {status = a} :: Environment)

-- | The minimum number of workers that run in your environment. For example,
-- @2@.
environment_minWorkers :: Lens.Lens' Environment (Prelude.Maybe Prelude.Natural)
environment_minWorkers = Lens.lens (\Environment' {minWorkers} -> minWorkers) (\s@Environment' {} a -> s {minWorkers = a} :: Environment)

-- | The environment class type. Valid values: @mw1.small@, @mw1.medium@,
-- @mw1.large@. To learn more, see
-- <https://docs.aws.amazon.com/mwaa/latest/userguide/environment-class.html Amazon MWAA environment class>.
environment_environmentClass :: Lens.Lens' Environment (Prelude.Maybe Prelude.Text)
environment_environmentClass = Lens.lens (\Environment' {environmentClass} -> environmentClass) (\s@Environment' {} a -> s {environmentClass = a} :: Environment)

-- | The day and time of the week in Coordinated Universal Time (UTC) 24-hour
-- standard time that weekly maintenance updates are scheduled. For
-- example: @TUE:03:30@.
environment_weeklyMaintenanceWindowStart :: Lens.Lens' Environment (Prelude.Maybe Prelude.Text)
environment_weeklyMaintenanceWindowStart = Lens.lens (\Environment' {weeklyMaintenanceWindowStart} -> weeklyMaintenanceWindowStart) (\s@Environment' {} a -> s {weeklyMaintenanceWindowStart = a} :: Environment)

-- | The status of the last update on the environment.
environment_lastUpdate :: Lens.Lens' Environment (Prelude.Maybe LastUpdate)
environment_lastUpdate = Lens.lens (\Environment' {lastUpdate} -> lastUpdate) (\s@Environment' {} a -> s {lastUpdate = a} :: Environment)

-- | The version of the requirements.txt file on your Amazon S3 bucket. To
-- learn more, see
-- <https://docs.aws.amazon.com/mwaa/latest/userguide/working-dags-dependencies.html Installing Python dependencies>.
environment_requirementsS3ObjectVersion :: Lens.Lens' Environment (Prelude.Maybe Prelude.Text)
environment_requirementsS3ObjectVersion = Lens.lens (\Environment' {requirementsS3ObjectVersion} -> requirementsS3ObjectVersion) (\s@Environment' {} a -> s {requirementsS3ObjectVersion = a} :: Environment)

-- | The Amazon Resource Name (ARN) of the execution role in IAM that allows
-- MWAA to access Amazon Web Services resources in your environment. For
-- example, @arn:aws:iam::123456789:role\/my-execution-role@. To learn
-- more, see
-- <https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-create-role.html Amazon MWAA Execution role>.
environment_executionRoleArn :: Lens.Lens' Environment (Prelude.Maybe Prelude.Text)
environment_executionRoleArn = Lens.lens (\Environment' {executionRoleArn} -> executionRoleArn) (\s@Environment' {} a -> s {executionRoleArn = a} :: Environment)

-- | The Apache Airflow /Web server/ access mode. To learn more, see
-- <https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-networking.html Apache Airflow access modes>.
environment_webserverAccessMode :: Lens.Lens' Environment (Prelude.Maybe WebserverAccessMode)
environment_webserverAccessMode = Lens.lens (\Environment' {webserverAccessMode} -> webserverAccessMode) (\s@Environment' {} a -> s {webserverAccessMode = a} :: Environment)

-- | The maximum number of workers that run in your environment. For example,
-- @20@.
environment_maxWorkers :: Lens.Lens' Environment (Prelude.Maybe Prelude.Natural)
environment_maxWorkers = Lens.lens (\Environment' {maxWorkers} -> maxWorkers) (\s@Environment' {} a -> s {maxWorkers = a} :: Environment)

-- | The day and time the environment was created.
environment_createdAt :: Lens.Lens' Environment (Prelude.Maybe Prelude.UTCTime)
environment_createdAt = Lens.lens (\Environment' {createdAt} -> createdAt) (\s@Environment' {} a -> s {createdAt = a} :: Environment) Prelude.. Lens.mapping Core._Time

-- | The Apache Airflow /Web server/ host name for the Amazon MWAA
-- environment. To learn more, see
-- <https://docs.aws.amazon.com/mwaa/latest/userguide/access-airflow-ui.html Accessing the Apache Airflow UI>.
environment_webserverUrl :: Lens.Lens' Environment (Prelude.Maybe Prelude.Text)
environment_webserverUrl = Lens.lens (\Environment' {webserverUrl} -> webserverUrl) (\s@Environment' {} a -> s {webserverUrl = a} :: Environment)

-- | The Apache Airflow logs published to CloudWatch Logs.
environment_loggingConfiguration :: Lens.Lens' Environment (Prelude.Maybe LoggingConfiguration)
environment_loggingConfiguration = Lens.lens (\Environment' {loggingConfiguration} -> loggingConfiguration) (\s@Environment' {} a -> s {loggingConfiguration = a} :: Environment)

instance Core.FromJSON Environment where
  parseJSON =
    Core.withObject
      "Environment"
      ( \x ->
          Environment'
            Prelude.<$> (x Core..:? "Tags" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "Schedulers")
            Prelude.<*> (x Core..:? "PluginsS3ObjectVersion")
            Prelude.<*> (x Core..:? "Name")
            Prelude.<*> (x Core..:? "RequirementsS3Path")
            Prelude.<*> (x Core..:? "PluginsS3Path")
            Prelude.<*> (x Core..:? "AirflowVersion")
            Prelude.<*> (x Core..:? "ServiceRoleArn")
            Prelude.<*> (x Core..:? "DagS3Path")
            Prelude.<*> (x Core..:? "SourceBucketArn")
            Prelude.<*> (x Core..:? "KmsKey")
            Prelude.<*> (x Core..:? "Arn")
            Prelude.<*> ( x Core..:? "AirflowConfigurationOptions"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "NetworkConfiguration")
            Prelude.<*> (x Core..:? "Status")
            Prelude.<*> (x Core..:? "MinWorkers")
            Prelude.<*> (x Core..:? "EnvironmentClass")
            Prelude.<*> (x Core..:? "WeeklyMaintenanceWindowStart")
            Prelude.<*> (x Core..:? "LastUpdate")
            Prelude.<*> (x Core..:? "RequirementsS3ObjectVersion")
            Prelude.<*> (x Core..:? "ExecutionRoleArn")
            Prelude.<*> (x Core..:? "WebserverAccessMode")
            Prelude.<*> (x Core..:? "MaxWorkers")
            Prelude.<*> (x Core..:? "CreatedAt")
            Prelude.<*> (x Core..:? "WebserverUrl")
            Prelude.<*> (x Core..:? "LoggingConfiguration")
      )

instance Prelude.Hashable Environment where
  hashWithSalt _salt Environment' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` schedulers
      `Prelude.hashWithSalt` pluginsS3ObjectVersion
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` requirementsS3Path
      `Prelude.hashWithSalt` pluginsS3Path
      `Prelude.hashWithSalt` airflowVersion
      `Prelude.hashWithSalt` serviceRoleArn
      `Prelude.hashWithSalt` dagS3Path
      `Prelude.hashWithSalt` sourceBucketArn
      `Prelude.hashWithSalt` kmsKey
      `Prelude.hashWithSalt` arn
      `Prelude.hashWithSalt` airflowConfigurationOptions
      `Prelude.hashWithSalt` networkConfiguration
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` minWorkers
      `Prelude.hashWithSalt` environmentClass
      `Prelude.hashWithSalt` weeklyMaintenanceWindowStart
      `Prelude.hashWithSalt` lastUpdate
      `Prelude.hashWithSalt` requirementsS3ObjectVersion
      `Prelude.hashWithSalt` executionRoleArn
      `Prelude.hashWithSalt` webserverAccessMode
      `Prelude.hashWithSalt` maxWorkers
      `Prelude.hashWithSalt` createdAt
      `Prelude.hashWithSalt` webserverUrl
      `Prelude.hashWithSalt` loggingConfiguration

instance Prelude.NFData Environment where
  rnf Environment' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf schedulers
      `Prelude.seq` Prelude.rnf pluginsS3ObjectVersion
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf requirementsS3Path
      `Prelude.seq` Prelude.rnf pluginsS3Path
      `Prelude.seq` Prelude.rnf airflowVersion
      `Prelude.seq` Prelude.rnf serviceRoleArn
      `Prelude.seq` Prelude.rnf dagS3Path
      `Prelude.seq` Prelude.rnf sourceBucketArn
      `Prelude.seq` Prelude.rnf kmsKey
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf airflowConfigurationOptions
      `Prelude.seq` Prelude.rnf networkConfiguration
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf minWorkers
      `Prelude.seq` Prelude.rnf environmentClass
      `Prelude.seq` Prelude.rnf
        weeklyMaintenanceWindowStart
      `Prelude.seq` Prelude.rnf lastUpdate
      `Prelude.seq` Prelude.rnf
        requirementsS3ObjectVersion
      `Prelude.seq` Prelude.rnf executionRoleArn
      `Prelude.seq` Prelude.rnf
        webserverAccessMode
      `Prelude.seq` Prelude.rnf maxWorkers
      `Prelude.seq` Prelude.rnf createdAt
      `Prelude.seq` Prelude.rnf
        webserverUrl
      `Prelude.seq` Prelude.rnf
        loggingConfiguration
