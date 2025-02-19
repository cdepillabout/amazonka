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
-- Module      : Amazonka.SecurityHub.Types.AwsBackupRecoveryPointLifecycleDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SecurityHub.Types.AwsBackupRecoveryPointLifecycleDetails where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Contains an array of Transition objects specifying how long in days
-- before a recovery point transitions to cold storage or is deleted.
--
-- /See:/ 'newAwsBackupRecoveryPointLifecycleDetails' smart constructor.
data AwsBackupRecoveryPointLifecycleDetails = AwsBackupRecoveryPointLifecycleDetails'
  { -- | Specifies the number of days after creation that a recovery point is
    -- deleted. Must be greater than 90 days plus @MoveToColdStorageAfterDays@.
    deleteAfterDays :: Prelude.Maybe Prelude.Integer,
    -- | Specifies the number of days after creation that a recovery point is
    -- moved to cold storage.
    moveToColdStorageAfterDays :: Prelude.Maybe Prelude.Integer
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsBackupRecoveryPointLifecycleDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'deleteAfterDays', 'awsBackupRecoveryPointLifecycleDetails_deleteAfterDays' - Specifies the number of days after creation that a recovery point is
-- deleted. Must be greater than 90 days plus @MoveToColdStorageAfterDays@.
--
-- 'moveToColdStorageAfterDays', 'awsBackupRecoveryPointLifecycleDetails_moveToColdStorageAfterDays' - Specifies the number of days after creation that a recovery point is
-- moved to cold storage.
newAwsBackupRecoveryPointLifecycleDetails ::
  AwsBackupRecoveryPointLifecycleDetails
newAwsBackupRecoveryPointLifecycleDetails =
  AwsBackupRecoveryPointLifecycleDetails'
    { deleteAfterDays =
        Prelude.Nothing,
      moveToColdStorageAfterDays =
        Prelude.Nothing
    }

-- | Specifies the number of days after creation that a recovery point is
-- deleted. Must be greater than 90 days plus @MoveToColdStorageAfterDays@.
awsBackupRecoveryPointLifecycleDetails_deleteAfterDays :: Lens.Lens' AwsBackupRecoveryPointLifecycleDetails (Prelude.Maybe Prelude.Integer)
awsBackupRecoveryPointLifecycleDetails_deleteAfterDays = Lens.lens (\AwsBackupRecoveryPointLifecycleDetails' {deleteAfterDays} -> deleteAfterDays) (\s@AwsBackupRecoveryPointLifecycleDetails' {} a -> s {deleteAfterDays = a} :: AwsBackupRecoveryPointLifecycleDetails)

-- | Specifies the number of days after creation that a recovery point is
-- moved to cold storage.
awsBackupRecoveryPointLifecycleDetails_moveToColdStorageAfterDays :: Lens.Lens' AwsBackupRecoveryPointLifecycleDetails (Prelude.Maybe Prelude.Integer)
awsBackupRecoveryPointLifecycleDetails_moveToColdStorageAfterDays = Lens.lens (\AwsBackupRecoveryPointLifecycleDetails' {moveToColdStorageAfterDays} -> moveToColdStorageAfterDays) (\s@AwsBackupRecoveryPointLifecycleDetails' {} a -> s {moveToColdStorageAfterDays = a} :: AwsBackupRecoveryPointLifecycleDetails)

instance
  Core.FromJSON
    AwsBackupRecoveryPointLifecycleDetails
  where
  parseJSON =
    Core.withObject
      "AwsBackupRecoveryPointLifecycleDetails"
      ( \x ->
          AwsBackupRecoveryPointLifecycleDetails'
            Prelude.<$> (x Core..:? "DeleteAfterDays")
            Prelude.<*> (x Core..:? "MoveToColdStorageAfterDays")
      )

instance
  Prelude.Hashable
    AwsBackupRecoveryPointLifecycleDetails
  where
  hashWithSalt
    _salt
    AwsBackupRecoveryPointLifecycleDetails' {..} =
      _salt `Prelude.hashWithSalt` deleteAfterDays
        `Prelude.hashWithSalt` moveToColdStorageAfterDays

instance
  Prelude.NFData
    AwsBackupRecoveryPointLifecycleDetails
  where
  rnf AwsBackupRecoveryPointLifecycleDetails' {..} =
    Prelude.rnf deleteAfterDays
      `Prelude.seq` Prelude.rnf moveToColdStorageAfterDays

instance
  Core.ToJSON
    AwsBackupRecoveryPointLifecycleDetails
  where
  toJSON AwsBackupRecoveryPointLifecycleDetails' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("DeleteAfterDays" Core..=)
              Prelude.<$> deleteAfterDays,
            ("MoveToColdStorageAfterDays" Core..=)
              Prelude.<$> moveToColdStorageAfterDays
          ]
      )
