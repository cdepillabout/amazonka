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
-- Module      : Amazonka.S3.Types.GetObjectAttributesParts
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.S3.Types.GetObjectAttributesParts where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.S3.Internal
import Amazonka.S3.Types.ObjectPart

-- | A collection of parts associated with a multipart upload.
--
-- /See:/ 'newGetObjectAttributesParts' smart constructor.
data GetObjectAttributesParts = GetObjectAttributesParts'
  { -- | A container for elements related to a particular part. A response can
    -- contain zero or more @Parts@ elements.
    parts :: Prelude.Maybe [ObjectPart],
    -- | When a list is truncated, this element specifies the last part in the
    -- list, as well as the value to use for the @PartNumberMarker@ request
    -- parameter in a subsequent request.
    nextPartNumberMarker :: Prelude.Maybe Prelude.Int,
    -- | Indicates whether the returned list of parts is truncated. A value of
    -- @true@ indicates that the list was truncated. A list can be truncated if
    -- the number of parts exceeds the limit returned in the @MaxParts@
    -- element.
    isTruncated :: Prelude.Maybe Prelude.Bool,
    -- | The total number of parts.
    totalPartsCount :: Prelude.Maybe Prelude.Int,
    -- | The maximum number of parts allowed in the response.
    maxParts :: Prelude.Maybe Prelude.Int,
    -- | The marker for the current part.
    partNumberMarker :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetObjectAttributesParts' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'parts', 'getObjectAttributesParts_parts' - A container for elements related to a particular part. A response can
-- contain zero or more @Parts@ elements.
--
-- 'nextPartNumberMarker', 'getObjectAttributesParts_nextPartNumberMarker' - When a list is truncated, this element specifies the last part in the
-- list, as well as the value to use for the @PartNumberMarker@ request
-- parameter in a subsequent request.
--
-- 'isTruncated', 'getObjectAttributesParts_isTruncated' - Indicates whether the returned list of parts is truncated. A value of
-- @true@ indicates that the list was truncated. A list can be truncated if
-- the number of parts exceeds the limit returned in the @MaxParts@
-- element.
--
-- 'totalPartsCount', 'getObjectAttributesParts_totalPartsCount' - The total number of parts.
--
-- 'maxParts', 'getObjectAttributesParts_maxParts' - The maximum number of parts allowed in the response.
--
-- 'partNumberMarker', 'getObjectAttributesParts_partNumberMarker' - The marker for the current part.
newGetObjectAttributesParts ::
  GetObjectAttributesParts
newGetObjectAttributesParts =
  GetObjectAttributesParts'
    { parts = Prelude.Nothing,
      nextPartNumberMarker = Prelude.Nothing,
      isTruncated = Prelude.Nothing,
      totalPartsCount = Prelude.Nothing,
      maxParts = Prelude.Nothing,
      partNumberMarker = Prelude.Nothing
    }

-- | A container for elements related to a particular part. A response can
-- contain zero or more @Parts@ elements.
getObjectAttributesParts_parts :: Lens.Lens' GetObjectAttributesParts (Prelude.Maybe [ObjectPart])
getObjectAttributesParts_parts = Lens.lens (\GetObjectAttributesParts' {parts} -> parts) (\s@GetObjectAttributesParts' {} a -> s {parts = a} :: GetObjectAttributesParts) Prelude.. Lens.mapping Lens.coerced

-- | When a list is truncated, this element specifies the last part in the
-- list, as well as the value to use for the @PartNumberMarker@ request
-- parameter in a subsequent request.
getObjectAttributesParts_nextPartNumberMarker :: Lens.Lens' GetObjectAttributesParts (Prelude.Maybe Prelude.Int)
getObjectAttributesParts_nextPartNumberMarker = Lens.lens (\GetObjectAttributesParts' {nextPartNumberMarker} -> nextPartNumberMarker) (\s@GetObjectAttributesParts' {} a -> s {nextPartNumberMarker = a} :: GetObjectAttributesParts)

-- | Indicates whether the returned list of parts is truncated. A value of
-- @true@ indicates that the list was truncated. A list can be truncated if
-- the number of parts exceeds the limit returned in the @MaxParts@
-- element.
getObjectAttributesParts_isTruncated :: Lens.Lens' GetObjectAttributesParts (Prelude.Maybe Prelude.Bool)
getObjectAttributesParts_isTruncated = Lens.lens (\GetObjectAttributesParts' {isTruncated} -> isTruncated) (\s@GetObjectAttributesParts' {} a -> s {isTruncated = a} :: GetObjectAttributesParts)

-- | The total number of parts.
getObjectAttributesParts_totalPartsCount :: Lens.Lens' GetObjectAttributesParts (Prelude.Maybe Prelude.Int)
getObjectAttributesParts_totalPartsCount = Lens.lens (\GetObjectAttributesParts' {totalPartsCount} -> totalPartsCount) (\s@GetObjectAttributesParts' {} a -> s {totalPartsCount = a} :: GetObjectAttributesParts)

-- | The maximum number of parts allowed in the response.
getObjectAttributesParts_maxParts :: Lens.Lens' GetObjectAttributesParts (Prelude.Maybe Prelude.Int)
getObjectAttributesParts_maxParts = Lens.lens (\GetObjectAttributesParts' {maxParts} -> maxParts) (\s@GetObjectAttributesParts' {} a -> s {maxParts = a} :: GetObjectAttributesParts)

-- | The marker for the current part.
getObjectAttributesParts_partNumberMarker :: Lens.Lens' GetObjectAttributesParts (Prelude.Maybe Prelude.Int)
getObjectAttributesParts_partNumberMarker = Lens.lens (\GetObjectAttributesParts' {partNumberMarker} -> partNumberMarker) (\s@GetObjectAttributesParts' {} a -> s {partNumberMarker = a} :: GetObjectAttributesParts)

instance Core.FromXML GetObjectAttributesParts where
  parseXML x =
    GetObjectAttributesParts'
      Prelude.<$> (Core.may (Core.parseXMLList "Part") x)
      Prelude.<*> (x Core..@? "NextPartNumberMarker")
      Prelude.<*> (x Core..@? "IsTruncated")
      Prelude.<*> (x Core..@? "PartsCount")
      Prelude.<*> (x Core..@? "MaxParts")
      Prelude.<*> (x Core..@? "PartNumberMarker")

instance Prelude.Hashable GetObjectAttributesParts where
  hashWithSalt _salt GetObjectAttributesParts' {..} =
    _salt `Prelude.hashWithSalt` parts
      `Prelude.hashWithSalt` nextPartNumberMarker
      `Prelude.hashWithSalt` isTruncated
      `Prelude.hashWithSalt` totalPartsCount
      `Prelude.hashWithSalt` maxParts
      `Prelude.hashWithSalt` partNumberMarker

instance Prelude.NFData GetObjectAttributesParts where
  rnf GetObjectAttributesParts' {..} =
    Prelude.rnf parts
      `Prelude.seq` Prelude.rnf nextPartNumberMarker
      `Prelude.seq` Prelude.rnf isTruncated
      `Prelude.seq` Prelude.rnf totalPartsCount
      `Prelude.seq` Prelude.rnf maxParts
      `Prelude.seq` Prelude.rnf partNumberMarker
