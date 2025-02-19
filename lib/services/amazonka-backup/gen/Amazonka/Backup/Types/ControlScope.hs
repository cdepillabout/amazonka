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
-- Module      : Amazonka.Backup.Types.ControlScope
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Backup.Types.ControlScope where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A framework consists of one or more controls. Each control has its own
-- control scope. The control scope can include one or more resource types,
-- a combination of a tag key and value, or a combination of one resource
-- type and one resource ID. If no scope is specified, evaluations for the
-- rule are triggered when any resource in your recording group changes in
-- configuration.
--
-- To set a control scope that includes all of a particular resource, leave
-- the @ControlScope@ empty or do not pass it when calling
-- @CreateFramework@.
--
-- /See:/ 'newControlScope' smart constructor.
data ControlScope = ControlScope'
  { -- | The tag key-value pair applied to those Amazon Web Services resources
    -- that you want to trigger an evaluation for a rule. A maximum of one
    -- key-value pair can be provided. The tag value is optional, but it cannot
    -- be an empty string. The structure to assign a tag is:
    -- @[{\"Key\":\"string\",\"Value\":\"string\"}]@.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The ID of the only Amazon Web Services resource that you want your
    -- control scope to contain.
    complianceResourceIds :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | Describes whether the control scope includes one or more types of
    -- resources, such as @EFS@ or @RDS@.
    complianceResourceTypes :: Prelude.Maybe [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ControlScope' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'controlScope_tags' - The tag key-value pair applied to those Amazon Web Services resources
-- that you want to trigger an evaluation for a rule. A maximum of one
-- key-value pair can be provided. The tag value is optional, but it cannot
-- be an empty string. The structure to assign a tag is:
-- @[{\"Key\":\"string\",\"Value\":\"string\"}]@.
--
-- 'complianceResourceIds', 'controlScope_complianceResourceIds' - The ID of the only Amazon Web Services resource that you want your
-- control scope to contain.
--
-- 'complianceResourceTypes', 'controlScope_complianceResourceTypes' - Describes whether the control scope includes one or more types of
-- resources, such as @EFS@ or @RDS@.
newControlScope ::
  ControlScope
newControlScope =
  ControlScope'
    { tags = Prelude.Nothing,
      complianceResourceIds = Prelude.Nothing,
      complianceResourceTypes = Prelude.Nothing
    }

-- | The tag key-value pair applied to those Amazon Web Services resources
-- that you want to trigger an evaluation for a rule. A maximum of one
-- key-value pair can be provided. The tag value is optional, but it cannot
-- be an empty string. The structure to assign a tag is:
-- @[{\"Key\":\"string\",\"Value\":\"string\"}]@.
controlScope_tags :: Lens.Lens' ControlScope (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
controlScope_tags = Lens.lens (\ControlScope' {tags} -> tags) (\s@ControlScope' {} a -> s {tags = a} :: ControlScope) Prelude.. Lens.mapping Lens.coerced

-- | The ID of the only Amazon Web Services resource that you want your
-- control scope to contain.
controlScope_complianceResourceIds :: Lens.Lens' ControlScope (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
controlScope_complianceResourceIds = Lens.lens (\ControlScope' {complianceResourceIds} -> complianceResourceIds) (\s@ControlScope' {} a -> s {complianceResourceIds = a} :: ControlScope) Prelude.. Lens.mapping Lens.coerced

-- | Describes whether the control scope includes one or more types of
-- resources, such as @EFS@ or @RDS@.
controlScope_complianceResourceTypes :: Lens.Lens' ControlScope (Prelude.Maybe [Prelude.Text])
controlScope_complianceResourceTypes = Lens.lens (\ControlScope' {complianceResourceTypes} -> complianceResourceTypes) (\s@ControlScope' {} a -> s {complianceResourceTypes = a} :: ControlScope) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON ControlScope where
  parseJSON =
    Core.withObject
      "ControlScope"
      ( \x ->
          ControlScope'
            Prelude.<$> (x Core..:? "Tags" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "ComplianceResourceIds")
            Prelude.<*> ( x Core..:? "ComplianceResourceTypes"
                            Core..!= Prelude.mempty
                        )
      )

instance Prelude.Hashable ControlScope where
  hashWithSalt _salt ControlScope' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` complianceResourceIds
      `Prelude.hashWithSalt` complianceResourceTypes

instance Prelude.NFData ControlScope where
  rnf ControlScope' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf complianceResourceIds
      `Prelude.seq` Prelude.rnf complianceResourceTypes

instance Core.ToJSON ControlScope where
  toJSON ControlScope' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Tags" Core..=) Prelude.<$> tags,
            ("ComplianceResourceIds" Core..=)
              Prelude.<$> complianceResourceIds,
            ("ComplianceResourceTypes" Core..=)
              Prelude.<$> complianceResourceTypes
          ]
      )
