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
-- Module      : Amazonka.AppStream.Types.NetworkAccessConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.AppStream.Types.NetworkAccessConfiguration where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes the network details of the fleet or image builder instance.
--
-- /See:/ 'newNetworkAccessConfiguration' smart constructor.
data NetworkAccessConfiguration = NetworkAccessConfiguration'
  { -- | The private IP address of the elastic network interface that is attached
    -- to instances in your VPC.
    eniPrivateIpAddress :: Prelude.Maybe Prelude.Text,
    -- | The resource identifier of the elastic network interface that is
    -- attached to instances in your VPC. All network interfaces have the
    -- eni-xxxxxxxx resource identifier.
    eniId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'NetworkAccessConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'eniPrivateIpAddress', 'networkAccessConfiguration_eniPrivateIpAddress' - The private IP address of the elastic network interface that is attached
-- to instances in your VPC.
--
-- 'eniId', 'networkAccessConfiguration_eniId' - The resource identifier of the elastic network interface that is
-- attached to instances in your VPC. All network interfaces have the
-- eni-xxxxxxxx resource identifier.
newNetworkAccessConfiguration ::
  NetworkAccessConfiguration
newNetworkAccessConfiguration =
  NetworkAccessConfiguration'
    { eniPrivateIpAddress =
        Prelude.Nothing,
      eniId = Prelude.Nothing
    }

-- | The private IP address of the elastic network interface that is attached
-- to instances in your VPC.
networkAccessConfiguration_eniPrivateIpAddress :: Lens.Lens' NetworkAccessConfiguration (Prelude.Maybe Prelude.Text)
networkAccessConfiguration_eniPrivateIpAddress = Lens.lens (\NetworkAccessConfiguration' {eniPrivateIpAddress} -> eniPrivateIpAddress) (\s@NetworkAccessConfiguration' {} a -> s {eniPrivateIpAddress = a} :: NetworkAccessConfiguration)

-- | The resource identifier of the elastic network interface that is
-- attached to instances in your VPC. All network interfaces have the
-- eni-xxxxxxxx resource identifier.
networkAccessConfiguration_eniId :: Lens.Lens' NetworkAccessConfiguration (Prelude.Maybe Prelude.Text)
networkAccessConfiguration_eniId = Lens.lens (\NetworkAccessConfiguration' {eniId} -> eniId) (\s@NetworkAccessConfiguration' {} a -> s {eniId = a} :: NetworkAccessConfiguration)

instance Core.FromJSON NetworkAccessConfiguration where
  parseJSON =
    Core.withObject
      "NetworkAccessConfiguration"
      ( \x ->
          NetworkAccessConfiguration'
            Prelude.<$> (x Core..:? "EniPrivateIpAddress")
            Prelude.<*> (x Core..:? "EniId")
      )

instance Prelude.Hashable NetworkAccessConfiguration where
  hashWithSalt _salt NetworkAccessConfiguration' {..} =
    _salt `Prelude.hashWithSalt` eniPrivateIpAddress
      `Prelude.hashWithSalt` eniId

instance Prelude.NFData NetworkAccessConfiguration where
  rnf NetworkAccessConfiguration' {..} =
    Prelude.rnf eniPrivateIpAddress
      `Prelude.seq` Prelude.rnf eniId
