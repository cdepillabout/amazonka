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
-- Module      : Amazonka.Greengrass.Types.FunctionDefaultExecutionConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Greengrass.Types.FunctionDefaultExecutionConfig where

import qualified Amazonka.Core as Core
import Amazonka.Greengrass.Types.FunctionIsolationMode
import Amazonka.Greengrass.Types.FunctionRunAsConfig
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Configuration information that specifies how a Lambda function runs.
--
-- /See:/ 'newFunctionDefaultExecutionConfig' smart constructor.
data FunctionDefaultExecutionConfig = FunctionDefaultExecutionConfig'
  { isolationMode :: Prelude.Maybe FunctionIsolationMode,
    runAs :: Prelude.Maybe FunctionRunAsConfig
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'FunctionDefaultExecutionConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'isolationMode', 'functionDefaultExecutionConfig_isolationMode' - Undocumented member.
--
-- 'runAs', 'functionDefaultExecutionConfig_runAs' - Undocumented member.
newFunctionDefaultExecutionConfig ::
  FunctionDefaultExecutionConfig
newFunctionDefaultExecutionConfig =
  FunctionDefaultExecutionConfig'
    { isolationMode =
        Prelude.Nothing,
      runAs = Prelude.Nothing
    }

-- | Undocumented member.
functionDefaultExecutionConfig_isolationMode :: Lens.Lens' FunctionDefaultExecutionConfig (Prelude.Maybe FunctionIsolationMode)
functionDefaultExecutionConfig_isolationMode = Lens.lens (\FunctionDefaultExecutionConfig' {isolationMode} -> isolationMode) (\s@FunctionDefaultExecutionConfig' {} a -> s {isolationMode = a} :: FunctionDefaultExecutionConfig)

-- | Undocumented member.
functionDefaultExecutionConfig_runAs :: Lens.Lens' FunctionDefaultExecutionConfig (Prelude.Maybe FunctionRunAsConfig)
functionDefaultExecutionConfig_runAs = Lens.lens (\FunctionDefaultExecutionConfig' {runAs} -> runAs) (\s@FunctionDefaultExecutionConfig' {} a -> s {runAs = a} :: FunctionDefaultExecutionConfig)

instance Core.FromJSON FunctionDefaultExecutionConfig where
  parseJSON =
    Core.withObject
      "FunctionDefaultExecutionConfig"
      ( \x ->
          FunctionDefaultExecutionConfig'
            Prelude.<$> (x Core..:? "IsolationMode")
            Prelude.<*> (x Core..:? "RunAs")
      )

instance
  Prelude.Hashable
    FunctionDefaultExecutionConfig
  where
  hashWithSalt
    _salt
    FunctionDefaultExecutionConfig' {..} =
      _salt `Prelude.hashWithSalt` isolationMode
        `Prelude.hashWithSalt` runAs

instance
  Prelude.NFData
    FunctionDefaultExecutionConfig
  where
  rnf FunctionDefaultExecutionConfig' {..} =
    Prelude.rnf isolationMode
      `Prelude.seq` Prelude.rnf runAs

instance Core.ToJSON FunctionDefaultExecutionConfig where
  toJSON FunctionDefaultExecutionConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("IsolationMode" Core..=) Prelude.<$> isolationMode,
            ("RunAs" Core..=) Prelude.<$> runAs
          ]
      )
