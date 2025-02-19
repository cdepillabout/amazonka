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
-- Module      : Amazonka.Nimble.Types.StreamingImageStatusCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Nimble.Types.StreamingImageStatusCode
  ( StreamingImageStatusCode
      ( ..,
        StreamingImageStatusCode_ACCESS_DENIED,
        StreamingImageStatusCode_INTERNAL_ERROR,
        StreamingImageStatusCode_STREAMING_IMAGE_CREATE_IN_PROGRESS,
        StreamingImageStatusCode_STREAMING_IMAGE_DELETED,
        StreamingImageStatusCode_STREAMING_IMAGE_DELETE_IN_PROGRESS,
        StreamingImageStatusCode_STREAMING_IMAGE_READY,
        StreamingImageStatusCode_STREAMING_IMAGE_UPDATE_IN_PROGRESS
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

-- | The status code.
newtype StreamingImageStatusCode = StreamingImageStatusCode'
  { fromStreamingImageStatusCode ::
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

pattern StreamingImageStatusCode_ACCESS_DENIED :: StreamingImageStatusCode
pattern StreamingImageStatusCode_ACCESS_DENIED = StreamingImageStatusCode' "ACCESS_DENIED"

pattern StreamingImageStatusCode_INTERNAL_ERROR :: StreamingImageStatusCode
pattern StreamingImageStatusCode_INTERNAL_ERROR = StreamingImageStatusCode' "INTERNAL_ERROR"

pattern StreamingImageStatusCode_STREAMING_IMAGE_CREATE_IN_PROGRESS :: StreamingImageStatusCode
pattern StreamingImageStatusCode_STREAMING_IMAGE_CREATE_IN_PROGRESS = StreamingImageStatusCode' "STREAMING_IMAGE_CREATE_IN_PROGRESS"

pattern StreamingImageStatusCode_STREAMING_IMAGE_DELETED :: StreamingImageStatusCode
pattern StreamingImageStatusCode_STREAMING_IMAGE_DELETED = StreamingImageStatusCode' "STREAMING_IMAGE_DELETED"

pattern StreamingImageStatusCode_STREAMING_IMAGE_DELETE_IN_PROGRESS :: StreamingImageStatusCode
pattern StreamingImageStatusCode_STREAMING_IMAGE_DELETE_IN_PROGRESS = StreamingImageStatusCode' "STREAMING_IMAGE_DELETE_IN_PROGRESS"

pattern StreamingImageStatusCode_STREAMING_IMAGE_READY :: StreamingImageStatusCode
pattern StreamingImageStatusCode_STREAMING_IMAGE_READY = StreamingImageStatusCode' "STREAMING_IMAGE_READY"

pattern StreamingImageStatusCode_STREAMING_IMAGE_UPDATE_IN_PROGRESS :: StreamingImageStatusCode
pattern StreamingImageStatusCode_STREAMING_IMAGE_UPDATE_IN_PROGRESS = StreamingImageStatusCode' "STREAMING_IMAGE_UPDATE_IN_PROGRESS"

{-# COMPLETE
  StreamingImageStatusCode_ACCESS_DENIED,
  StreamingImageStatusCode_INTERNAL_ERROR,
  StreamingImageStatusCode_STREAMING_IMAGE_CREATE_IN_PROGRESS,
  StreamingImageStatusCode_STREAMING_IMAGE_DELETED,
  StreamingImageStatusCode_STREAMING_IMAGE_DELETE_IN_PROGRESS,
  StreamingImageStatusCode_STREAMING_IMAGE_READY,
  StreamingImageStatusCode_STREAMING_IMAGE_UPDATE_IN_PROGRESS,
  StreamingImageStatusCode'
  #-}
