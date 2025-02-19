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
-- Module      : Amazonka.Outposts.Types.ComputeAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Outposts.Types.ComputeAttributes where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Information about compute hardware assets.
--
-- /See:/ 'newComputeAttributes' smart constructor.
data ComputeAttributes = ComputeAttributes'
  { -- | The host ID of any Dedicated Hosts on the asset.
    hostId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ComputeAttributes' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'hostId', 'computeAttributes_hostId' - The host ID of any Dedicated Hosts on the asset.
newComputeAttributes ::
  ComputeAttributes
newComputeAttributes =
  ComputeAttributes' {hostId = Prelude.Nothing}

-- | The host ID of any Dedicated Hosts on the asset.
computeAttributes_hostId :: Lens.Lens' ComputeAttributes (Prelude.Maybe Prelude.Text)
computeAttributes_hostId = Lens.lens (\ComputeAttributes' {hostId} -> hostId) (\s@ComputeAttributes' {} a -> s {hostId = a} :: ComputeAttributes)

instance Core.FromJSON ComputeAttributes where
  parseJSON =
    Core.withObject
      "ComputeAttributes"
      ( \x ->
          ComputeAttributes' Prelude.<$> (x Core..:? "HostId")
      )

instance Prelude.Hashable ComputeAttributes where
  hashWithSalt _salt ComputeAttributes' {..} =
    _salt `Prelude.hashWithSalt` hostId

instance Prelude.NFData ComputeAttributes where
  rnf ComputeAttributes' {..} = Prelude.rnf hostId
