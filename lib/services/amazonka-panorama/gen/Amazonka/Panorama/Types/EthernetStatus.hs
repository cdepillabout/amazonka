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
-- Module      : Amazonka.Panorama.Types.EthernetStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Panorama.Types.EthernetStatus where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.Panorama.Types.NetworkConnectionStatus
import qualified Amazonka.Prelude as Prelude

-- | A device\'s Ethernet status.
--
-- /See:/ 'newEthernetStatus' smart constructor.
data EthernetStatus = EthernetStatus'
  { -- | The device\'s physical address.
    hwAddress :: Prelude.Maybe Prelude.Text,
    -- | The device\'s connection status.
    connectionStatus :: Prelude.Maybe NetworkConnectionStatus,
    -- | The device\'s IP address.
    ipAddress :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EthernetStatus' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'hwAddress', 'ethernetStatus_hwAddress' - The device\'s physical address.
--
-- 'connectionStatus', 'ethernetStatus_connectionStatus' - The device\'s connection status.
--
-- 'ipAddress', 'ethernetStatus_ipAddress' - The device\'s IP address.
newEthernetStatus ::
  EthernetStatus
newEthernetStatus =
  EthernetStatus'
    { hwAddress = Prelude.Nothing,
      connectionStatus = Prelude.Nothing,
      ipAddress = Prelude.Nothing
    }

-- | The device\'s physical address.
ethernetStatus_hwAddress :: Lens.Lens' EthernetStatus (Prelude.Maybe Prelude.Text)
ethernetStatus_hwAddress = Lens.lens (\EthernetStatus' {hwAddress} -> hwAddress) (\s@EthernetStatus' {} a -> s {hwAddress = a} :: EthernetStatus)

-- | The device\'s connection status.
ethernetStatus_connectionStatus :: Lens.Lens' EthernetStatus (Prelude.Maybe NetworkConnectionStatus)
ethernetStatus_connectionStatus = Lens.lens (\EthernetStatus' {connectionStatus} -> connectionStatus) (\s@EthernetStatus' {} a -> s {connectionStatus = a} :: EthernetStatus)

-- | The device\'s IP address.
ethernetStatus_ipAddress :: Lens.Lens' EthernetStatus (Prelude.Maybe Prelude.Text)
ethernetStatus_ipAddress = Lens.lens (\EthernetStatus' {ipAddress} -> ipAddress) (\s@EthernetStatus' {} a -> s {ipAddress = a} :: EthernetStatus)

instance Core.FromJSON EthernetStatus where
  parseJSON =
    Core.withObject
      "EthernetStatus"
      ( \x ->
          EthernetStatus'
            Prelude.<$> (x Core..:? "HwAddress")
            Prelude.<*> (x Core..:? "ConnectionStatus")
            Prelude.<*> (x Core..:? "IpAddress")
      )

instance Prelude.Hashable EthernetStatus where
  hashWithSalt _salt EthernetStatus' {..} =
    _salt `Prelude.hashWithSalt` hwAddress
      `Prelude.hashWithSalt` connectionStatus
      `Prelude.hashWithSalt` ipAddress

instance Prelude.NFData EthernetStatus where
  rnf EthernetStatus' {..} =
    Prelude.rnf hwAddress
      `Prelude.seq` Prelude.rnf connectionStatus
      `Prelude.seq` Prelude.rnf ipAddress
