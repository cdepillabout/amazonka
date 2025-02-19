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
-- Module      : Amazonka.NetworkManager.Types.VpcOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.NetworkManager.Types.VpcOptions where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes the VPC options.
--
-- /See:/ 'newVpcOptions' smart constructor.
data VpcOptions = VpcOptions'
  { -- | Indicates whether IPv6 is supported.
    ipv6Support :: Prelude.Maybe Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'VpcOptions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'ipv6Support', 'vpcOptions_ipv6Support' - Indicates whether IPv6 is supported.
newVpcOptions ::
  VpcOptions
newVpcOptions =
  VpcOptions' {ipv6Support = Prelude.Nothing}

-- | Indicates whether IPv6 is supported.
vpcOptions_ipv6Support :: Lens.Lens' VpcOptions (Prelude.Maybe Prelude.Bool)
vpcOptions_ipv6Support = Lens.lens (\VpcOptions' {ipv6Support} -> ipv6Support) (\s@VpcOptions' {} a -> s {ipv6Support = a} :: VpcOptions)

instance Core.FromJSON VpcOptions where
  parseJSON =
    Core.withObject
      "VpcOptions"
      ( \x ->
          VpcOptions' Prelude.<$> (x Core..:? "Ipv6Support")
      )

instance Prelude.Hashable VpcOptions where
  hashWithSalt _salt VpcOptions' {..} =
    _salt `Prelude.hashWithSalt` ipv6Support

instance Prelude.NFData VpcOptions where
  rnf VpcOptions' {..} = Prelude.rnf ipv6Support

instance Core.ToJSON VpcOptions where
  toJSON VpcOptions' {..} =
    Core.object
      ( Prelude.catMaybes
          [("Ipv6Support" Core..=) Prelude.<$> ipv6Support]
      )
