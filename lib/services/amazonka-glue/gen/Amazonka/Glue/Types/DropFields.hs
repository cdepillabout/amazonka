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
-- Module      : Amazonka.Glue.Types.DropFields
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Glue.Types.DropFields where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Specifies a transform that chooses the data property keys that you want
-- to drop.
--
-- /See:/ 'newDropFields' smart constructor.
data DropFields = DropFields'
  { -- | The name of the transform node.
    name :: Prelude.Text,
    -- | The data inputs identified by their node names.
    inputs :: Prelude.NonEmpty Prelude.Text,
    -- | A JSON path to a variable in the data structure.
    paths :: [[Prelude.Text]]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DropFields' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'dropFields_name' - The name of the transform node.
--
-- 'inputs', 'dropFields_inputs' - The data inputs identified by their node names.
--
-- 'paths', 'dropFields_paths' - A JSON path to a variable in the data structure.
newDropFields ::
  -- | 'name'
  Prelude.Text ->
  -- | 'inputs'
  Prelude.NonEmpty Prelude.Text ->
  DropFields
newDropFields pName_ pInputs_ =
  DropFields'
    { name = pName_,
      inputs = Lens.coerced Lens.# pInputs_,
      paths = Prelude.mempty
    }

-- | The name of the transform node.
dropFields_name :: Lens.Lens' DropFields Prelude.Text
dropFields_name = Lens.lens (\DropFields' {name} -> name) (\s@DropFields' {} a -> s {name = a} :: DropFields)

-- | The data inputs identified by their node names.
dropFields_inputs :: Lens.Lens' DropFields (Prelude.NonEmpty Prelude.Text)
dropFields_inputs = Lens.lens (\DropFields' {inputs} -> inputs) (\s@DropFields' {} a -> s {inputs = a} :: DropFields) Prelude.. Lens.coerced

-- | A JSON path to a variable in the data structure.
dropFields_paths :: Lens.Lens' DropFields [[Prelude.Text]]
dropFields_paths = Lens.lens (\DropFields' {paths} -> paths) (\s@DropFields' {} a -> s {paths = a} :: DropFields) Prelude.. Lens.coerced

instance Core.FromJSON DropFields where
  parseJSON =
    Core.withObject
      "DropFields"
      ( \x ->
          DropFields'
            Prelude.<$> (x Core..: "Name")
            Prelude.<*> (x Core..: "Inputs")
            Prelude.<*> (x Core..:? "Paths" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable DropFields where
  hashWithSalt _salt DropFields' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` inputs
      `Prelude.hashWithSalt` paths

instance Prelude.NFData DropFields where
  rnf DropFields' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf inputs
      `Prelude.seq` Prelude.rnf paths

instance Core.ToJSON DropFields where
  toJSON DropFields' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("Name" Core..= name),
            Prelude.Just ("Inputs" Core..= inputs),
            Prelude.Just ("Paths" Core..= paths)
          ]
      )
