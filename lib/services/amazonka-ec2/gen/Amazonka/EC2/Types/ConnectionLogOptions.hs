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
-- Module      : Amazonka.EC2.Types.ConnectionLogOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.ConnectionLogOptions where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes the client connection logging options for the Client VPN
-- endpoint.
--
-- /See:/ 'newConnectionLogOptions' smart constructor.
data ConnectionLogOptions = ConnectionLogOptions'
  { -- | The name of the CloudWatch Logs log group. Required if connection
    -- logging is enabled.
    cloudwatchLogGroup :: Prelude.Maybe Prelude.Text,
    -- | Indicates whether connection logging is enabled.
    enabled :: Prelude.Maybe Prelude.Bool,
    -- | The name of the CloudWatch Logs log stream to which the connection data
    -- is published.
    cloudwatchLogStream :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ConnectionLogOptions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'cloudwatchLogGroup', 'connectionLogOptions_cloudwatchLogGroup' - The name of the CloudWatch Logs log group. Required if connection
-- logging is enabled.
--
-- 'enabled', 'connectionLogOptions_enabled' - Indicates whether connection logging is enabled.
--
-- 'cloudwatchLogStream', 'connectionLogOptions_cloudwatchLogStream' - The name of the CloudWatch Logs log stream to which the connection data
-- is published.
newConnectionLogOptions ::
  ConnectionLogOptions
newConnectionLogOptions =
  ConnectionLogOptions'
    { cloudwatchLogGroup =
        Prelude.Nothing,
      enabled = Prelude.Nothing,
      cloudwatchLogStream = Prelude.Nothing
    }

-- | The name of the CloudWatch Logs log group. Required if connection
-- logging is enabled.
connectionLogOptions_cloudwatchLogGroup :: Lens.Lens' ConnectionLogOptions (Prelude.Maybe Prelude.Text)
connectionLogOptions_cloudwatchLogGroup = Lens.lens (\ConnectionLogOptions' {cloudwatchLogGroup} -> cloudwatchLogGroup) (\s@ConnectionLogOptions' {} a -> s {cloudwatchLogGroup = a} :: ConnectionLogOptions)

-- | Indicates whether connection logging is enabled.
connectionLogOptions_enabled :: Lens.Lens' ConnectionLogOptions (Prelude.Maybe Prelude.Bool)
connectionLogOptions_enabled = Lens.lens (\ConnectionLogOptions' {enabled} -> enabled) (\s@ConnectionLogOptions' {} a -> s {enabled = a} :: ConnectionLogOptions)

-- | The name of the CloudWatch Logs log stream to which the connection data
-- is published.
connectionLogOptions_cloudwatchLogStream :: Lens.Lens' ConnectionLogOptions (Prelude.Maybe Prelude.Text)
connectionLogOptions_cloudwatchLogStream = Lens.lens (\ConnectionLogOptions' {cloudwatchLogStream} -> cloudwatchLogStream) (\s@ConnectionLogOptions' {} a -> s {cloudwatchLogStream = a} :: ConnectionLogOptions)

instance Prelude.Hashable ConnectionLogOptions where
  hashWithSalt _salt ConnectionLogOptions' {..} =
    _salt `Prelude.hashWithSalt` cloudwatchLogGroup
      `Prelude.hashWithSalt` enabled
      `Prelude.hashWithSalt` cloudwatchLogStream

instance Prelude.NFData ConnectionLogOptions where
  rnf ConnectionLogOptions' {..} =
    Prelude.rnf cloudwatchLogGroup
      `Prelude.seq` Prelude.rnf enabled
      `Prelude.seq` Prelude.rnf cloudwatchLogStream

instance Core.ToQuery ConnectionLogOptions where
  toQuery ConnectionLogOptions' {..} =
    Prelude.mconcat
      [ "CloudwatchLogGroup" Core.=: cloudwatchLogGroup,
        "Enabled" Core.=: enabled,
        "CloudwatchLogStream" Core.=: cloudwatchLogStream
      ]
