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
-- Module      : Amazonka.EC2.Types.TransitGatewayPolicyTable
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.TransitGatewayPolicyTable where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import Amazonka.EC2.Types.Tag
import Amazonka.EC2.Types.TransitGatewayPolicyTableState
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes a transit gateway policy table.
--
-- /See:/ 'newTransitGatewayPolicyTable' smart constructor.
data TransitGatewayPolicyTable = TransitGatewayPolicyTable'
  { -- | he key-value pairs associated with the transit gateway policy table.
    tags :: Prelude.Maybe [Tag],
    -- | The ID of the transit gateway.
    transitGatewayId :: Prelude.Maybe Prelude.Text,
    -- | The ID of the transit gateway policy table.
    transitGatewayPolicyTableId :: Prelude.Maybe Prelude.Text,
    -- | The state of the transit gateway policy table
    state :: Prelude.Maybe TransitGatewayPolicyTableState,
    -- | The timestamp when the transit gateway policy table was created.
    creationTime :: Prelude.Maybe Core.ISO8601
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TransitGatewayPolicyTable' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'transitGatewayPolicyTable_tags' - he key-value pairs associated with the transit gateway policy table.
--
-- 'transitGatewayId', 'transitGatewayPolicyTable_transitGatewayId' - The ID of the transit gateway.
--
-- 'transitGatewayPolicyTableId', 'transitGatewayPolicyTable_transitGatewayPolicyTableId' - The ID of the transit gateway policy table.
--
-- 'state', 'transitGatewayPolicyTable_state' - The state of the transit gateway policy table
--
-- 'creationTime', 'transitGatewayPolicyTable_creationTime' - The timestamp when the transit gateway policy table was created.
newTransitGatewayPolicyTable ::
  TransitGatewayPolicyTable
newTransitGatewayPolicyTable =
  TransitGatewayPolicyTable'
    { tags = Prelude.Nothing,
      transitGatewayId = Prelude.Nothing,
      transitGatewayPolicyTableId = Prelude.Nothing,
      state = Prelude.Nothing,
      creationTime = Prelude.Nothing
    }

-- | he key-value pairs associated with the transit gateway policy table.
transitGatewayPolicyTable_tags :: Lens.Lens' TransitGatewayPolicyTable (Prelude.Maybe [Tag])
transitGatewayPolicyTable_tags = Lens.lens (\TransitGatewayPolicyTable' {tags} -> tags) (\s@TransitGatewayPolicyTable' {} a -> s {tags = a} :: TransitGatewayPolicyTable) Prelude.. Lens.mapping Lens.coerced

-- | The ID of the transit gateway.
transitGatewayPolicyTable_transitGatewayId :: Lens.Lens' TransitGatewayPolicyTable (Prelude.Maybe Prelude.Text)
transitGatewayPolicyTable_transitGatewayId = Lens.lens (\TransitGatewayPolicyTable' {transitGatewayId} -> transitGatewayId) (\s@TransitGatewayPolicyTable' {} a -> s {transitGatewayId = a} :: TransitGatewayPolicyTable)

-- | The ID of the transit gateway policy table.
transitGatewayPolicyTable_transitGatewayPolicyTableId :: Lens.Lens' TransitGatewayPolicyTable (Prelude.Maybe Prelude.Text)
transitGatewayPolicyTable_transitGatewayPolicyTableId = Lens.lens (\TransitGatewayPolicyTable' {transitGatewayPolicyTableId} -> transitGatewayPolicyTableId) (\s@TransitGatewayPolicyTable' {} a -> s {transitGatewayPolicyTableId = a} :: TransitGatewayPolicyTable)

-- | The state of the transit gateway policy table
transitGatewayPolicyTable_state :: Lens.Lens' TransitGatewayPolicyTable (Prelude.Maybe TransitGatewayPolicyTableState)
transitGatewayPolicyTable_state = Lens.lens (\TransitGatewayPolicyTable' {state} -> state) (\s@TransitGatewayPolicyTable' {} a -> s {state = a} :: TransitGatewayPolicyTable)

-- | The timestamp when the transit gateway policy table was created.
transitGatewayPolicyTable_creationTime :: Lens.Lens' TransitGatewayPolicyTable (Prelude.Maybe Prelude.UTCTime)
transitGatewayPolicyTable_creationTime = Lens.lens (\TransitGatewayPolicyTable' {creationTime} -> creationTime) (\s@TransitGatewayPolicyTable' {} a -> s {creationTime = a} :: TransitGatewayPolicyTable) Prelude.. Lens.mapping Core._Time

instance Core.FromXML TransitGatewayPolicyTable where
  parseXML x =
    TransitGatewayPolicyTable'
      Prelude.<$> ( x Core..@? "tagSet" Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "item")
                  )
      Prelude.<*> (x Core..@? "transitGatewayId")
      Prelude.<*> (x Core..@? "transitGatewayPolicyTableId")
      Prelude.<*> (x Core..@? "state")
      Prelude.<*> (x Core..@? "creationTime")

instance Prelude.Hashable TransitGatewayPolicyTable where
  hashWithSalt _salt TransitGatewayPolicyTable' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` transitGatewayId
      `Prelude.hashWithSalt` transitGatewayPolicyTableId
      `Prelude.hashWithSalt` state
      `Prelude.hashWithSalt` creationTime

instance Prelude.NFData TransitGatewayPolicyTable where
  rnf TransitGatewayPolicyTable' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf transitGatewayId
      `Prelude.seq` Prelude.rnf transitGatewayPolicyTableId
      `Prelude.seq` Prelude.rnf state
      `Prelude.seq` Prelude.rnf creationTime
