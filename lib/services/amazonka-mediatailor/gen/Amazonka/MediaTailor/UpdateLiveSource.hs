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
-- Module      : Amazonka.MediaTailor.UpdateLiveSource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a specific live source in a specific source location.
module Amazonka.MediaTailor.UpdateLiveSource
  ( -- * Creating a Request
    UpdateLiveSource (..),
    newUpdateLiveSource,

    -- * Request Lenses
    updateLiveSource_sourceLocationName,
    updateLiveSource_liveSourceName,
    updateLiveSource_httpPackageConfigurations,

    -- * Destructuring the Response
    UpdateLiveSourceResponse (..),
    newUpdateLiveSourceResponse,

    -- * Response Lenses
    updateLiveSourceResponse_tags,
    updateLiveSourceResponse_liveSourceName,
    updateLiveSourceResponse_arn,
    updateLiveSourceResponse_lastModifiedTime,
    updateLiveSourceResponse_creationTime,
    updateLiveSourceResponse_sourceLocationName,
    updateLiveSourceResponse_httpPackageConfigurations,
    updateLiveSourceResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MediaTailor.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateLiveSource' smart constructor.
data UpdateLiveSource = UpdateLiveSource'
  { -- | The identifier for the source location you are working on.
    sourceLocationName :: Prelude.Text,
    -- | The identifier for the live source you are working on.
    liveSourceName :: Prelude.Text,
    -- | A list of HTTP package configurations for the live source on this
    -- account.
    httpPackageConfigurations :: [HttpPackageConfiguration]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateLiveSource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sourceLocationName', 'updateLiveSource_sourceLocationName' - The identifier for the source location you are working on.
--
-- 'liveSourceName', 'updateLiveSource_liveSourceName' - The identifier for the live source you are working on.
--
-- 'httpPackageConfigurations', 'updateLiveSource_httpPackageConfigurations' - A list of HTTP package configurations for the live source on this
-- account.
newUpdateLiveSource ::
  -- | 'sourceLocationName'
  Prelude.Text ->
  -- | 'liveSourceName'
  Prelude.Text ->
  UpdateLiveSource
newUpdateLiveSource
  pSourceLocationName_
  pLiveSourceName_ =
    UpdateLiveSource'
      { sourceLocationName =
          pSourceLocationName_,
        liveSourceName = pLiveSourceName_,
        httpPackageConfigurations = Prelude.mempty
      }

-- | The identifier for the source location you are working on.
updateLiveSource_sourceLocationName :: Lens.Lens' UpdateLiveSource Prelude.Text
updateLiveSource_sourceLocationName = Lens.lens (\UpdateLiveSource' {sourceLocationName} -> sourceLocationName) (\s@UpdateLiveSource' {} a -> s {sourceLocationName = a} :: UpdateLiveSource)

-- | The identifier for the live source you are working on.
updateLiveSource_liveSourceName :: Lens.Lens' UpdateLiveSource Prelude.Text
updateLiveSource_liveSourceName = Lens.lens (\UpdateLiveSource' {liveSourceName} -> liveSourceName) (\s@UpdateLiveSource' {} a -> s {liveSourceName = a} :: UpdateLiveSource)

-- | A list of HTTP package configurations for the live source on this
-- account.
updateLiveSource_httpPackageConfigurations :: Lens.Lens' UpdateLiveSource [HttpPackageConfiguration]
updateLiveSource_httpPackageConfigurations = Lens.lens (\UpdateLiveSource' {httpPackageConfigurations} -> httpPackageConfigurations) (\s@UpdateLiveSource' {} a -> s {httpPackageConfigurations = a} :: UpdateLiveSource) Prelude.. Lens.coerced

instance Core.AWSRequest UpdateLiveSource where
  type
    AWSResponse UpdateLiveSource =
      UpdateLiveSourceResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateLiveSourceResponse'
            Prelude.<$> (x Core..?> "tags" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "LiveSourceName")
            Prelude.<*> (x Core..?> "Arn")
            Prelude.<*> (x Core..?> "LastModifiedTime")
            Prelude.<*> (x Core..?> "CreationTime")
            Prelude.<*> (x Core..?> "SourceLocationName")
            Prelude.<*> ( x Core..?> "HttpPackageConfigurations"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateLiveSource where
  hashWithSalt _salt UpdateLiveSource' {..} =
    _salt `Prelude.hashWithSalt` sourceLocationName
      `Prelude.hashWithSalt` liveSourceName
      `Prelude.hashWithSalt` httpPackageConfigurations

instance Prelude.NFData UpdateLiveSource where
  rnf UpdateLiveSource' {..} =
    Prelude.rnf sourceLocationName
      `Prelude.seq` Prelude.rnf liveSourceName
      `Prelude.seq` Prelude.rnf httpPackageConfigurations

instance Core.ToHeaders UpdateLiveSource where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateLiveSource where
  toJSON UpdateLiveSource' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ( "HttpPackageConfigurations"
                  Core..= httpPackageConfigurations
              )
          ]
      )

instance Core.ToPath UpdateLiveSource where
  toPath UpdateLiveSource' {..} =
    Prelude.mconcat
      [ "/sourceLocation/",
        Core.toBS sourceLocationName,
        "/liveSource/",
        Core.toBS liveSourceName
      ]

