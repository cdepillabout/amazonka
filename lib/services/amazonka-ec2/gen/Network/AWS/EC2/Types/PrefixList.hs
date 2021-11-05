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
-- Module      : Amazonka.EC2.Types.PrefixList
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.PrefixList where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes prefixes for Amazon Web Services services.
--
-- /See:/ 'newPrefixList' smart constructor.
data PrefixList = PrefixList'
  { -- | The IP address range of the Amazon Web Service.
    cidrs :: Prelude.Maybe [Prelude.Text],
    -- | The ID of the prefix.
    prefixListId :: Prelude.Maybe Prelude.Text,
    -- | The name of the prefix.
    prefixListName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PrefixList' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'cidrs', 'prefixList_cidrs' - The IP address range of the Amazon Web Service.
--
-- 'prefixListId', 'prefixList_prefixListId' - The ID of the prefix.
--
-- 'prefixListName', 'prefixList_prefixListName' - The name of the prefix.
newPrefixList ::
  PrefixList
newPrefixList =
  PrefixList'
    { cidrs = Prelude.Nothing,
      prefixListId = Prelude.Nothing,
      prefixListName = Prelude.Nothing
    }

-- | The IP address range of the Amazon Web Service.
prefixList_cidrs :: Lens.Lens' PrefixList (Prelude.Maybe [Prelude.Text])
prefixList_cidrs = Lens.lens (\PrefixList' {cidrs} -> cidrs) (\s@PrefixList' {} a -> s {cidrs = a} :: PrefixList) Prelude.. Lens.mapping Lens.coerced

-- | The ID of the prefix.
prefixList_prefixListId :: Lens.Lens' PrefixList (Prelude.Maybe Prelude.Text)
prefixList_prefixListId = Lens.lens (\PrefixList' {prefixListId} -> prefixListId) (\s@PrefixList' {} a -> s {prefixListId = a} :: PrefixList)

-- | The name of the prefix.
prefixList_prefixListName :: Lens.Lens' PrefixList (Prelude.Maybe Prelude.Text)
prefixList_prefixListName = Lens.lens (\PrefixList' {prefixListName} -> prefixListName) (\s@PrefixList' {} a -> s {prefixListName = a} :: PrefixList)

instance Core.FromXML PrefixList where
  parseXML x =
    PrefixList'
      Prelude.<$> ( x Core..@? "cidrSet" Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "item")
                  )
      Prelude.<*> (x Core..@? "prefixListId")
      Prelude.<*> (x Core..@? "prefixListName")

instance Prelude.Hashable PrefixList

instance Prelude.NFData PrefixList
