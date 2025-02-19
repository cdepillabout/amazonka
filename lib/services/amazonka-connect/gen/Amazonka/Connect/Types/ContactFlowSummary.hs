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
-- Module      : Amazonka.Connect.Types.ContactFlowSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Connect.Types.ContactFlowSummary where

import Amazonka.Connect.Types.ContactFlowState
import Amazonka.Connect.Types.ContactFlowType
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Contains summary information about a flow.
--
-- You can also create and update flows using the
-- <https://docs.aws.amazon.com/connect/latest/adminguide/flow-language.html Amazon Connect Flow language>.
--
-- /See:/ 'newContactFlowSummary' smart constructor.
data ContactFlowSummary = ContactFlowSummary'
  { -- | The name of the flow.
    name :: Prelude.Maybe Prelude.Text,
    -- | The type of flow.
    contactFlowState :: Prelude.Maybe ContactFlowState,
    -- | The Amazon Resource Name (ARN) of the flow.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The identifier of the flow.
    id :: Prelude.Maybe Prelude.Text,
    -- | The type of flow.
    contactFlowType :: Prelude.Maybe ContactFlowType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ContactFlowSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'contactFlowSummary_name' - The name of the flow.
--
-- 'contactFlowState', 'contactFlowSummary_contactFlowState' - The type of flow.
--
-- 'arn', 'contactFlowSummary_arn' - The Amazon Resource Name (ARN) of the flow.
--
-- 'id', 'contactFlowSummary_id' - The identifier of the flow.
--
-- 'contactFlowType', 'contactFlowSummary_contactFlowType' - The type of flow.
newContactFlowSummary ::
  ContactFlowSummary
newContactFlowSummary =
  ContactFlowSummary'
    { name = Prelude.Nothing,
      contactFlowState = Prelude.Nothing,
      arn = Prelude.Nothing,
      id = Prelude.Nothing,
      contactFlowType = Prelude.Nothing
    }

-- | The name of the flow.
contactFlowSummary_name :: Lens.Lens' ContactFlowSummary (Prelude.Maybe Prelude.Text)
contactFlowSummary_name = Lens.lens (\ContactFlowSummary' {name} -> name) (\s@ContactFlowSummary' {} a -> s {name = a} :: ContactFlowSummary)

-- | The type of flow.
contactFlowSummary_contactFlowState :: Lens.Lens' ContactFlowSummary (Prelude.Maybe ContactFlowState)
contactFlowSummary_contactFlowState = Lens.lens (\ContactFlowSummary' {contactFlowState} -> contactFlowState) (\s@ContactFlowSummary' {} a -> s {contactFlowState = a} :: ContactFlowSummary)

-- | The Amazon Resource Name (ARN) of the flow.
contactFlowSummary_arn :: Lens.Lens' ContactFlowSummary (Prelude.Maybe Prelude.Text)
contactFlowSummary_arn = Lens.lens (\ContactFlowSummary' {arn} -> arn) (\s@ContactFlowSummary' {} a -> s {arn = a} :: ContactFlowSummary)

-- | The identifier of the flow.
contactFlowSummary_id :: Lens.Lens' ContactFlowSummary (Prelude.Maybe Prelude.Text)
contactFlowSummary_id = Lens.lens (\ContactFlowSummary' {id} -> id) (\s@ContactFlowSummary' {} a -> s {id = a} :: ContactFlowSummary)

-- | The type of flow.
contactFlowSummary_contactFlowType :: Lens.Lens' ContactFlowSummary (Prelude.Maybe ContactFlowType)
contactFlowSummary_contactFlowType = Lens.lens (\ContactFlowSummary' {contactFlowType} -> contactFlowType) (\s@ContactFlowSummary' {} a -> s {contactFlowType = a} :: ContactFlowSummary)

instance Core.FromJSON ContactFlowSummary where
  parseJSON =
    Core.withObject
      "ContactFlowSummary"
      ( \x ->
          ContactFlowSummary'
            Prelude.<$> (x Core..:? "Name")
            Prelude.<*> (x Core..:? "ContactFlowState")
            Prelude.<*> (x Core..:? "Arn")
            Prelude.<*> (x Core..:? "Id")
            Prelude.<*> (x Core..:? "ContactFlowType")
      )

instance Prelude.Hashable ContactFlowSummary where
  hashWithSalt _salt ContactFlowSummary' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` contactFlowState
      `Prelude.hashWithSalt` arn
      `Prelude.hashWithSalt` id
      `Prelude.hashWithSalt` contactFlowType

instance Prelude.NFData ContactFlowSummary where
  rnf ContactFlowSummary' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf contactFlowState
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf id
      `Prelude.seq` Prelude.rnf contactFlowType
