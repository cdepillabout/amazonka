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
-- Module      : Amazonka.ImportExport.CreateJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This operation initiates the process of scheduling an upload or download
-- of your data. You include in the request a manifest that describes the
-- data transfer specifics. The response to the request includes a job ID,
-- which you can use in other operations, a signature that you use to
-- identify your storage device, and the address where you should ship your
-- storage device.
module Amazonka.ImportExport.CreateJob
  ( -- * Creating a Request
    CreateJob (..),
    newCreateJob,

    -- * Request Lenses
    createJob_aPIVersion,
    createJob_manifestAddendum,
    createJob_jobType,
    createJob_manifest,
    createJob_validateOnly,

    -- * Destructuring the Response
    CreateJobResponse (..),
    newCreateJobResponse,

    -- * Response Lenses
    createJobResponse_signature,
    createJobResponse_jobType,
    createJobResponse_jobId,
    createJobResponse_signatureFileContents,
    createJobResponse_warningMessage,
    createJobResponse_artifactList,
    createJobResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.ImportExport.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | Input structure for the CreateJob operation.
--
-- /See:/ 'newCreateJob' smart constructor.
data CreateJob = CreateJob'
  { aPIVersion :: Prelude.Maybe Prelude.Text,
    manifestAddendum :: Prelude.Maybe Prelude.Text,
    jobType :: JobType,
    manifest :: Prelude.Text,
    validateOnly :: Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateJob' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'aPIVersion', 'createJob_aPIVersion' - Undocumented member.
--
-- 'manifestAddendum', 'createJob_manifestAddendum' - Undocumented member.
--
-- 'jobType', 'createJob_jobType' - Undocumented member.
--
-- 'manifest', 'createJob_manifest' - Undocumented member.
--
-- 'validateOnly', 'createJob_validateOnly' - Undocumented member.
newCreateJob ::
  -- | 'jobType'
  JobType ->
  -- | 'manifest'
  Prelude.Text ->
  -- | 'validateOnly'
  Prelude.Bool ->
  CreateJob
newCreateJob pJobType_ pManifest_ pValidateOnly_ =
  CreateJob'
    { aPIVersion = Prelude.Nothing,
      manifestAddendum = Prelude.Nothing,
      jobType = pJobType_,
      manifest = pManifest_,
      validateOnly = pValidateOnly_
    }

-- | Undocumented member.
createJob_aPIVersion :: Lens.Lens' CreateJob (Prelude.Maybe Prelude.Text)
createJob_aPIVersion = Lens.lens (\CreateJob' {aPIVersion} -> aPIVersion) (\s@CreateJob' {} a -> s {aPIVersion = a} :: CreateJob)

-- | Undocumented member.
createJob_manifestAddendum :: Lens.Lens' CreateJob (Prelude.Maybe Prelude.Text)
createJob_manifestAddendum = Lens.lens (\CreateJob' {manifestAddendum} -> manifestAddendum) (\s@CreateJob' {} a -> s {manifestAddendum = a} :: CreateJob)

-- | Undocumented member.
createJob_jobType :: Lens.Lens' CreateJob JobType
createJob_jobType = Lens.lens (\CreateJob' {jobType} -> jobType) (\s@CreateJob' {} a -> s {jobType = a} :: CreateJob)

-- | Undocumented member.
createJob_manifest :: Lens.Lens' CreateJob Prelude.Text
createJob_manifest = Lens.lens (\CreateJob' {manifest} -> manifest) (\s@CreateJob' {} a -> s {manifest = a} :: CreateJob)

-- | Undocumented member.
createJob_validateOnly :: Lens.Lens' CreateJob Prelude.Bool
createJob_validateOnly = Lens.lens (\CreateJob' {validateOnly} -> validateOnly) (\s@CreateJob' {} a -> s {validateOnly = a} :: CreateJob)

instance Core.AWSRequest CreateJob where
  type AWSResponse CreateJob = CreateJobResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "CreateJobResult"
      ( \s h x ->
          CreateJobResponse'
            Prelude.<$> (x Core..@? "Signature")
            Prelude.<*> (x Core..@? "JobType")
            Prelude.<*> (x Core..@? "JobId")
            Prelude.<*> (x Core..@? "SignatureFileContents")
            Prelude.<*> (x Core..@? "WarningMessage")
            Prelude.<*> ( x Core..@? "ArtifactList" Core..!@ Prelude.mempty
                            Prelude.>>= Core.may (Core.parseXMLList "member")
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateJob where
  hashWithSalt salt' CreateJob' {..} =
    salt' `Prelude.hashWithSalt` validateOnly
      `Prelude.hashWithSalt` manifest
      `Prelude.hashWithSalt` jobType
      `Prelude.hashWithSalt` manifestAddendum
      `Prelude.hashWithSalt` aPIVersion

instance Prelude.NFData CreateJob where
  rnf CreateJob' {..} =
    Prelude.rnf aPIVersion
      `Prelude.seq` Prelude.rnf validateOnly
      `Prelude.seq` Prelude.rnf manifest
      `Prelude.seq` Prelude.rnf jobType
      `Prelude.seq` Prelude.rnf manifestAddendum

instance Core.ToHeaders CreateJob where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath CreateJob where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateJob where
  toQuery CreateJob' {..} =
    Prelude.mconcat
      [ "Operation=CreateJob",
        "Action" Core.=: ("CreateJob" :: Prelude.ByteString),
        "Version"
          Core.=: ("2010-06-01" :: Prelude.ByteString),
        "APIVersion" Core.=: aPIVersion,
        "ManifestAddendum" Core.=: manifestAddendum,
        "JobType" Core.=: jobType,
        "Manifest" Core.=: manifest,
        "ValidateOnly" Core.=: validateOnly
      ]

-- | Output structure for the CreateJob operation.
--
-- /See:/ 'newCreateJobResponse' smart constructor.
data CreateJobResponse = CreateJobResponse'
  { signature :: Prelude.Maybe Prelude.Text,
    jobType :: Prelude.Maybe JobType,
    jobId :: Prelude.Maybe Prelude.Text,
    signatureFileContents :: Prelude.Maybe Prelude.Text,
    warningMessage :: Prelude.Maybe Prelude.Text,
    artifactList :: Prelude.Maybe [Artifact],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateJobResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'signature', 'createJobResponse_signature' - Undocumented member.
--
-- 'jobType', 'createJobResponse_jobType' - Undocumented member.
--
-- 'jobId', 'createJobResponse_jobId' - Undocumented member.
--
-- 'signatureFileContents', 'createJobResponse_signatureFileContents' - Undocumented member.
--
-- 'warningMessage', 'createJobResponse_warningMessage' - Undocumented member.
--
-- 'artifactList', 'createJobResponse_artifactList' - Undocumented member.
--
-- 'httpStatus', 'createJobResponse_httpStatus' - The response's http status code.
newCreateJobResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateJobResponse
newCreateJobResponse pHttpStatus_ =
  CreateJobResponse'
    { signature = Prelude.Nothing,
      jobType = Prelude.Nothing,
      jobId = Prelude.Nothing,
      signatureFileContents = Prelude.Nothing,
      warningMessage = Prelude.Nothing,
      artifactList = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
createJobResponse_signature :: Lens.Lens' CreateJobResponse (Prelude.Maybe Prelude.Text)
createJobResponse_signature = Lens.lens (\CreateJobResponse' {signature} -> signature) (\s@CreateJobResponse' {} a -> s {signature = a} :: CreateJobResponse)

-- | Undocumented member.
createJobResponse_jobType :: Lens.Lens' CreateJobResponse (Prelude.Maybe JobType)
createJobResponse_jobType = Lens.lens (\CreateJobResponse' {jobType} -> jobType) (\s@CreateJobResponse' {} a -> s {jobType = a} :: CreateJobResponse)

-- | Undocumented member.
createJobResponse_jobId :: Lens.Lens' CreateJobResponse (Prelude.Maybe Prelude.Text)
createJobResponse_jobId = Lens.lens (\CreateJobResponse' {jobId} -> jobId) (\s@CreateJobResponse' {} a -> s {jobId = a} :: CreateJobResponse)

-- | Undocumented member.
createJobResponse_signatureFileContents :: Lens.Lens' CreateJobResponse (Prelude.Maybe Prelude.Text)
createJobResponse_signatureFileContents = Lens.lens (\CreateJobResponse' {signatureFileContents} -> signatureFileContents) (\s@CreateJobResponse' {} a -> s {signatureFileContents = a} :: CreateJobResponse)

-- | Undocumented member.
createJobResponse_warningMessage :: Lens.Lens' CreateJobResponse (Prelude.Maybe Prelude.Text)
createJobResponse_warningMessage = Lens.lens (\CreateJobResponse' {warningMessage} -> warningMessage) (\s@CreateJobResponse' {} a -> s {warningMessage = a} :: CreateJobResponse)

-- | Undocumented member.
createJobResponse_artifactList :: Lens.Lens' CreateJobResponse (Prelude.Maybe [Artifact])
createJobResponse_artifactList = Lens.lens (\CreateJobResponse' {artifactList} -> artifactList) (\s@CreateJobResponse' {} a -> s {artifactList = a} :: CreateJobResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
createJobResponse_httpStatus :: Lens.Lens' CreateJobResponse Prelude.Int
createJobResponse_httpStatus = Lens.lens (\CreateJobResponse' {httpStatus} -> httpStatus) (\s@CreateJobResponse' {} a -> s {httpStatus = a} :: CreateJobResponse)

instance Prelude.NFData CreateJobResponse where
  rnf CreateJobResponse' {..} =
    Prelude.rnf signature
      `Prelude.seq` Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf artifactList
      `Prelude.seq` Prelude.rnf warningMessage
      `Prelude.seq` Prelude.rnf signatureFileContents
      `Prelude.seq` Prelude.rnf jobId
      `Prelude.seq` Prelude.rnf jobType
