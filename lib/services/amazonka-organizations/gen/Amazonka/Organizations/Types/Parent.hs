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
-- Module      : Amazonka.Organizations.Types.Parent
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Organizations.Types.Parent where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.Organizations.Types.ParentType
import qualified Amazonka.Prelude as Prelude

-- | Contains information about either a root or an organizational unit (OU)
-- that can contain OUs or accounts in an organization.
--
-- /See:/ 'newParent' smart constructor.
data Parent = Parent'
  { -- | The type of the parent entity.
    type' :: Prelude.Maybe ParentType,
    -- | The unique identifier (ID) of the parent entity.
    --
    -- The <http://wikipedia.org/wiki/regex regex pattern> for a parent ID
    -- string requires one of the following:
    --
    -- -   __Root__ - A string that begins with \"r-\" followed by from 4 to 32
    --     lowercase letters or digits.
    --
    -- -   __Organizational unit (OU)__ - A string that begins with \"ou-\"
    --     followed by from 4 to 32 lowercase letters or digits (the ID of the
    --     root that the OU is in). This string is followed by a second \"-\"
    --     dash and from 8 to 32 additional lowercase letters or digits.
    id :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Parent' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'type'', 'parent_type' - The type of the parent entity.
--
-- 'id', 'parent_id' - The unique identifier (ID) of the parent entity.
--
-- The <http://wikipedia.org/wiki/regex regex pattern> for a parent ID
-- string requires one of the following:
--
-- -   __Root__ - A string that begins with \"r-\" followed by from 4 to 32
--     lowercase letters or digits.
--
-- -   __Organizational unit (OU)__ - A string that begins with \"ou-\"
--     followed by from 4 to 32 lowercase letters or digits (the ID of the
--     root that the OU is in). This string is followed by a second \"-\"
--     dash and from 8 to 32 additional lowercase letters or digits.
newParent ::
  Parent
newParent =
  Parent'
    { type' = Prelude.Nothing,
      id = Prelude.Nothing
    }

-- | The type of the parent entity.
parent_type :: Lens.Lens' Parent (Prelude.Maybe ParentType)
parent_type = Lens.lens (\Parent' {type'} -> type') (\s@Parent' {} a -> s {type' = a} :: Parent)

-- | The unique identifier (ID) of the parent entity.
--
-- The <http://wikipedia.org/wiki/regex regex pattern> for a parent ID
-- string requires one of the following:
--
-- -   __Root__ - A string that begins with \"r-\" followed by from 4 to 32
--     lowercase letters or digits.
--
-- -   __Organizational unit (OU)__ - A string that begins with \"ou-\"
--     followed by from 4 to 32 lowercase letters or digits (the ID of the
--     root that the OU is in). This string is followed by a second \"-\"
--     dash and from 8 to 32 additional lowercase letters or digits.
parent_id :: Lens.Lens' Parent (Prelude.Maybe Prelude.Text)
parent_id = Lens.lens (\Parent' {id} -> id) (\s@Parent' {} a -> s {id = a} :: Parent)

instance Core.FromJSON Parent where
  parseJSON =
    Core.withObject
      "Parent"
      ( \x ->
          Parent'
            Prelude.<$> (x Core..:? "Type") Prelude.<*> (x Core..:? "Id")
      )

instance Prelude.Hashable Parent where
  hashWithSalt _salt Parent' {..} =
    _salt `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` id

instance Prelude.NFData Parent where
  rnf Parent' {..} =
    Prelude.rnf type' `Prelude.seq` Prelude.rnf id
