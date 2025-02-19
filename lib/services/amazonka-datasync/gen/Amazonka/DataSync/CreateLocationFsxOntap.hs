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
-- Module      : Amazonka.DataSync.CreateLocationFsxOntap
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an endpoint for an Amazon FSx for NetApp ONTAP file system that
-- DataSync can access for a transfer. For more information, see
-- <https://docs.aws.amazon.com/datasync/latest/userguide/create-ontap-location.html Creating a location for FSx for ONTAP>.
module Amazonka.DataSync.CreateLocationFsxOntap
  ( -- * Creating a Request
    CreateLocationFsxOntap (..),
    newCreateLocationFsxOntap,

    -- * Request Lenses
    createLocationFsxOntap_tags,
    createLocationFsxOntap_subdirectory,
    createLocationFsxOntap_protocol,
    createLocationFsxOntap_securityGroupArns,
    createLocationFsxOntap_storageVirtualMachineArn,

    -- * Destructuring the Response
    CreateLocationFsxOntapResponse (..),
    newCreateLocationFsxOntapResponse,

    -- * Response Lenses
    createLocationFsxOntapResponse_locationArn,
    createLocationFsxOntapResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.DataSync.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateLocationFsxOntap' smart constructor.
data CreateLocationFsxOntap = CreateLocationFsxOntap'
  { -- | Specifies labels that help you categorize, filter, and search for your
    -- Amazon Web Services resources. We recommend creating at least a name tag
    -- for your location.
    tags :: Prelude.Maybe [TagListEntry],
    -- | Specifies the junction path (also known as a mount point) in the SVM
    -- volume where you\'re copying data to or from (for example, @\/vol1@).
    --
    -- Don\'t specify a junction path in the SVM\'s root volume. For more
    -- information, see
    -- <https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/managing-svms.html Managing FSx for ONTAP storage virtual machines>
    -- in the /Amazon FSx for NetApp ONTAP User Guide/.
    subdirectory :: Prelude.Maybe Prelude.Text,
    protocol :: FsxProtocol,
    -- | Specifies the Amazon EC2 security groups that provide access to your
    -- file system\'s preferred subnet.
    --
    -- The security groups must allow outbound traffic on the following ports
    -- (depending on the protocol you use):
    --
    -- -   __Network File System (NFS)__: TCP ports 111, 635, and 2049
    --
    -- -   __Server Message Block (SMB)__: TCP port 445
    --
    -- Your file system\'s security groups must also allow inbound traffic on
    -- the same ports.
    securityGroupArns :: Prelude.NonEmpty Prelude.Text,
    -- | Specifies the ARN of the storage virtual machine (SVM) on your file
    -- system where you\'re copying data to or from.
    storageVirtualMachineArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateLocationFsxOntap' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createLocationFsxOntap_tags' - Specifies labels that help you categorize, filter, and search for your
-- Amazon Web Services resources. We recommend creating at least a name tag
-- for your location.
--
-- 'subdirectory', 'createLocationFsxOntap_subdirectory' - Specifies the junction path (also known as a mount point) in the SVM
-- volume where you\'re copying data to or from (for example, @\/vol1@).
--
-- Don\'t specify a junction path in the SVM\'s root volume. For more
-- information, see
-- <https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/managing-svms.html Managing FSx for ONTAP storage virtual machines>
-- in the /Amazon FSx for NetApp ONTAP User Guide/.
--
-- 'protocol', 'createLocationFsxOntap_protocol' - Undocumented member.
--
-- 'securityGroupArns', 'createLocationFsxOntap_securityGroupArns' - Specifies the Amazon EC2 security groups that provide access to your
-- file system\'s preferred subnet.
--
-- The security groups must allow outbound traffic on the following ports
-- (depending on the protocol you use):
--
-- -   __Network File System (NFS)__: TCP ports 111, 635, and 2049
--
-- -   __Server Message Block (SMB)__: TCP port 445
--
-- Your file system\'s security groups must also allow inbound traffic on
-- the same ports.
--
-- 'storageVirtualMachineArn', 'createLocationFsxOntap_storageVirtualMachineArn' - Specifies the ARN of the storage virtual machine (SVM) on your file
-- system where you\'re copying data to or from.
newCreateLocationFsxOntap ::
  -- | 'protocol'
  FsxProtocol ->
  -- | 'securityGroupArns'
  Prelude.NonEmpty Prelude.Text ->
  -- | 'storageVirtualMachineArn'
  Prelude.Text ->
  CreateLocationFsxOntap
newCreateLocationFsxOntap
  pProtocol_
  pSecurityGroupArns_
  pStorageVirtualMachineArn_ =
    CreateLocationFsxOntap'
      { tags = Prelude.Nothing,
        subdirectory = Prelude.Nothing,
        protocol = pProtocol_,
        securityGroupArns =
          Lens.coerced Lens.# pSecurityGroupArns_,
        storageVirtualMachineArn =
          pStorageVirtualMachineArn_
      }

-- | Specifies labels that help you categorize, filter, and search for your
-- Amazon Web Services resources. We recommend creating at least a name tag
-- for your location.
createLocationFsxOntap_tags :: Lens.Lens' CreateLocationFsxOntap (Prelude.Maybe [TagListEntry])
createLocationFsxOntap_tags = Lens.lens (\CreateLocationFsxOntap' {tags} -> tags) (\s@CreateLocationFsxOntap' {} a -> s {tags = a} :: CreateLocationFsxOntap) Prelude.. Lens.mapping Lens.coerced

-- | Specifies the junction path (also known as a mount point) in the SVM
-- volume where you\'re copying data to or from (for example, @\/vol1@).
--
-- Don\'t specify a junction path in the SVM\'s root volume. For more
-- information, see
-- <https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/managing-svms.html Managing FSx for ONTAP storage virtual machines>
-- in the /Amazon FSx for NetApp ONTAP User Guide/.
createLocationFsxOntap_subdirectory :: Lens.Lens' CreateLocationFsxOntap (Prelude.Maybe Prelude.Text)
createLocationFsxOntap_subdirectory = Lens.lens (\CreateLocationFsxOntap' {subdirectory} -> subdirectory) (\s@CreateLocationFsxOntap' {} a -> s {subdirectory = a} :: CreateLocationFsxOntap)

-- | Undocumented member.
createLocationFsxOntap_protocol :: Lens.Lens' CreateLocationFsxOntap FsxProtocol
createLocationFsxOntap_protocol = Lens.lens (\CreateLocationFsxOntap' {protocol} -> protocol) (\s@CreateLocationFsxOntap' {} a -> s {protocol = a} :: CreateLocationFsxOntap)

-- | Specifies the Amazon EC2 security groups that provide access to your
-- file system\'s preferred subnet.
--
-- The security groups must allow outbound traffic on the following ports
-- (depending on the protocol you use):
--
-- -   __Network File System (NFS)__: TCP ports 111, 635, and 2049
--
-- -   __Server Message Block (SMB)__: TCP port 445
--
-- Your file system\'s security groups must also allow inbound traffic on
-- the same ports.
createLocationFsxOntap_securityGroupArns :: Lens.Lens' CreateLocationFsxOntap (Prelude.NonEmpty Prelude.Text)
createLocationFsxOntap_securityGroupArns = Lens.lens (\CreateLocationFsxOntap' {securityGroupArns} -> securityGroupArns) (\s@CreateLocationFsxOntap' {} a -> s {securityGroupArns = a} :: CreateLocationFsxOntap) Prelude.. Lens.coerced

-- | Specifies the ARN of the storage virtual machine (SVM) on your file
-- system where you\'re copying data to or from.
createLocationFsxOntap_storageVirtualMachineArn :: Lens.Lens' CreateLocationFsxOntap Prelude.Text
createLocationFsxOntap_storageVirtualMachineArn = Lens.lens (\CreateLocationFsxOntap' {storageVirtualMachineArn} -> storageVirtualMachineArn) (\s@CreateLocationFsxOntap' {} a -> s {storageVirtualMachineArn = a} :: CreateLocationFsxOntap)

instance Core.AWSRequest CreateLocationFsxOntap where
  type
    AWSResponse CreateLocationFsxOntap =
      CreateLocationFsxOntapResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateLocationFsxOntapResponse'
            Prelude.<$> (x Core..?> "LocationArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateLocationFsxOntap where
  hashWithSalt _salt CreateLocationFsxOntap' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` subdirectory
      `Prelude.hashWithSalt` protocol
      `Prelude.hashWithSalt` securityGroupArns
      `Prelude.hashWithSalt` storageVirtualMachineArn

instance Prelude.NFData CreateLocationFsxOntap where
  rnf CreateLocationFsxOntap' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf subdirectory
      `Prelude.seq` Prelude.rnf protocol
      `Prelude.seq` Prelude.rnf securityGroupArns
      `Prelude.seq` Prelude.rnf storageVirtualMachineArn

instance Core.ToHeaders CreateLocationFsxOntap where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "FmrsService.CreateLocationFsxOntap" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateLocationFsxOntap where
  toJSON CreateLocationFsxOntap' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Tags" Core..=) Prelude.<$> tags,
            ("Subdirectory" Core..=) Prelude.<$> subdirectory,
            Prelude.Just ("Protocol" Core..= protocol),
            Prelude.Just
              ("SecurityGroupArns" Core..= securityGroupArns),
            Prelude.Just
              ( "StorageVirtualMachineArn"
                  Core..= storageVirtualMachineArn
              )
          ]
      )

instance Core.ToPath CreateLocationFsxOntap where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateLocationFsxOntap where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateLocationFsxOntapResponse' smart constructor.
data CreateLocationFsxOntapResponse = CreateLocationFsxOntapResponse'
  { -- | Specifies the ARN of the FSx for ONTAP file system location that you
    -- create.
    locationArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateLocationFsxOntapResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'locationArn', 'createLocationFsxOntapResponse_locationArn' - Specifies the ARN of the FSx for ONTAP file system location that you
-- create.
--
-- 'httpStatus', 'createLocationFsxOntapResponse_httpStatus' - The response's http status code.
newCreateLocationFsxOntapResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateLocationFsxOntapResponse
newCreateLocationFsxOntapResponse pHttpStatus_ =
  CreateLocationFsxOntapResponse'
    { locationArn =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Specifies the ARN of the FSx for ONTAP file system location that you
-- create.
createLocationFsxOntapResponse_locationArn :: Lens.Lens' CreateLocationFsxOntapResponse (Prelude.Maybe Prelude.Text)
createLocationFsxOntapResponse_locationArn = Lens.lens (\CreateLocationFsxOntapResponse' {locationArn} -> locationArn) (\s@CreateLocationFsxOntapResponse' {} a -> s {locationArn = a} :: CreateLocationFsxOntapResponse)

-- | The response's http status code.
createLocationFsxOntapResponse_httpStatus :: Lens.Lens' CreateLocationFsxOntapResponse Prelude.Int
createLocationFsxOntapResponse_httpStatus = Lens.lens (\CreateLocationFsxOntapResponse' {httpStatus} -> httpStatus) (\s@CreateLocationFsxOntapResponse' {} a -> s {httpStatus = a} :: CreateLocationFsxOntapResponse)

instance
  Prelude.NFData
    CreateLocationFsxOntapResponse
  where
  rnf CreateLocationFsxOntapResponse' {..} =
    Prelude.rnf locationArn
      `Prelude.seq` Prelude.rnf httpStatus
