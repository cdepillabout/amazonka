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
-- Module      : Amazonka.EC2.Types.IpamPoolCidrFailureReason
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.IpamPoolCidrFailureReason where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import Amazonka.EC2.Types.IpamPoolCidrFailureCode
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Details related to why an IPAM pool CIDR failed to be provisioned.
--
-- /See:/ 'newIpamPoolCidrFailureReason' smart constructor.
data IpamPoolCidrFailureReason = IpamPoolCidrFailureReason'
  { -- | A message related to why an IPAM pool CIDR failed to be provisioned.
    message :: Prelude.Maybe Prelude.Text,
    -- | An error code related to why an IPAM pool CIDR failed to be provisioned.
    code :: Prelude.Maybe IpamPoolCidrFailureCode
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'IpamPoolCidrFailureReason' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'message', 'ipamPoolCidrFailureReason_message' - A message related to why an IPAM pool CIDR failed to be provisioned.
--
-- 'code', 'ipamPoolCidrFailureReason_code' - An error code related to why an IPAM pool CIDR failed to be provisioned.
newIpamPoolCidrFailureReason ::
  IpamPoolCidrFailureReason
newIpamPoolCidrFailureReason =
  IpamPoolCidrFailureReason'
    { message =
        Prelude.Nothing,
      code = Prelude.Nothing
    }

-- | A message related to why an IPAM pool CIDR failed to be provisioned.
ipamPoolCidrFailureReason_message :: Lens.Lens' IpamPoolCidrFailureReason (Prelude.Maybe Prelude.Text)
ipamPoolCidrFailureReason_message = Lens.lens (\IpamPoolCidrFailureReason' {message} -> message) (\s@IpamPoolCidrFailureReason' {} a -> s {message = a} :: IpamPoolCidrFailureReason)

-- | An error code related to why an IPAM pool CIDR failed to be provisioned.
ipamPoolCidrFailureReason_code :: Lens.Lens' IpamPoolCidrFailureReason (Prelude.Maybe IpamPoolCidrFailureCode)
ipamPoolCidrFailureReason_code = Lens.lens (\IpamPoolCidrFailureReason' {code} -> code) (\s@IpamPoolCidrFailureReason' {} a -> s {code = a} :: IpamPoolCidrFailureReason)

instance Core.FromXML IpamPoolCidrFailureReason where
  parseXML x =
    IpamPoolCidrFailureReason'
      Prelude.<$> (x Core..@? "message")
      Prelude.<*> (x Core..@? "code")

instance Prelude.Hashable IpamPoolCidrFailureReason where
  hashWithSalt _salt IpamPoolCidrFailureReason' {..} =
    _salt `Prelude.hashWithSalt` message
      `Prelude.hashWithSalt` code

instance Prelude.NFData IpamPoolCidrFailureReason where
  rnf IpamPoolCidrFailureReason' {..} =
    Prelude.rnf message `Prelude.seq` Prelude.rnf code
