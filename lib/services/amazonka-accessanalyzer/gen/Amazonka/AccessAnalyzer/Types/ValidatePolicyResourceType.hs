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
-- Module      : Amazonka.AccessAnalyzer.Types.ValidatePolicyResourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.AccessAnalyzer.Types.ValidatePolicyResourceType
  ( ValidatePolicyResourceType
      ( ..,
        ValidatePolicyResourceType_AWS__S3ObjectLambda__AccessPoint,
        ValidatePolicyResourceType_AWS__S3__AccessPoint,
        ValidatePolicyResourceType_AWS__S3__Bucket,
        ValidatePolicyResourceType_AWS__S3__MultiRegionAccessPoint
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype ValidatePolicyResourceType = ValidatePolicyResourceType'
  { fromValidatePolicyResourceType ::
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

pattern ValidatePolicyResourceType_AWS__S3ObjectLambda__AccessPoint :: ValidatePolicyResourceType
pattern ValidatePolicyResourceType_AWS__S3ObjectLambda__AccessPoint = ValidatePolicyResourceType' "AWS::S3ObjectLambda::AccessPoint"

pattern ValidatePolicyResourceType_AWS__S3__AccessPoint :: ValidatePolicyResourceType
pattern ValidatePolicyResourceType_AWS__S3__AccessPoint = ValidatePolicyResourceType' "AWS::S3::AccessPoint"

pattern ValidatePolicyResourceType_AWS__S3__Bucket :: ValidatePolicyResourceType
pattern ValidatePolicyResourceType_AWS__S3__Bucket = ValidatePolicyResourceType' "AWS::S3::Bucket"

pattern ValidatePolicyResourceType_AWS__S3__MultiRegionAccessPoint :: ValidatePolicyResourceType
pattern ValidatePolicyResourceType_AWS__S3__MultiRegionAccessPoint = ValidatePolicyResourceType' "AWS::S3::MultiRegionAccessPoint"

{-# COMPLETE
  ValidatePolicyResourceType_AWS__S3ObjectLambda__AccessPoint,
  ValidatePolicyResourceType_AWS__S3__AccessPoint,
  ValidatePolicyResourceType_AWS__S3__Bucket,
  ValidatePolicyResourceType_AWS__S3__MultiRegionAccessPoint,
  ValidatePolicyResourceType'
  #-}
