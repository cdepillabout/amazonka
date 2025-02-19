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
-- Module      : Amazonka.S3.Types.ScanRange
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.S3.Types.ScanRange where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.S3.Internal

-- | Specifies the byte range of the object to get the records from. A record
-- is processed when its first byte is contained by the range. This
-- parameter is optional, but when specified, it must not be empty. See RFC
-- 2616, Section 14.35.1 about how to specify the start and end of the
-- range.
--
-- /See:/ 'newScanRange' smart constructor.
data ScanRange = ScanRange'
  { -- | Specifies the start of the byte range. This parameter is optional. Valid
    -- values: non-negative integers. The default value is 0. If only @start@
    -- is supplied, it means scan from that point to the end of the file. For
    -- example, @\<scanrange>\<start>50\<\/start>\<\/scanrange>@ means scan
    -- from byte 50 until the end of the file.
    start :: Prelude.Maybe Prelude.Integer,
    -- | Specifies the end of the byte range. This parameter is optional. Valid
    -- values: non-negative integers. The default value is one less than the
    -- size of the object being queried. If only the End parameter is supplied,
    -- it is interpreted to mean scan the last N bytes of the file. For
    -- example, @\<scanrange>\<end>50\<\/end>\<\/scanrange>@ means scan the
    -- last 50 bytes.
    end :: Prelude.Maybe Prelude.Integer
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ScanRange' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'start', 'scanRange_start' - Specifies the start of the byte range. This parameter is optional. Valid
-- values: non-negative integers. The default value is 0. If only @start@
-- is supplied, it means scan from that point to the end of the file. For
-- example, @\<scanrange>\<start>50\<\/start>\<\/scanrange>@ means scan
-- from byte 50 until the end of the file.
--
-- 'end', 'scanRange_end' - Specifies the end of the byte range. This parameter is optional. Valid
-- values: non-negative integers. The default value is one less than the
-- size of the object being queried. If only the End parameter is supplied,
-- it is interpreted to mean scan the last N bytes of the file. For
-- example, @\<scanrange>\<end>50\<\/end>\<\/scanrange>@ means scan the
-- last 50 bytes.
newScanRange ::
  ScanRange
newScanRange =
  ScanRange'
    { start = Prelude.Nothing,
      end = Prelude.Nothing
    }

-- | Specifies the start of the byte range. This parameter is optional. Valid
-- values: non-negative integers. The default value is 0. If only @start@
-- is supplied, it means scan from that point to the end of the file. For
-- example, @\<scanrange>\<start>50\<\/start>\<\/scanrange>@ means scan
-- from byte 50 until the end of the file.
scanRange_start :: Lens.Lens' ScanRange (Prelude.Maybe Prelude.Integer)
scanRange_start = Lens.lens (\ScanRange' {start} -> start) (\s@ScanRange' {} a -> s {start = a} :: ScanRange)

-- | Specifies the end of the byte range. This parameter is optional. Valid
-- values: non-negative integers. The default value is one less than the
-- size of the object being queried. If only the End parameter is supplied,
-- it is interpreted to mean scan the last N bytes of the file. For
-- example, @\<scanrange>\<end>50\<\/end>\<\/scanrange>@ means scan the
-- last 50 bytes.
scanRange_end :: Lens.Lens' ScanRange (Prelude.Maybe Prelude.Integer)
scanRange_end = Lens.lens (\ScanRange' {end} -> end) (\s@ScanRange' {} a -> s {end = a} :: ScanRange)

instance Prelude.Hashable ScanRange where
  hashWithSalt _salt ScanRange' {..} =
    _salt `Prelude.hashWithSalt` start
      `Prelude.hashWithSalt` end

instance Prelude.NFData ScanRange where
  rnf ScanRange' {..} =
    Prelude.rnf start `Prelude.seq` Prelude.rnf end

instance Core.ToXML ScanRange where
  toXML ScanRange' {..} =
    Prelude.mconcat
      ["Start" Core.@= start, "End" Core.@= end]
