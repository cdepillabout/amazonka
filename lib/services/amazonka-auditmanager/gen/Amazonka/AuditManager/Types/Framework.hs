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
-- Module      : Amazonka.AuditManager.Types.Framework
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.AuditManager.Types.Framework where

import Amazonka.AuditManager.Types.ControlSet
import Amazonka.AuditManager.Types.FrameworkType
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The file that\'s used to structure and automate Audit Manager
-- assessments for a given compliance standard.
--
-- /See:/ 'newFramework' smart constructor.
data Framework = Framework'
  { -- | The tags that are associated with the framework.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The name of the framework.
    name :: Prelude.Maybe Prelude.Text,
    -- | The framework type, such as a custom framework or a standard framework.
    type' :: Prelude.Maybe FrameworkType,
    -- | Specifies when the framework was most recently updated.
    lastUpdatedAt :: Prelude.Maybe Core.POSIX,
    -- | The Amazon Resource Name (ARN) of the framework.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The description of the framework.
    description :: Prelude.Maybe Prelude.Text,
    -- | The unique identifier for the framework.
    id :: Prelude.Maybe Prelude.Text,
    -- | The logo that\'s associated with the framework.
    logo :: Prelude.Maybe Prelude.Text,
    -- | The control sets that are associated with the framework.
    controlSets :: Prelude.Maybe (Prelude.NonEmpty ControlSet),
    -- | The compliance type that the new custom framework supports, such as CIS
    -- or HIPAA.
    complianceType :: Prelude.Maybe Prelude.Text,
    -- | The IAM user or role that created the framework.
    createdBy :: Prelude.Maybe Prelude.Text,
    -- | Specifies when the framework was created.
    createdAt :: Prelude.Maybe Core.POSIX,
    -- | The IAM user or role that most recently updated the framework.
    lastUpdatedBy :: Prelude.Maybe Prelude.Text,
    -- | The sources that Audit Manager collects evidence from for the control.
    controlSources :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Framework' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'framework_tags' - The tags that are associated with the framework.
--
-- 'name', 'framework_name' - The name of the framework.
--
-- 'type'', 'framework_type' - The framework type, such as a custom framework or a standard framework.
--
-- 'lastUpdatedAt', 'framework_lastUpdatedAt' - Specifies when the framework was most recently updated.
--
-- 'arn', 'framework_arn' - The Amazon Resource Name (ARN) of the framework.
--
-- 'description', 'framework_description' - The description of the framework.
--
-- 'id', 'framework_id' - The unique identifier for the framework.
--
-- 'logo', 'framework_logo' - The logo that\'s associated with the framework.
--
-- 'controlSets', 'framework_controlSets' - The control sets that are associated with the framework.
--
-- 'complianceType', 'framework_complianceType' - The compliance type that the new custom framework supports, such as CIS
-- or HIPAA.
--
-- 'createdBy', 'framework_createdBy' - The IAM user or role that created the framework.
--
-- 'createdAt', 'framework_createdAt' - Specifies when the framework was created.
--
-- 'lastUpdatedBy', 'framework_lastUpdatedBy' - The IAM user or role that most recently updated the framework.
--
-- 'controlSources', 'framework_controlSources' - The sources that Audit Manager collects evidence from for the control.
newFramework ::
  Framework
newFramework =
  Framework'
    { tags = Prelude.Nothing,
      name = Prelude.Nothing,
      type' = Prelude.Nothing,
      lastUpdatedAt = Prelude.Nothing,
      arn = Prelude.Nothing,
      description = Prelude.Nothing,
      id = Prelude.Nothing,
      logo = Prelude.Nothing,
      controlSets = Prelude.Nothing,
      complianceType = Prelude.Nothing,
      createdBy = Prelude.Nothing,
      createdAt = Prelude.Nothing,
      lastUpdatedBy = Prelude.Nothing,
      controlSources = Prelude.Nothing
    }

-- | The tags that are associated with the framework.
framework_tags :: Lens.Lens' Framework (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
framework_tags = Lens.lens (\Framework' {tags} -> tags) (\s@Framework' {} a -> s {tags = a} :: Framework) Prelude.. Lens.mapping Lens.coerced

-- | The name of the framework.
framework_name :: Lens.Lens' Framework (Prelude.Maybe Prelude.Text)
framework_name = Lens.lens (\Framework' {name} -> name) (\s@Framework' {} a -> s {name = a} :: Framework)

-- | The framework type, such as a custom framework or a standard framework.
framework_type :: Lens.Lens' Framework (Prelude.Maybe FrameworkType)
framework_type = Lens.lens (\Framework' {type'} -> type') (\s@Framework' {} a -> s {type' = a} :: Framework)

-- | Specifies when the framework was most recently updated.
framework_lastUpdatedAt :: Lens.Lens' Framework (Prelude.Maybe Prelude.UTCTime)
framework_lastUpdatedAt = Lens.lens (\Framework' {lastUpdatedAt} -> lastUpdatedAt) (\s@Framework' {} a -> s {lastUpdatedAt = a} :: Framework) Prelude.. Lens.mapping Core._Time

-- | The Amazon Resource Name (ARN) of the framework.
framework_arn :: Lens.Lens' Framework (Prelude.Maybe Prelude.Text)
framework_arn = Lens.lens (\Framework' {arn} -> arn) (\s@Framework' {} a -> s {arn = a} :: Framework)

-- | The description of the framework.
framework_description :: Lens.Lens' Framework (Prelude.Maybe Prelude.Text)
framework_description = Lens.lens (\Framework' {description} -> description) (\s@Framework' {} a -> s {description = a} :: Framework)

-- | The unique identifier for the framework.
framework_id :: Lens.Lens' Framework (Prelude.Maybe Prelude.Text)
framework_id = Lens.lens (\Framework' {id} -> id) (\s@Framework' {} a -> s {id = a} :: Framework)

-- | The logo that\'s associated with the framework.
framework_logo :: Lens.Lens' Framework (Prelude.Maybe Prelude.Text)
framework_logo = Lens.lens (\Framework' {logo} -> logo) (\s@Framework' {} a -> s {logo = a} :: Framework)

-- | The control sets that are associated with the framework.
framework_controlSets :: Lens.Lens' Framework (Prelude.Maybe (Prelude.NonEmpty ControlSet))
framework_controlSets = Lens.lens (\Framework' {controlSets} -> controlSets) (\s@Framework' {} a -> s {controlSets = a} :: Framework) Prelude.. Lens.mapping Lens.coerced

-- | The compliance type that the new custom framework supports, such as CIS
-- or HIPAA.
framework_complianceType :: Lens.Lens' Framework (Prelude.Maybe Prelude.Text)
framework_complianceType = Lens.lens (\Framework' {complianceType} -> complianceType) (\s@Framework' {} a -> s {complianceType = a} :: Framework)

-- | The IAM user or role that created the framework.
framework_createdBy :: Lens.Lens' Framework (Prelude.Maybe Prelude.Text)
framework_createdBy = Lens.lens (\Framework' {createdBy} -> createdBy) (\s@Framework' {} a -> s {createdBy = a} :: Framework)

-- | Specifies when the framework was created.
framework_createdAt :: Lens.Lens' Framework (Prelude.Maybe Prelude.UTCTime)
framework_createdAt = Lens.lens (\Framework' {createdAt} -> createdAt) (\s@Framework' {} a -> s {createdAt = a} :: Framework) Prelude.. Lens.mapping Core._Time

-- | The IAM user or role that most recently updated the framework.
framework_lastUpdatedBy :: Lens.Lens' Framework (Prelude.Maybe Prelude.Text)
framework_lastUpdatedBy = Lens.lens (\Framework' {lastUpdatedBy} -> lastUpdatedBy) (\s@Framework' {} a -> s {lastUpdatedBy = a} :: Framework)

-- | The sources that Audit Manager collects evidence from for the control.
framework_controlSources :: Lens.Lens' Framework (Prelude.Maybe Prelude.Text)
framework_controlSources = Lens.lens (\Framework' {controlSources} -> controlSources) (\s@Framework' {} a -> s {controlSources = a} :: Framework)

instance Core.FromJSON Framework where
  parseJSON =
    Core.withObject
      "Framework"
      ( \x ->
          Framework'
            Prelude.<$> (x Core..:? "tags" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "name")
            Prelude.<*> (x Core..:? "type")
            Prelude.<*> (x Core..:? "lastUpdatedAt")
            Prelude.<*> (x Core..:? "arn")
            Prelude.<*> (x Core..:? "description")
            Prelude.<*> (x Core..:? "id")
            Prelude.<*> (x Core..:? "logo")
            Prelude.<*> (x Core..:? "controlSets")
            Prelude.<*> (x Core..:? "complianceType")
            Prelude.<*> (x Core..:? "createdBy")
            Prelude.<*> (x Core..:? "createdAt")
            Prelude.<*> (x Core..:? "lastUpdatedBy")
            Prelude.<*> (x Core..:? "controlSources")
      )

instance Prelude.Hashable Framework where
  hashWithSalt _salt Framework' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` lastUpdatedAt
      `Prelude.hashWithSalt` arn
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` id
      `Prelude.hashWithSalt` logo
      `Prelude.hashWithSalt` controlSets
      `Prelude.hashWithSalt` complianceType
      `Prelude.hashWithSalt` createdBy
      `Prelude.hashWithSalt` createdAt
      `Prelude.hashWithSalt` lastUpdatedBy
      `Prelude.hashWithSalt` controlSources

instance Prelude.NFData Framework where
  rnf Framework' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf type'
      `Prelude.seq` Prelude.rnf lastUpdatedAt
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf id
      `Prelude.seq` Prelude.rnf logo
      `Prelude.seq` Prelude.rnf controlSets
      `Prelude.seq` Prelude.rnf complianceType
      `Prelude.seq` Prelude.rnf createdBy
      `Prelude.seq` Prelude.rnf createdAt
      `Prelude.seq` Prelude.rnf lastUpdatedBy
      `Prelude.seq` Prelude.rnf controlSources
