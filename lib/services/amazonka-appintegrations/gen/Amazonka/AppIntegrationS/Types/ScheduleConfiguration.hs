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
-- Module      : Amazonka.AppIntegrationS.Types.ScheduleConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.AppIntegrationS.Types.ScheduleConfiguration where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The name of the data and how often it should be pulled from the source.
--
-- /See:/ 'newScheduleConfiguration' smart constructor.
data ScheduleConfiguration = ScheduleConfiguration'
  { -- | The name of the object to pull from the data source.
    object' :: Prelude.Maybe Prelude.Text,
    -- | How often the data should be pulled from data source.
    scheduleExpression :: Prelude.Maybe Prelude.Text,
    -- | The start date for objects to import in the first flow run.
    firstExecutionFrom :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ScheduleConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'object'', 'scheduleConfiguration_object' - The name of the object to pull from the data source.
--
-- 'scheduleExpression', 'scheduleConfiguration_scheduleExpression' - How often the data should be pulled from data source.
--
-- 'firstExecutionFrom', 'scheduleConfiguration_firstExecutionFrom' - The start date for objects to import in the first flow run.
newScheduleConfiguration ::
  ScheduleConfiguration
newScheduleConfiguration =
  ScheduleConfiguration'
    { object' = Prelude.Nothing,
      scheduleExpression = Prelude.Nothing,
      firstExecutionFrom = Prelude.Nothing
    }

-- | The name of the object to pull from the data source.
scheduleConfiguration_object :: Lens.Lens' ScheduleConfiguration (Prelude.Maybe Prelude.Text)
scheduleConfiguration_object = Lens.lens (\ScheduleConfiguration' {object'} -> object') (\s@ScheduleConfiguration' {} a -> s {object' = a} :: ScheduleConfiguration)

-- | How often the data should be pulled from data source.
scheduleConfiguration_scheduleExpression :: Lens.Lens' ScheduleConfiguration (Prelude.Maybe Prelude.Text)
scheduleConfiguration_scheduleExpression = Lens.lens (\ScheduleConfiguration' {scheduleExpression} -> scheduleExpression) (\s@ScheduleConfiguration' {} a -> s {scheduleExpression = a} :: ScheduleConfiguration)

-- | The start date for objects to import in the first flow run.
scheduleConfiguration_firstExecutionFrom :: Lens.Lens' ScheduleConfiguration (Prelude.Maybe Prelude.Text)
scheduleConfiguration_firstExecutionFrom = Lens.lens (\ScheduleConfiguration' {firstExecutionFrom} -> firstExecutionFrom) (\s@ScheduleConfiguration' {} a -> s {firstExecutionFrom = a} :: ScheduleConfiguration)

instance Core.FromJSON ScheduleConfiguration where
  parseJSON =
    Core.withObject
      "ScheduleConfiguration"
      ( \x ->
          ScheduleConfiguration'
            Prelude.<$> (x Core..:? "Object")
            Prelude.<*> (x Core..:? "ScheduleExpression")
            Prelude.<*> (x Core..:? "FirstExecutionFrom")
      )

instance Prelude.Hashable ScheduleConfiguration where
  hashWithSalt _salt ScheduleConfiguration' {..} =
    _salt `Prelude.hashWithSalt` object'
      `Prelude.hashWithSalt` scheduleExpression
      `Prelude.hashWithSalt` firstExecutionFrom

instance Prelude.NFData ScheduleConfiguration where
  rnf ScheduleConfiguration' {..} =
    Prelude.rnf object'
      `Prelude.seq` Prelude.rnf scheduleExpression
      `Prelude.seq` Prelude.rnf firstExecutionFrom

instance Core.ToJSON ScheduleConfiguration where
  toJSON ScheduleConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Object" Core..=) Prelude.<$> object',
            ("ScheduleExpression" Core..=)
              Prelude.<$> scheduleExpression,
            ("FirstExecutionFrom" Core..=)
              Prelude.<$> firstExecutionFrom
          ]
      )
