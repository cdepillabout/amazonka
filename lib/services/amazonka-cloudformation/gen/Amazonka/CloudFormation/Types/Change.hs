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
-- Module      : Amazonka.CloudFormation.Types.Change
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CloudFormation.Types.Change where

import Amazonka.CloudFormation.Types.ChangeType
import Amazonka.CloudFormation.Types.ResourceChange
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The @Change@ structure describes the changes CloudFormation will perform
-- if you execute the change set.
--
-- /See:/ 'newChange' smart constructor.
data Change = Change'
  { -- | The type of entity that CloudFormation changes. Currently, the only
    -- entity type is @Resource@.
    type' :: Prelude.Maybe ChangeType,
    -- | Is either @null@, if no hooks invoke for the resource, or contains the
    -- number of hooks that will invoke for the resource.
    hookInvocationCount :: Prelude.Maybe Prelude.Natural,
    -- | A @ResourceChange@ structure that describes the resource and action that
    -- CloudFormation will perform.
    resourceChange :: Prelude.Maybe ResourceChange
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Change' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'type'', 'change_type' - The type of entity that CloudFormation changes. Currently, the only
-- entity type is @Resource@.
--
-- 'hookInvocationCount', 'change_hookInvocationCount' - Is either @null@, if no hooks invoke for the resource, or contains the
-- number of hooks that will invoke for the resource.
--
-- 'resourceChange', 'change_resourceChange' - A @ResourceChange@ structure that describes the resource and action that
-- CloudFormation will perform.
newChange ::
  Change
newChange =
  Change'
    { type' = Prelude.Nothing,
      hookInvocationCount = Prelude.Nothing,
      resourceChange = Prelude.Nothing
    }

-- | The type of entity that CloudFormation changes. Currently, the only
-- entity type is @Resource@.
change_type :: Lens.Lens' Change (Prelude.Maybe ChangeType)
change_type = Lens.lens (\Change' {type'} -> type') (\s@Change' {} a -> s {type' = a} :: Change)

-- | Is either @null@, if no hooks invoke for the resource, or contains the
-- number of hooks that will invoke for the resource.
change_hookInvocationCount :: Lens.Lens' Change (Prelude.Maybe Prelude.Natural)
change_hookInvocationCount = Lens.lens (\Change' {hookInvocationCount} -> hookInvocationCount) (\s@Change' {} a -> s {hookInvocationCount = a} :: Change)

-- | A @ResourceChange@ structure that describes the resource and action that
-- CloudFormation will perform.
change_resourceChange :: Lens.Lens' Change (Prelude.Maybe ResourceChange)
change_resourceChange = Lens.lens (\Change' {resourceChange} -> resourceChange) (\s@Change' {} a -> s {resourceChange = a} :: Change)

instance Core.FromXML Change where
  parseXML x =
    Change'
      Prelude.<$> (x Core..@? "Type")
      Prelude.<*> (x Core..@? "HookInvocationCount")
      Prelude.<*> (x Core..@? "ResourceChange")

instance Prelude.Hashable Change where
  hashWithSalt _salt Change' {..} =
    _salt `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` hookInvocationCount
      `Prelude.hashWithSalt` resourceChange

instance Prelude.NFData Change where
  rnf Change' {..} =
    Prelude.rnf type'
      `Prelude.seq` Prelude.rnf hookInvocationCount
      `Prelude.seq` Prelude.rnf resourceChange
