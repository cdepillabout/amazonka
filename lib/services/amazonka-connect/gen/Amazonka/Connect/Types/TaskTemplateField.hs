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
-- Module      : Amazonka.Connect.Types.TaskTemplateField
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Connect.Types.TaskTemplateField where

import Amazonka.Connect.Types.TaskTemplateFieldIdentifier
import Amazonka.Connect.Types.TaskTemplateFieldType
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes a single task template field.
--
-- /See:/ 'newTaskTemplateField' smart constructor.
data TaskTemplateField = TaskTemplateField'
  { -- | A list of options for a single select field.
    singleSelectOptions :: Prelude.Maybe [Prelude.Text],
    -- | Indicates the type of field.
    type' :: Prelude.Maybe TaskTemplateFieldType,
    -- | The description of the field.
    description :: Prelude.Maybe Prelude.Text,
    -- | The unique identifier for the field.
    id :: TaskTemplateFieldIdentifier
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TaskTemplateField' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'singleSelectOptions', 'taskTemplateField_singleSelectOptions' - A list of options for a single select field.
--
-- 'type'', 'taskTemplateField_type' - Indicates the type of field.
--
-- 'description', 'taskTemplateField_description' - The description of the field.
--
-- 'id', 'taskTemplateField_id' - The unique identifier for the field.
newTaskTemplateField ::
  -- | 'id'
  TaskTemplateFieldIdentifier ->
  TaskTemplateField
newTaskTemplateField pId_ =
  TaskTemplateField'
    { singleSelectOptions =
        Prelude.Nothing,
      type' = Prelude.Nothing,
      description = Prelude.Nothing,
      id = pId_
    }

-- | A list of options for a single select field.
taskTemplateField_singleSelectOptions :: Lens.Lens' TaskTemplateField (Prelude.Maybe [Prelude.Text])
taskTemplateField_singleSelectOptions = Lens.lens (\TaskTemplateField' {singleSelectOptions} -> singleSelectOptions) (\s@TaskTemplateField' {} a -> s {singleSelectOptions = a} :: TaskTemplateField) Prelude.. Lens.mapping Lens.coerced

-- | Indicates the type of field.
taskTemplateField_type :: Lens.Lens' TaskTemplateField (Prelude.Maybe TaskTemplateFieldType)
taskTemplateField_type = Lens.lens (\TaskTemplateField' {type'} -> type') (\s@TaskTemplateField' {} a -> s {type' = a} :: TaskTemplateField)

-- | The description of the field.
taskTemplateField_description :: Lens.Lens' TaskTemplateField (Prelude.Maybe Prelude.Text)
taskTemplateField_description = Lens.lens (\TaskTemplateField' {description} -> description) (\s@TaskTemplateField' {} a -> s {description = a} :: TaskTemplateField)

-- | The unique identifier for the field.
taskTemplateField_id :: Lens.Lens' TaskTemplateField TaskTemplateFieldIdentifier
taskTemplateField_id = Lens.lens (\TaskTemplateField' {id} -> id) (\s@TaskTemplateField' {} a -> s {id = a} :: TaskTemplateField)

instance Core.FromJSON TaskTemplateField where
  parseJSON =
    Core.withObject
      "TaskTemplateField"
      ( \x ->
          TaskTemplateField'
            Prelude.<$> ( x Core..:? "SingleSelectOptions"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "Type")
            Prelude.<*> (x Core..:? "Description")
            Prelude.<*> (x Core..: "Id")
      )

instance Prelude.Hashable TaskTemplateField where
  hashWithSalt _salt TaskTemplateField' {..} =
    _salt `Prelude.hashWithSalt` singleSelectOptions
      `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` id

instance Prelude.NFData TaskTemplateField where
  rnf TaskTemplateField' {..} =
    Prelude.rnf singleSelectOptions
      `Prelude.seq` Prelude.rnf type'
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf id

instance Core.ToJSON TaskTemplateField where
  toJSON TaskTemplateField' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("SingleSelectOptions" Core..=)
              Prelude.<$> singleSelectOptions,
            ("Type" Core..=) Prelude.<$> type',
            ("Description" Core..=) Prelude.<$> description,
            Prelude.Just ("Id" Core..= id)
          ]
      )
