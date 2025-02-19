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
-- Module      : Amazonka.AppConfig.Types.Parameter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.AppConfig.Types.Parameter where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A value such as an Amazon Resource Name (ARN) or an Amazon Simple
-- Notification Service topic entered in an extension when invoked.
-- Parameter values are specified in an extension association. For more
-- information about extensions, see
-- <https://docs.aws.amazon.com/appconfig/latest/userguide/working-with-appconfig-extensions.html Working with AppConfig extensions>
-- in the /AppConfig User Guide/.
--
-- /See:/ 'newParameter' smart constructor.
data Parameter = Parameter'
  { -- | A parameter value must be specified in the extension association.
    required :: Prelude.Maybe Prelude.Bool,
    -- | Information about the parameter.
    description :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Parameter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'required', 'parameter_required' - A parameter value must be specified in the extension association.
--
-- 'description', 'parameter_description' - Information about the parameter.
newParameter ::
  Parameter
newParameter =
  Parameter'
    { required = Prelude.Nothing,
      description = Prelude.Nothing
    }

-- | A parameter value must be specified in the extension association.
parameter_required :: Lens.Lens' Parameter (Prelude.Maybe Prelude.Bool)
parameter_required = Lens.lens (\Parameter' {required} -> required) (\s@Parameter' {} a -> s {required = a} :: Parameter)

-- | Information about the parameter.
parameter_description :: Lens.Lens' Parameter (Prelude.Maybe Prelude.Text)
parameter_description = Lens.lens (\Parameter' {description} -> description) (\s@Parameter' {} a -> s {description = a} :: Parameter)

instance Core.FromJSON Parameter where
  parseJSON =
    Core.withObject
      "Parameter"
      ( \x ->
          Parameter'
            Prelude.<$> (x Core..:? "Required")
            Prelude.<*> (x Core..:? "Description")
      )

instance Prelude.Hashable Parameter where
  hashWithSalt _salt Parameter' {..} =
    _salt `Prelude.hashWithSalt` required
      `Prelude.hashWithSalt` description

instance Prelude.NFData Parameter where
  rnf Parameter' {..} =
    Prelude.rnf required
      `Prelude.seq` Prelude.rnf description

instance Core.ToJSON Parameter where
  toJSON Parameter' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Required" Core..=) Prelude.<$> required,
            ("Description" Core..=) Prelude.<$> description
          ]
      )
