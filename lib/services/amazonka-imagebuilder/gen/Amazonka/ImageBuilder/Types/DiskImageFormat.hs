{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.ImageBuilder.Types.DiskImageFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ImageBuilder.Types.DiskImageFormat
  ( DiskImageFormat
      ( ..,
        DiskImageFormat_RAW,
        DiskImageFormat_VHD,
        DiskImageFormat_VMDK
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype DiskImageFormat = DiskImageFormat'
  { fromDiskImageFormat ::
      Core.Text
  }
  deriving stock
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Generic
    )
  deriving newtype
    ( Prelude.Hashable,
      Prelude.NFData,
      Core.FromText,
      Core.ToText,
      Core.ToByteString,
      Core.ToLog,
      Core.ToHeader,
      Core.ToQuery,
      Core.FromJSON,
      Core.FromJSONKey,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromXML,
      Core.ToXML
    )

pattern DiskImageFormat_RAW :: DiskImageFormat
pattern DiskImageFormat_RAW = DiskImageFormat' "RAW"

pattern DiskImageFormat_VHD :: DiskImageFormat
pattern DiskImageFormat_VHD = DiskImageFormat' "VHD"

pattern DiskImageFormat_VMDK :: DiskImageFormat
pattern DiskImageFormat_VMDK = DiskImageFormat' "VMDK"

{-# COMPLETE
  DiskImageFormat_RAW,
  DiskImageFormat_VHD,
  DiskImageFormat_VMDK,
  DiskImageFormat'
  #-}
