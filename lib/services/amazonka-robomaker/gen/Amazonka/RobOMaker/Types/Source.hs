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
-- Module      : Amazonka.RobOMaker.Types.Source
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.RobOMaker.Types.Source where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.RobOMaker.Types.Architecture

-- | Information about a source.
--
-- /See:/ 'newSource' smart constructor.
data Source = Source'
  { -- | The s3 bucket name.
    s3Bucket :: Prelude.Maybe Prelude.Text,
    -- | The s3 object key.
    s3Key :: Prelude.Maybe Prelude.Text,
    -- | A hash of the object specified by @s3Bucket@ and @s3Key@.
    etag :: Prelude.Maybe Prelude.Text,
    -- | The taget processor architecture for the application.
    architecture :: Prelude.Maybe Architecture
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Source' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 's3Bucket', 'source_s3Bucket' - The s3 bucket name.
--
-- 's3Key', 'source_s3Key' - The s3 object key.
--
-- 'etag', 'source_etag' - A hash of the object specified by @s3Bucket@ and @s3Key@.
--
-- 'architecture', 'source_architecture' - The taget processor architecture for the application.
newSource ::
  Source
newSource =
  Source'
    { s3Bucket = Prelude.Nothing,
      s3Key = Prelude.Nothing,
      etag = Prelude.Nothing,
      architecture = Prelude.Nothing
    }

-- | The s3 bucket name.
source_s3Bucket :: Lens.Lens' Source (Prelude.Maybe Prelude.Text)
source_s3Bucket = Lens.lens (\Source' {s3Bucket} -> s3Bucket) (\s@Source' {} a -> s {s3Bucket = a} :: Source)

-- | The s3 object key.
source_s3Key :: Lens.Lens' Source (Prelude.Maybe Prelude.Text)
source_s3Key = Lens.lens (\Source' {s3Key} -> s3Key) (\s@Source' {} a -> s {s3Key = a} :: Source)

-- | A hash of the object specified by @s3Bucket@ and @s3Key@.
source_etag :: Lens.Lens' Source (Prelude.Maybe Prelude.Text)
source_etag = Lens.lens (\Source' {etag} -> etag) (\s@Source' {} a -> s {etag = a} :: Source)

-- | The taget processor architecture for the application.
source_architecture :: Lens.Lens' Source (Prelude.Maybe Architecture)
source_architecture = Lens.lens (\Source' {architecture} -> architecture) (\s@Source' {} a -> s {architecture = a} :: Source)

instance Core.FromJSON Source where
  parseJSON =
    Core.withObject
      "Source"
      ( \x ->
          Source'
            Prelude.<$> (x Core..:? "s3Bucket")
            Prelude.<*> (x Core..:? "s3Key")
            Prelude.<*> (x Core..:? "etag")
            Prelude.<*> (x Core..:? "architecture")
      )

instance Prelude.Hashable Source where
  hashWithSalt _salt Source' {..} =
    _salt `Prelude.hashWithSalt` s3Bucket
      `Prelude.hashWithSalt` s3Key
      `Prelude.hashWithSalt` etag
      `Prelude.hashWithSalt` architecture

instance Prelude.NFData Source where
  rnf Source' {..} =
    Prelude.rnf s3Bucket
      `Prelude.seq` Prelude.rnf s3Key
      `Prelude.seq` Prelude.rnf etag
      `Prelude.seq` Prelude.rnf architecture
