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
-- Module      : Amazonka.RDS.Types.EventCategoriesMap
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.RDS.Types.EventCategoriesMap where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Contains the results of a successful invocation of the
-- <https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_DescribeEventCategories.html DescribeEventCategories>
-- operation.
--
-- /See:/ 'newEventCategoriesMap' smart constructor.
data EventCategoriesMap = EventCategoriesMap'
  { -- | The source type that the returned categories belong to
    sourceType :: Prelude.Maybe Prelude.Text,
    -- | The event categories for the specified source type
    eventCategories :: Prelude.Maybe [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EventCategoriesMap' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sourceType', 'eventCategoriesMap_sourceType' - The source type that the returned categories belong to
--
-- 'eventCategories', 'eventCategoriesMap_eventCategories' - The event categories for the specified source type
newEventCategoriesMap ::
  EventCategoriesMap
newEventCategoriesMap =
  EventCategoriesMap'
    { sourceType = Prelude.Nothing,
      eventCategories = Prelude.Nothing
    }

-- | The source type that the returned categories belong to
eventCategoriesMap_sourceType :: Lens.Lens' EventCategoriesMap (Prelude.Maybe Prelude.Text)
eventCategoriesMap_sourceType = Lens.lens (\EventCategoriesMap' {sourceType} -> sourceType) (\s@EventCategoriesMap' {} a -> s {sourceType = a} :: EventCategoriesMap)

-- | The event categories for the specified source type
eventCategoriesMap_eventCategories :: Lens.Lens' EventCategoriesMap (Prelude.Maybe [Prelude.Text])
eventCategoriesMap_eventCategories = Lens.lens (\EventCategoriesMap' {eventCategories} -> eventCategories) (\s@EventCategoriesMap' {} a -> s {eventCategories = a} :: EventCategoriesMap) Prelude.. Lens.mapping Lens.coerced

instance Core.FromXML EventCategoriesMap where
  parseXML x =
    EventCategoriesMap'
      Prelude.<$> (x Core..@? "SourceType")
      Prelude.<*> ( x Core..@? "EventCategories" Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "EventCategory")
                  )

instance Prelude.Hashable EventCategoriesMap where
  hashWithSalt _salt EventCategoriesMap' {..} =
    _salt `Prelude.hashWithSalt` sourceType
      `Prelude.hashWithSalt` eventCategories

instance Prelude.NFData EventCategoriesMap where
  rnf EventCategoriesMap' {..} =
    Prelude.rnf sourceType
      `Prelude.seq` Prelude.rnf eventCategories
