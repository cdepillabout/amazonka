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
-- Module      : Amazonka.EC2.Types.TerminateConnectionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.TerminateConnectionStatus where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import Amazonka.EC2.Types.ClientVpnConnectionStatus
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Information about a terminated Client VPN endpoint client connection.
--
-- /See:/ 'newTerminateConnectionStatus' smart constructor.
data TerminateConnectionStatus = TerminateConnectionStatus'
  { -- | The state of the client connection.
    previousStatus :: Prelude.Maybe ClientVpnConnectionStatus,
    -- | The ID of the client connection.
    connectionId :: Prelude.Maybe Prelude.Text,
    -- | A message about the status of the client connection, if applicable.
    currentStatus :: Prelude.Maybe ClientVpnConnectionStatus
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TerminateConnectionStatus' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'previousStatus', 'terminateConnectionStatus_previousStatus' - The state of the client connection.
--
-- 'connectionId', 'terminateConnectionStatus_connectionId' - The ID of the client connection.
--
-- 'currentStatus', 'terminateConnectionStatus_currentStatus' - A message about the status of the client connection, if applicable.
newTerminateConnectionStatus ::
  TerminateConnectionStatus
newTerminateConnectionStatus =
  TerminateConnectionStatus'
    { previousStatus =
        Prelude.Nothing,
      connectionId = Prelude.Nothing,
      currentStatus = Prelude.Nothing
    }

-- | The state of the client connection.
terminateConnectionStatus_previousStatus :: Lens.Lens' TerminateConnectionStatus (Prelude.Maybe ClientVpnConnectionStatus)
terminateConnectionStatus_previousStatus = Lens.lens (\TerminateConnectionStatus' {previousStatus} -> previousStatus) (\s@TerminateConnectionStatus' {} a -> s {previousStatus = a} :: TerminateConnectionStatus)

-- | The ID of the client connection.
terminateConnectionStatus_connectionId :: Lens.Lens' TerminateConnectionStatus (Prelude.Maybe Prelude.Text)
terminateConnectionStatus_connectionId = Lens.lens (\TerminateConnectionStatus' {connectionId} -> connectionId) (\s@TerminateConnectionStatus' {} a -> s {connectionId = a} :: TerminateConnectionStatus)

-- | A message about the status of the client connection, if applicable.
terminateConnectionStatus_currentStatus :: Lens.Lens' TerminateConnectionStatus (Prelude.Maybe ClientVpnConnectionStatus)
terminateConnectionStatus_currentStatus = Lens.lens (\TerminateConnectionStatus' {currentStatus} -> currentStatus) (\s@TerminateConnectionStatus' {} a -> s {currentStatus = a} :: TerminateConnectionStatus)

instance Core.FromXML TerminateConnectionStatus where
  parseXML x =
    TerminateConnectionStatus'
      Prelude.<$> (x Core..@? "previousStatus")
      Prelude.<*> (x Core..@? "connectionId")
      Prelude.<*> (x Core..@? "currentStatus")

instance Prelude.Hashable TerminateConnectionStatus where
  hashWithSalt _salt TerminateConnectionStatus' {..} =
    _salt `Prelude.hashWithSalt` previousStatus
      `Prelude.hashWithSalt` connectionId
      `Prelude.hashWithSalt` currentStatus

instance Prelude.NFData TerminateConnectionStatus where
  rnf TerminateConnectionStatus' {..} =
    Prelude.rnf previousStatus
      `Prelude.seq` Prelude.rnf connectionId
      `Prelude.seq` Prelude.rnf currentStatus
