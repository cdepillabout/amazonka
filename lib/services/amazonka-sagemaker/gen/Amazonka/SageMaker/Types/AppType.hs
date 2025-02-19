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
-- Module      : Amazonka.SageMaker.Types.AppType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SageMaker.Types.AppType
  ( AppType
      ( ..,
        AppType_JupyterServer,
        AppType_KernelGateway,
        AppType_RSessionGateway,
        AppType_RStudioServerPro,
        AppType_TensorBoard
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype AppType = AppType' {fromAppType :: Core.Text}
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

pattern AppType_JupyterServer :: AppType
pattern AppType_JupyterServer = AppType' "JupyterServer"

pattern AppType_KernelGateway :: AppType
pattern AppType_KernelGateway = AppType' "KernelGateway"

pattern AppType_RSessionGateway :: AppType
pattern AppType_RSessionGateway = AppType' "RSessionGateway"

pattern AppType_RStudioServerPro :: AppType
pattern AppType_RStudioServerPro = AppType' "RStudioServerPro"

pattern AppType_TensorBoard :: AppType
pattern AppType_TensorBoard = AppType' "TensorBoard"

{-# COMPLETE
  AppType_JupyterServer,
  AppType_KernelGateway,
  AppType_RSessionGateway,
  AppType_RStudioServerPro,
  AppType_TensorBoard,
  AppType'
  #-}
