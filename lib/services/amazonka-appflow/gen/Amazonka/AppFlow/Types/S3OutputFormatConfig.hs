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
-- Module      : Amazonka.AppFlow.Types.S3OutputFormatConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.AppFlow.Types.S3OutputFormatConfig where

import Amazonka.AppFlow.Types.AggregationConfig
import Amazonka.AppFlow.Types.FileType
import Amazonka.AppFlow.Types.PrefixConfig
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The configuration that determines how Amazon AppFlow should format the
-- flow output data when Amazon S3 is used as the destination.
--
-- /See:/ 'newS3OutputFormatConfig' smart constructor.
data S3OutputFormatConfig = S3OutputFormatConfig'
  { -- | Determines the prefix that Amazon AppFlow applies to the folder name in
    -- the Amazon S3 bucket. You can name folders according to the flow
    -- frequency and date.
    prefixConfig :: Prelude.Maybe PrefixConfig,
    aggregationConfig :: Prelude.Maybe AggregationConfig,
    -- | If your file output format is Parquet, use this parameter to set whether
    -- Amazon AppFlow preserves the data types in your source data when it
    -- writes the output to Amazon S3.
    --
    -- -   @true@: Amazon AppFlow preserves the data types when it writes to
    --     Amazon S3. For example, an integer or @1@ in your source data is
    --     still an integer in your output.
    --
    -- -   @false@: Amazon AppFlow converts all of the source data into strings
    --     when it writes to Amazon S3. For example, an integer of @1@ in your
    --     source data becomes the string @\"1\"@ in the output.
    preserveSourceDataTyping :: Prelude.Maybe Prelude.Bool,
    -- | Indicates the file type that Amazon AppFlow places in the Amazon S3
    -- bucket.
    fileType :: Prelude.Maybe FileType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'S3OutputFormatConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'prefixConfig', 's3OutputFormatConfig_prefixConfig' - Determines the prefix that Amazon AppFlow applies to the folder name in
-- the Amazon S3 bucket. You can name folders according to the flow
-- frequency and date.
--
-- 'aggregationConfig', 's3OutputFormatConfig_aggregationConfig' - Undocumented member.
--
-- 'preserveSourceDataTyping', 's3OutputFormatConfig_preserveSourceDataTyping' - If your file output format is Parquet, use this parameter to set whether
-- Amazon AppFlow preserves the data types in your source data when it
-- writes the output to Amazon S3.
--
-- -   @true@: Amazon AppFlow preserves the data types when it writes to
--     Amazon S3. For example, an integer or @1@ in your source data is
--     still an integer in your output.
--
-- -   @false@: Amazon AppFlow converts all of the source data into strings
--     when it writes to Amazon S3. For example, an integer of @1@ in your
--     source data becomes the string @\"1\"@ in the output.
--
-- 'fileType', 's3OutputFormatConfig_fileType' - Indicates the file type that Amazon AppFlow places in the Amazon S3
-- bucket.
newS3OutputFormatConfig ::
  S3OutputFormatConfig
newS3OutputFormatConfig =
  S3OutputFormatConfig'
    { prefixConfig =
        Prelude.Nothing,
      aggregationConfig = Prelude.Nothing,
      preserveSourceDataTyping = Prelude.Nothing,
      fileType = Prelude.Nothing
    }

-- | Determines the prefix that Amazon AppFlow applies to the folder name in
-- the Amazon S3 bucket. You can name folders according to the flow
-- frequency and date.
s3OutputFormatConfig_prefixConfig :: Lens.Lens' S3OutputFormatConfig (Prelude.Maybe PrefixConfig)
s3OutputFormatConfig_prefixConfig = Lens.lens (\S3OutputFormatConfig' {prefixConfig} -> prefixConfig) (\s@S3OutputFormatConfig' {} a -> s {prefixConfig = a} :: S3OutputFormatConfig)

-- | Undocumented member.
s3OutputFormatConfig_aggregationConfig :: Lens.Lens' S3OutputFormatConfig (Prelude.Maybe AggregationConfig)
s3OutputFormatConfig_aggregationConfig = Lens.lens (\S3OutputFormatConfig' {aggregationConfig} -> aggregationConfig) (\s@S3OutputFormatConfig' {} a -> s {aggregationConfig = a} :: S3OutputFormatConfig)

-- | If your file output format is Parquet, use this parameter to set whether
-- Amazon AppFlow preserves the data types in your source data when it
-- writes the output to Amazon S3.
--
-- -   @true@: Amazon AppFlow preserves the data types when it writes to
--     Amazon S3. For example, an integer or @1@ in your source data is
--     still an integer in your output.
--
-- -   @false@: Amazon AppFlow converts all of the source data into strings
--     when it writes to Amazon S3. For example, an integer of @1@ in your
--     source data becomes the string @\"1\"@ in the output.
s3OutputFormatConfig_preserveSourceDataTyping :: Lens.Lens' S3OutputFormatConfig (Prelude.Maybe Prelude.Bool)
s3OutputFormatConfig_preserveSourceDataTyping = Lens.lens (\S3OutputFormatConfig' {preserveSourceDataTyping} -> preserveSourceDataTyping) (\s@S3OutputFormatConfig' {} a -> s {preserveSourceDataTyping = a} :: S3OutputFormatConfig)

-- | Indicates the file type that Amazon AppFlow places in the Amazon S3
-- bucket.
s3OutputFormatConfig_fileType :: Lens.Lens' S3OutputFormatConfig (Prelude.Maybe FileType)
s3OutputFormatConfig_fileType = Lens.lens (\S3OutputFormatConfig' {fileType} -> fileType) (\s@S3OutputFormatConfig' {} a -> s {fileType = a} :: S3OutputFormatConfig)

instance Core.FromJSON S3OutputFormatConfig where
  parseJSON =
    Core.withObject
      "S3OutputFormatConfig"
      ( \x ->
          S3OutputFormatConfig'
            Prelude.<$> (x Core..:? "prefixConfig")
            Prelude.<*> (x Core..:? "aggregationConfig")
            Prelude.<*> (x Core..:? "preserveSourceDataTyping")
            Prelude.<*> (x Core..:? "fileType")
      )

instance Prelude.Hashable S3OutputFormatConfig where
  hashWithSalt _salt S3OutputFormatConfig' {..} =
    _salt `Prelude.hashWithSalt` prefixConfig
      `Prelude.hashWithSalt` aggregationConfig
      `Prelude.hashWithSalt` preserveSourceDataTyping
      `Prelude.hashWithSalt` fileType

instance Prelude.NFData S3OutputFormatConfig where
  rnf S3OutputFormatConfig' {..} =
    Prelude.rnf prefixConfig
      `Prelude.seq` Prelude.rnf aggregationConfig
      `Prelude.seq` Prelude.rnf preserveSourceDataTyping
      `Prelude.seq` Prelude.rnf fileType

instance Core.ToJSON S3OutputFormatConfig where
  toJSON S3OutputFormatConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("prefixConfig" Core..=) Prelude.<$> prefixConfig,
            ("aggregationConfig" Core..=)
              Prelude.<$> aggregationConfig,
            ("preserveSourceDataTyping" Core..=)
              Prelude.<$> preserveSourceDataTyping,
            ("fileType" Core..=) Prelude.<$> fileType
          ]
      )
