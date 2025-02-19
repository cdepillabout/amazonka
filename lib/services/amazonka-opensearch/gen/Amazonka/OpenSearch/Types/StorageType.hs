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
-- Module      : Amazonka.OpenSearch.Types.StorageType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.OpenSearch.Types.StorageType where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.OpenSearch.Types.StorageTypeLimit
import qualified Amazonka.Prelude as Prelude

-- | StorageTypes represents the list of storage-related types and their
-- attributes that are available for a given InstanceType.
--
-- /See:/ 'newStorageType' smart constructor.
data StorageType = StorageType'
  { storageSubTypeName :: Prelude.Maybe Prelude.Text,
    -- | Limits that are applicable for the given storage type.
    storageTypeLimits :: Prelude.Maybe [StorageTypeLimit],
    storageTypeName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StorageType' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'storageSubTypeName', 'storageType_storageSubTypeName' - Undocumented member.
--
-- 'storageTypeLimits', 'storageType_storageTypeLimits' - Limits that are applicable for the given storage type.
--
-- 'storageTypeName', 'storageType_storageTypeName' - Undocumented member.
newStorageType ::
  StorageType
newStorageType =
  StorageType'
    { storageSubTypeName = Prelude.Nothing,
      storageTypeLimits = Prelude.Nothing,
      storageTypeName = Prelude.Nothing
    }

-- | Undocumented member.
storageType_storageSubTypeName :: Lens.Lens' StorageType (Prelude.Maybe Prelude.Text)
storageType_storageSubTypeName = Lens.lens (\StorageType' {storageSubTypeName} -> storageSubTypeName) (\s@StorageType' {} a -> s {storageSubTypeName = a} :: StorageType)

-- | Limits that are applicable for the given storage type.
storageType_storageTypeLimits :: Lens.Lens' StorageType (Prelude.Maybe [StorageTypeLimit])
storageType_storageTypeLimits = Lens.lens (\StorageType' {storageTypeLimits} -> storageTypeLimits) (\s@StorageType' {} a -> s {storageTypeLimits = a} :: StorageType) Prelude.. Lens.mapping Lens.coerced

-- | Undocumented member.
storageType_storageTypeName :: Lens.Lens' StorageType (Prelude.Maybe Prelude.Text)
storageType_storageTypeName = Lens.lens (\StorageType' {storageTypeName} -> storageTypeName) (\s@StorageType' {} a -> s {storageTypeName = a} :: StorageType)

instance Core.FromJSON StorageType where
  parseJSON =
    Core.withObject
      "StorageType"
      ( \x ->
          StorageType'
            Prelude.<$> (x Core..:? "StorageSubTypeName")
            Prelude.<*> ( x Core..:? "StorageTypeLimits"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "StorageTypeName")
      )

instance Prelude.Hashable StorageType where
  hashWithSalt _salt StorageType' {..} =
    _salt `Prelude.hashWithSalt` storageSubTypeName
      `Prelude.hashWithSalt` storageTypeLimits
      `Prelude.hashWithSalt` storageTypeName

instance Prelude.NFData StorageType where
  rnf StorageType' {..} =
    Prelude.rnf storageSubTypeName
      `Prelude.seq` Prelude.rnf storageTypeLimits
      `Prelude.seq` Prelude.rnf storageTypeName
