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
-- Module      : Amazonka.LakeFormation.Types.AllRowsWildcard
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.LakeFormation.Types.AllRowsWildcard where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A structure that you pass to indicate you want all rows in a filter.
--
-- /See:/ 'newAllRowsWildcard' smart constructor.
data AllRowsWildcard = AllRowsWildcard'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AllRowsWildcard' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newAllRowsWildcard ::
  AllRowsWildcard
newAllRowsWildcard = AllRowsWildcard'

instance Core.FromJSON AllRowsWildcard where
  parseJSON =
    Core.withObject
      "AllRowsWildcard"
      (\x -> Prelude.pure AllRowsWildcard')

instance Prelude.Hashable AllRowsWildcard where
  hashWithSalt _salt _ =
    _salt `Prelude.hashWithSalt` ()

instance Prelude.NFData AllRowsWildcard where
  rnf _ = ()

instance Core.ToJSON AllRowsWildcard where
  toJSON = Prelude.const (Core.Object Prelude.mempty)
