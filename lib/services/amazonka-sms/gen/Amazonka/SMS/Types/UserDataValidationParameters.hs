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
-- Module      : Amazonka.SMS.Types.UserDataValidationParameters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SMS.Types.UserDataValidationParameters where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.SMS.Types.ScriptType
import Amazonka.SMS.Types.Source

-- | Contains validation parameters.
--
-- /See:/ 'newUserDataValidationParameters' smart constructor.
data UserDataValidationParameters = UserDataValidationParameters'
  { -- | The location of the validation script.
    source :: Prelude.Maybe Source,
    -- | The type of validation script.
    scriptType :: Prelude.Maybe ScriptType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UserDataValidationParameters' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'source', 'userDataValidationParameters_source' - The location of the validation script.
--
-- 'scriptType', 'userDataValidationParameters_scriptType' - The type of validation script.
newUserDataValidationParameters ::
  UserDataValidationParameters
newUserDataValidationParameters =
  UserDataValidationParameters'
    { source =
        Prelude.Nothing,
      scriptType = Prelude.Nothing
    }

-- | The location of the validation script.
userDataValidationParameters_source :: Lens.Lens' UserDataValidationParameters (Prelude.Maybe Source)
userDataValidationParameters_source = Lens.lens (\UserDataValidationParameters' {source} -> source) (\s@UserDataValidationParameters' {} a -> s {source = a} :: UserDataValidationParameters)

-- | The type of validation script.
userDataValidationParameters_scriptType :: Lens.Lens' UserDataValidationParameters (Prelude.Maybe ScriptType)
userDataValidationParameters_scriptType = Lens.lens (\UserDataValidationParameters' {scriptType} -> scriptType) (\s@UserDataValidationParameters' {} a -> s {scriptType = a} :: UserDataValidationParameters)

instance Core.FromJSON UserDataValidationParameters where
  parseJSON =
    Core.withObject
      "UserDataValidationParameters"
      ( \x ->
          UserDataValidationParameters'
            Prelude.<$> (x Core..:? "source")
            Prelude.<*> (x Core..:? "scriptType")
      )

instance
  Prelude.Hashable
    UserDataValidationParameters
  where
  hashWithSalt _salt UserDataValidationParameters' {..} =
    _salt `Prelude.hashWithSalt` source
      `Prelude.hashWithSalt` scriptType

instance Prelude.NFData UserDataValidationParameters where
  rnf UserDataValidationParameters' {..} =
    Prelude.rnf source
      `Prelude.seq` Prelude.rnf scriptType

instance Core.ToJSON UserDataValidationParameters where
  toJSON UserDataValidationParameters' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("source" Core..=) Prelude.<$> source,
            ("scriptType" Core..=) Prelude.<$> scriptType
          ]
      )
