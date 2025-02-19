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
-- Module      : Amazonka.IoTThingsGraph.Types.EntityDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IoTThingsGraph.Types.EntityDescription where

import qualified Amazonka.Core as Core
import Amazonka.IoTThingsGraph.Types.DefinitionDocument
import Amazonka.IoTThingsGraph.Types.EntityType
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes the properties of an entity.
--
-- /See:/ 'newEntityDescription' smart constructor.
data EntityDescription = EntityDescription'
  { -- | The entity type.
    type' :: Prelude.Maybe EntityType,
    -- | The entity ARN.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The entity ID.
    id :: Prelude.Maybe Prelude.Text,
    -- | The time at which the entity was created.
    createdAt :: Prelude.Maybe Core.POSIX,
    -- | The definition document of the entity.
    definition :: Prelude.Maybe DefinitionDocument
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EntityDescription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'type'', 'entityDescription_type' - The entity type.
--
-- 'arn', 'entityDescription_arn' - The entity ARN.
--
-- 'id', 'entityDescription_id' - The entity ID.
--
-- 'createdAt', 'entityDescription_createdAt' - The time at which the entity was created.
--
-- 'definition', 'entityDescription_definition' - The definition document of the entity.
newEntityDescription ::
  EntityDescription
newEntityDescription =
  EntityDescription'
    { type' = Prelude.Nothing,
      arn = Prelude.Nothing,
      id = Prelude.Nothing,
      createdAt = Prelude.Nothing,
      definition = Prelude.Nothing
    }

-- | The entity type.
entityDescription_type :: Lens.Lens' EntityDescription (Prelude.Maybe EntityType)
entityDescription_type = Lens.lens (\EntityDescription' {type'} -> type') (\s@EntityDescription' {} a -> s {type' = a} :: EntityDescription)

-- | The entity ARN.
entityDescription_arn :: Lens.Lens' EntityDescription (Prelude.Maybe Prelude.Text)
entityDescription_arn = Lens.lens (\EntityDescription' {arn} -> arn) (\s@EntityDescription' {} a -> s {arn = a} :: EntityDescription)

-- | The entity ID.
entityDescription_id :: Lens.Lens' EntityDescription (Prelude.Maybe Prelude.Text)
entityDescription_id = Lens.lens (\EntityDescription' {id} -> id) (\s@EntityDescription' {} a -> s {id = a} :: EntityDescription)

-- | The time at which the entity was created.
entityDescription_createdAt :: Lens.Lens' EntityDescription (Prelude.Maybe Prelude.UTCTime)
entityDescription_createdAt = Lens.lens (\EntityDescription' {createdAt} -> createdAt) (\s@EntityDescription' {} a -> s {createdAt = a} :: EntityDescription) Prelude.. Lens.mapping Core._Time

-- | The definition document of the entity.
entityDescription_definition :: Lens.Lens' EntityDescription (Prelude.Maybe DefinitionDocument)
entityDescription_definition = Lens.lens (\EntityDescription' {definition} -> definition) (\s@EntityDescription' {} a -> s {definition = a} :: EntityDescription)

instance Core.FromJSON EntityDescription where
  parseJSON =
    Core.withObject
      "EntityDescription"
      ( \x ->
          EntityDescription'
            Prelude.<$> (x Core..:? "type")
            Prelude.<*> (x Core..:? "arn")
            Prelude.<*> (x Core..:? "id")
            Prelude.<*> (x Core..:? "createdAt")
            Prelude.<*> (x Core..:? "definition")
      )

instance Prelude.Hashable EntityDescription where
  hashWithSalt _salt EntityDescription' {..} =
    _salt `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` arn
      `Prelude.hashWithSalt` id
      `Prelude.hashWithSalt` createdAt
      `Prelude.hashWithSalt` definition

instance Prelude.NFData EntityDescription where
  rnf EntityDescription' {..} =
    Prelude.rnf type'
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf id
      `Prelude.seq` Prelude.rnf createdAt
      `Prelude.seq` Prelude.rnf definition
