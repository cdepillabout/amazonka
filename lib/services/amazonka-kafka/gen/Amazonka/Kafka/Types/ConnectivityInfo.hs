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
-- Module      : Amazonka.Kafka.Types.ConnectivityInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Kafka.Types.ConnectivityInfo where

import qualified Amazonka.Core as Core
import Amazonka.Kafka.Types.PublicAccess
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Information about the broker access configuration.
--
-- /See:/ 'newConnectivityInfo' smart constructor.
data ConnectivityInfo = ConnectivityInfo'
  { -- | Public access control for brokers.
    publicAccess :: Prelude.Maybe PublicAccess
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ConnectivityInfo' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'publicAccess', 'connectivityInfo_publicAccess' - Public access control for brokers.
newConnectivityInfo ::
  ConnectivityInfo
newConnectivityInfo =
  ConnectivityInfo' {publicAccess = Prelude.Nothing}

-- | Public access control for brokers.
connectivityInfo_publicAccess :: Lens.Lens' ConnectivityInfo (Prelude.Maybe PublicAccess)
connectivityInfo_publicAccess = Lens.lens (\ConnectivityInfo' {publicAccess} -> publicAccess) (\s@ConnectivityInfo' {} a -> s {publicAccess = a} :: ConnectivityInfo)

instance Core.FromJSON ConnectivityInfo where
  parseJSON =
    Core.withObject
      "ConnectivityInfo"
      ( \x ->
          ConnectivityInfo'
            Prelude.<$> (x Core..:? "publicAccess")
      )

instance Prelude.Hashable ConnectivityInfo where
  hashWithSalt _salt ConnectivityInfo' {..} =
    _salt `Prelude.hashWithSalt` publicAccess

instance Prelude.NFData ConnectivityInfo where
  rnf ConnectivityInfo' {..} = Prelude.rnf publicAccess

instance Core.ToJSON ConnectivityInfo where
  toJSON ConnectivityInfo' {..} =
    Core.object
      ( Prelude.catMaybes
          [("publicAccess" Core..=) Prelude.<$> publicAccess]
      )
