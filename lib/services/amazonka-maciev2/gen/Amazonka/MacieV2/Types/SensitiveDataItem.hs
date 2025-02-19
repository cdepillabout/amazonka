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
-- Module      : Amazonka.MacieV2.Types.SensitiveDataItem
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MacieV2.Types.SensitiveDataItem where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MacieV2.Types.DefaultDetection
import Amazonka.MacieV2.Types.SensitiveDataItemCategory
import qualified Amazonka.Prelude as Prelude

-- | Provides information about the category, types, and occurrences of
-- sensitive data that produced a sensitive data finding.
--
-- /See:/ 'newSensitiveDataItem' smart constructor.
data SensitiveDataItem = SensitiveDataItem'
  { -- | An array of objects, one for each type of sensitive data that was
    -- detected. Each object reports the number of occurrences of a specific
    -- type of sensitive data that was detected, and the location of up to 15
    -- of those occurrences.
    detections :: Prelude.Maybe [DefaultDetection],
    -- | The category of sensitive data that was detected. For example:
    -- CREDENTIALS, for credentials data such as private keys or Amazon Web
    -- Services secret access keys; FINANCIAL_INFORMATION, for financial data
    -- such as credit card numbers; or, PERSONAL_INFORMATION, for personal
    -- health information, such as health insurance identification numbers, or
    -- personally identifiable information, such as passport numbers.
    category :: Prelude.Maybe SensitiveDataItemCategory,
    -- | The total number of occurrences of the sensitive data that was detected.
    totalCount :: Prelude.Maybe Prelude.Integer
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SensitiveDataItem' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'detections', 'sensitiveDataItem_detections' - An array of objects, one for each type of sensitive data that was
-- detected. Each object reports the number of occurrences of a specific
-- type of sensitive data that was detected, and the location of up to 15
-- of those occurrences.
--
-- 'category', 'sensitiveDataItem_category' - The category of sensitive data that was detected. For example:
-- CREDENTIALS, for credentials data such as private keys or Amazon Web
-- Services secret access keys; FINANCIAL_INFORMATION, for financial data
-- such as credit card numbers; or, PERSONAL_INFORMATION, for personal
-- health information, such as health insurance identification numbers, or
-- personally identifiable information, such as passport numbers.
--
-- 'totalCount', 'sensitiveDataItem_totalCount' - The total number of occurrences of the sensitive data that was detected.
newSensitiveDataItem ::
  SensitiveDataItem
newSensitiveDataItem =
  SensitiveDataItem'
    { detections = Prelude.Nothing,
      category = Prelude.Nothing,
      totalCount = Prelude.Nothing
    }

-- | An array of objects, one for each type of sensitive data that was
-- detected. Each object reports the number of occurrences of a specific
-- type of sensitive data that was detected, and the location of up to 15
-- of those occurrences.
sensitiveDataItem_detections :: Lens.Lens' SensitiveDataItem (Prelude.Maybe [DefaultDetection])
sensitiveDataItem_detections = Lens.lens (\SensitiveDataItem' {detections} -> detections) (\s@SensitiveDataItem' {} a -> s {detections = a} :: SensitiveDataItem) Prelude.. Lens.mapping Lens.coerced

-- | The category of sensitive data that was detected. For example:
-- CREDENTIALS, for credentials data such as private keys or Amazon Web
-- Services secret access keys; FINANCIAL_INFORMATION, for financial data
-- such as credit card numbers; or, PERSONAL_INFORMATION, for personal
-- health information, such as health insurance identification numbers, or
-- personally identifiable information, such as passport numbers.
sensitiveDataItem_category :: Lens.Lens' SensitiveDataItem (Prelude.Maybe SensitiveDataItemCategory)
sensitiveDataItem_category = Lens.lens (\SensitiveDataItem' {category} -> category) (\s@SensitiveDataItem' {} a -> s {category = a} :: SensitiveDataItem)

-- | The total number of occurrences of the sensitive data that was detected.
sensitiveDataItem_totalCount :: Lens.Lens' SensitiveDataItem (Prelude.Maybe Prelude.Integer)
sensitiveDataItem_totalCount = Lens.lens (\SensitiveDataItem' {totalCount} -> totalCount) (\s@SensitiveDataItem' {} a -> s {totalCount = a} :: SensitiveDataItem)

instance Core.FromJSON SensitiveDataItem where
  parseJSON =
    Core.withObject
      "SensitiveDataItem"
      ( \x ->
          SensitiveDataItem'
            Prelude.<$> (x Core..:? "detections" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "category")
            Prelude.<*> (x Core..:? "totalCount")
      )

instance Prelude.Hashable SensitiveDataItem where
  hashWithSalt _salt SensitiveDataItem' {..} =
    _salt `Prelude.hashWithSalt` detections
      `Prelude.hashWithSalt` category
      `Prelude.hashWithSalt` totalCount

instance Prelude.NFData SensitiveDataItem where
  rnf SensitiveDataItem' {..} =
    Prelude.rnf detections
      `Prelude.seq` Prelude.rnf category
      `Prelude.seq` Prelude.rnf totalCount
