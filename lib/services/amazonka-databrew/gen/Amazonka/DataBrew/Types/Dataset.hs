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
-- Module      : Amazonka.DataBrew.Types.Dataset
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DataBrew.Types.Dataset where

import qualified Amazonka.Core as Core
import Amazonka.DataBrew.Types.FormatOptions
import Amazonka.DataBrew.Types.Input
import Amazonka.DataBrew.Types.InputFormat
import Amazonka.DataBrew.Types.PathOptions
import Amazonka.DataBrew.Types.Source
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Represents a dataset that can be processed by DataBrew.
--
-- /See:/ 'newDataset' smart constructor.
data Dataset = Dataset'
  { -- | Metadata tags that have been applied to the dataset.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | A set of options that defines how DataBrew interprets an Amazon S3 path
    -- of the dataset.
    pathOptions :: Prelude.Maybe PathOptions,
    -- | The last modification date and time of the dataset.
    lastModifiedDate :: Prelude.Maybe Core.POSIX,
    -- | The file format of a dataset that is created from an Amazon S3 file or
    -- folder.
    format :: Prelude.Maybe InputFormat,
    -- | The ID of the Amazon Web Services account that owns the dataset.
    accountId :: Prelude.Maybe Prelude.Text,
    -- | The location of the data for the dataset, either Amazon S3 or the Glue
    -- Data Catalog.
    source :: Prelude.Maybe Source,
    -- | The date and time that the dataset was created.
    createDate :: Prelude.Maybe Core.POSIX,
    -- | A set of options that define how DataBrew interprets the data in the
    -- dataset.
    formatOptions :: Prelude.Maybe FormatOptions,
    -- | The Amazon Resource Name (ARN) of the user who last modified the
    -- dataset.
    lastModifiedBy :: Prelude.Maybe Prelude.Text,
    -- | The unique Amazon Resource Name (ARN) for the dataset.
    resourceArn :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the user who created the dataset.
    createdBy :: Prelude.Maybe Prelude.Text,
    -- | The unique name of the dataset.
    name :: Prelude.Text,
    -- | Information on how DataBrew can find the dataset, in either the Glue
    -- Data Catalog or Amazon S3.
    input :: Input
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Dataset' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'dataset_tags' - Metadata tags that have been applied to the dataset.
--
-- 'pathOptions', 'dataset_pathOptions' - A set of options that defines how DataBrew interprets an Amazon S3 path
-- of the dataset.
--
-- 'lastModifiedDate', 'dataset_lastModifiedDate' - The last modification date and time of the dataset.
--
-- 'format', 'dataset_format' - The file format of a dataset that is created from an Amazon S3 file or
-- folder.
--
-- 'accountId', 'dataset_accountId' - The ID of the Amazon Web Services account that owns the dataset.
--
-- 'source', 'dataset_source' - The location of the data for the dataset, either Amazon S3 or the Glue
-- Data Catalog.
--
-- 'createDate', 'dataset_createDate' - The date and time that the dataset was created.
--
-- 'formatOptions', 'dataset_formatOptions' - A set of options that define how DataBrew interprets the data in the
-- dataset.
--
-- 'lastModifiedBy', 'dataset_lastModifiedBy' - The Amazon Resource Name (ARN) of the user who last modified the
-- dataset.
--
-- 'resourceArn', 'dataset_resourceArn' - The unique Amazon Resource Name (ARN) for the dataset.
--
-- 'createdBy', 'dataset_createdBy' - The Amazon Resource Name (ARN) of the user who created the dataset.
--
-- 'name', 'dataset_name' - The unique name of the dataset.
--
-- 'input', 'dataset_input' - Information on how DataBrew can find the dataset, in either the Glue
-- Data Catalog or Amazon S3.
newDataset ::
  -- | 'name'
  Prelude.Text ->
  -- | 'input'
  Input ->
  Dataset
newDataset pName_ pInput_ =
  Dataset'
    { tags = Prelude.Nothing,
      pathOptions = Prelude.Nothing,
      lastModifiedDate = Prelude.Nothing,
      format = Prelude.Nothing,
      accountId = Prelude.Nothing,
      source = Prelude.Nothing,
      createDate = Prelude.Nothing,
      formatOptions = Prelude.Nothing,
      lastModifiedBy = Prelude.Nothing,
      resourceArn = Prelude.Nothing,
      createdBy = Prelude.Nothing,
      name = pName_,
      input = pInput_
    }

-- | Metadata tags that have been applied to the dataset.
dataset_tags :: Lens.Lens' Dataset (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
dataset_tags = Lens.lens (\Dataset' {tags} -> tags) (\s@Dataset' {} a -> s {tags = a} :: Dataset) Prelude.. Lens.mapping Lens.coerced

-- | A set of options that defines how DataBrew interprets an Amazon S3 path
-- of the dataset.
dataset_pathOptions :: Lens.Lens' Dataset (Prelude.Maybe PathOptions)
dataset_pathOptions = Lens.lens (\Dataset' {pathOptions} -> pathOptions) (\s@Dataset' {} a -> s {pathOptions = a} :: Dataset)

-- | The last modification date and time of the dataset.
dataset_lastModifiedDate :: Lens.Lens' Dataset (Prelude.Maybe Prelude.UTCTime)
dataset_lastModifiedDate = Lens.lens (\Dataset' {lastModifiedDate} -> lastModifiedDate) (\s@Dataset' {} a -> s {lastModifiedDate = a} :: Dataset) Prelude.. Lens.mapping Core._Time

-- | The file format of a dataset that is created from an Amazon S3 file or
-- folder.
dataset_format :: Lens.Lens' Dataset (Prelude.Maybe InputFormat)
dataset_format = Lens.lens (\Dataset' {format} -> format) (\s@Dataset' {} a -> s {format = a} :: Dataset)

-- | The ID of the Amazon Web Services account that owns the dataset.
dataset_accountId :: Lens.Lens' Dataset (Prelude.Maybe Prelude.Text)
dataset_accountId = Lens.lens (\Dataset' {accountId} -> accountId) (\s@Dataset' {} a -> s {accountId = a} :: Dataset)

-- | The location of the data for the dataset, either Amazon S3 or the Glue
-- Data Catalog.
dataset_source :: Lens.Lens' Dataset (Prelude.Maybe Source)
dataset_source = Lens.lens (\Dataset' {source} -> source) (\s@Dataset' {} a -> s {source = a} :: Dataset)

-- | The date and time that the dataset was created.
dataset_createDate :: Lens.Lens' Dataset (Prelude.Maybe Prelude.UTCTime)
dataset_createDate = Lens.lens (\Dataset' {createDate} -> createDate) (\s@Dataset' {} a -> s {createDate = a} :: Dataset) Prelude.. Lens.mapping Core._Time

-- | A set of options that define how DataBrew interprets the data in the
-- dataset.
dataset_formatOptions :: Lens.Lens' Dataset (Prelude.Maybe FormatOptions)
dataset_formatOptions = Lens.lens (\Dataset' {formatOptions} -> formatOptions) (\s@Dataset' {} a -> s {formatOptions = a} :: Dataset)

-- | The Amazon Resource Name (ARN) of the user who last modified the
-- dataset.
dataset_lastModifiedBy :: Lens.Lens' Dataset (Prelude.Maybe Prelude.Text)
dataset_lastModifiedBy = Lens.lens (\Dataset' {lastModifiedBy} -> lastModifiedBy) (\s@Dataset' {} a -> s {lastModifiedBy = a} :: Dataset)

-- | The unique Amazon Resource Name (ARN) for the dataset.
dataset_resourceArn :: Lens.Lens' Dataset (Prelude.Maybe Prelude.Text)
dataset_resourceArn = Lens.lens (\Dataset' {resourceArn} -> resourceArn) (\s@Dataset' {} a -> s {resourceArn = a} :: Dataset)

-- | The Amazon Resource Name (ARN) of the user who created the dataset.
dataset_createdBy :: Lens.Lens' Dataset (Prelude.Maybe Prelude.Text)
dataset_createdBy = Lens.lens (\Dataset' {createdBy} -> createdBy) (\s@Dataset' {} a -> s {createdBy = a} :: Dataset)

-- | The unique name of the dataset.
dataset_name :: Lens.Lens' Dataset Prelude.Text
dataset_name = Lens.lens (\Dataset' {name} -> name) (\s@Dataset' {} a -> s {name = a} :: Dataset)

-- | Information on how DataBrew can find the dataset, in either the Glue
-- Data Catalog or Amazon S3.
dataset_input :: Lens.Lens' Dataset Input
dataset_input = Lens.lens (\Dataset' {input} -> input) (\s@Dataset' {} a -> s {input = a} :: Dataset)

instance Core.FromJSON Dataset where
  parseJSON =
    Core.withObject
      "Dataset"
      ( \x ->
          Dataset'
            Prelude.<$> (x Core..:? "Tags" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "PathOptions")
            Prelude.<*> (x Core..:? "LastModifiedDate")
            Prelude.<*> (x Core..:? "Format")
            Prelude.<*> (x Core..:? "AccountId")
            Prelude.<*> (x Core..:? "Source")
            Prelude.<*> (x Core..:? "CreateDate")
            Prelude.<*> (x Core..:? "FormatOptions")
            Prelude.<*> (x Core..:? "LastModifiedBy")
            Prelude.<*> (x Core..:? "ResourceArn")
            Prelude.<*> (x Core..:? "CreatedBy")
            Prelude.<*> (x Core..: "Name")
            Prelude.<*> (x Core..: "Input")
      )

instance Prelude.Hashable Dataset where
  hashWithSalt _salt Dataset' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` pathOptions
      `Prelude.hashWithSalt` lastModifiedDate
      `Prelude.hashWithSalt` format
      `Prelude.hashWithSalt` accountId
      `Prelude.hashWithSalt` source
      `Prelude.hashWithSalt` createDate
      `Prelude.hashWithSalt` formatOptions
      `Prelude.hashWithSalt` lastModifiedBy
      `Prelude.hashWithSalt` resourceArn
      `Prelude.hashWithSalt` createdBy
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` input

instance Prelude.NFData Dataset where
  rnf Dataset' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf pathOptions
      `Prelude.seq` Prelude.rnf lastModifiedDate
      `Prelude.seq` Prelude.rnf format
      `Prelude.seq` Prelude.rnf accountId
      `Prelude.seq` Prelude.rnf source
      `Prelude.seq` Prelude.rnf createDate
      `Prelude.seq` Prelude.rnf formatOptions
      `Prelude.seq` Prelude.rnf lastModifiedBy
      `Prelude.seq` Prelude.rnf resourceArn
      `Prelude.seq` Prelude.rnf createdBy
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf input
