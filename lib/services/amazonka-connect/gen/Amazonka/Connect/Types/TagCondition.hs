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
-- Module      : Amazonka.Connect.Types.TagCondition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Connect.Types.TagCondition where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A leaf node condition which can be used to specify a tag condition, for
-- example, @HAVE BPO = 123@.
--
-- /See:/ 'newTagCondition' smart constructor.
data TagCondition = TagCondition'
  { -- | The tag value in the tag condition.
    tagValue :: Prelude.Maybe Prelude.Text,
    -- | The tag key in the tag condition.
    tagKey :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TagCondition' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tagValue', 'tagCondition_tagValue' - The tag value in the tag condition.
--
-- 'tagKey', 'tagCondition_tagKey' - The tag key in the tag condition.
newTagCondition ::
  TagCondition
newTagCondition =
  TagCondition'
    { tagValue = Prelude.Nothing,
      tagKey = Prelude.Nothing
    }

-- | The tag value in the tag condition.
tagCondition_tagValue :: Lens.Lens' TagCondition (Prelude.Maybe Prelude.Text)
tagCondition_tagValue = Lens.lens (\TagCondition' {tagValue} -> tagValue) (\s@TagCondition' {} a -> s {tagValue = a} :: TagCondition)

-- | The tag key in the tag condition.
tagCondition_tagKey :: Lens.Lens' TagCondition (Prelude.Maybe Prelude.Text)
tagCondition_tagKey = Lens.lens (\TagCondition' {tagKey} -> tagKey) (\s@TagCondition' {} a -> s {tagKey = a} :: TagCondition)

instance Prelude.Hashable TagCondition where
  hashWithSalt _salt TagCondition' {..} =
    _salt `Prelude.hashWithSalt` tagValue
      `Prelude.hashWithSalt` tagKey

instance Prelude.NFData TagCondition where
  rnf TagCondition' {..} =
    Prelude.rnf tagValue
      `Prelude.seq` Prelude.rnf tagKey

instance Core.ToJSON TagCondition where
  toJSON TagCondition' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("TagValue" Core..=) Prelude.<$> tagValue,
            ("TagKey" Core..=) Prelude.<$> tagKey
          ]
      )
