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
-- Module      : Amazonka.Batch.Types.SchedulingPolicyDetail
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Batch.Types.SchedulingPolicyDetail where

import Amazonka.Batch.Types.FairsharePolicy
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | An object that represents a scheduling policy.
--
-- /See:/ 'newSchedulingPolicyDetail' smart constructor.
data SchedulingPolicyDetail = SchedulingPolicyDetail'
  { -- | The tags that you apply to the scheduling policy to categorize and
    -- organize your resources. Each tag consists of a key and an optional
    -- value. For more information, see
    -- <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging Amazon Web Services resources>
    -- in /Amazon Web Services General Reference/.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The fair share policy for the scheduling policy.
    fairsharePolicy :: Prelude.Maybe FairsharePolicy,
    -- | The name of the scheduling policy.
    name :: Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the scheduling policy. An example is
    -- @arn:aws:batch:us-east-1:123456789012:scheduling-policy\/HighPriority @.
    arn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SchedulingPolicyDetail' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'schedulingPolicyDetail_tags' - The tags that you apply to the scheduling policy to categorize and
-- organize your resources. Each tag consists of a key and an optional
-- value. For more information, see
-- <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging Amazon Web Services resources>
-- in /Amazon Web Services General Reference/.
--
-- 'fairsharePolicy', 'schedulingPolicyDetail_fairsharePolicy' - The fair share policy for the scheduling policy.
--
-- 'name', 'schedulingPolicyDetail_name' - The name of the scheduling policy.
--
-- 'arn', 'schedulingPolicyDetail_arn' - The Amazon Resource Name (ARN) of the scheduling policy. An example is
-- @arn:aws:batch:us-east-1:123456789012:scheduling-policy\/HighPriority @.
newSchedulingPolicyDetail ::
  -- | 'name'
  Prelude.Text ->
  -- | 'arn'
  Prelude.Text ->
  SchedulingPolicyDetail
newSchedulingPolicyDetail pName_ pArn_ =
  SchedulingPolicyDetail'
    { tags = Prelude.Nothing,
      fairsharePolicy = Prelude.Nothing,
      name = pName_,
      arn = pArn_
    }

-- | The tags that you apply to the scheduling policy to categorize and
-- organize your resources. Each tag consists of a key and an optional
-- value. For more information, see
-- <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging Amazon Web Services resources>
-- in /Amazon Web Services General Reference/.
schedulingPolicyDetail_tags :: Lens.Lens' SchedulingPolicyDetail (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
schedulingPolicyDetail_tags = Lens.lens (\SchedulingPolicyDetail' {tags} -> tags) (\s@SchedulingPolicyDetail' {} a -> s {tags = a} :: SchedulingPolicyDetail) Prelude.. Lens.mapping Lens.coerced

-- | The fair share policy for the scheduling policy.
schedulingPolicyDetail_fairsharePolicy :: Lens.Lens' SchedulingPolicyDetail (Prelude.Maybe FairsharePolicy)
schedulingPolicyDetail_fairsharePolicy = Lens.lens (\SchedulingPolicyDetail' {fairsharePolicy} -> fairsharePolicy) (\s@SchedulingPolicyDetail' {} a -> s {fairsharePolicy = a} :: SchedulingPolicyDetail)

-- | The name of the scheduling policy.
schedulingPolicyDetail_name :: Lens.Lens' SchedulingPolicyDetail Prelude.Text
schedulingPolicyDetail_name = Lens.lens (\SchedulingPolicyDetail' {name} -> name) (\s@SchedulingPolicyDetail' {} a -> s {name = a} :: SchedulingPolicyDetail)

-- | The Amazon Resource Name (ARN) of the scheduling policy. An example is
-- @arn:aws:batch:us-east-1:123456789012:scheduling-policy\/HighPriority @.
schedulingPolicyDetail_arn :: Lens.Lens' SchedulingPolicyDetail Prelude.Text
schedulingPolicyDetail_arn = Lens.lens (\SchedulingPolicyDetail' {arn} -> arn) (\s@SchedulingPolicyDetail' {} a -> s {arn = a} :: SchedulingPolicyDetail)

instance Core.FromJSON SchedulingPolicyDetail where
  parseJSON =
    Core.withObject
      "SchedulingPolicyDetail"
      ( \x ->
          SchedulingPolicyDetail'
            Prelude.<$> (x Core..:? "tags" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "fairsharePolicy")
            Prelude.<*> (x Core..: "name")
            Prelude.<*> (x Core..: "arn")
      )

instance Prelude.Hashable SchedulingPolicyDetail where
  hashWithSalt _salt SchedulingPolicyDetail' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` fairsharePolicy
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` arn

instance Prelude.NFData SchedulingPolicyDetail where
  rnf SchedulingPolicyDetail' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf fairsharePolicy
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf arn