instance Core.ToQuery UpdateLiveSource where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateLiveSourceResponse' smart constructor.
data UpdateLiveSourceResponse = UpdateLiveSourceResponse'
  { -- | The tags assigned to the live source.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The name of the live source.
    liveSourceName :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the live source.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The timestamp that indicates when the live source was modified.
    lastModifiedTime :: Prelude.Maybe Core.POSIX,
    -- | The timestamp that indicates when the live source was created.
    creationTime :: Prelude.Maybe Core.POSIX,
    -- | The name of the source location associated with the VOD source.
    sourceLocationName :: Prelude.Maybe Prelude.Text,
    -- | The HTTP package configurations.
    httpPackageConfigurations :: Prelude.Maybe [HttpPackageConfiguration],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateLiveSourceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'updateLiveSourceResponse_tags' - The tags assigned to the live source.
--
-- 'liveSourceName', 'updateLiveSourceResponse_liveSourceName' - The name of the live source.
--
-- 'arn', 'updateLiveSourceResponse_arn' - The ARN of the live source.
--
-- 'lastModifiedTime', 'updateLiveSourceResponse_lastModifiedTime' - The timestamp that indicates when the live source was modified.
--
-- 'creationTime', 'updateLiveSourceResponse_creationTime' - The timestamp that indicates when the live source was created.
--
-- 'sourceLocationName', 'updateLiveSourceResponse_sourceLocationName' - The name of the source location associated with the VOD source.
--
-- 'httpPackageConfigurations', 'updateLiveSourceResponse_httpPackageConfigurations' - The HTTP package configurations.
--
-- 'httpStatus', 'updateLiveSourceResponse_httpStatus' - The response's http status code.
newUpdateLiveSourceResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateLiveSourceResponse
newUpdateLiveSourceResponse pHttpStatus_ =
  UpdateLiveSourceResponse'
    { tags = Prelude.Nothing,
      liveSourceName = Prelude.Nothing,
      arn = Prelude.Nothing,
      lastModifiedTime = Prelude.Nothing,
      creationTime = Prelude.Nothing,
      sourceLocationName = Prelude.Nothing,
      httpPackageConfigurations = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The tags assigned to the live source.
updateLiveSourceResponse_tags :: Lens.Lens' UpdateLiveSourceResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
updateLiveSourceResponse_tags = Lens.lens (\UpdateLiveSourceResponse' {tags} -> tags) (\s@UpdateLiveSourceResponse' {} a -> s {tags = a} :: UpdateLiveSourceResponse) Prelude.. Lens.mapping Lens.coerced

-- | The name of the live source.
updateLiveSourceResponse_liveSourceName :: Lens.Lens' UpdateLiveSourceResponse (Prelude.Maybe Prelude.Text)
updateLiveSourceResponse_liveSourceName = Lens.lens (\UpdateLiveSourceResponse' {liveSourceName} -> liveSourceName) (\s@UpdateLiveSourceResponse' {} a -> s {liveSourceName = a} :: UpdateLiveSourceResponse)

-- | The ARN of the live source.
updateLiveSourceResponse_arn :: Lens.Lens' UpdateLiveSourceResponse (Prelude.Maybe Prelude.Text)
updateLiveSourceResponse_arn = Lens.lens (\UpdateLiveSourceResponse' {arn} -> arn) (\s@UpdateLiveSourceResponse' {} a -> s {arn = a} :: UpdateLiveSourceResponse)

-- | The timestamp that indicates when the live source was modified.
updateLiveSourceResponse_lastModifiedTime :: Lens.Lens' UpdateLiveSourceResponse (Prelude.Maybe Prelude.UTCTime)
updateLiveSourceResponse_lastModifiedTime = Lens.lens (\UpdateLiveSourceResponse' {lastModifiedTime} -> lastModifiedTime) (\s@UpdateLiveSourceResponse' {} a -> s {lastModifiedTime = a} :: UpdateLiveSourceResponse) Prelude.. Lens.mapping Core._Time

-- | The timestamp that indicates when the live source was created.
updateLiveSourceResponse_creationTime :: Lens.Lens' UpdateLiveSourceResponse (Prelude.Maybe Prelude.UTCTime)
updateLiveSourceResponse_creationTime = Lens.lens (\UpdateLiveSourceResponse' {creationTime} -> creationTime) (\s@UpdateLiveSourceResponse' {} a -> s {creationTime = a} :: UpdateLiveSourceResponse) Prelude.. Lens.mapping Core._Time

-- | The name of the source location associated with the VOD source.
updateLiveSourceResponse_sourceLocationName :: Lens.Lens' UpdateLiveSourceResponse (Prelude.Maybe Prelude.Text)
updateLiveSourceResponse_sourceLocationName = Lens.lens (\UpdateLiveSourceResponse' {sourceLocationName} -> sourceLocationName) (\s@UpdateLiveSourceResponse' {} a -> s {sourceLocationName = a} :: UpdateLiveSourceResponse)

-- | The HTTP package configurations.
updateLiveSourceResponse_httpPackageConfigurations :: Lens.Lens' UpdateLiveSourceResponse (Prelude.Maybe [HttpPackageConfiguration])
updateLiveSourceResponse_httpPackageConfigurations = Lens.lens (\UpdateLiveSourceResponse' {httpPackageConfigurations} -> httpPackageConfigurations) (\s@UpdateLiveSourceResponse' {} a -> s {httpPackageConfigurations = a} :: UpdateLiveSourceResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
updateLiveSourceResponse_httpStatus :: Lens.Lens' UpdateLiveSourceResponse Prelude.Int
updateLiveSourceResponse_httpStatus = Lens.lens (\UpdateLiveSourceResponse' {httpStatus} -> httpStatus) (\s@UpdateLiveSourceResponse' {} a -> s {httpStatus = a} :: UpdateLiveSourceResponse)

instance Prelude.NFData UpdateLiveSourceResponse where
  rnf UpdateLiveSourceResponse' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf liveSourceName
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf lastModifiedTime
      `Prelude.seq` Prelude.rnf creationTime
      `Prelude.seq` Prelude.rnf sourceLocationName
      `Prelude.seq` Prelude.rnf httpPackageConfigurations
      `Prelude.seq` Prelude.rnf httpStatus
