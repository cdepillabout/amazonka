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
-- Module      : Amazonka.EC2.Types.DiskImageDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.DiskImageDescription where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import Amazonka.EC2.Types.DiskImageFormat
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes a disk image.
--
-- /See:/ 'newDiskImageDescription' smart constructor.
data DiskImageDescription = DiskImageDescription'
  { -- | A presigned URL for the import manifest stored in Amazon S3. For
    -- information about creating a presigned URL for an Amazon S3 object, read
    -- the \"Query String Request Authentication Alternative\" section of the
    -- <https://docs.aws.amazon.com/AmazonS3/latest/dev/RESTAuthentication.html Authenticating REST Requests>
    -- topic in the /Amazon Simple Storage Service Developer Guide/.
    --
    -- For information about the import manifest referenced by this API action,
    -- see
    -- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html VM Import Manifest>.
    importManifestUrl :: Prelude.Maybe Prelude.Text,
    -- | The disk image format.
    format :: Prelude.Maybe DiskImageFormat,
    -- | The size of the disk image, in GiB.
    size :: Prelude.Maybe Prelude.Integer,
    -- | The checksum computed for the disk image.
    checksum :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DiskImageDescription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'importManifestUrl', 'diskImageDescription_importManifestUrl' - A presigned URL for the import manifest stored in Amazon S3. For
-- information about creating a presigned URL for an Amazon S3 object, read
-- the \"Query String Request Authentication Alternative\" section of the
-- <https://docs.aws.amazon.com/AmazonS3/latest/dev/RESTAuthentication.html Authenticating REST Requests>
-- topic in the /Amazon Simple Storage Service Developer Guide/.
--
-- For information about the import manifest referenced by this API action,
-- see
-- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html VM Import Manifest>.
--
-- 'format', 'diskImageDescription_format' - The disk image format.
--
-- 'size', 'diskImageDescription_size' - The size of the disk image, in GiB.
--
-- 'checksum', 'diskImageDescription_checksum' - The checksum computed for the disk image.
newDiskImageDescription ::
  DiskImageDescription
newDiskImageDescription =
  DiskImageDescription'
    { importManifestUrl =
        Prelude.Nothing,
      format = Prelude.Nothing,
      size = Prelude.Nothing,
      checksum = Prelude.Nothing
    }

-- | A presigned URL for the import manifest stored in Amazon S3. For
-- information about creating a presigned URL for an Amazon S3 object, read
-- the \"Query String Request Authentication Alternative\" section of the
-- <https://docs.aws.amazon.com/AmazonS3/latest/dev/RESTAuthentication.html Authenticating REST Requests>
-- topic in the /Amazon Simple Storage Service Developer Guide/.
--
-- For information about the import manifest referenced by this API action,
-- see
-- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html VM Import Manifest>.
diskImageDescription_importManifestUrl :: Lens.Lens' DiskImageDescription (Prelude.Maybe Prelude.Text)
diskImageDescription_importManifestUrl = Lens.lens (\DiskImageDescription' {importManifestUrl} -> importManifestUrl) (\s@DiskImageDescription' {} a -> s {importManifestUrl = a} :: DiskImageDescription)

-- | The disk image format.
diskImageDescription_format :: Lens.Lens' DiskImageDescription (Prelude.Maybe DiskImageFormat)
diskImageDescription_format = Lens.lens (\DiskImageDescription' {format} -> format) (\s@DiskImageDescription' {} a -> s {format = a} :: DiskImageDescription)

-- | The size of the disk image, in GiB.
diskImageDescription_size :: Lens.Lens' DiskImageDescription (Prelude.Maybe Prelude.Integer)
diskImageDescription_size = Lens.lens (\DiskImageDescription' {size} -> size) (\s@DiskImageDescription' {} a -> s {size = a} :: DiskImageDescription)

-- | The checksum computed for the disk image.
diskImageDescription_checksum :: Lens.Lens' DiskImageDescription (Prelude.Maybe Prelude.Text)
diskImageDescription_checksum = Lens.lens (\DiskImageDescription' {checksum} -> checksum) (\s@DiskImageDescription' {} a -> s {checksum = a} :: DiskImageDescription)

instance Core.FromXML DiskImageDescription where
  parseXML x =
    DiskImageDescription'
      Prelude.<$> (x Core..@? "importManifestUrl")
      Prelude.<*> (x Core..@? "format")
      Prelude.<*> (x Core..@? "size")
      Prelude.<*> (x Core..@? "checksum")

instance Prelude.Hashable DiskImageDescription where
  hashWithSalt _salt DiskImageDescription' {..} =
    _salt `Prelude.hashWithSalt` importManifestUrl
      `Prelude.hashWithSalt` format
      `Prelude.hashWithSalt` size
      `Prelude.hashWithSalt` checksum

instance Prelude.NFData DiskImageDescription where
  rnf DiskImageDescription' {..} =
    Prelude.rnf importManifestUrl
      `Prelude.seq` Prelude.rnf format
      `Prelude.seq` Prelude.rnf size
      `Prelude.seq` Prelude.rnf checksum
