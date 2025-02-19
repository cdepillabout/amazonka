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
-- Module      : Amazonka.WorkMail.Types.RedactedEwsAvailabilityProvider
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.WorkMail.Types.RedactedEwsAvailabilityProvider where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes an EWS based availability provider when returned from the
-- service. It does not contain the password of the endpoint.
--
-- /See:/ 'newRedactedEwsAvailabilityProvider' smart constructor.
data RedactedEwsAvailabilityProvider = RedactedEwsAvailabilityProvider'
  { -- | The username used to authenticate the remote EWS server.
    ewsUsername :: Prelude.Maybe Prelude.Text,
    -- | The endpoint of the remote EWS server.
    ewsEndpoint :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RedactedEwsAvailabilityProvider' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'ewsUsername', 'redactedEwsAvailabilityProvider_ewsUsername' - The username used to authenticate the remote EWS server.
--
-- 'ewsEndpoint', 'redactedEwsAvailabilityProvider_ewsEndpoint' - The endpoint of the remote EWS server.
newRedactedEwsAvailabilityProvider ::
  RedactedEwsAvailabilityProvider
newRedactedEwsAvailabilityProvider =
  RedactedEwsAvailabilityProvider'
    { ewsUsername =
        Prelude.Nothing,
      ewsEndpoint = Prelude.Nothing
    }

-- | The username used to authenticate the remote EWS server.
redactedEwsAvailabilityProvider_ewsUsername :: Lens.Lens' RedactedEwsAvailabilityProvider (Prelude.Maybe Prelude.Text)
redactedEwsAvailabilityProvider_ewsUsername = Lens.lens (\RedactedEwsAvailabilityProvider' {ewsUsername} -> ewsUsername) (\s@RedactedEwsAvailabilityProvider' {} a -> s {ewsUsername = a} :: RedactedEwsAvailabilityProvider)

-- | The endpoint of the remote EWS server.
redactedEwsAvailabilityProvider_ewsEndpoint :: Lens.Lens' RedactedEwsAvailabilityProvider (Prelude.Maybe Prelude.Text)
redactedEwsAvailabilityProvider_ewsEndpoint = Lens.lens (\RedactedEwsAvailabilityProvider' {ewsEndpoint} -> ewsEndpoint) (\s@RedactedEwsAvailabilityProvider' {} a -> s {ewsEndpoint = a} :: RedactedEwsAvailabilityProvider)

instance
  Core.FromJSON
    RedactedEwsAvailabilityProvider
  where
  parseJSON =
    Core.withObject
      "RedactedEwsAvailabilityProvider"
      ( \x ->
          RedactedEwsAvailabilityProvider'
            Prelude.<$> (x Core..:? "EwsUsername")
            Prelude.<*> (x Core..:? "EwsEndpoint")
      )

instance
  Prelude.Hashable
    RedactedEwsAvailabilityProvider
  where
  hashWithSalt
    _salt
    RedactedEwsAvailabilityProvider' {..} =
      _salt `Prelude.hashWithSalt` ewsUsername
        `Prelude.hashWithSalt` ewsEndpoint

instance
  Prelude.NFData
    RedactedEwsAvailabilityProvider
  where
  rnf RedactedEwsAvailabilityProvider' {..} =
    Prelude.rnf ewsUsername
      `Prelude.seq` Prelude.rnf ewsEndpoint
