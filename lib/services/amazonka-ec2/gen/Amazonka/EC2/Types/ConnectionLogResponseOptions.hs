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
-- Module      : Amazonka.EC2.Types.ConnectionLogResponseOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.ConnectionLogResponseOptions where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Information about the client connection logging options for a Client VPN
-- endpoint.
--
-- /See:/ 'newConnectionLogResponseOptions' smart constructor.
data ConnectionLogResponseOptions = ConnectionLogResponseOptions'
  { -- | The name of the Amazon CloudWatch Logs log group to which connection
    -- logging data is published.
    cloudwatchLogGroup :: Prelude.Maybe Prelude.Text,
    -- | Indicates whether client connection logging is enabled for the Client
    -- VPN endpoint.
    enabled :: Prelude.Maybe Prelude.Bool,
    -- | The name of the Amazon CloudWatch Logs log stream to which connection
    -- logging data is published.
    cloudwatchLogStream :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ConnectionLogResponseOptions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'cloudwatchLogGroup', 'connectionLogResponseOptions_cloudwatchLogGroup' - The name of the Amazon CloudWatch Logs log group to which connection
-- logging data is published.
--
-- 'enabled', 'connectionLogResponseOptions_enabled' - Indicates whether client connection logging is enabled for the Client
-- VPN endpoint.
--
-- 'cloudwatchLogStream', 'connectionLogResponseOptions_cloudwatchLogStream' - The name of the Amazon CloudWatch Logs log stream to which connection
-- logging data is published.
newConnectionLogResponseOptions ::
  ConnectionLogResponseOptions
newConnectionLogResponseOptions =
  ConnectionLogResponseOptions'
    { cloudwatchLogGroup =
        Prelude.Nothing,
      enabled = Prelude.Nothing,
      cloudwatchLogStream = Prelude.Nothing
    }

-- | The name of the Amazon CloudWatch Logs log group to which connection
-- logging data is published.
connectionLogResponseOptions_cloudwatchLogGroup :: Lens.Lens' ConnectionLogResponseOptions (Prelude.Maybe Prelude.Text)
connectionLogResponseOptions_cloudwatchLogGroup = Lens.lens (\ConnectionLogResponseOptions' {cloudwatchLogGroup} -> cloudwatchLogGroup) (\s@ConnectionLogResponseOptions' {} a -> s {cloudwatchLogGroup = a} :: ConnectionLogResponseOptions)

-- | Indicates whether client connection logging is enabled for the Client
-- VPN endpoint.
connectionLogResponseOptions_enabled :: Lens.Lens' ConnectionLogResponseOptions (Prelude.Maybe Prelude.Bool)
connectionLogResponseOptions_enabled = Lens.lens (\ConnectionLogResponseOptions' {enabled} -> enabled) (\s@ConnectionLogResponseOptions' {} a -> s {enabled = a} :: ConnectionLogResponseOptions)

-- | The name of the Amazon CloudWatch Logs log stream to which connection
-- logging data is published.
connectionLogResponseOptions_cloudwatchLogStream :: Lens.Lens' ConnectionLogResponseOptions (Prelude.Maybe Prelude.Text)
connectionLogResponseOptions_cloudwatchLogStream = Lens.lens (\ConnectionLogResponseOptions' {cloudwatchLogStream} -> cloudwatchLogStream) (\s@ConnectionLogResponseOptions' {} a -> s {cloudwatchLogStream = a} :: ConnectionLogResponseOptions)

instance Core.FromXML ConnectionLogResponseOptions where
  parseXML x =
    ConnectionLogResponseOptions'
      Prelude.<$> (x Core..@? "CloudwatchLogGroup")
      Prelude.<*> (x Core..@? "Enabled")
      Prelude.<*> (x Core..@? "CloudwatchLogStream")

instance
  Prelude.Hashable
    ConnectionLogResponseOptions
  where
  hashWithSalt _salt ConnectionLogResponseOptions' {..} =
    _salt `Prelude.hashWithSalt` cloudwatchLogGroup
      `Prelude.hashWithSalt` enabled
      `Prelude.hashWithSalt` cloudwatchLogStream

instance Prelude.NFData ConnectionLogResponseOptions where
  rnf ConnectionLogResponseOptions' {..} =
    Prelude.rnf cloudwatchLogGroup
      `Prelude.seq` Prelude.rnf enabled
      `Prelude.seq` Prelude.rnf cloudwatchLogStream
