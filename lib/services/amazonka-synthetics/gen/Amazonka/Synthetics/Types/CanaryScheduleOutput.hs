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
-- Module      : Amazonka.Synthetics.Types.CanaryScheduleOutput
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Synthetics.Types.CanaryScheduleOutput where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | How long, in seconds, for the canary to continue making regular runs
-- according to the schedule in the @Expression@ value.
--
-- /See:/ 'newCanaryScheduleOutput' smart constructor.
data CanaryScheduleOutput = CanaryScheduleOutput'
  { -- | A @rate@ expression or a @cron@ expression that defines how often the
    -- canary is to run.
    --
    -- For a rate expression, The syntax is @rate(number unit)@. /unit/ can be
    -- @minute@, @minutes@, or @hour@.
    --
    -- For example, @rate(1 minute)@ runs the canary once a minute,
    -- @rate(10 minutes)@ runs it once every 10 minutes, and @rate(1 hour)@
    -- runs it once every hour. You can specify a frequency between
    -- @rate(1 minute)@ and @rate(1 hour)@.
    --
    -- Specifying @rate(0 minute)@ or @rate(0 hour)@ is a special value that
    -- causes the canary to run only once when it is started.
    --
    -- Use @cron(expression)@ to specify a cron expression. For information
    -- about the syntax for cron expressions, see
    -- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_cron.html Scheduling canary runs using cron>.
    expression :: Prelude.Maybe Prelude.Text,
    -- | How long, in seconds, for the canary to continue making regular runs
    -- after it was created. The runs are performed according to the schedule
    -- in the @Expression@ value.
    durationInSeconds :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CanaryScheduleOutput' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'expression', 'canaryScheduleOutput_expression' - A @rate@ expression or a @cron@ expression that defines how often the
-- canary is to run.
--
-- For a rate expression, The syntax is @rate(number unit)@. /unit/ can be
-- @minute@, @minutes@, or @hour@.
--
-- For example, @rate(1 minute)@ runs the canary once a minute,
-- @rate(10 minutes)@ runs it once every 10 minutes, and @rate(1 hour)@
-- runs it once every hour. You can specify a frequency between
-- @rate(1 minute)@ and @rate(1 hour)@.
--
-- Specifying @rate(0 minute)@ or @rate(0 hour)@ is a special value that
-- causes the canary to run only once when it is started.
--
-- Use @cron(expression)@ to specify a cron expression. For information
-- about the syntax for cron expressions, see
-- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_cron.html Scheduling canary runs using cron>.
--
-- 'durationInSeconds', 'canaryScheduleOutput_durationInSeconds' - How long, in seconds, for the canary to continue making regular runs
-- after it was created. The runs are performed according to the schedule
-- in the @Expression@ value.
newCanaryScheduleOutput ::
  CanaryScheduleOutput
newCanaryScheduleOutput =
  CanaryScheduleOutput'
    { expression = Prelude.Nothing,
      durationInSeconds = Prelude.Nothing
    }

-- | A @rate@ expression or a @cron@ expression that defines how often the
-- canary is to run.
--
-- For a rate expression, The syntax is @rate(number unit)@. /unit/ can be
-- @minute@, @minutes@, or @hour@.
--
-- For example, @rate(1 minute)@ runs the canary once a minute,
-- @rate(10 minutes)@ runs it once every 10 minutes, and @rate(1 hour)@
-- runs it once every hour. You can specify a frequency between
-- @rate(1 minute)@ and @rate(1 hour)@.
--
-- Specifying @rate(0 minute)@ or @rate(0 hour)@ is a special value that
-- causes the canary to run only once when it is started.
--
-- Use @cron(expression)@ to specify a cron expression. For information
-- about the syntax for cron expressions, see
-- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_cron.html Scheduling canary runs using cron>.
canaryScheduleOutput_expression :: Lens.Lens' CanaryScheduleOutput (Prelude.Maybe Prelude.Text)
canaryScheduleOutput_expression = Lens.lens (\CanaryScheduleOutput' {expression} -> expression) (\s@CanaryScheduleOutput' {} a -> s {expression = a} :: CanaryScheduleOutput)

-- | How long, in seconds, for the canary to continue making regular runs
-- after it was created. The runs are performed according to the schedule
-- in the @Expression@ value.
canaryScheduleOutput_durationInSeconds :: Lens.Lens' CanaryScheduleOutput (Prelude.Maybe Prelude.Natural)
canaryScheduleOutput_durationInSeconds = Lens.lens (\CanaryScheduleOutput' {durationInSeconds} -> durationInSeconds) (\s@CanaryScheduleOutput' {} a -> s {durationInSeconds = a} :: CanaryScheduleOutput)

instance Core.FromJSON CanaryScheduleOutput where
  parseJSON =
    Core.withObject
      "CanaryScheduleOutput"
      ( \x ->
          CanaryScheduleOutput'
            Prelude.<$> (x Core..:? "Expression")
            Prelude.<*> (x Core..:? "DurationInSeconds")
      )

instance Prelude.Hashable CanaryScheduleOutput where
  hashWithSalt _salt CanaryScheduleOutput' {..} =
    _salt `Prelude.hashWithSalt` expression
      `Prelude.hashWithSalt` durationInSeconds

instance Prelude.NFData CanaryScheduleOutput where
  rnf CanaryScheduleOutput' {..} =
    Prelude.rnf expression
      `Prelude.seq` Prelude.rnf durationInSeconds
