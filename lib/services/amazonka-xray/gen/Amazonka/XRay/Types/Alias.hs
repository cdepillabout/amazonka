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
-- Module      : Amazonka.XRay.Types.Alias
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.XRay.Types.Alias where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | An alias for an edge.
--
-- /See:/ 'newAlias' smart constructor.
data Alias = Alias'
  { -- | The canonical name of the alias.
    name :: Prelude.Maybe Prelude.Text,
    -- | The type of the alias.
    type' :: Prelude.Maybe Prelude.Text,
    -- | A list of names for the alias, including the canonical name.
    names :: Prelude.Maybe [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Alias' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'alias_name' - The canonical name of the alias.
--
-- 'type'', 'alias_type' - The type of the alias.
--
-- 'names', 'alias_names' - A list of names for the alias, including the canonical name.
newAlias ::
  Alias
newAlias =
  Alias'
    { name = Prelude.Nothing,
      type' = Prelude.Nothing,
      names = Prelude.Nothing
    }

-- | The canonical name of the alias.
alias_name :: Lens.Lens' Alias (Prelude.Maybe Prelude.Text)
alias_name = Lens.lens (\Alias' {name} -> name) (\s@Alias' {} a -> s {name = a} :: Alias)

-- | The type of the alias.
alias_type :: Lens.Lens' Alias (Prelude.Maybe Prelude.Text)
alias_type = Lens.lens (\Alias' {type'} -> type') (\s@Alias' {} a -> s {type' = a} :: Alias)

-- | A list of names for the alias, including the canonical name.
alias_names :: Lens.Lens' Alias (Prelude.Maybe [Prelude.Text])
alias_names = Lens.lens (\Alias' {names} -> names) (\s@Alias' {} a -> s {names = a} :: Alias) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON Alias where
  parseJSON =
    Core.withObject
      "Alias"
      ( \x ->
          Alias'
            Prelude.<$> (x Core..:? "Name")
            Prelude.<*> (x Core..:? "Type")
            Prelude.<*> (x Core..:? "Names" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable Alias where
  hashWithSalt _salt Alias' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` names

instance Prelude.NFData Alias where
  rnf Alias' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf type'
      `Prelude.seq` Prelude.rnf names
