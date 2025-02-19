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
-- Module      : Amazonka.Snowball.Types.JobResource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Snowball.Types.JobResource where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.Snowball.Types.Ec2AmiResource
import Amazonka.Snowball.Types.LambdaResource
import Amazonka.Snowball.Types.S3Resource

-- | Contains an array of Amazon Web Services resource objects. Each object
-- represents an Amazon S3 bucket, an Lambda function, or an Amazon Machine
-- Image (AMI) based on Amazon EC2 that is associated with a particular
-- job.
--
-- /See:/ 'newJobResource' smart constructor.
data JobResource = JobResource'
  { -- | The Amazon Machine Images (AMIs) associated with this job.
    ec2AmiResources :: Prelude.Maybe [Ec2AmiResource],
    -- | An array of @S3Resource@ objects.
    s3Resources :: Prelude.Maybe [S3Resource],
    -- | The Python-language Lambda functions for this job.
    lambdaResources :: Prelude.Maybe [LambdaResource]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'JobResource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'ec2AmiResources', 'jobResource_ec2AmiResources' - The Amazon Machine Images (AMIs) associated with this job.
--
-- 's3Resources', 'jobResource_s3Resources' - An array of @S3Resource@ objects.
--
-- 'lambdaResources', 'jobResource_lambdaResources' - The Python-language Lambda functions for this job.
newJobResource ::
  JobResource
newJobResource =
  JobResource'
    { ec2AmiResources = Prelude.Nothing,
      s3Resources = Prelude.Nothing,
      lambdaResources = Prelude.Nothing
    }

-- | The Amazon Machine Images (AMIs) associated with this job.
jobResource_ec2AmiResources :: Lens.Lens' JobResource (Prelude.Maybe [Ec2AmiResource])
jobResource_ec2AmiResources = Lens.lens (\JobResource' {ec2AmiResources} -> ec2AmiResources) (\s@JobResource' {} a -> s {ec2AmiResources = a} :: JobResource) Prelude.. Lens.mapping Lens.coerced

-- | An array of @S3Resource@ objects.
jobResource_s3Resources :: Lens.Lens' JobResource (Prelude.Maybe [S3Resource])
jobResource_s3Resources = Lens.lens (\JobResource' {s3Resources} -> s3Resources) (\s@JobResource' {} a -> s {s3Resources = a} :: JobResource) Prelude.. Lens.mapping Lens.coerced

-- | The Python-language Lambda functions for this job.
jobResource_lambdaResources :: Lens.Lens' JobResource (Prelude.Maybe [LambdaResource])
jobResource_lambdaResources = Lens.lens (\JobResource' {lambdaResources} -> lambdaResources) (\s@JobResource' {} a -> s {lambdaResources = a} :: JobResource) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON JobResource where
  parseJSON =
    Core.withObject
      "JobResource"
      ( \x ->
          JobResource'
            Prelude.<$> ( x Core..:? "Ec2AmiResources"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "S3Resources" Core..!= Prelude.mempty)
            Prelude.<*> ( x Core..:? "LambdaResources"
                            Core..!= Prelude.mempty
                        )
      )

instance Prelude.Hashable JobResource where
  hashWithSalt _salt JobResource' {..} =
    _salt `Prelude.hashWithSalt` ec2AmiResources
      `Prelude.hashWithSalt` s3Resources
      `Prelude.hashWithSalt` lambdaResources

instance Prelude.NFData JobResource where
  rnf JobResource' {..} =
    Prelude.rnf ec2AmiResources
      `Prelude.seq` Prelude.rnf s3Resources
      `Prelude.seq` Prelude.rnf lambdaResources

instance Core.ToJSON JobResource where
  toJSON JobResource' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Ec2AmiResources" Core..=)
              Prelude.<$> ec2AmiResources,
            ("S3Resources" Core..=) Prelude.<$> s3Resources,
            ("LambdaResources" Core..=)
              Prelude.<$> lambdaResources
          ]
      )
