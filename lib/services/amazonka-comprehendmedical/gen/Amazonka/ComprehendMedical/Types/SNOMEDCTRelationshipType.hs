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
-- Module      : Amazonka.ComprehendMedical.Types.SNOMEDCTRelationshipType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ComprehendMedical.Types.SNOMEDCTRelationshipType
  ( SNOMEDCTRelationshipType
      ( ..,
        SNOMEDCTRelationshipType_ACUITY,
        SNOMEDCTRelationshipType_DIRECTION,
        SNOMEDCTRelationshipType_QUALITY,
        SNOMEDCTRelationshipType_SYSTEM_ORGAN_SITE,
        SNOMEDCTRelationshipType_TEST_UNITS,
        SNOMEDCTRelationshipType_TEST_VALUE
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype SNOMEDCTRelationshipType = SNOMEDCTRelationshipType'
  { fromSNOMEDCTRelationshipType ::
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

pattern SNOMEDCTRelationshipType_ACUITY :: SNOMEDCTRelationshipType
pattern SNOMEDCTRelationshipType_ACUITY = SNOMEDCTRelationshipType' "ACUITY"

pattern SNOMEDCTRelationshipType_DIRECTION :: SNOMEDCTRelationshipType
pattern SNOMEDCTRelationshipType_DIRECTION = SNOMEDCTRelationshipType' "DIRECTION"

pattern SNOMEDCTRelationshipType_QUALITY :: SNOMEDCTRelationshipType
pattern SNOMEDCTRelationshipType_QUALITY = SNOMEDCTRelationshipType' "QUALITY"

pattern SNOMEDCTRelationshipType_SYSTEM_ORGAN_SITE :: SNOMEDCTRelationshipType
pattern SNOMEDCTRelationshipType_SYSTEM_ORGAN_SITE = SNOMEDCTRelationshipType' "SYSTEM_ORGAN_SITE"

pattern SNOMEDCTRelationshipType_TEST_UNITS :: SNOMEDCTRelationshipType
pattern SNOMEDCTRelationshipType_TEST_UNITS = SNOMEDCTRelationshipType' "TEST_UNITS"

pattern SNOMEDCTRelationshipType_TEST_VALUE :: SNOMEDCTRelationshipType
pattern SNOMEDCTRelationshipType_TEST_VALUE = SNOMEDCTRelationshipType' "TEST_VALUE"

{-# COMPLETE
  SNOMEDCTRelationshipType_ACUITY,
  SNOMEDCTRelationshipType_DIRECTION,
  SNOMEDCTRelationshipType_QUALITY,
  SNOMEDCTRelationshipType_SYSTEM_ORGAN_SITE,
  SNOMEDCTRelationshipType_TEST_UNITS,
  SNOMEDCTRelationshipType_TEST_VALUE,
  SNOMEDCTRelationshipType'
  #-}
