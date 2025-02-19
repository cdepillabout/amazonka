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
-- Module      : Amazonka.Wisdom.Types.RecommendationSourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Wisdom.Types.RecommendationSourceType
  ( RecommendationSourceType
      ( ..,
        RecommendationSourceType_ISSUE_DETECTION,
        RecommendationSourceType_OTHER,
        RecommendationSourceType_RULE_EVALUATION
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype RecommendationSourceType = RecommendationSourceType'
  { fromRecommendationSourceType ::
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

pattern RecommendationSourceType_ISSUE_DETECTION :: RecommendationSourceType
pattern RecommendationSourceType_ISSUE_DETECTION = RecommendationSourceType' "ISSUE_DETECTION"

pattern RecommendationSourceType_OTHER :: RecommendationSourceType
pattern RecommendationSourceType_OTHER = RecommendationSourceType' "OTHER"

pattern RecommendationSourceType_RULE_EVALUATION :: RecommendationSourceType
pattern RecommendationSourceType_RULE_EVALUATION = RecommendationSourceType' "RULE_EVALUATION"

{-# COMPLETE
  RecommendationSourceType_ISSUE_DETECTION,
  RecommendationSourceType_OTHER,
  RecommendationSourceType_RULE_EVALUATION,
  RecommendationSourceType'
  #-}
