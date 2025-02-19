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
-- Module      : Amazonka.EC2.Types.ReservedInstancesModification
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.ReservedInstancesModification where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import Amazonka.EC2.Types.ReservedInstancesId
import Amazonka.EC2.Types.ReservedInstancesModificationResult
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes a Reserved Instance modification.
--
-- /See:/ 'newReservedInstancesModification' smart constructor.
data ReservedInstancesModification = ReservedInstancesModification'
  { -- | A unique, case-sensitive key supplied by the client to ensure that the
    -- request is idempotent. For more information, see
    -- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html Ensuring Idempotency>.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | The IDs of one or more Reserved Instances.
    reservedInstancesIds :: Prelude.Maybe [ReservedInstancesId],
    -- | The status of the Reserved Instances modification request.
    status :: Prelude.Maybe Prelude.Text,
    -- | The time when the modification request was last updated.
    updateDate :: Prelude.Maybe Core.ISO8601,
    -- | The time for the modification to become effective.
    effectiveDate :: Prelude.Maybe Core.ISO8601,
    -- | The time when the modification request was created.
    createDate :: Prelude.Maybe Core.ISO8601,
    -- | Contains target configurations along with their corresponding new
    -- Reserved Instance IDs.
    modificationResults :: Prelude.Maybe [ReservedInstancesModificationResult],
    -- | The reason for the status.
    statusMessage :: Prelude.Maybe Prelude.Text,
    -- | A unique ID for the Reserved Instance modification.
    reservedInstancesModificationId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ReservedInstancesModification' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientToken', 'reservedInstancesModification_clientToken' - A unique, case-sensitive key supplied by the client to ensure that the
-- request is idempotent. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html Ensuring Idempotency>.
--
-- 'reservedInstancesIds', 'reservedInstancesModification_reservedInstancesIds' - The IDs of one or more Reserved Instances.
--
-- 'status', 'reservedInstancesModification_status' - The status of the Reserved Instances modification request.
--
-- 'updateDate', 'reservedInstancesModification_updateDate' - The time when the modification request was last updated.
--
-- 'effectiveDate', 'reservedInstancesModification_effectiveDate' - The time for the modification to become effective.
--
-- 'createDate', 'reservedInstancesModification_createDate' - The time when the modification request was created.
--
-- 'modificationResults', 'reservedInstancesModification_modificationResults' - Contains target configurations along with their corresponding new
-- Reserved Instance IDs.
--
-- 'statusMessage', 'reservedInstancesModification_statusMessage' - The reason for the status.
--
-- 'reservedInstancesModificationId', 'reservedInstancesModification_reservedInstancesModificationId' - A unique ID for the Reserved Instance modification.
newReservedInstancesModification ::
  ReservedInstancesModification
newReservedInstancesModification =
  ReservedInstancesModification'
    { clientToken =
        Prelude.Nothing,
      reservedInstancesIds = Prelude.Nothing,
      status = Prelude.Nothing,
      updateDate = Prelude.Nothing,
      effectiveDate = Prelude.Nothing,
      createDate = Prelude.Nothing,
      modificationResults = Prelude.Nothing,
      statusMessage = Prelude.Nothing,
      reservedInstancesModificationId =
        Prelude.Nothing
    }

-- | A unique, case-sensitive key supplied by the client to ensure that the
-- request is idempotent. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html Ensuring Idempotency>.
reservedInstancesModification_clientToken :: Lens.Lens' ReservedInstancesModification (Prelude.Maybe Prelude.Text)
reservedInstancesModification_clientToken = Lens.lens (\ReservedInstancesModification' {clientToken} -> clientToken) (\s@ReservedInstancesModification' {} a -> s {clientToken = a} :: ReservedInstancesModification)

-- | The IDs of one or more Reserved Instances.
reservedInstancesModification_reservedInstancesIds :: Lens.Lens' ReservedInstancesModification (Prelude.Maybe [ReservedInstancesId])
reservedInstancesModification_reservedInstancesIds = Lens.lens (\ReservedInstancesModification' {reservedInstancesIds} -> reservedInstancesIds) (\s@ReservedInstancesModification' {} a -> s {reservedInstancesIds = a} :: ReservedInstancesModification) Prelude.. Lens.mapping Lens.coerced

-- | The status of the Reserved Instances modification request.
reservedInstancesModification_status :: Lens.Lens' ReservedInstancesModification (Prelude.Maybe Prelude.Text)
reservedInstancesModification_status = Lens.lens (\ReservedInstancesModification' {status} -> status) (\s@ReservedInstancesModification' {} a -> s {status = a} :: ReservedInstancesModification)

-- | The time when the modification request was last updated.
reservedInstancesModification_updateDate :: Lens.Lens' ReservedInstancesModification (Prelude.Maybe Prelude.UTCTime)
reservedInstancesModification_updateDate = Lens.lens (\ReservedInstancesModification' {updateDate} -> updateDate) (\s@ReservedInstancesModification' {} a -> s {updateDate = a} :: ReservedInstancesModification) Prelude.. Lens.mapping Core._Time

-- | The time for the modification to become effective.
reservedInstancesModification_effectiveDate :: Lens.Lens' ReservedInstancesModification (Prelude.Maybe Prelude.UTCTime)
reservedInstancesModification_effectiveDate = Lens.lens (\ReservedInstancesModification' {effectiveDate} -> effectiveDate) (\s@ReservedInstancesModification' {} a -> s {effectiveDate = a} :: ReservedInstancesModification) Prelude.. Lens.mapping Core._Time

-- | The time when the modification request was created.
reservedInstancesModification_createDate :: Lens.Lens' ReservedInstancesModification (Prelude.Maybe Prelude.UTCTime)
reservedInstancesModification_createDate = Lens.lens (\ReservedInstancesModification' {createDate} -> createDate) (\s@ReservedInstancesModification' {} a -> s {createDate = a} :: ReservedInstancesModification) Prelude.. Lens.mapping Core._Time

-- | Contains target configurations along with their corresponding new
-- Reserved Instance IDs.
reservedInstancesModification_modificationResults :: Lens.Lens' ReservedInstancesModification (Prelude.Maybe [ReservedInstancesModificationResult])
reservedInstancesModification_modificationResults = Lens.lens (\ReservedInstancesModification' {modificationResults} -> modificationResults) (\s@ReservedInstancesModification' {} a -> s {modificationResults = a} :: ReservedInstancesModification) Prelude.. Lens.mapping Lens.coerced

-- | The reason for the status.
reservedInstancesModification_statusMessage :: Lens.Lens' ReservedInstancesModification (Prelude.Maybe Prelude.Text)
reservedInstancesModification_statusMessage = Lens.lens (\ReservedInstancesModification' {statusMessage} -> statusMessage) (\s@ReservedInstancesModification' {} a -> s {statusMessage = a} :: ReservedInstancesModification)

-- | A unique ID for the Reserved Instance modification.
reservedInstancesModification_reservedInstancesModificationId :: Lens.Lens' ReservedInstancesModification (Prelude.Maybe Prelude.Text)
reservedInstancesModification_reservedInstancesModificationId = Lens.lens (\ReservedInstancesModification' {reservedInstancesModificationId} -> reservedInstancesModificationId) (\s@ReservedInstancesModification' {} a -> s {reservedInstancesModificationId = a} :: ReservedInstancesModification)

instance Core.FromXML ReservedInstancesModification where
  parseXML x =
    ReservedInstancesModification'
      Prelude.<$> (x Core..@? "clientToken")
      Prelude.<*> ( x Core..@? "reservedInstancesSet"
                      Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "item")
                  )
      Prelude.<*> (x Core..@? "status")
      Prelude.<*> (x Core..@? "updateDate")
      Prelude.<*> (x Core..@? "effectiveDate")
      Prelude.<*> (x Core..@? "createDate")
      Prelude.<*> ( x Core..@? "modificationResultSet"
                      Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "item")
                  )
      Prelude.<*> (x Core..@? "statusMessage")
      Prelude.<*> (x Core..@? "reservedInstancesModificationId")

instance
  Prelude.Hashable
    ReservedInstancesModification
  where
  hashWithSalt _salt ReservedInstancesModification' {..} =
    _salt `Prelude.hashWithSalt` clientToken
      `Prelude.hashWithSalt` reservedInstancesIds
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` updateDate
      `Prelude.hashWithSalt` effectiveDate
      `Prelude.hashWithSalt` createDate
      `Prelude.hashWithSalt` modificationResults
      `Prelude.hashWithSalt` statusMessage
      `Prelude.hashWithSalt` reservedInstancesModificationId

instance Prelude.NFData ReservedInstancesModification where
  rnf ReservedInstancesModification' {..} =
    Prelude.rnf clientToken
      `Prelude.seq` Prelude.rnf reservedInstancesIds
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf updateDate
      `Prelude.seq` Prelude.rnf effectiveDate
      `Prelude.seq` Prelude.rnf createDate
      `Prelude.seq` Prelude.rnf modificationResults
      `Prelude.seq` Prelude.rnf statusMessage
      `Prelude.seq` Prelude.rnf reservedInstancesModificationId
