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
-- Module      : Amazonka.DevOpsGuru.Types.TagHealth
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DevOpsGuru.Types.TagHealth where

import qualified Amazonka.Core as Core
import Amazonka.DevOpsGuru.Types.InsightHealth
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Information about the health of Amazon Web Services resources in your
-- account that are specified by an Amazon Web Services tag /key/.
--
-- /See:/ 'newTagHealth' smart constructor.
data TagHealth = TagHealth'
  { -- | Information about the health of the Amazon Web Services resources in
    -- your account that are specified by an Amazon Web Services tag, including
    -- the number of open proactive, open reactive insights, and the Mean Time
    -- to Recover (MTTR) of closed insights.
    insight :: Prelude.Maybe InsightHealth,
    -- | The value in an Amazon Web Services tag.
    --
    -- The tag\'s /value/ is an optional field used to associate a string with
    -- the tag /key/ (for example, @111122223333@, @Production@, or a team
    -- name). The /key/ and /value/ are the tag\'s /key/ pair. Omitting the tag
    -- /value/ is the same as using an empty string. Like tag /keys/, tag
    -- /values/ are case-sensitive. You can specify a maximum of 256 characters
    -- for a tag value.
    tagValue :: Prelude.Maybe Prelude.Text,
    -- | An Amazon Web Services tag /key/ that is used to identify the Amazon Web
    -- Services resources that DevOps Guru analyzes. All Amazon Web Services
    -- resources in your account and Region tagged with this /key/ make up your
    -- DevOps Guru application and analysis boundary.
    --
    -- The string used for a /key/ in a tag that you use to define your
    -- resource coverage must begin with the prefix @Devops-guru-@. The tag
    -- /key/ might be @Devops-guru-deployment-application@ or
    -- @Devops-guru-rds-application@. While /keys/ are case-sensitive, the case
    -- of /key/ characters don\'t matter to DevOps Guru. For example, DevOps
    -- Guru works with a /key/ named @devops-guru-rds@ and a /key/ named
    -- @DevOps-Guru-RDS@. Possible /key/\//value/ pairs in your application
    -- might be @Devops-Guru-production-application\/RDS@ or
    -- @Devops-Guru-production-application\/containers@.
    appBoundaryKey :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TagHealth' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'insight', 'tagHealth_insight' - Information about the health of the Amazon Web Services resources in
-- your account that are specified by an Amazon Web Services tag, including
-- the number of open proactive, open reactive insights, and the Mean Time
-- to Recover (MTTR) of closed insights.
--
-- 'tagValue', 'tagHealth_tagValue' - The value in an Amazon Web Services tag.
--
-- The tag\'s /value/ is an optional field used to associate a string with
-- the tag /key/ (for example, @111122223333@, @Production@, or a team
-- name). The /key/ and /value/ are the tag\'s /key/ pair. Omitting the tag
-- /value/ is the same as using an empty string. Like tag /keys/, tag
-- /values/ are case-sensitive. You can specify a maximum of 256 characters
-- for a tag value.
--
-- 'appBoundaryKey', 'tagHealth_appBoundaryKey' - An Amazon Web Services tag /key/ that is used to identify the Amazon Web
-- Services resources that DevOps Guru analyzes. All Amazon Web Services
-- resources in your account and Region tagged with this /key/ make up your
-- DevOps Guru application and analysis boundary.
--
-- The string used for a /key/ in a tag that you use to define your
-- resource coverage must begin with the prefix @Devops-guru-@. The tag
-- /key/ might be @Devops-guru-deployment-application@ or
-- @Devops-guru-rds-application@. While /keys/ are case-sensitive, the case
-- of /key/ characters don\'t matter to DevOps Guru. For example, DevOps
-- Guru works with a /key/ named @devops-guru-rds@ and a /key/ named
-- @DevOps-Guru-RDS@. Possible /key/\//value/ pairs in your application
-- might be @Devops-Guru-production-application\/RDS@ or
-- @Devops-Guru-production-application\/containers@.
newTagHealth ::
  TagHealth
newTagHealth =
  TagHealth'
    { insight = Prelude.Nothing,
      tagValue = Prelude.Nothing,
      appBoundaryKey = Prelude.Nothing
    }

-- | Information about the health of the Amazon Web Services resources in
-- your account that are specified by an Amazon Web Services tag, including
-- the number of open proactive, open reactive insights, and the Mean Time
-- to Recover (MTTR) of closed insights.
tagHealth_insight :: Lens.Lens' TagHealth (Prelude.Maybe InsightHealth)
tagHealth_insight = Lens.lens (\TagHealth' {insight} -> insight) (\s@TagHealth' {} a -> s {insight = a} :: TagHealth)

-- | The value in an Amazon Web Services tag.
--
-- The tag\'s /value/ is an optional field used to associate a string with
-- the tag /key/ (for example, @111122223333@, @Production@, or a team
-- name). The /key/ and /value/ are the tag\'s /key/ pair. Omitting the tag
-- /value/ is the same as using an empty string. Like tag /keys/, tag
-- /values/ are case-sensitive. You can specify a maximum of 256 characters
-- for a tag value.
tagHealth_tagValue :: Lens.Lens' TagHealth (Prelude.Maybe Prelude.Text)
tagHealth_tagValue = Lens.lens (\TagHealth' {tagValue} -> tagValue) (\s@TagHealth' {} a -> s {tagValue = a} :: TagHealth)

-- | An Amazon Web Services tag /key/ that is used to identify the Amazon Web
-- Services resources that DevOps Guru analyzes. All Amazon Web Services
-- resources in your account and Region tagged with this /key/ make up your
-- DevOps Guru application and analysis boundary.
--
-- The string used for a /key/ in a tag that you use to define your
-- resource coverage must begin with the prefix @Devops-guru-@. The tag
-- /key/ might be @Devops-guru-deployment-application@ or
-- @Devops-guru-rds-application@. While /keys/ are case-sensitive, the case
-- of /key/ characters don\'t matter to DevOps Guru. For example, DevOps
-- Guru works with a /key/ named @devops-guru-rds@ and a /key/ named
-- @DevOps-Guru-RDS@. Possible /key/\//value/ pairs in your application
-- might be @Devops-Guru-production-application\/RDS@ or
-- @Devops-Guru-production-application\/containers@.
tagHealth_appBoundaryKey :: Lens.Lens' TagHealth (Prelude.Maybe Prelude.Text)
tagHealth_appBoundaryKey = Lens.lens (\TagHealth' {appBoundaryKey} -> appBoundaryKey) (\s@TagHealth' {} a -> s {appBoundaryKey = a} :: TagHealth)

instance Core.FromJSON TagHealth where
  parseJSON =
    Core.withObject
      "TagHealth"
      ( \x ->
          TagHealth'
            Prelude.<$> (x Core..:? "Insight")
            Prelude.<*> (x Core..:? "TagValue")
            Prelude.<*> (x Core..:? "AppBoundaryKey")
      )

instance Prelude.Hashable TagHealth where
  hashWithSalt _salt TagHealth' {..} =
    _salt `Prelude.hashWithSalt` insight
      `Prelude.hashWithSalt` tagValue
      `Prelude.hashWithSalt` appBoundaryKey

instance Prelude.NFData TagHealth where
  rnf TagHealth' {..} =
    Prelude.rnf insight
      `Prelude.seq` Prelude.rnf tagValue
      `Prelude.seq` Prelude.rnf appBoundaryKey
