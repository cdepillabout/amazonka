{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.Glue.UpdateCrawler
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a crawler. If a crawler is running, you must stop it using
-- @StopCrawler@ before updating it.
module Amazonka.Glue.UpdateCrawler
  ( -- * Creating a Request
    UpdateCrawler (..),
    newUpdateCrawler,

    -- * Request Lenses
    updateCrawler_schedule,
    updateCrawler_recrawlPolicy,
    updateCrawler_classifiers,
    updateCrawler_schemaChangePolicy,
    updateCrawler_databaseName,
    updateCrawler_configuration,
    updateCrawler_tablePrefix,
    updateCrawler_targets,
    updateCrawler_description,
    updateCrawler_lineageConfiguration,
    updateCrawler_role,
    updateCrawler_crawlerSecurityConfiguration,
    updateCrawler_lakeFormationConfiguration,
    updateCrawler_name,

    -- * Destructuring the Response
    UpdateCrawlerResponse (..),
    newUpdateCrawlerResponse,

    -- * Response Lenses
    updateCrawlerResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.Glue.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateCrawler' smart constructor.
data UpdateCrawler = UpdateCrawler'
  { -- | A @cron@ expression used to specify the schedule (see
    -- <https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html Time-Based Schedules for Jobs and Crawlers>.
    -- For example, to run something every day at 12:15 UTC, you would specify:
    -- @cron(15 12 * * ? *)@.
    schedule :: Prelude.Maybe Prelude.Text,
    -- | A policy that specifies whether to crawl the entire dataset again, or to
    -- crawl only folders that were added since the last crawler run.
    recrawlPolicy :: Prelude.Maybe RecrawlPolicy,
    -- | A list of custom classifiers that the user has registered. By default,
    -- all built-in classifiers are included in a crawl, but these custom
    -- classifiers always override the default classifiers for a given
    -- classification.
    classifiers :: Prelude.Maybe [Prelude.Text],
    -- | The policy for the crawler\'s update and deletion behavior.
    schemaChangePolicy :: Prelude.Maybe SchemaChangePolicy,
    -- | The Glue database where results are stored, such as:
    -- @arn:aws:daylight:us-east-1::database\/sometable\/*@.
    databaseName :: Prelude.Maybe Prelude.Text,
    -- | Crawler configuration information. This versioned JSON string allows
    -- users to specify aspects of a crawler\'s behavior. For more information,
    -- see
    -- <https://docs.aws.amazon.com/glue/latest/dg/crawler-configuration.html Configuring a Crawler>.
    configuration :: Prelude.Maybe Prelude.Text,
    -- | The table prefix used for catalog tables that are created.
    tablePrefix :: Prelude.Maybe Prelude.Text,
    -- | A list of targets to crawl.
    targets :: Prelude.Maybe CrawlerTargets,
    -- | A description of the new crawler.
    description :: Prelude.Maybe Prelude.Text,
    -- | Specifies data lineage configuration settings for the crawler.
    lineageConfiguration :: Prelude.Maybe LineageConfiguration,
    -- | The IAM role or Amazon Resource Name (ARN) of an IAM role that is used
    -- by the new crawler to access customer resources.
    role' :: Prelude.Maybe Prelude.Text,
    -- | The name of the @SecurityConfiguration@ structure to be used by this
    -- crawler.
    crawlerSecurityConfiguration :: Prelude.Maybe Prelude.Text,
    -- | Specifies Lake Formation configuration settings for the crawler.
    lakeFormationConfiguration :: Prelude.Maybe LakeFormationConfiguration,
    -- | Name of the new crawler.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateCrawler' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'schedule', 'updateCrawler_schedule' - A @cron@ expression used to specify the schedule (see
-- <https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html Time-Based Schedules for Jobs and Crawlers>.
-- For example, to run something every day at 12:15 UTC, you would specify:
-- @cron(15 12 * * ? *)@.
--
-- 'recrawlPolicy', 'updateCrawler_recrawlPolicy' - A policy that specifies whether to crawl the entire dataset again, or to
-- crawl only folders that were added since the last crawler run.
--
-- 'classifiers', 'updateCrawler_classifiers' - A list of custom classifiers that the user has registered. By default,
-- all built-in classifiers are included in a crawl, but these custom
-- classifiers always override the default classifiers for a given
-- classification.
--
-- 'schemaChangePolicy', 'updateCrawler_schemaChangePolicy' - The policy for the crawler\'s update and deletion behavior.
--
-- 'databaseName', 'updateCrawler_databaseName' - The Glue database where results are stored, such as:
-- @arn:aws:daylight:us-east-1::database\/sometable\/*@.
--
-- 'configuration', 'updateCrawler_configuration' - Crawler configuration information. This versioned JSON string allows
-- users to specify aspects of a crawler\'s behavior. For more information,
-- see
-- <https://docs.aws.amazon.com/glue/latest/dg/crawler-configuration.html Configuring a Crawler>.
--
-- 'tablePrefix', 'updateCrawler_tablePrefix' - The table prefix used for catalog tables that are created.
--
-- 'targets', 'updateCrawler_targets' - A list of targets to crawl.
--
-- 'description', 'updateCrawler_description' - A description of the new crawler.
--
-- 'lineageConfiguration', 'updateCrawler_lineageConfiguration' - Specifies data lineage configuration settings for the crawler.
--
-- 'role'', 'updateCrawler_role' - The IAM role or Amazon Resource Name (ARN) of an IAM role that is used
-- by the new crawler to access customer resources.
--
-- 'crawlerSecurityConfiguration', 'updateCrawler_crawlerSecurityConfiguration' - The name of the @SecurityConfiguration@ structure to be used by this
-- crawler.
--
-- 'lakeFormationConfiguration', 'updateCrawler_lakeFormationConfiguration' - Specifies Lake Formation configuration settings for the crawler.
--
-- 'name', 'updateCrawler_name' - Name of the new crawler.
newUpdateCrawler ::
  -- | 'name'
  Prelude.Text ->
  UpdateCrawler
newUpdateCrawler pName_ =
  UpdateCrawler'
    { schedule = Prelude.Nothing,
      recrawlPolicy = Prelude.Nothing,
      classifiers = Prelude.Nothing,
      schemaChangePolicy = Prelude.Nothing,
      databaseName = Prelude.Nothing,
      configuration = Prelude.Nothing,
      tablePrefix = Prelude.Nothing,
      targets = Prelude.Nothing,
      description = Prelude.Nothing,
      lineageConfiguration = Prelude.Nothing,
      role' = Prelude.Nothing,
      crawlerSecurityConfiguration = Prelude.Nothing,
      lakeFormationConfiguration = Prelude.Nothing,
      name = pName_
    }

-- | A @cron@ expression used to specify the schedule (see
-- <https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html Time-Based Schedules for Jobs and Crawlers>.
-- For example, to run something every day at 12:15 UTC, you would specify:
-- @cron(15 12 * * ? *)@.
updateCrawler_schedule :: Lens.Lens' UpdateCrawler (Prelude.Maybe Prelude.Text)
updateCrawler_schedule = Lens.lens (\UpdateCrawler' {schedule} -> schedule) (\s@UpdateCrawler' {} a -> s {schedule = a} :: UpdateCrawler)

-- | A policy that specifies whether to crawl the entire dataset again, or to
-- crawl only folders that were added since the last crawler run.
updateCrawler_recrawlPolicy :: Lens.Lens' UpdateCrawler (Prelude.Maybe RecrawlPolicy)
updateCrawler_recrawlPolicy = Lens.lens (\UpdateCrawler' {recrawlPolicy} -> recrawlPolicy) (\s@UpdateCrawler' {} a -> s {recrawlPolicy = a} :: UpdateCrawler)

-- | A list of custom classifiers that the user has registered. By default,
-- all built-in classifiers are included in a crawl, but these custom
-- classifiers always override the default classifiers for a given
-- classification.
updateCrawler_classifiers :: Lens.Lens' UpdateCrawler (Prelude.Maybe [Prelude.Text])
updateCrawler_classifiers = Lens.lens (\UpdateCrawler' {classifiers} -> classifiers) (\s@UpdateCrawler' {} a -> s {classifiers = a} :: UpdateCrawler) Prelude.. Lens.mapping Lens.coerced

-- | The policy for the crawler\'s update and deletion behavior.
updateCrawler_schemaChangePolicy :: Lens.Lens' UpdateCrawler (Prelude.Maybe SchemaChangePolicy)
updateCrawler_schemaChangePolicy = Lens.lens (\UpdateCrawler' {schemaChangePolicy} -> schemaChangePolicy) (\s@UpdateCrawler' {} a -> s {schemaChangePolicy = a} :: UpdateCrawler)

-- | The Glue database where results are stored, such as:
-- @arn:aws:daylight:us-east-1::database\/sometable\/*@.
updateCrawler_databaseName :: Lens.Lens' UpdateCrawler (Prelude.Maybe Prelude.Text)
updateCrawler_databaseName = Lens.lens (\UpdateCrawler' {databaseName} -> databaseName) (\s@UpdateCrawler' {} a -> s {databaseName = a} :: UpdateCrawler)

-- | Crawler configuration information. This versioned JSON string allows
-- users to specify aspects of a crawler\'s behavior. For more information,
-- see
-- <https://docs.aws.amazon.com/glue/latest/dg/crawler-configuration.html Configuring a Crawler>.
updateCrawler_configuration :: Lens.Lens' UpdateCrawler (Prelude.Maybe Prelude.Text)
updateCrawler_configuration = Lens.lens (\UpdateCrawler' {configuration} -> configuration) (\s@UpdateCrawler' {} a -> s {configuration = a} :: UpdateCrawler)

-- | The table prefix used for catalog tables that are created.
updateCrawler_tablePrefix :: Lens.Lens' UpdateCrawler (Prelude.Maybe Prelude.Text)
updateCrawler_tablePrefix = Lens.lens (\UpdateCrawler' {tablePrefix} -> tablePrefix) (\s@UpdateCrawler' {} a -> s {tablePrefix = a} :: UpdateCrawler)

-- | A list of targets to crawl.
updateCrawler_targets :: Lens.Lens' UpdateCrawler (Prelude.Maybe CrawlerTargets)
updateCrawler_targets = Lens.lens (\UpdateCrawler' {targets} -> targets) (\s@UpdateCrawler' {} a -> s {targets = a} :: UpdateCrawler)

-- | A description of the new crawler.
updateCrawler_description :: Lens.Lens' UpdateCrawler (Prelude.Maybe Prelude.Text)
updateCrawler_description = Lens.lens (\UpdateCrawler' {description} -> description) (\s@UpdateCrawler' {} a -> s {description = a} :: UpdateCrawler)

-- | Specifies data lineage configuration settings for the crawler.
updateCrawler_lineageConfiguration :: Lens.Lens' UpdateCrawler (Prelude.Maybe LineageConfiguration)
updateCrawler_lineageConfiguration = Lens.lens (\UpdateCrawler' {lineageConfiguration} -> lineageConfiguration) (\s@UpdateCrawler' {} a -> s {lineageConfiguration = a} :: UpdateCrawler)

-- | The IAM role or Amazon Resource Name (ARN) of an IAM role that is used
-- by the new crawler to access customer resources.
updateCrawler_role :: Lens.Lens' UpdateCrawler (Prelude.Maybe Prelude.Text)
updateCrawler_role = Lens.lens (\UpdateCrawler' {role'} -> role') (\s@UpdateCrawler' {} a -> s {role' = a} :: UpdateCrawler)

-- | The name of the @SecurityConfiguration@ structure to be used by this
-- crawler.
updateCrawler_crawlerSecurityConfiguration :: Lens.Lens' UpdateCrawler (Prelude.Maybe Prelude.Text)
updateCrawler_crawlerSecurityConfiguration = Lens.lens (\UpdateCrawler' {crawlerSecurityConfiguration} -> crawlerSecurityConfiguration) (\s@UpdateCrawler' {} a -> s {crawlerSecurityConfiguration = a} :: UpdateCrawler)

-- | Specifies Lake Formation configuration settings for the crawler.
updateCrawler_lakeFormationConfiguration :: Lens.Lens' UpdateCrawler (Prelude.Maybe LakeFormationConfiguration)
updateCrawler_lakeFormationConfiguration = Lens.lens (\UpdateCrawler' {lakeFormationConfiguration} -> lakeFormationConfiguration) (\s@UpdateCrawler' {} a -> s {lakeFormationConfiguration = a} :: UpdateCrawler)

-- | Name of the new crawler.
updateCrawler_name :: Lens.Lens' UpdateCrawler Prelude.Text
updateCrawler_name = Lens.lens (\UpdateCrawler' {name} -> name) (\s@UpdateCrawler' {} a -> s {name = a} :: UpdateCrawler)

instance Core.AWSRequest UpdateCrawler where
  type
    AWSResponse UpdateCrawler =
      UpdateCrawlerResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          UpdateCrawlerResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateCrawler where
  hashWithSalt _salt UpdateCrawler' {..} =
    _salt `Prelude.hashWithSalt` schedule
      `Prelude.hashWithSalt` recrawlPolicy
      `Prelude.hashWithSalt` classifiers
      `Prelude.hashWithSalt` schemaChangePolicy
      `Prelude.hashWithSalt` databaseName
      `Prelude.hashWithSalt` configuration
      `Prelude.hashWithSalt` tablePrefix
      `Prelude.hashWithSalt` targets
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` lineageConfiguration
      `Prelude.hashWithSalt` role'
      `Prelude.hashWithSalt` crawlerSecurityConfiguration
      `Prelude.hashWithSalt` lakeFormationConfiguration
      `Prelude.hashWithSalt` name

instance Prelude.NFData UpdateCrawler where
  rnf UpdateCrawler' {..} =
    Prelude.rnf schedule
      `Prelude.seq` Prelude.rnf recrawlPolicy
      `Prelude.seq` Prelude.rnf classifiers
      `Prelude.seq` Prelude.rnf schemaChangePolicy
      `Prelude.seq` Prelude.rnf databaseName
      `Prelude.seq` Prelude.rnf configuration
      `Prelude.seq` Prelude.rnf tablePrefix
      `Prelude.seq` Prelude.rnf targets
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf lineageConfiguration
      `Prelude.seq` Prelude.rnf role'
      `Prelude.seq` Prelude.rnf crawlerSecurityConfiguration
      `Prelude.seq` Prelude.rnf lakeFormationConfiguration
      `Prelude.seq` Prelude.rnf name

instance Core.ToHeaders UpdateCrawler where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ("AWSGlue.UpdateCrawler" :: Prelude.ByteString),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateCrawler where
  toJSON UpdateCrawler' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Schedule" Core..=) Prelude.<$> schedule,
            ("RecrawlPolicy" Core..=) Prelude.<$> recrawlPolicy,
            ("Classifiers" Core..=) Prelude.<$> classifiers,
            ("SchemaChangePolicy" Core..=)
              Prelude.<$> schemaChangePolicy,
            ("DatabaseName" Core..=) Prelude.<$> databaseName,
            ("Configuration" Core..=) Prelude.<$> configuration,
            ("TablePrefix" Core..=) Prelude.<$> tablePrefix,
            ("Targets" Core..=) Prelude.<$> targets,
            ("Description" Core..=) Prelude.<$> description,
            ("LineageConfiguration" Core..=)
              Prelude.<$> lineageConfiguration,
            ("Role" Core..=) Prelude.<$> role',
            ("CrawlerSecurityConfiguration" Core..=)
              Prelude.<$> crawlerSecurityConfiguration,
            ("LakeFormationConfiguration" Core..=)
              Prelude.<$> lakeFormationConfiguration,
            Prelude.Just ("Name" Core..= name)
          ]
      )

instance Core.ToPath UpdateCrawler where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateCrawler where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateCrawlerResponse' smart constructor.
data UpdateCrawlerResponse = UpdateCrawlerResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateCrawlerResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateCrawlerResponse_httpStatus' - The response's http status code.
newUpdateCrawlerResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateCrawlerResponse
newUpdateCrawlerResponse pHttpStatus_ =
  UpdateCrawlerResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
updateCrawlerResponse_httpStatus :: Lens.Lens' UpdateCrawlerResponse Prelude.Int
updateCrawlerResponse_httpStatus = Lens.lens (\UpdateCrawlerResponse' {httpStatus} -> httpStatus) (\s@UpdateCrawlerResponse' {} a -> s {httpStatus = a} :: UpdateCrawlerResponse)

instance Prelude.NFData UpdateCrawlerResponse where
  rnf UpdateCrawlerResponse' {..} =
    Prelude.rnf httpStatus
