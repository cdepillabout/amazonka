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
-- Module      : Amazonka.Personalize.StartRecommender
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts a recommender that is INACTIVE. Starting a recommender does not
-- create any new models, but resumes billing and automatic retraining for
-- the recommender.
module Amazonka.Personalize.StartRecommender
  ( -- * Creating a Request
    StartRecommender (..),
    newStartRecommender,

    -- * Request Lenses
    startRecommender_recommenderArn,

    -- * Destructuring the Response
    StartRecommenderResponse (..),
    newStartRecommenderResponse,

    -- * Response Lenses
    startRecommenderResponse_recommenderArn,
    startRecommenderResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.Personalize.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newStartRecommender' smart constructor.
data StartRecommender = StartRecommender'
  { -- | The Amazon Resource Name (ARN) of the recommender to start.
    recommenderArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StartRecommender' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'recommenderArn', 'startRecommender_recommenderArn' - The Amazon Resource Name (ARN) of the recommender to start.
newStartRecommender ::
  -- | 'recommenderArn'
  Prelude.Text ->
  StartRecommender
newStartRecommender pRecommenderArn_ =
  StartRecommender'
    { recommenderArn =
        pRecommenderArn_
    }

-- | The Amazon Resource Name (ARN) of the recommender to start.
startRecommender_recommenderArn :: Lens.Lens' StartRecommender Prelude.Text
startRecommender_recommenderArn = Lens.lens (\StartRecommender' {recommenderArn} -> recommenderArn) (\s@StartRecommender' {} a -> s {recommenderArn = a} :: StartRecommender)

instance Core.AWSRequest StartRecommender where
  type
    AWSResponse StartRecommender =
      StartRecommenderResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          StartRecommenderResponse'
            Prelude.<$> (x Core..?> "recommenderArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable StartRecommender where
  hashWithSalt _salt StartRecommender' {..} =
    _salt `Prelude.hashWithSalt` recommenderArn

instance Prelude.NFData StartRecommender where
  rnf StartRecommender' {..} =
    Prelude.rnf recommenderArn

instance Core.ToHeaders StartRecommender where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonPersonalize.StartRecommender" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON StartRecommender where
  toJSON StartRecommender' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("recommenderArn" Core..= recommenderArn)
          ]
      )

instance Core.ToPath StartRecommender where
  toPath = Prelude.const "/"

instance Core.ToQuery StartRecommender where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newStartRecommenderResponse' smart constructor.
data StartRecommenderResponse = StartRecommenderResponse'
  { -- | The Amazon Resource Name (ARN) of the recommender you started.
    recommenderArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StartRecommenderResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'recommenderArn', 'startRecommenderResponse_recommenderArn' - The Amazon Resource Name (ARN) of the recommender you started.
--
-- 'httpStatus', 'startRecommenderResponse_httpStatus' - The response's http status code.
newStartRecommenderResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  StartRecommenderResponse
newStartRecommenderResponse pHttpStatus_ =
  StartRecommenderResponse'
    { recommenderArn =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The Amazon Resource Name (ARN) of the recommender you started.
startRecommenderResponse_recommenderArn :: Lens.Lens' StartRecommenderResponse (Prelude.Maybe Prelude.Text)
startRecommenderResponse_recommenderArn = Lens.lens (\StartRecommenderResponse' {recommenderArn} -> recommenderArn) (\s@StartRecommenderResponse' {} a -> s {recommenderArn = a} :: StartRecommenderResponse)

-- | The response's http status code.
startRecommenderResponse_httpStatus :: Lens.Lens' StartRecommenderResponse Prelude.Int
startRecommenderResponse_httpStatus = Lens.lens (\StartRecommenderResponse' {httpStatus} -> httpStatus) (\s@StartRecommenderResponse' {} a -> s {httpStatus = a} :: StartRecommenderResponse)

instance Prelude.NFData StartRecommenderResponse where
  rnf StartRecommenderResponse' {..} =
    Prelude.rnf recommenderArn
      `Prelude.seq` Prelude.rnf httpStatus
