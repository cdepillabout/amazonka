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
-- Module      : Amazonka.SSM.Types.DocumentParameter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SSM.Types.DocumentParameter where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.SSM.Types.DocumentParameterType

-- | Parameters specified in a System Manager document that run on the server
-- when the command is run.
--
-- /See:/ 'newDocumentParameter' smart constructor.
data DocumentParameter = DocumentParameter'
  { -- | The name of the parameter.
    name :: Prelude.Maybe Prelude.Text,
    -- | The type of parameter. The type can be either String or StringList.
    type' :: Prelude.Maybe DocumentParameterType,
    -- | If specified, the default values for the parameters. Parameters without
    -- a default value are required. Parameters with a default value are
    -- optional.
    defaultValue :: Prelude.Maybe Prelude.Text,
    -- | A description of what the parameter does, how to use it, the default
    -- value, and whether or not the parameter is optional.
    description :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DocumentParameter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'documentParameter_name' - The name of the parameter.
--
-- 'type'', 'documentParameter_type' - The type of parameter. The type can be either String or StringList.
--
-- 'defaultValue', 'documentParameter_defaultValue' - If specified, the default values for the parameters. Parameters without
-- a default value are required. Parameters with a default value are
-- optional.
--
-- 'description', 'documentParameter_description' - A description of what the parameter does, how to use it, the default
-- value, and whether or not the parameter is optional.
newDocumentParameter ::
  DocumentParameter
newDocumentParameter =
  DocumentParameter'
    { name = Prelude.Nothing,
      type' = Prelude.Nothing,
      defaultValue = Prelude.Nothing,
      description = Prelude.Nothing
    }

-- | The name of the parameter.
documentParameter_name :: Lens.Lens' DocumentParameter (Prelude.Maybe Prelude.Text)
documentParameter_name = Lens.lens (\DocumentParameter' {name} -> name) (\s@DocumentParameter' {} a -> s {name = a} :: DocumentParameter)

-- | The type of parameter. The type can be either String or StringList.
documentParameter_type :: Lens.Lens' DocumentParameter (Prelude.Maybe DocumentParameterType)
documentParameter_type = Lens.lens (\DocumentParameter' {type'} -> type') (\s@DocumentParameter' {} a -> s {type' = a} :: DocumentParameter)

-- | If specified, the default values for the parameters. Parameters without
-- a default value are required. Parameters with a default value are
-- optional.
documentParameter_defaultValue :: Lens.Lens' DocumentParameter (Prelude.Maybe Prelude.Text)
documentParameter_defaultValue = Lens.lens (\DocumentParameter' {defaultValue} -> defaultValue) (\s@DocumentParameter' {} a -> s {defaultValue = a} :: DocumentParameter)

-- | A description of what the parameter does, how to use it, the default
-- value, and whether or not the parameter is optional.
documentParameter_description :: Lens.Lens' DocumentParameter (Prelude.Maybe Prelude.Text)
documentParameter_description = Lens.lens (\DocumentParameter' {description} -> description) (\s@DocumentParameter' {} a -> s {description = a} :: DocumentParameter)

instance Core.FromJSON DocumentParameter where
  parseJSON =
    Core.withObject
      "DocumentParameter"
      ( \x ->
          DocumentParameter'
            Prelude.<$> (x Core..:? "Name")
            Prelude.<*> (x Core..:? "Type")
            Prelude.<*> (x Core..:? "DefaultValue")
            Prelude.<*> (x Core..:? "Description")
      )

instance Prelude.Hashable DocumentParameter where
  hashWithSalt _salt DocumentParameter' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` defaultValue
      `Prelude.hashWithSalt` description

instance Prelude.NFData DocumentParameter where
  rnf DocumentParameter' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf type'
      `Prelude.seq` Prelude.rnf defaultValue
      `Prelude.seq` Prelude.rnf description
