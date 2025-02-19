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
-- Module      : Amazonka.Shield.DescribeDRTAccess
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the current role and list of Amazon S3 log buckets used by the
-- Shield Response Team (SRT) to access your Amazon Web Services account
-- while assisting with attack mitigation.
module Amazonka.Shield.DescribeDRTAccess
  ( -- * Creating a Request
    DescribeDRTAccess (..),
    newDescribeDRTAccess,

    -- * Destructuring the Response
    DescribeDRTAccessResponse (..),
    newDescribeDRTAccessResponse,

    -- * Response Lenses
    describeDRTAccessResponse_roleArn,
    describeDRTAccessResponse_logBucketList,
    describeDRTAccessResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.Shield.Types

-- | /See:/ 'newDescribeDRTAccess' smart constructor.
data DescribeDRTAccess = DescribeDRTAccess'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeDRTAccess' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDescribeDRTAccess ::
  DescribeDRTAccess
newDescribeDRTAccess = DescribeDRTAccess'

instance Core.AWSRequest DescribeDRTAccess where
  type
    AWSResponse DescribeDRTAccess =
      DescribeDRTAccessResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeDRTAccessResponse'
            Prelude.<$> (x Core..?> "RoleArn")
            Prelude.<*> (x Core..?> "LogBucketList" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeDRTAccess where
  hashWithSalt _salt _ =
    _salt `Prelude.hashWithSalt` ()

instance Prelude.NFData DescribeDRTAccess where
  rnf _ = ()

instance Core.ToHeaders DescribeDRTAccess where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSShield_20160616.DescribeDRTAccess" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeDRTAccess where
  toJSON = Prelude.const (Core.Object Prelude.mempty)

instance Core.ToPath DescribeDRTAccess where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeDRTAccess where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeDRTAccessResponse' smart constructor.
data DescribeDRTAccessResponse = DescribeDRTAccessResponse'
  { -- | The Amazon Resource Name (ARN) of the role the SRT used to access your
    -- Amazon Web Services account.
    roleArn :: Prelude.Maybe Prelude.Text,
    -- | The list of Amazon S3 buckets accessed by the SRT.
    logBucketList :: Prelude.Maybe [Prelude.Text],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeDRTAccessResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'roleArn', 'describeDRTAccessResponse_roleArn' - The Amazon Resource Name (ARN) of the role the SRT used to access your
-- Amazon Web Services account.
--
-- 'logBucketList', 'describeDRTAccessResponse_logBucketList' - The list of Amazon S3 buckets accessed by the SRT.
--
-- 'httpStatus', 'describeDRTAccessResponse_httpStatus' - The response's http status code.
newDescribeDRTAccessResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeDRTAccessResponse
newDescribeDRTAccessResponse pHttpStatus_ =
  DescribeDRTAccessResponse'
    { roleArn =
        Prelude.Nothing,
      logBucketList = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The Amazon Resource Name (ARN) of the role the SRT used to access your
-- Amazon Web Services account.
describeDRTAccessResponse_roleArn :: Lens.Lens' DescribeDRTAccessResponse (Prelude.Maybe Prelude.Text)
describeDRTAccessResponse_roleArn = Lens.lens (\DescribeDRTAccessResponse' {roleArn} -> roleArn) (\s@DescribeDRTAccessResponse' {} a -> s {roleArn = a} :: DescribeDRTAccessResponse)

-- | The list of Amazon S3 buckets accessed by the SRT.
describeDRTAccessResponse_logBucketList :: Lens.Lens' DescribeDRTAccessResponse (Prelude.Maybe [Prelude.Text])
describeDRTAccessResponse_logBucketList = Lens.lens (\DescribeDRTAccessResponse' {logBucketList} -> logBucketList) (\s@DescribeDRTAccessResponse' {} a -> s {logBucketList = a} :: DescribeDRTAccessResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeDRTAccessResponse_httpStatus :: Lens.Lens' DescribeDRTAccessResponse Prelude.Int
describeDRTAccessResponse_httpStatus = Lens.lens (\DescribeDRTAccessResponse' {httpStatus} -> httpStatus) (\s@DescribeDRTAccessResponse' {} a -> s {httpStatus = a} :: DescribeDRTAccessResponse)

instance Prelude.NFData DescribeDRTAccessResponse where
  rnf DescribeDRTAccessResponse' {..} =
    Prelude.rnf roleArn
      `Prelude.seq` Prelude.rnf logBucketList
      `Prelude.seq` Prelude.rnf httpStatus
