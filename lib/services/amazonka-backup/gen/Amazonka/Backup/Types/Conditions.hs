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
-- Module      : Amazonka.Backup.Types.Conditions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Backup.Types.Conditions where

import Amazonka.Backup.Types.ConditionParameter
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Contains information about which resources to include or exclude from a
-- backup plan using their tags. Conditions are case sensitive.
--
-- /See:/ 'newConditions' smart constructor.
data Conditions = Conditions'
  { -- | Filters the values of your tagged resources for only those resources
    -- that you tagged that do not have the same value. Also called \"negated
    -- matching.\"
    stringNotEquals :: Prelude.Maybe [ConditionParameter],
    -- | Filters the values of your tagged resources for non-matching tag values
    -- with the use of a wildcard character (*) anywhere in the string.
    stringNotLike :: Prelude.Maybe [ConditionParameter],
    -- | Filters the values of your tagged resources for only those resources
    -- that you tagged with the same value. Also called \"exact matching.\"
    stringEquals :: Prelude.Maybe [ConditionParameter],
    -- | Filters the values of your tagged resources for matching tag values with
    -- the use of a wildcard character (*) anywhere in the string. For example,
    -- \"prod*\" or \"*rod*\" matches the tag value \"production\".
    stringLike :: Prelude.Maybe [ConditionParameter]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Conditions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'stringNotEquals', 'conditions_stringNotEquals' - Filters the values of your tagged resources for only those resources
-- that you tagged that do not have the same value. Also called \"negated
-- matching.\"
--
-- 'stringNotLike', 'conditions_stringNotLike' - Filters the values of your tagged resources for non-matching tag values
-- with the use of a wildcard character (*) anywhere in the string.
--
-- 'stringEquals', 'conditions_stringEquals' - Filters the values of your tagged resources for only those resources
-- that you tagged with the same value. Also called \"exact matching.\"
--
-- 'stringLike', 'conditions_stringLike' - Filters the values of your tagged resources for matching tag values with
-- the use of a wildcard character (*) anywhere in the string. For example,
-- \"prod*\" or \"*rod*\" matches the tag value \"production\".
newConditions ::
  Conditions
newConditions =
  Conditions'
    { stringNotEquals = Prelude.Nothing,
      stringNotLike = Prelude.Nothing,
      stringEquals = Prelude.Nothing,
      stringLike = Prelude.Nothing
    }

-- | Filters the values of your tagged resources for only those resources
-- that you tagged that do not have the same value. Also called \"negated
-- matching.\"
conditions_stringNotEquals :: Lens.Lens' Conditions (Prelude.Maybe [ConditionParameter])
conditions_stringNotEquals = Lens.lens (\Conditions' {stringNotEquals} -> stringNotEquals) (\s@Conditions' {} a -> s {stringNotEquals = a} :: Conditions) Prelude.. Lens.mapping Lens.coerced

-- | Filters the values of your tagged resources for non-matching tag values
-- with the use of a wildcard character (*) anywhere in the string.
conditions_stringNotLike :: Lens.Lens' Conditions (Prelude.Maybe [ConditionParameter])
conditions_stringNotLike = Lens.lens (\Conditions' {stringNotLike} -> stringNotLike) (\s@Conditions' {} a -> s {stringNotLike = a} :: Conditions) Prelude.. Lens.mapping Lens.coerced

-- | Filters the values of your tagged resources for only those resources
-- that you tagged with the same value. Also called \"exact matching.\"
conditions_stringEquals :: Lens.Lens' Conditions (Prelude.Maybe [ConditionParameter])
conditions_stringEquals = Lens.lens (\Conditions' {stringEquals} -> stringEquals) (\s@Conditions' {} a -> s {stringEquals = a} :: Conditions) Prelude.. Lens.mapping Lens.coerced

-- | Filters the values of your tagged resources for matching tag values with
-- the use of a wildcard character (*) anywhere in the string. For example,
-- \"prod*\" or \"*rod*\" matches the tag value \"production\".
conditions_stringLike :: Lens.Lens' Conditions (Prelude.Maybe [ConditionParameter])
conditions_stringLike = Lens.lens (\Conditions' {stringLike} -> stringLike) (\s@Conditions' {} a -> s {stringLike = a} :: Conditions) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON Conditions where
  parseJSON =
    Core.withObject
      "Conditions"
      ( \x ->
          Conditions'
            Prelude.<$> ( x Core..:? "StringNotEquals"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "StringNotLike" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "StringEquals" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "StringLike" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable Conditions where
  hashWithSalt _salt Conditions' {..} =
    _salt `Prelude.hashWithSalt` stringNotEquals
      `Prelude.hashWithSalt` stringNotLike
      `Prelude.hashWithSalt` stringEquals
      `Prelude.hashWithSalt` stringLike

instance Prelude.NFData Conditions where
  rnf Conditions' {..} =
    Prelude.rnf stringNotEquals
      `Prelude.seq` Prelude.rnf stringNotLike
      `Prelude.seq` Prelude.rnf stringEquals
      `Prelude.seq` Prelude.rnf stringLike

instance Core.ToJSON Conditions where
  toJSON Conditions' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("StringNotEquals" Core..=)
              Prelude.<$> stringNotEquals,
            ("StringNotLike" Core..=) Prelude.<$> stringNotLike,
            ("StringEquals" Core..=) Prelude.<$> stringEquals,
            ("StringLike" Core..=) Prelude.<$> stringLike
          ]
      )
