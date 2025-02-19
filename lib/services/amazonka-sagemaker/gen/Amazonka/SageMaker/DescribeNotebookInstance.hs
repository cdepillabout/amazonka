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
-- Module      : Amazonka.SageMaker.DescribeNotebookInstance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a notebook instance.
module Amazonka.SageMaker.DescribeNotebookInstance
  ( -- * Creating a Request
    DescribeNotebookInstance (..),
    newDescribeNotebookInstance,

    -- * Request Lenses
    describeNotebookInstance_notebookInstanceName,

    -- * Destructuring the Response
    DescribeNotebookInstanceResponse (..),
    newDescribeNotebookInstanceResponse,

    -- * Response Lenses
    describeNotebookInstanceResponse_roleArn,
    describeNotebookInstanceResponse_notebookInstanceLifecycleConfigName,
    describeNotebookInstanceResponse_notebookInstanceStatus,
    describeNotebookInstanceResponse_instanceMetadataServiceConfiguration,
    describeNotebookInstanceResponse_subnetId,
    describeNotebookInstanceResponse_acceleratorTypes,
    describeNotebookInstanceResponse_url,
    describeNotebookInstanceResponse_instanceType,
    describeNotebookInstanceResponse_lastModifiedTime,
    describeNotebookInstanceResponse_directInternetAccess,
    describeNotebookInstanceResponse_networkInterfaceId,
    describeNotebookInstanceResponse_securityGroups,
    describeNotebookInstanceResponse_notebookInstanceArn,
    describeNotebookInstanceResponse_additionalCodeRepositories,
    describeNotebookInstanceResponse_kmsKeyId,
    describeNotebookInstanceResponse_creationTime,
    describeNotebookInstanceResponse_platformIdentifier,
    describeNotebookInstanceResponse_notebookInstanceName,
    describeNotebookInstanceResponse_volumeSizeInGB,
    describeNotebookInstanceResponse_failureReason,
    describeNotebookInstanceResponse_defaultCodeRepository,
    describeNotebookInstanceResponse_rootAccess,
    describeNotebookInstanceResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.SageMaker.Types

-- | /See:/ 'newDescribeNotebookInstance' smart constructor.
data DescribeNotebookInstance = DescribeNotebookInstance'
  { -- | The name of the notebook instance that you want information about.
    notebookInstanceName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeNotebookInstance' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'notebookInstanceName', 'describeNotebookInstance_notebookInstanceName' - The name of the notebook instance that you want information about.
newDescribeNotebookInstance ::
  -- | 'notebookInstanceName'
  Prelude.Text ->
  DescribeNotebookInstance
newDescribeNotebookInstance pNotebookInstanceName_ =
  DescribeNotebookInstance'
    { notebookInstanceName =
        pNotebookInstanceName_
    }

-- | The name of the notebook instance that you want information about.
describeNotebookInstance_notebookInstanceName :: Lens.Lens' DescribeNotebookInstance Prelude.Text
describeNotebookInstance_notebookInstanceName = Lens.lens (\DescribeNotebookInstance' {notebookInstanceName} -> notebookInstanceName) (\s@DescribeNotebookInstance' {} a -> s {notebookInstanceName = a} :: DescribeNotebookInstance)

instance Core.AWSRequest DescribeNotebookInstance where
  type
    AWSResponse DescribeNotebookInstance =
      DescribeNotebookInstanceResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeNotebookInstanceResponse'
            Prelude.<$> (x Core..?> "RoleArn")
            Prelude.<*> (x Core..?> "NotebookInstanceLifecycleConfigName")
            Prelude.<*> (x Core..?> "NotebookInstanceStatus")
            Prelude.<*> (x Core..?> "InstanceMetadataServiceConfiguration")
            Prelude.<*> (x Core..?> "SubnetId")
            Prelude.<*> ( x Core..?> "AcceleratorTypes"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "Url")
            Prelude.<*> (x Core..?> "InstanceType")
            Prelude.<*> (x Core..?> "LastModifiedTime")
            Prelude.<*> (x Core..?> "DirectInternetAccess")
            Prelude.<*> (x Core..?> "NetworkInterfaceId")
            Prelude.<*> (x Core..?> "SecurityGroups" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "NotebookInstanceArn")
            Prelude.<*> ( x Core..?> "AdditionalCodeRepositories"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "KmsKeyId")
            Prelude.<*> (x Core..?> "CreationTime")
            Prelude.<*> (x Core..?> "PlatformIdentifier")
            Prelude.<*> (x Core..?> "NotebookInstanceName")
            Prelude.<*> (x Core..?> "VolumeSizeInGB")
            Prelude.<*> (x Core..?> "FailureReason")
            Prelude.<*> (x Core..?> "DefaultCodeRepository")
            Prelude.<*> (x Core..?> "RootAccess")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeNotebookInstance where
  hashWithSalt _salt DescribeNotebookInstance' {..} =
    _salt `Prelude.hashWithSalt` notebookInstanceName

instance Prelude.NFData DescribeNotebookInstance where
  rnf DescribeNotebookInstance' {..} =
    Prelude.rnf notebookInstanceName

instance Core.ToHeaders DescribeNotebookInstance where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "SageMaker.DescribeNotebookInstance" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeNotebookInstance where
  toJSON DescribeNotebookInstance' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ( "NotebookInstanceName"
                  Core..= notebookInstanceName
              )
          ]
      )

