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
-- Module      : Amazonka.DeviceFarm.CreateTestGridUrl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a signed, short-term URL that can be passed to a Selenium
-- @RemoteWebDriver@ constructor.
module Amazonka.DeviceFarm.CreateTestGridUrl
  ( -- * Creating a Request
    CreateTestGridUrl (..),
    newCreateTestGridUrl,

    -- * Request Lenses
    createTestGridUrl_projectArn,
    createTestGridUrl_expiresInSeconds,

    -- * Destructuring the Response
    CreateTestGridUrlResponse (..),
    newCreateTestGridUrlResponse,

    -- * Response Lenses
    createTestGridUrlResponse_url,
    createTestGridUrlResponse_expires,
    createTestGridUrlResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.DeviceFarm.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateTestGridUrl' smart constructor.
data CreateTestGridUrl = CreateTestGridUrl'
  { -- | ARN (from CreateTestGridProject or ListTestGridProjects) to associate
    -- with the short-term URL.
    projectArn :: Prelude.Text,
    -- | Lifetime, in seconds, of the URL.
    expiresInSeconds :: Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateTestGridUrl' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'projectArn', 'createTestGridUrl_projectArn' - ARN (from CreateTestGridProject or ListTestGridProjects) to associate
-- with the short-term URL.
--
-- 'expiresInSeconds', 'createTestGridUrl_expiresInSeconds' - Lifetime, in seconds, of the URL.
newCreateTestGridUrl ::
  -- | 'projectArn'
  Prelude.Text ->
  -- | 'expiresInSeconds'
  Prelude.Natural ->
  CreateTestGridUrl
newCreateTestGridUrl pProjectArn_ pExpiresInSeconds_ =
  CreateTestGridUrl'
    { projectArn = pProjectArn_,
      expiresInSeconds = pExpiresInSeconds_
    }

-- | ARN (from CreateTestGridProject or ListTestGridProjects) to associate
-- with the short-term URL.
createTestGridUrl_projectArn :: Lens.Lens' CreateTestGridUrl Prelude.Text
createTestGridUrl_projectArn = Lens.lens (\CreateTestGridUrl' {projectArn} -> projectArn) (\s@CreateTestGridUrl' {} a -> s {projectArn = a} :: CreateTestGridUrl)

-- | Lifetime, in seconds, of the URL.
createTestGridUrl_expiresInSeconds :: Lens.Lens' CreateTestGridUrl Prelude.Natural
createTestGridUrl_expiresInSeconds = Lens.lens (\CreateTestGridUrl' {expiresInSeconds} -> expiresInSeconds) (\s@CreateTestGridUrl' {} a -> s {expiresInSeconds = a} :: CreateTestGridUrl)

instance Core.AWSRequest CreateTestGridUrl where
  type
    AWSResponse CreateTestGridUrl =
      CreateTestGridUrlResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateTestGridUrlResponse'
            Prelude.<$> (x Core..?> "url")
            Prelude.<*> (x Core..?> "expires")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateTestGridUrl where
  hashWithSalt _salt CreateTestGridUrl' {..} =
    _salt `Prelude.hashWithSalt` projectArn
      `Prelude.hashWithSalt` expiresInSeconds

instance Prelude.NFData CreateTestGridUrl where
  rnf CreateTestGridUrl' {..} =
    Prelude.rnf projectArn
      `Prelude.seq` Prelude.rnf expiresInSeconds

instance Core.ToHeaders CreateTestGridUrl where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "DeviceFarm_20150623.CreateTestGridUrl" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateTestGridUrl where
  toJSON CreateTestGridUrl' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("projectArn" Core..= projectArn),
            Prelude.Just
              ("expiresInSeconds" Core..= expiresInSeconds)
          ]
      )

instance Core.ToPath CreateTestGridUrl where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateTestGridUrl where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateTestGridUrlResponse' smart constructor.
data CreateTestGridUrlResponse = CreateTestGridUrlResponse'
  { -- | A signed URL, expiring in CreateTestGridUrlRequest$expiresInSeconds
    -- seconds, to be passed to a @RemoteWebDriver@.
    url :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The number of seconds the URL from CreateTestGridUrlResult$url stays
    -- active.
    expires :: Prelude.Maybe Core.POSIX,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateTestGridUrlResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'url', 'createTestGridUrlResponse_url' - A signed URL, expiring in CreateTestGridUrlRequest$expiresInSeconds
-- seconds, to be passed to a @RemoteWebDriver@.
--
-- 'expires', 'createTestGridUrlResponse_expires' - The number of seconds the URL from CreateTestGridUrlResult$url stays
-- active.
--
-- 'httpStatus', 'createTestGridUrlResponse_httpStatus' - The response's http status code.
newCreateTestGridUrlResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateTestGridUrlResponse
newCreateTestGridUrlResponse pHttpStatus_ =
  CreateTestGridUrlResponse'
    { url = Prelude.Nothing,
      expires = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A signed URL, expiring in CreateTestGridUrlRequest$expiresInSeconds
-- seconds, to be passed to a @RemoteWebDriver@.
createTestGridUrlResponse_url :: Lens.Lens' CreateTestGridUrlResponse (Prelude.Maybe Prelude.Text)
createTestGridUrlResponse_url = Lens.lens (\CreateTestGridUrlResponse' {url} -> url) (\s@CreateTestGridUrlResponse' {} a -> s {url = a} :: CreateTestGridUrlResponse) Prelude.. Lens.mapping Core._Sensitive

-- | The number of seconds the URL from CreateTestGridUrlResult$url stays
-- active.
createTestGridUrlResponse_expires :: Lens.Lens' CreateTestGridUrlResponse (Prelude.Maybe Prelude.UTCTime)
createTestGridUrlResponse_expires = Lens.lens (\CreateTestGridUrlResponse' {expires} -> expires) (\s@CreateTestGridUrlResponse' {} a -> s {expires = a} :: CreateTestGridUrlResponse) Prelude.. Lens.mapping Core._Time

-- | The response's http status code.
createTestGridUrlResponse_httpStatus :: Lens.Lens' CreateTestGridUrlResponse Prelude.Int
createTestGridUrlResponse_httpStatus = Lens.lens (\CreateTestGridUrlResponse' {httpStatus} -> httpStatus) (\s@CreateTestGridUrlResponse' {} a -> s {httpStatus = a} :: CreateTestGridUrlResponse)

instance Prelude.NFData CreateTestGridUrlResponse where
  rnf CreateTestGridUrlResponse' {..} =
    Prelude.rnf url
      `Prelude.seq` Prelude.rnf expires
      `Prelude.seq` Prelude.rnf httpStatus
