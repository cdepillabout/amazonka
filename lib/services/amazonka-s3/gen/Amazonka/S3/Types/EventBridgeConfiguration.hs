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
-- Module      : Amazonka.S3.Types.EventBridgeConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.S3.Types.EventBridgeConfiguration where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.S3.Internal

-- | A container for specifying the configuration for Amazon EventBridge.
--
-- /See:/ 'newEventBridgeConfiguration' smart constructor.
data EventBridgeConfiguration = EventBridgeConfiguration'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EventBridgeConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newEventBridgeConfiguration ::
  EventBridgeConfiguration
newEventBridgeConfiguration =
  EventBridgeConfiguration'

instance Core.FromXML EventBridgeConfiguration where
  parseXML =
    Prelude.const
      (Prelude.pure EventBridgeConfiguration')

instance Prelude.Hashable EventBridgeConfiguration where
  hashWithSalt _salt _ =
    _salt `Prelude.hashWithSalt` ()

instance Prelude.NFData EventBridgeConfiguration where
  rnf _ = ()

instance Core.ToXML EventBridgeConfiguration where
  toXML = Prelude.const Prelude.mempty
