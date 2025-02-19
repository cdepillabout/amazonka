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
-- Module      : Amazonka.MacieV2.Types.S3Object
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MacieV2.Types.S3Object where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MacieV2.Types.KeyValuePair
import Amazonka.MacieV2.Types.ServerSideEncryption
import Amazonka.MacieV2.Types.StorageClass
import qualified Amazonka.Prelude as Prelude

-- | Provides information about the S3 object that a finding applies to.
--
-- /See:/ 'newS3Object' smart constructor.
data S3Object = S3Object'
  { -- | The tags that are associated with the object.
    tags :: Prelude.Maybe [KeyValuePair],
    -- | The type of server-side encryption that\'s used to encrypt the object.
    serverSideEncryption :: Prelude.Maybe ServerSideEncryption,
    -- | The full key (name) that\'s assigned to the object.
    key :: Prelude.Maybe Prelude.Text,
    -- | The file name extension of the object. If the object doesn\'t have a
    -- file name extension, this value is \"\".
    extension :: Prelude.Maybe Prelude.Text,
    -- | The path to the object, including the full key (name).
    path :: Prelude.Maybe Prelude.Text,
    -- | Specifies whether the object is publicly accessible due to the
    -- combination of permissions settings that apply to the object.
    publicAccess :: Prelude.Maybe Prelude.Bool,
    -- | The total storage size, in bytes, of the object.
    size :: Prelude.Maybe Prelude.Integer,
    -- | The Amazon Resource Name (ARN) of the bucket that contains the object.
    bucketArn :: Prelude.Maybe Prelude.Text,
    -- | The date and time, in UTC and extended ISO 8601 format, when the object
    -- was last modified.
    lastModified :: Prelude.Maybe Core.POSIX,
    -- | The entity tag (ETag) that identifies the affected version of the
    -- object. If the object was overwritten or changed after Amazon Macie
    -- produced the finding, this value might be different from the current
    -- ETag for the object.
    eTag :: Prelude.Maybe Prelude.Text,
    -- | The storage class of the object.
    storageClass :: Prelude.Maybe StorageClass,
    -- | The identifier for the affected version of the object.
    versionId :: Prelude.Maybe Prelude.Text
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
-- 'tags', 's3Object_tags' - The tags that are associated with the object.
--
-- 'serverSideEncryption', 's3Object_serverSideEncryption' - The type of server-side encryption that\'s used to encrypt the object.
--
-- 'key', 's3Object_key' - The full key (name) that\'s assigned to the object.
--
-- 'extension', 's3Object_extension' - The file name extension of the object. If the object doesn\'t have a
-- file name extension, this value is \"\".
--
-- 'path', 's3Object_path' - The path to the object, including the full key (name).
--
-- 'publicAccess', 's3Object_publicAccess' - Specifies whether the object is publicly accessible due to the
-- combination of permissions settings that apply to the object.
--
-- 'size', 's3Object_size' - The total storage size, in bytes, of the object.
--
-- 'bucketArn', 's3Object_bucketArn' - The Amazon Resource Name (ARN) of the bucket that contains the object.
--
-- 'lastModified', 's3Object_lastModified' - The date and time, in UTC and extended ISO 8601 format, when the object
-- was last modified.
--
-- 'eTag', 's3Object_eTag' - The entity tag (ETag) that identifies the affected version of the
-- object. If the object was overwritten or changed after Amazon Macie
-- produced the finding, this value might be different from the current
-- ETag for the object.
--
-- 'storageClass', 's3Object_storageClass' - The storage class of the object.
--
-- 'versionId', 's3Object_versionId' - The identifier for the affected version of the object.
newS3Object ::
  S3Object
newS3Object =
  S3Object'
    { tags = Prelude.Nothing,
      serverSideEncryption = Prelude.Nothing,
      key = Prelude.Nothing,
      extension = Prelude.Nothing,
      path = Prelude.Nothing,
      publicAccess = Prelude.Nothing,
      size = Prelude.Nothing,
      bucketArn = Prelude.Nothing,
      lastModified = Prelude.Nothing,
      eTag = Prelude.Nothing,
      storageClass = Prelude.Nothing,
      versionId = Prelude.Nothing
    }

-- | The tags that are associated with the object.
s3Object_tags :: Lens.Lens' S3Object (Prelude.Maybe [KeyValuePair])
s3Object_tags = Lens.lens (\S3Object' {tags} -> tags) (\s@S3Object' {} a -> s {tags = a} :: S3Object) Prelude.. Lens.mapping Lens.coerced

-- | The type of server-side encryption that\'s used to encrypt the object.
s3Object_serverSideEncryption :: Lens.Lens' S3Object (Prelude.Maybe ServerSideEncryption)
s3Object_serverSideEncryption = Lens.lens (\S3Object' {serverSideEncryption} -> serverSideEncryption) (\s@S3Object' {} a -> s {serverSideEncryption = a} :: S3Object)

-- | The full key (name) that\'s assigned to the object.
s3Object_key :: Lens.Lens' S3Object (Prelude.Maybe Prelude.Text)
s3Object_key = Lens.lens (\S3Object' {key} -> key) (\s@S3Object' {} a -> s {key = a} :: S3Object)

-- | The file name extension of the object. If the object doesn\'t have a
-- file name extension, this value is \"\".
s3Object_extension :: Lens.Lens' S3Object (Prelude.Maybe Prelude.Text)
s3Object_extension = Lens.lens (\S3Object' {extension} -> extension) (\s@S3Object' {} a -> s {extension = a} :: S3Object)

-- | The path to the object, including the full key (name).
s3Object_path :: Lens.Lens' S3Object (Prelude.Maybe Prelude.Text)
s3Object_path = Lens.lens (\S3Object' {path} -> path) (\s@S3Object' {} a -> s {path = a} :: S3Object)

-- | Specifies whether the object is publicly accessible due to the
-- combination of permissions settings that apply to the object.
s3Object_publicAccess :: Lens.Lens' S3Object (Prelude.Maybe Prelude.Bool)
s3Object_publicAccess = Lens.lens (\S3Object' {publicAccess} -> publicAccess) (\s@S3Object' {} a -> s {publicAccess = a} :: S3Object)

-- | The total storage size, in bytes, of the object.
s3Object_size :: Lens.Lens' S3Object (Prelude.Maybe Prelude.Integer)
s3Object_size = Lens.lens (\S3Object' {size} -> size) (\s@S3Object' {} a -> s {size = a} :: S3Object)

-- | The Amazon Resource Name (ARN) of the bucket that contains the object.
s3Object_bucketArn :: Lens.Lens' S3Object (Prelude.Maybe Prelude.Text)
s3Object_bucketArn = Lens.lens (\S3Object' {bucketArn} -> bucketArn) (\s@S3Object' {} a -> s {bucketArn = a} :: S3Object)

-- | The date and time, in UTC and extended ISO 8601 format, when the object
-- was last modified.
s3Object_lastModified :: Lens.Lens' S3Object (Prelude.Maybe Prelude.UTCTime)
s3Object_lastModified = Lens.lens (\S3Object' {lastModified} -> lastModified) (\s@S3Object' {} a -> s {lastModified = a} :: S3Object) Prelude.. Lens.mapping Core._Time

-- | The entity tag (ETag) that identifies the affected version of the
-- object. If the object was overwritten or changed after Amazon Macie
-- produced the finding, this value might be different from the current
-- ETag for the object.
s3Object_eTag :: Lens.Lens' S3Object (Prelude.Maybe Prelude.Text)
s3Object_eTag = Lens.lens (\S3Object' {eTag} -> eTag) (\s@S3Object' {} a -> s {eTag = a} :: S3Object)

-- | The storage class of the object.
s3Object_storageClass :: Lens.Lens' S3Object (Prelude.Maybe StorageClass)
s3Object_storageClass = Lens.lens (\S3Object' {storageClass} -> storageClass) (\s@S3Object' {} a -> s {storageClass = a} :: S3Object)

-- | The identifier for the affected version of the object.
s3Object_versionId :: Lens.Lens' S3Object (Prelude.Maybe Prelude.Text)
s3Object_versionId = Lens.lens (\S3Object' {versionId} -> versionId) (\s@S3Object' {} a -> s {versionId = a} :: S3Object)

instance Core.FromJSON S3Object where
  parseJSON =
    Core.withObject
      "S3Object"
      ( \x ->
          S3Object'
            Prelude.<$> (x Core..:? "tags" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "serverSideEncryption")
            Prelude.<*> (x Core..:? "key")
            Prelude.<*> (x Core..:? "extension")
            Prelude.<*> (x Core..:? "path")
            Prelude.<*> (x Core..:? "publicAccess")
            Prelude.<*> (x Core..:? "size")
            Prelude.<*> (x Core..:? "bucketArn")
            Prelude.<*> (x Core..:? "lastModified")
            Prelude.<*> (x Core..:? "eTag")
            Prelude.<*> (x Core..:? "storageClass")
            Prelude.<*> (x Core..:? "versionId")
      )

instance Prelude.Hashable S3Object where
  hashWithSalt _salt S3Object' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` serverSideEncryption
      `Prelude.hashWithSalt` key
      `Prelude.hashWithSalt` extension
      `Prelude.hashWithSalt` path
      `Prelude.hashWithSalt` publicAccess
      `Prelude.hashWithSalt` size
      `Prelude.hashWithSalt` bucketArn
      `Prelude.hashWithSalt` lastModified
      `Prelude.hashWithSalt` eTag
      `Prelude.hashWithSalt` storageClass
      `Prelude.hashWithSalt` versionId

instance Prelude.NFData S3Object where
  rnf S3Object' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf serverSideEncryption
      `Prelude.seq` Prelude.rnf key
      `Prelude.seq` Prelude.rnf extension
      `Prelude.seq` Prelude.rnf path
      `Prelude.seq` Prelude.rnf publicAccess
      `Prelude.seq` Prelude.rnf size
      `Prelude.seq` Prelude.rnf bucketArn
      `Prelude.seq` Prelude.rnf lastModified
      `Prelude.seq` Prelude.rnf eTag
      `Prelude.seq` Prelude.rnf storageClass
      `Prelude.seq` Prelude.rnf versionId
