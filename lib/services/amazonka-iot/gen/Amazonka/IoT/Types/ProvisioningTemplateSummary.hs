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
-- Module      : Amazonka.IoT.Types.ProvisioningTemplateSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IoT.Types.ProvisioningTemplateSummary where

import qualified Amazonka.Core as Core
import Amazonka.IoT.Types.TemplateType
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A summary of information about a provisioning template.
--
-- /See:/ 'newProvisioningTemplateSummary' smart constructor.
data ProvisioningTemplateSummary = ProvisioningTemplateSummary'
  { -- | The name of the provisioning template.
    templateName :: Prelude.Maybe Prelude.Text,
    -- | The type you define in a provisioning template. You can create a
    -- template with only one type. You can\'t change the template type after
    -- its creation. The default value is @FLEET_PROVISIONING@. For more
    -- information about provisioning template, see:
    -- <https://docs.aws.amazon.com/iot/latest/developerguide/provision-template.html Provisioning template>.
    type' :: Prelude.Maybe TemplateType,
    -- | The date when the provisioning template summary was last modified.
    lastModifiedDate :: Prelude.Maybe Core.POSIX,
    -- | The date when the provisioning template summary was created.
    creationDate :: Prelude.Maybe Core.POSIX,
    -- | The description of the provisioning template.
    description :: Prelude.Maybe Prelude.Text,
    -- | True if the fleet provision template is enabled, otherwise false.
    enabled :: Prelude.Maybe Prelude.Bool,
    -- | The ARN of the provisioning template.
    templateArn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ProvisioningTemplateSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'templateName', 'provisioningTemplateSummary_templateName' - The name of the provisioning template.
--
-- 'type'', 'provisioningTemplateSummary_type' - The type you define in a provisioning template. You can create a
-- template with only one type. You can\'t change the template type after
-- its creation. The default value is @FLEET_PROVISIONING@. For more
-- information about provisioning template, see:
-- <https://docs.aws.amazon.com/iot/latest/developerguide/provision-template.html Provisioning template>.
--
-- 'lastModifiedDate', 'provisioningTemplateSummary_lastModifiedDate' - The date when the provisioning template summary was last modified.
--
-- 'creationDate', 'provisioningTemplateSummary_creationDate' - The date when the provisioning template summary was created.
--
-- 'description', 'provisioningTemplateSummary_description' - The description of the provisioning template.
--
-- 'enabled', 'provisioningTemplateSummary_enabled' - True if the fleet provision template is enabled, otherwise false.
--
-- 'templateArn', 'provisioningTemplateSummary_templateArn' - The ARN of the provisioning template.
newProvisioningTemplateSummary ::
  ProvisioningTemplateSummary
newProvisioningTemplateSummary =
  ProvisioningTemplateSummary'
    { templateName =
        Prelude.Nothing,
      type' = Prelude.Nothing,
      lastModifiedDate = Prelude.Nothing,
      creationDate = Prelude.Nothing,
      description = Prelude.Nothing,
      enabled = Prelude.Nothing,
      templateArn = Prelude.Nothing
    }

-- | The name of the provisioning template.
provisioningTemplateSummary_templateName :: Lens.Lens' ProvisioningTemplateSummary (Prelude.Maybe Prelude.Text)
provisioningTemplateSummary_templateName = Lens.lens (\ProvisioningTemplateSummary' {templateName} -> templateName) (\s@ProvisioningTemplateSummary' {} a -> s {templateName = a} :: ProvisioningTemplateSummary)

-- | The type you define in a provisioning template. You can create a
-- template with only one type. You can\'t change the template type after
-- its creation. The default value is @FLEET_PROVISIONING@. For more
-- information about provisioning template, see:
-- <https://docs.aws.amazon.com/iot/latest/developerguide/provision-template.html Provisioning template>.
provisioningTemplateSummary_type :: Lens.Lens' ProvisioningTemplateSummary (Prelude.Maybe TemplateType)
provisioningTemplateSummary_type = Lens.lens (\ProvisioningTemplateSummary' {type'} -> type') (\s@ProvisioningTemplateSummary' {} a -> s {type' = a} :: ProvisioningTemplateSummary)

-- | The date when the provisioning template summary was last modified.
provisioningTemplateSummary_lastModifiedDate :: Lens.Lens' ProvisioningTemplateSummary (Prelude.Maybe Prelude.UTCTime)
provisioningTemplateSummary_lastModifiedDate = Lens.lens (\ProvisioningTemplateSummary' {lastModifiedDate} -> lastModifiedDate) (\s@ProvisioningTemplateSummary' {} a -> s {lastModifiedDate = a} :: ProvisioningTemplateSummary) Prelude.. Lens.mapping Core._Time

-- | The date when the provisioning template summary was created.
provisioningTemplateSummary_creationDate :: Lens.Lens' ProvisioningTemplateSummary (Prelude.Maybe Prelude.UTCTime)
provisioningTemplateSummary_creationDate = Lens.lens (\ProvisioningTemplateSummary' {creationDate} -> creationDate) (\s@ProvisioningTemplateSummary' {} a -> s {creationDate = a} :: ProvisioningTemplateSummary) Prelude.. Lens.mapping Core._Time

-- | The description of the provisioning template.
provisioningTemplateSummary_description :: Lens.Lens' ProvisioningTemplateSummary (Prelude.Maybe Prelude.Text)
provisioningTemplateSummary_description = Lens.lens (\ProvisioningTemplateSummary' {description} -> description) (\s@ProvisioningTemplateSummary' {} a -> s {description = a} :: ProvisioningTemplateSummary)

-- | True if the fleet provision template is enabled, otherwise false.
provisioningTemplateSummary_enabled :: Lens.Lens' ProvisioningTemplateSummary (Prelude.Maybe Prelude.Bool)
provisioningTemplateSummary_enabled = Lens.lens (\ProvisioningTemplateSummary' {enabled} -> enabled) (\s@ProvisioningTemplateSummary' {} a -> s {enabled = a} :: ProvisioningTemplateSummary)

-- | The ARN of the provisioning template.
provisioningTemplateSummary_templateArn :: Lens.Lens' ProvisioningTemplateSummary (Prelude.Maybe Prelude.Text)
provisioningTemplateSummary_templateArn = Lens.lens (\ProvisioningTemplateSummary' {templateArn} -> templateArn) (\s@ProvisioningTemplateSummary' {} a -> s {templateArn = a} :: ProvisioningTemplateSummary)

instance Core.FromJSON ProvisioningTemplateSummary where
  parseJSON =
    Core.withObject
      "ProvisioningTemplateSummary"
      ( \x ->
          ProvisioningTemplateSummary'
            Prelude.<$> (x Core..:? "templateName")
            Prelude.<*> (x Core..:? "type")
            Prelude.<*> (x Core..:? "lastModifiedDate")
            Prelude.<*> (x Core..:? "creationDate")
            Prelude.<*> (x Core..:? "description")
            Prelude.<*> (x Core..:? "enabled")
            Prelude.<*> (x Core..:? "templateArn")
      )

instance Prelude.Hashable ProvisioningTemplateSummary where
  hashWithSalt _salt ProvisioningTemplateSummary' {..} =
    _salt `Prelude.hashWithSalt` templateName
      `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` lastModifiedDate
      `Prelude.hashWithSalt` creationDate
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` enabled
      `Prelude.hashWithSalt` templateArn

instance Prelude.NFData ProvisioningTemplateSummary where
  rnf ProvisioningTemplateSummary' {..} =
    Prelude.rnf templateName
      `Prelude.seq` Prelude.rnf type'
      `Prelude.seq` Prelude.rnf lastModifiedDate
      `Prelude.seq` Prelude.rnf creationDate
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf enabled
      `Prelude.seq` Prelude.rnf templateArn
