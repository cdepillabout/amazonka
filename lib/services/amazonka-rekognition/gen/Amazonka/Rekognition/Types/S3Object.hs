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
-- Module      : Amazonka.Rekognition.Types.S3Object
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Rekognition.Types.S3Object where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Provides the S3 bucket name and object name.
--
-- The region for the S3 bucket containing the S3 object must match the
-- region you use for Amazon Rekognition operations.
--
-- For Amazon Rekognition to process an S3 object, the user must have
-- permission to access the S3 object. For more information, see How Amazon
-- Rekognition works with IAM in the Amazon Rekognition Developer Guide.
--
-- /See:/ 'newS3Object' smart constructor.
data S3Object = S3Object'
  { -- | S3 object key name.
    name :: Prelude.Maybe Prelude.Text,
    -- | Name of the S3 bucket.
    bucket :: Prelude.Maybe Prelude.Text,
    -- | If the bucket is versioning enabled, you can specify the object version.
    version :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'S3Object' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 's3Object_name' - S3 object key name.
--
-- 'bucket', 's3Object_bucket' - Name of the S3 bucket.
--
-- 'version', 's3Object_version' - If the bucket is versioning enabled, you can specify the object version.
newS3Object ::
  S3Object
newS3Object =
  S3Object'
    { name = Prelude.Nothing,
      bucket = Prelude.Nothing,
      version = Prelude.Nothing
    }

-- | S3 object key name.
s3Object_name :: Lens.Lens' S3Object (Prelude.Maybe Prelude.Text)
s3Object_name = Lens.lens (\S3Object' {name} -> name) (\s@S3Object' {} a -> s {name = a} :: S3Object)

-- | Name of the S3 bucket.
s3Object_bucket :: Lens.Lens' S3Object (Prelude.Maybe Prelude.Text)
s3Object_bucket = Lens.lens (\S3Object' {bucket} -> bucket) (\s@S3Object' {} a -> s {bucket = a} :: S3Object)

-- | If the bucket is versioning enabled, you can specify the object version.
s3Object_version :: Lens.Lens' S3Object (Prelude.Maybe Prelude.Text)
s3Object_version = Lens.lens (\S3Object' {version} -> version) (\s@S3Object' {} a -> s {version = a} :: S3Object)

instance Core.FromJSON S3Object where
  parseJSON =
    Core.withObject
      "S3Object"
      ( \x ->
          S3Object'
            Prelude.<$> (x Core..:? "Name")
            Prelude.<*> (x Core..:? "Bucket")
            Prelude.<*> (x Core..:? "Version")
      )

instance Prelude.Hashable S3Object where
  hashWithSalt _salt S3Object' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` bucket
      `Prelude.hashWithSalt` version

instance Prelude.NFData S3Object where
  rnf S3Object' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf bucket
      `Prelude.seq` Prelude.rnf version

instance Core.ToJSON S3Object where
  toJSON S3Object' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Name" Core..=) Prelude.<$> name,
            ("Bucket" Core..=) Prelude.<$> bucket,
            ("Version" Core..=) Prelude.<$> version
          ]
      )
