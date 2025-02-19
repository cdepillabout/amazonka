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
-- Module      : Amazonka.Glue.Types.S3GlueParquetTarget
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Glue.Types.S3GlueParquetTarget where

import qualified Amazonka.Core as Core
import Amazonka.Glue.Types.DirectSchemaChangePolicy
import Amazonka.Glue.Types.ParquetCompressionType
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Specifies a data target that writes to Amazon S3 in Apache Parquet
-- columnar storage.
--
-- /See:/ 'newS3GlueParquetTarget' smart constructor.
data S3GlueParquetTarget = S3GlueParquetTarget'
  { -- | Specifies how the data is compressed. This is generally not necessary if
    -- the data has a standard file extension. Possible values are @\"gzip\"@
    -- and @\"bzip\"@).
    compression :: Prelude.Maybe ParquetCompressionType,
    -- | A policy that specifies update behavior for the crawler.
    schemaChangePolicy :: Prelude.Maybe DirectSchemaChangePolicy,
    -- | Specifies native partitioning using a sequence of keys.
    partitionKeys :: Prelude.Maybe [[Prelude.Text]],
    -- | The name of the data target.
    name :: Prelude.Text,
    -- | The nodes that are inputs to the data target.
    inputs :: Prelude.NonEmpty Prelude.Text,
    -- | A single Amazon S3 path to write to.
    path :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'S3GlueParquetTarget' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'compression', 's3GlueParquetTarget_compression' - Specifies how the data is compressed. This is generally not necessary if
-- the data has a standard file extension. Possible values are @\"gzip\"@
-- and @\"bzip\"@).
--
-- 'schemaChangePolicy', 's3GlueParquetTarget_schemaChangePolicy' - A policy that specifies update behavior for the crawler.
--
-- 'partitionKeys', 's3GlueParquetTarget_partitionKeys' - Specifies native partitioning using a sequence of keys.
--
-- 'name', 's3GlueParquetTarget_name' - The name of the data target.
--
-- 'inputs', 's3GlueParquetTarget_inputs' - The nodes that are inputs to the data target.
--
-- 'path', 's3GlueParquetTarget_path' - A single Amazon S3 path to write to.
newS3GlueParquetTarget ::
  -- | 'name'
  Prelude.Text ->
  -- | 'inputs'
  Prelude.NonEmpty Prelude.Text ->
  -- | 'path'
  Prelude.Text ->
  S3GlueParquetTarget
newS3GlueParquetTarget pName_ pInputs_ pPath_ =
  S3GlueParquetTarget'
    { compression = Prelude.Nothing,
      schemaChangePolicy = Prelude.Nothing,
      partitionKeys = Prelude.Nothing,
      name = pName_,
      inputs = Lens.coerced Lens.# pInputs_,
      path = pPath_
    }

-- | Specifies how the data is compressed. This is generally not necessary if
-- the data has a standard file extension. Possible values are @\"gzip\"@
-- and @\"bzip\"@).
s3GlueParquetTarget_compression :: Lens.Lens' S3GlueParquetTarget (Prelude.Maybe ParquetCompressionType)
s3GlueParquetTarget_compression = Lens.lens (\S3GlueParquetTarget' {compression} -> compression) (\s@S3GlueParquetTarget' {} a -> s {compression = a} :: S3GlueParquetTarget)

-- | A policy that specifies update behavior for the crawler.
s3GlueParquetTarget_schemaChangePolicy :: Lens.Lens' S3GlueParquetTarget (Prelude.Maybe DirectSchemaChangePolicy)
s3GlueParquetTarget_schemaChangePolicy = Lens.lens (\S3GlueParquetTarget' {schemaChangePolicy} -> schemaChangePolicy) (\s@S3GlueParquetTarget' {} a -> s {schemaChangePolicy = a} :: S3GlueParquetTarget)

-- | Specifies native partitioning using a sequence of keys.
s3GlueParquetTarget_partitionKeys :: Lens.Lens' S3GlueParquetTarget (Prelude.Maybe [[Prelude.Text]])
s3GlueParquetTarget_partitionKeys = Lens.lens (\S3GlueParquetTarget' {partitionKeys} -> partitionKeys) (\s@S3GlueParquetTarget' {} a -> s {partitionKeys = a} :: S3GlueParquetTarget) Prelude.. Lens.mapping Lens.coerced

-- | The name of the data target.
s3GlueParquetTarget_name :: Lens.Lens' S3GlueParquetTarget Prelude.Text
s3GlueParquetTarget_name = Lens.lens (\S3GlueParquetTarget' {name} -> name) (\s@S3GlueParquetTarget' {} a -> s {name = a} :: S3GlueParquetTarget)

-- | The nodes that are inputs to the data target.
s3GlueParquetTarget_inputs :: Lens.Lens' S3GlueParquetTarget (Prelude.NonEmpty Prelude.Text)
s3GlueParquetTarget_inputs = Lens.lens (\S3GlueParquetTarget' {inputs} -> inputs) (\s@S3GlueParquetTarget' {} a -> s {inputs = a} :: S3GlueParquetTarget) Prelude.. Lens.coerced

-- | A single Amazon S3 path to write to.
s3GlueParquetTarget_path :: Lens.Lens' S3GlueParquetTarget Prelude.Text
s3GlueParquetTarget_path = Lens.lens (\S3GlueParquetTarget' {path} -> path) (\s@S3GlueParquetTarget' {} a -> s {path = a} :: S3GlueParquetTarget)

instance Core.FromJSON S3GlueParquetTarget where
  parseJSON =
    Core.withObject
      "S3GlueParquetTarget"
      ( \x ->
          S3GlueParquetTarget'
            Prelude.<$> (x Core..:? "Compression")
            Prelude.<*> (x Core..:? "SchemaChangePolicy")
            Prelude.<*> (x Core..:? "PartitionKeys" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..: "Name")
            Prelude.<*> (x Core..: "Inputs")
            Prelude.<*> (x Core..: "Path")
      )

instance Prelude.Hashable S3GlueParquetTarget where
  hashWithSalt _salt S3GlueParquetTarget' {..} =
    _salt `Prelude.hashWithSalt` compression
      `Prelude.hashWithSalt` schemaChangePolicy
      `Prelude.hashWithSalt` partitionKeys
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` inputs
      `Prelude.hashWithSalt` path

instance Prelude.NFData S3GlueParquetTarget where
  rnf S3GlueParquetTarget' {..} =
    Prelude.rnf compression
      `Prelude.seq` Prelude.rnf schemaChangePolicy
      `Prelude.seq` Prelude.rnf partitionKeys
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf inputs
      `Prelude.seq` Prelude.rnf path

instance Core.ToJSON S3GlueParquetTarget where
  toJSON S3GlueParquetTarget' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Compression" Core..=) Prelude.<$> compression,
            ("SchemaChangePolicy" Core..=)
              Prelude.<$> schemaChangePolicy,
            ("PartitionKeys" Core..=) Prelude.<$> partitionKeys,
            Prelude.Just ("Name" Core..= name),
            Prelude.Just ("Inputs" Core..= inputs),
            Prelude.Just ("Path" Core..= path)
          ]
      )
