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
-- Module      : Amazonka.EC2.Types.ClientVpnAuthorizationRuleStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.ClientVpnAuthorizationRuleStatus where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import Amazonka.EC2.Types.ClientVpnAuthorizationRuleStatusCode
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes the state of an authorization rule.
--
-- /See:/ 'newClientVpnAuthorizationRuleStatus' smart constructor.
data ClientVpnAuthorizationRuleStatus = ClientVpnAuthorizationRuleStatus'
  { -- | A message about the status of the authorization rule, if applicable.
    message :: Prelude.Maybe Prelude.Text,
    -- | The state of the authorization rule.
    code :: Prelude.Maybe ClientVpnAuthorizationRuleStatusCode
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ClientVpnAuthorizationRuleStatus' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'message', 'clientVpnAuthorizationRuleStatus_message' - A message about the status of the authorization rule, if applicable.
--
-- 'code', 'clientVpnAuthorizationRuleStatus_code' - The state of the authorization rule.
newClientVpnAuthorizationRuleStatus ::
  ClientVpnAuthorizationRuleStatus
newClientVpnAuthorizationRuleStatus =
  ClientVpnAuthorizationRuleStatus'
    { message =
        Prelude.Nothing,
      code = Prelude.Nothing
    }

-- | A message about the status of the authorization rule, if applicable.
clientVpnAuthorizationRuleStatus_message :: Lens.Lens' ClientVpnAuthorizationRuleStatus (Prelude.Maybe Prelude.Text)
clientVpnAuthorizationRuleStatus_message = Lens.lens (\ClientVpnAuthorizationRuleStatus' {message} -> message) (\s@ClientVpnAuthorizationRuleStatus' {} a -> s {message = a} :: ClientVpnAuthorizationRuleStatus)

-- | The state of the authorization rule.
clientVpnAuthorizationRuleStatus_code :: Lens.Lens' ClientVpnAuthorizationRuleStatus (Prelude.Maybe ClientVpnAuthorizationRuleStatusCode)
clientVpnAuthorizationRuleStatus_code = Lens.lens (\ClientVpnAuthorizationRuleStatus' {code} -> code) (\s@ClientVpnAuthorizationRuleStatus' {} a -> s {code = a} :: ClientVpnAuthorizationRuleStatus)

instance
  Core.FromXML
    ClientVpnAuthorizationRuleStatus
  where
  parseXML x =
    ClientVpnAuthorizationRuleStatus'
      Prelude.<$> (x Core..@? "message")
      Prelude.<*> (x Core..@? "code")

instance
  Prelude.Hashable
    ClientVpnAuthorizationRuleStatus
  where
  hashWithSalt
    _salt
    ClientVpnAuthorizationRuleStatus' {..} =
      _salt `Prelude.hashWithSalt` message
        `Prelude.hashWithSalt` code

instance
  Prelude.NFData
    ClientVpnAuthorizationRuleStatus
  where
  rnf ClientVpnAuthorizationRuleStatus' {..} =
    Prelude.rnf message `Prelude.seq` Prelude.rnf code
