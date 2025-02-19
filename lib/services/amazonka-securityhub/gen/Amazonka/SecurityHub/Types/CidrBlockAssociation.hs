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
-- Module      : Amazonka.SecurityHub.Types.CidrBlockAssociation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SecurityHub.Types.CidrBlockAssociation where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | An IPv4 CIDR block association.
--
-- /See:/ 'newCidrBlockAssociation' smart constructor.
data CidrBlockAssociation = CidrBlockAssociation'
  { -- | Information about the state of the IPv4 CIDR block.
    cidrBlockState :: Prelude.Maybe Prelude.Text,
    -- | The IPv4 CIDR block.
    cidrBlock :: Prelude.Maybe Prelude.Text,
    -- | The association ID for the IPv4 CIDR block.
    associationId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CidrBlockAssociation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'cidrBlockState', 'cidrBlockAssociation_cidrBlockState' - Information about the state of the IPv4 CIDR block.
--
-- 'cidrBlock', 'cidrBlockAssociation_cidrBlock' - The IPv4 CIDR block.
--
-- 'associationId', 'cidrBlockAssociation_associationId' - The association ID for the IPv4 CIDR block.
newCidrBlockAssociation ::
  CidrBlockAssociation
newCidrBlockAssociation =
  CidrBlockAssociation'
    { cidrBlockState =
        Prelude.Nothing,
      cidrBlock = Prelude.Nothing,
      associationId = Prelude.Nothing
    }

-- | Information about the state of the IPv4 CIDR block.
cidrBlockAssociation_cidrBlockState :: Lens.Lens' CidrBlockAssociation (Prelude.Maybe Prelude.Text)
cidrBlockAssociation_cidrBlockState = Lens.lens (\CidrBlockAssociation' {cidrBlockState} -> cidrBlockState) (\s@CidrBlockAssociation' {} a -> s {cidrBlockState = a} :: CidrBlockAssociation)

-- | The IPv4 CIDR block.
cidrBlockAssociation_cidrBlock :: Lens.Lens' CidrBlockAssociation (Prelude.Maybe Prelude.Text)
cidrBlockAssociation_cidrBlock = Lens.lens (\CidrBlockAssociation' {cidrBlock} -> cidrBlock) (\s@CidrBlockAssociation' {} a -> s {cidrBlock = a} :: CidrBlockAssociation)

-- | The association ID for the IPv4 CIDR block.
cidrBlockAssociation_associationId :: Lens.Lens' CidrBlockAssociation (Prelude.Maybe Prelude.Text)
cidrBlockAssociation_associationId = Lens.lens (\CidrBlockAssociation' {associationId} -> associationId) (\s@CidrBlockAssociation' {} a -> s {associationId = a} :: CidrBlockAssociation)

instance Core.FromJSON CidrBlockAssociation where
  parseJSON =
    Core.withObject
      "CidrBlockAssociation"
      ( \x ->
          CidrBlockAssociation'
            Prelude.<$> (x Core..:? "CidrBlockState")
            Prelude.<*> (x Core..:? "CidrBlock")
            Prelude.<*> (x Core..:? "AssociationId")
      )

instance Prelude.Hashable CidrBlockAssociation where
  hashWithSalt _salt CidrBlockAssociation' {..} =
    _salt `Prelude.hashWithSalt` cidrBlockState
      `Prelude.hashWithSalt` cidrBlock
      `Prelude.hashWithSalt` associationId

instance Prelude.NFData CidrBlockAssociation where
  rnf CidrBlockAssociation' {..} =
    Prelude.rnf cidrBlockState
      `Prelude.seq` Prelude.rnf cidrBlock
      `Prelude.seq` Prelude.rnf associationId

instance Core.ToJSON CidrBlockAssociation where
  toJSON CidrBlockAssociation' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("CidrBlockState" Core..=)
              Prelude.<$> cidrBlockState,
            ("CidrBlock" Core..=) Prelude.<$> cidrBlock,
            ("AssociationId" Core..=) Prelude.<$> associationId
          ]
      )