instance Core.ToPath DescribeNotebookInstance where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeNotebookInstance where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeNotebookInstanceResponse' smart constructor.
data DescribeNotebookInstanceResponse = DescribeNotebookInstanceResponse'
  { -- | The Amazon Resource Name (ARN) of the IAM role associated with the
    -- instance.
    roleArn :: Prelude.Maybe Prelude.Text,
    -- | Returns the name of a notebook instance lifecycle configuration.
    --
    -- For information about notebook instance lifestyle configurations, see
    -- <https://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html Step 2.1: (Optional) Customize a Notebook Instance>
    notebookInstanceLifecycleConfigName :: Prelude.Maybe Prelude.Text,
    -- | The status of the notebook instance.
    notebookInstanceStatus :: Prelude.Maybe NotebookInstanceStatus,
    -- | Information on the IMDS configuration of the notebook instance
    instanceMetadataServiceConfiguration :: Prelude.Maybe InstanceMetadataServiceConfiguration,
    -- | The ID of the VPC subnet.
    subnetId :: Prelude.Maybe Prelude.Text,
    -- | A list of the Elastic Inference (EI) instance types associated with this
    -- notebook instance. Currently only one EI instance type can be associated
    -- with a notebook instance. For more information, see
    -- <https://docs.aws.amazon.com/sagemaker/latest/dg/ei.html Using Elastic Inference in Amazon SageMaker>.
    acceleratorTypes :: Prelude.Maybe [NotebookInstanceAcceleratorType],
    -- | The URL that you use to connect to the Jupyter notebook that is running
    -- in your notebook instance.
    url :: Prelude.Maybe Prelude.Text,
    -- | The type of ML compute instance running on the notebook instance.
    instanceType :: Prelude.Maybe InstanceType,
    -- | A timestamp. Use this parameter to retrieve the time when the notebook
    -- instance was last modified.
    lastModifiedTime :: Prelude.Maybe Core.POSIX,
    -- | Describes whether SageMaker provides internet access to the notebook
    -- instance. If this value is set to /Disabled/, the notebook instance does
    -- not have internet access, and cannot connect to SageMaker training and
    -- endpoint services.
    --
    -- For more information, see
    -- <https://docs.aws.amazon.com/sagemaker/latest/dg/appendix-additional-considerations.html#appendix-notebook-and-internet-access Notebook Instances Are Internet-Enabled by Default>.
    directInternetAccess :: Prelude.Maybe DirectInternetAccess,
    -- | The network interface IDs that SageMaker created at the time of creating
    -- the instance.
    networkInterfaceId :: Prelude.Maybe Prelude.Text,
    -- | The IDs of the VPC security groups.
    securityGroups :: Prelude.Maybe [Prelude.Text],
    -- | The Amazon Resource Name (ARN) of the notebook instance.
    notebookInstanceArn :: Prelude.Maybe Prelude.Text,
    -- | An array of up to three Git repositories associated with the notebook
    -- instance. These can be either the names of Git repositories stored as
    -- resources in your account, or the URL of Git repositories in
    -- <https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html Amazon Web Services CodeCommit>
    -- or in any other Git repository. These repositories are cloned at the
    -- same level as the default repository of your notebook instance. For more
    -- information, see
    -- <https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html Associating Git Repositories with SageMaker Notebook Instances>.
    additionalCodeRepositories :: Prelude.Maybe [Prelude.Text],
    -- | The Amazon Web Services KMS key ID SageMaker uses to encrypt data when
    -- storing it on the ML storage volume attached to the instance.
    kmsKeyId :: Prelude.Maybe Prelude.Text,
    -- | A timestamp. Use this parameter to return the time when the notebook
    -- instance was created
    creationTime :: Prelude.Maybe Core.POSIX,
    -- | The platform identifier of the notebook instance runtime environment.
    platformIdentifier :: Prelude.Maybe Prelude.Text,
    -- | The name of the SageMaker notebook instance.
    notebookInstanceName :: Prelude.Maybe Prelude.Text,
    -- | The size, in GB, of the ML storage volume attached to the notebook
    -- instance.
    volumeSizeInGB :: Prelude.Maybe Prelude.Natural,
    -- | If status is @Failed@, the reason it failed.
    failureReason :: Prelude.Maybe Prelude.Text,
    -- | The Git repository associated with the notebook instance as its default
    -- code repository. This can be either the name of a Git repository stored
    -- as a resource in your account, or the URL of a Git repository in
    -- <https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html Amazon Web Services CodeCommit>
    -- or in any other Git repository. When you open a notebook instance, it
    -- opens in the directory that contains this repository. For more
    -- information, see
    -- <https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html Associating Git Repositories with SageMaker Notebook Instances>.
    defaultCodeRepository :: Prelude.Maybe Prelude.Text,
    -- | Whether root access is enabled or disabled for users of the notebook
    -- instance.
    --
    -- Lifecycle configurations need root access to be able to set up a
    -- notebook instance. Because of this, lifecycle configurations associated
    -- with a notebook instance always run with root access even if you disable
    -- root access for users.
    rootAccess :: Prelude.Maybe RootAccess,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeNotebookInstanceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'roleArn', 'describeNotebookInstanceResponse_roleArn' - The Amazon Resource Name (ARN) of the IAM role associated with the
-- instance.
--
-- 'notebookInstanceLifecycleConfigName', 'describeNotebookInstanceResponse_notebookInstanceLifecycleConfigName' - Returns the name of a notebook instance lifecycle configuration.
--
-- For information about notebook instance lifestyle configurations, see
-- <https://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html Step 2.1: (Optional) Customize a Notebook Instance>
--
-- 'notebookInstanceStatus', 'describeNotebookInstanceResponse_notebookInstanceStatus' - The status of the notebook instance.
--
-- 'instanceMetadataServiceConfiguration', 'describeNotebookInstanceResponse_instanceMetadataServiceConfiguration' - Information on the IMDS configuration of the notebook instance
--
-- 'subnetId', 'describeNotebookInstanceResponse_subnetId' - The ID of the VPC subnet.
--
-- 'acceleratorTypes', 'describeNotebookInstanceResponse_acceleratorTypes' - A list of the Elastic Inference (EI) instance types associated with this
-- notebook instance. Currently only one EI instance type can be associated
-- with a notebook instance. For more information, see
-- <https://docs.aws.amazon.com/sagemaker/latest/dg/ei.html Using Elastic Inference in Amazon SageMaker>.
--
-- 'url', 'describeNotebookInstanceResponse_url' - The URL that you use to connect to the Jupyter notebook that is running
-- in your notebook instance.
--
-- 'instanceType', 'describeNotebookInstanceResponse_instanceType' - The type of ML compute instance running on the notebook instance.
--
-- 'lastModifiedTime', 'describeNotebookInstanceResponse_lastModifiedTime' - A timestamp. Use this parameter to retrieve the time when the notebook
-- instance was last modified.
--
-- 'directInternetAccess', 'describeNotebookInstanceResponse_directInternetAccess' - Describes whether SageMaker provides internet access to the notebook
-- instance. If this value is set to /Disabled/, the notebook instance does
-- not have internet access, and cannot connect to SageMaker training and
-- endpoint services.
--
-- For more information, see
-- <https://docs.aws.amazon.com/sagemaker/latest/dg/appendix-additional-considerations.html#appendix-notebook-and-internet-access Notebook Instances Are Internet-Enabled by Default>.
--
-- 'networkInterfaceId', 'describeNotebookInstanceResponse_networkInterfaceId' - The network interface IDs that SageMaker created at the time of creating
-- the instance.
--
-- 'securityGroups', 'describeNotebookInstanceResponse_securityGroups' - The IDs of the VPC security groups.
--
-- 'notebookInstanceArn', 'describeNotebookInstanceResponse_notebookInstanceArn' - The Amazon Resource Name (ARN) of the notebook instance.
--
-- 'additionalCodeRepositories', 'describeNotebookInstanceResponse_additionalCodeRepositories' - An array of up to three Git repositories associated with the notebook
-- instance. These can be either the names of Git repositories stored as
-- resources in your account, or the URL of Git repositories in
-- <https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html Amazon Web Services CodeCommit>
-- or in any other Git repository. These repositories are cloned at the
-- same level as the default repository of your notebook instance. For more
-- information, see
-- <https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html Associating Git Repositories with SageMaker Notebook Instances>.
--
-- 'kmsKeyId', 'describeNotebookInstanceResponse_kmsKeyId' - The Amazon Web Services KMS key ID SageMaker uses to encrypt data when
-- storing it on the ML storage volume attached to the instance.
--
-- 'creationTime', 'describeNotebookInstanceResponse_creationTime' - A timestamp. Use this parameter to return the time when the notebook
-- instance was created
--
-- 'platformIdentifier', 'describeNotebookInstanceResponse_platformIdentifier' - The platform identifier of the notebook instance runtime environment.
--
-- 'notebookInstanceName', 'describeNotebookInstanceResponse_notebookInstanceName' - The name of the SageMaker notebook instance.
--
-- 'volumeSizeInGB', 'describeNotebookInstanceResponse_volumeSizeInGB' - The size, in GB, of the ML storage volume attached to the notebook
-- instance.
--
-- 'failureReason', 'describeNotebookInstanceResponse_failureReason' - If status is @Failed@, the reason it failed.
--
-- 'defaultCodeRepository', 'describeNotebookInstanceResponse_defaultCodeRepository' - The Git repository associated with the notebook instance as its default
-- code repository. This can be either the name of a Git repository stored
-- as a resource in your account, or the URL of a Git repository in
-- <https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html Amazon Web Services CodeCommit>
-- or in any other Git repository. When you open a notebook instance, it
-- opens in the directory that contains this repository. For more
-- information, see
-- <https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html Associating Git Repositories with SageMaker Notebook Instances>.
--
-- 'rootAccess', 'describeNotebookInstanceResponse_rootAccess' - Whether root access is enabled or disabled for users of the notebook
-- instance.
--
-- Lifecycle configurations need root access to be able to set up a
-- notebook instance. Because of this, lifecycle configurations associated
-- with a notebook instance always run with root access even if you disable
-- root access for users.
--
-- 'httpStatus', 'describeNotebookInstanceResponse_httpStatus' - The response's http status code.
newDescribeNotebookInstanceResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeNotebookInstanceResponse
newDescribeNotebookInstanceResponse pHttpStatus_ =
  DescribeNotebookInstanceResponse'
    { roleArn =
        Prelude.Nothing,
      notebookInstanceLifecycleConfigName =
        Prelude.Nothing,
      notebookInstanceStatus = Prelude.Nothing,
      instanceMetadataServiceConfiguration =
        Prelude.Nothing,
      subnetId = Prelude.Nothing,
      acceleratorTypes = Prelude.Nothing,
      url = Prelude.Nothing,
      instanceType = Prelude.Nothing,
      lastModifiedTime = Prelude.Nothing,
      directInternetAccess = Prelude.Nothing,
      networkInterfaceId = Prelude.Nothing,
      securityGroups = Prelude.Nothing,
      notebookInstanceArn = Prelude.Nothing,
      additionalCodeRepositories =
        Prelude.Nothing,
      kmsKeyId = Prelude.Nothing,
      creationTime = Prelude.Nothing,
      platformIdentifier = Prelude.Nothing,
      notebookInstanceName = Prelude.Nothing,
      volumeSizeInGB = Prelude.Nothing,
      failureReason = Prelude.Nothing,
      defaultCodeRepository = Prelude.Nothing,
      rootAccess = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The Amazon Resource Name (ARN) of the IAM role associated with the
-- instance.
describeNotebookInstanceResponse_roleArn :: Lens.Lens' DescribeNotebookInstanceResponse (Prelude.Maybe Prelude.Text)
describeNotebookInstanceResponse_roleArn = Lens.lens (\DescribeNotebookInstanceResponse' {roleArn} -> roleArn) (\s@DescribeNotebookInstanceResponse' {} a -> s {roleArn = a} :: DescribeNotebookInstanceResponse)

-- | Returns the name of a notebook instance lifecycle configuration.
--
-- For information about notebook instance lifestyle configurations, see
-- <https://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html Step 2.1: (Optional) Customize a Notebook Instance>
describeNotebookInstanceResponse_notebookInstanceLifecycleConfigName :: Lens.Lens' DescribeNotebookInstanceResponse (Prelude.Maybe Prelude.Text)
describeNotebookInstanceResponse_notebookInstanceLifecycleConfigName = Lens.lens (\DescribeNotebookInstanceResponse' {notebookInstanceLifecycleConfigName} -> notebookInstanceLifecycleConfigName) (\s@DescribeNotebookInstanceResponse' {} a -> s {notebookInstanceLifecycleConfigName = a} :: DescribeNotebookInstanceResponse)

-- | The status of the notebook instance.
describeNotebookInstanceResponse_notebookInstanceStatus :: Lens.Lens' DescribeNotebookInstanceResponse (Prelude.Maybe NotebookInstanceStatus)
describeNotebookInstanceResponse_notebookInstanceStatus = Lens.lens (\DescribeNotebookInstanceResponse' {notebookInstanceStatus} -> notebookInstanceStatus) (\s@DescribeNotebookInstanceResponse' {} a -> s {notebookInstanceStatus = a} :: DescribeNotebookInstanceResponse)

-- | Information on the IMDS configuration of the notebook instance
describeNotebookInstanceResponse_instanceMetadataServiceConfiguration :: Lens.Lens' DescribeNotebookInstanceResponse (Prelude.Maybe InstanceMetadataServiceConfiguration)
describeNotebookInstanceResponse_instanceMetadataServiceConfiguration = Lens.lens (\DescribeNotebookInstanceResponse' {instanceMetadataServiceConfiguration} -> instanceMetadataServiceConfiguration) (\s@DescribeNotebookInstanceResponse' {} a -> s {instanceMetadataServiceConfiguration = a} :: DescribeNotebookInstanceResponse)

-- | The ID of the VPC subnet.
describeNotebookInstanceResponse_subnetId :: Lens.Lens' DescribeNotebookInstanceResponse (Prelude.Maybe Prelude.Text)
describeNotebookInstanceResponse_subnetId = Lens.lens (\DescribeNotebookInstanceResponse' {subnetId} -> subnetId) (\s@DescribeNotebookInstanceResponse' {} a -> s {subnetId = a} :: DescribeNotebookInstanceResponse)

-- | A list of the Elastic Inference (EI) instance types associated with this
-- notebook instance. Currently only one EI instance type can be associated
-- with a notebook instance. For more information, see
-- <https://docs.aws.amazon.com/sagemaker/latest/dg/ei.html Using Elastic Inference in Amazon SageMaker>.
describeNotebookInstanceResponse_acceleratorTypes :: Lens.Lens' DescribeNotebookInstanceResponse (Prelude.Maybe [NotebookInstanceAcceleratorType])
describeNotebookInstanceResponse_acceleratorTypes = Lens.lens (\DescribeNotebookInstanceResponse' {acceleratorTypes} -> acceleratorTypes) (\s@DescribeNotebookInstanceResponse' {} a -> s {acceleratorTypes = a} :: DescribeNotebookInstanceResponse) Prelude.. Lens.mapping Lens.coerced

-- | The URL that you use to connect to the Jupyter notebook that is running
-- in your notebook instance.
describeNotebookInstanceResponse_url :: Lens.Lens' DescribeNotebookInstanceResponse (Prelude.Maybe Prelude.Text)
describeNotebookInstanceResponse_url = Lens.lens (\DescribeNotebookInstanceResponse' {url} -> url) (\s@DescribeNotebookInstanceResponse' {} a -> s {url = a} :: DescribeNotebookInstanceResponse)

-- | The type of ML compute instance running on the notebook instance.
describeNotebookInstanceResponse_instanceType :: Lens.Lens' DescribeNotebookInstanceResponse (Prelude.Maybe InstanceType)
describeNotebookInstanceResponse_instanceType = Lens.lens (\DescribeNotebookInstanceResponse' {instanceType} -> instanceType) (\s@DescribeNotebookInstanceResponse' {} a -> s {instanceType = a} :: DescribeNotebookInstanceResponse)

-- | A timestamp. Use this parameter to retrieve the time when the notebook
-- instance was last modified.
describeNotebookInstanceResponse_lastModifiedTime :: Lens.Lens' DescribeNotebookInstanceResponse (Prelude.Maybe Prelude.UTCTime)
describeNotebookInstanceResponse_lastModifiedTime = Lens.lens (\DescribeNotebookInstanceResponse' {lastModifiedTime} -> lastModifiedTime) (\s@DescribeNotebookInstanceResponse' {} a -> s {lastModifiedTime = a} :: DescribeNotebookInstanceResponse) Prelude.. Lens.mapping Core._Time

-- | Describes whether SageMaker provides internet access to the notebook
-- instance. If this value is set to /Disabled/, the notebook instance does
-- not have internet access, and cannot connect to SageMaker training and
-- endpoint services.
--
-- For more information, see
-- <https://docs.aws.amazon.com/sagemaker/latest/dg/appendix-additional-considerations.html#appendix-notebook-and-internet-access Notebook Instances Are Internet-Enabled by Default>.
describeNotebookInstanceResponse_directInternetAccess :: Lens.Lens' DescribeNotebookInstanceResponse (Prelude.Maybe DirectInternetAccess)
describeNotebookInstanceResponse_directInternetAccess = Lens.lens (\DescribeNotebookInstanceResponse' {directInternetAccess} -> directInternetAccess) (\s@DescribeNotebookInstanceResponse' {} a -> s {directInternetAccess = a} :: DescribeNotebookInstanceResponse)

-- | The network interface IDs that SageMaker created at the time of creating
-- the instance.
describeNotebookInstanceResponse_networkInterfaceId :: Lens.Lens' DescribeNotebookInstanceResponse (Prelude.Maybe Prelude.Text)
describeNotebookInstanceResponse_networkInterfaceId = Lens.lens (\DescribeNotebookInstanceResponse' {networkInterfaceId} -> networkInterfaceId) (\s@DescribeNotebookInstanceResponse' {} a -> s {networkInterfaceId = a} :: DescribeNotebookInstanceResponse)

-- | The IDs of the VPC security groups.
describeNotebookInstanceResponse_securityGroups :: Lens.Lens' DescribeNotebookInstanceResponse (Prelude.Maybe [Prelude.Text])
describeNotebookInstanceResponse_securityGroups = Lens.lens (\DescribeNotebookInstanceResponse' {securityGroups} -> securityGroups) (\s@DescribeNotebookInstanceResponse' {} a -> s {securityGroups = a} :: DescribeNotebookInstanceResponse) Prelude.. Lens.mapping Lens.coerced

-- | The Amazon Resource Name (ARN) of the notebook instance.
describeNotebookInstanceResponse_notebookInstanceArn :: Lens.Lens' DescribeNotebookInstanceResponse (Prelude.Maybe Prelude.Text)
describeNotebookInstanceResponse_notebookInstanceArn = Lens.lens (\DescribeNotebookInstanceResponse' {notebookInstanceArn} -> notebookInstanceArn) (\s@DescribeNotebookInstanceResponse' {} a -> s {notebookInstanceArn = a} :: DescribeNotebookInstanceResponse)

-- | An array of up to three Git repositories associated with the notebook
-- instance. These can be either the names of Git repositories stored as
-- resources in your account, or the URL of Git repositories in
-- <https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html Amazon Web Services CodeCommit>
-- or in any other Git repository. These repositories are cloned at the
-- same level as the default repository of your notebook instance. For more
-- information, see
-- <https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html Associating Git Repositories with SageMaker Notebook Instances>.
describeNotebookInstanceResponse_additionalCodeRepositories :: Lens.Lens' DescribeNotebookInstanceResponse (Prelude.Maybe [Prelude.Text])
describeNotebookInstanceResponse_additionalCodeRepositories = Lens.lens (\DescribeNotebookInstanceResponse' {additionalCodeRepositories} -> additionalCodeRepositories) (\s@DescribeNotebookInstanceResponse' {} a -> s {additionalCodeRepositories = a} :: DescribeNotebookInstanceResponse) Prelude.. Lens.mapping Lens.coerced

-- | The Amazon Web Services KMS key ID SageMaker uses to encrypt data when
-- storing it on the ML storage volume attached to the instance.
describeNotebookInstanceResponse_kmsKeyId :: Lens.Lens' DescribeNotebookInstanceResponse (Prelude.Maybe Prelude.Text)
describeNotebookInstanceResponse_kmsKeyId = Lens.lens (\DescribeNotebookInstanceResponse' {kmsKeyId} -> kmsKeyId) (\s@DescribeNotebookInstanceResponse' {} a -> s {kmsKeyId = a} :: DescribeNotebookInstanceResponse)

-- | A timestamp. Use this parameter to return the time when the notebook
-- instance was created
describeNotebookInstanceResponse_creationTime :: Lens.Lens' DescribeNotebookInstanceResponse (Prelude.Maybe Prelude.UTCTime)
describeNotebookInstanceResponse_creationTime = Lens.lens (\DescribeNotebookInstanceResponse' {creationTime} -> creationTime) (\s@DescribeNotebookInstanceResponse' {} a -> s {creationTime = a} :: DescribeNotebookInstanceResponse) Prelude.. Lens.mapping Core._Time

-- | The platform identifier of the notebook instance runtime environment.
describeNotebookInstanceResponse_platformIdentifier :: Lens.Lens' DescribeNotebookInstanceResponse (Prelude.Maybe Prelude.Text)
describeNotebookInstanceResponse_platformIdentifier = Lens.lens (\DescribeNotebookInstanceResponse' {platformIdentifier} -> platformIdentifier) (\s@DescribeNotebookInstanceResponse' {} a -> s {platformIdentifier = a} :: DescribeNotebookInstanceResponse)

-- | The name of the SageMaker notebook instance.
describeNotebookInstanceResponse_notebookInstanceName :: Lens.Lens' DescribeNotebookInstanceResponse (Prelude.Maybe Prelude.Text)
describeNotebookInstanceResponse_notebookInstanceName = Lens.lens (\DescribeNotebookInstanceResponse' {notebookInstanceName} -> notebookInstanceName) (\s@DescribeNotebookInstanceResponse' {} a -> s {notebookInstanceName = a} :: DescribeNotebookInstanceResponse)

-- | The size, in GB, of the ML storage volume attached to the notebook
-- instance.
describeNotebookInstanceResponse_volumeSizeInGB :: Lens.Lens' DescribeNotebookInstanceResponse (Prelude.Maybe Prelude.Natural)
describeNotebookInstanceResponse_volumeSizeInGB = Lens.lens (\DescribeNotebookInstanceResponse' {volumeSizeInGB} -> volumeSizeInGB) (\s@DescribeNotebookInstanceResponse' {} a -> s {volumeSizeInGB = a} :: DescribeNotebookInstanceResponse)

-- | If status is @Failed@, the reason it failed.
describeNotebookInstanceResponse_failureReason :: Lens.Lens' DescribeNotebookInstanceResponse (Prelude.Maybe Prelude.Text)
describeNotebookInstanceResponse_failureReason = Lens.lens (\DescribeNotebookInstanceResponse' {failureReason} -> failureReason) (\s@DescribeNotebookInstanceResponse' {} a -> s {failureReason = a} :: DescribeNotebookInstanceResponse)

-- | The Git repository associated with the notebook instance as its default
-- code repository. This can be either the name of a Git repository stored
-- as a resource in your account, or the URL of a Git repository in
-- <https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html Amazon Web Services CodeCommit>
-- or in any other Git repository. When you open a notebook instance, it
-- opens in the directory that contains this repository. For more
-- information, see
-- <https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html Associating Git Repositories with SageMaker Notebook Instances>.
describeNotebookInstanceResponse_defaultCodeRepository :: Lens.Lens' DescribeNotebookInstanceResponse (Prelude.Maybe Prelude.Text)
describeNotebookInstanceResponse_defaultCodeRepository = Lens.lens (\DescribeNotebookInstanceResponse' {defaultCodeRepository} -> defaultCodeRepository) (\s@DescribeNotebookInstanceResponse' {} a -> s {defaultCodeRepository = a} :: DescribeNotebookInstanceResponse)

-- | Whether root access is enabled or disabled for users of the notebook
-- instance.
--
-- Lifecycle configurations need root access to be able to set up a
-- notebook instance. Because of this, lifecycle configurations associated
-- with a notebook instance always run with root access even if you disable
-- root access for users.
describeNotebookInstanceResponse_rootAccess :: Lens.Lens' DescribeNotebookInstanceResponse (Prelude.Maybe RootAccess)
describeNotebookInstanceResponse_rootAccess = Lens.lens (\DescribeNotebookInstanceResponse' {rootAccess} -> rootAccess) (\s@DescribeNotebookInstanceResponse' {} a -> s {rootAccess = a} :: DescribeNotebookInstanceResponse)

-- | The response's http status code.
describeNotebookInstanceResponse_httpStatus :: Lens.Lens' DescribeNotebookInstanceResponse Prelude.Int
describeNotebookInstanceResponse_httpStatus = Lens.lens (\DescribeNotebookInstanceResponse' {httpStatus} -> httpStatus) (\s@DescribeNotebookInstanceResponse' {} a -> s {httpStatus = a} :: DescribeNotebookInstanceResponse)

instance
  Prelude.NFData
    DescribeNotebookInstanceResponse
  where
  rnf DescribeNotebookInstanceResponse' {..} =
    Prelude.rnf roleArn
      `Prelude.seq` Prelude.rnf notebookInstanceLifecycleConfigName
      `Prelude.seq` Prelude.rnf notebookInstanceStatus
      `Prelude.seq` Prelude.rnf instanceMetadataServiceConfiguration
      `Prelude.seq` Prelude.rnf subnetId
      `Prelude.seq` Prelude.rnf acceleratorTypes
      `Prelude.seq` Prelude.rnf url
      `Prelude.seq` Prelude.rnf instanceType
      `Prelude.seq` Prelude.rnf lastModifiedTime
      `Prelude.seq` Prelude.rnf directInternetAccess
      `Prelude.seq` Prelude.rnf networkInterfaceId
      `Prelude.seq` Prelude.rnf securityGroups
      `Prelude.seq` Prelude.rnf notebookInstanceArn
      `Prelude.seq` Prelude.rnf additionalCodeRepositories
      `Prelude.seq` Prelude.rnf kmsKeyId
      `Prelude.seq` Prelude.rnf creationTime
      `Prelude.seq` Prelude.rnf platformIdentifier
      `Prelude.seq` Prelude.rnf notebookInstanceName
      `Prelude.seq` Prelude.rnf volumeSizeInGB
      `Prelude.seq` Prelude.rnf failureReason
      `Prelude.seq` Prelude.rnf
        defaultCodeRepository
      `Prelude.seq` Prelude.rnf rootAccess
      `Prelude.seq` Prelude.rnf httpStatus
