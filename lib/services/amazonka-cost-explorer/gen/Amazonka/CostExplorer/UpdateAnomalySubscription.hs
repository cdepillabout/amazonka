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
-- Module      : Amazonka.CostExplorer.UpdateAnomalySubscription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing cost anomaly monitor subscription.
module Amazonka.CostExplorer.UpdateAnomalySubscription
  ( -- * Creating a Request
    UpdateAnomalySubscription (..),
    newUpdateAnomalySubscription,

    -- * Request Lenses
    updateAnomalySubscription_monitorArnList,
    updateAnomalySubscription_frequency,
    updateAnomalySubscription_subscriptionName,
    updateAnomalySubscription_subscribers,
    updateAnomalySubscription_threshold,
    updateAnomalySubscription_subscriptionArn,

    -- * Destructuring the Response
    UpdateAnomalySubscriptionResponse (..),
    newUpdateAnomalySubscriptionResponse,

    -- * Response Lenses
    updateAnomalySubscriptionResponse_httpStatus,
    updateAnomalySubscriptionResponse_subscriptionArn,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.CostExplorer.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateAnomalySubscription' smart constructor.
data UpdateAnomalySubscription = UpdateAnomalySubscription'
  { -- | A list of cost anomaly monitor ARNs.
    monitorArnList :: Prelude.Maybe [Prelude.Text],
    -- | The update to the frequency value that subscribers receive
    -- notifications.
    frequency :: Prelude.Maybe AnomalySubscriptionFrequency,
    -- | The new name of the subscription.
    subscriptionName :: Prelude.Maybe Prelude.Text,
    -- | The update to the subscriber list.
    subscribers :: Prelude.Maybe [Subscriber],
    -- | The update to the threshold value for receiving notifications.
    threshold :: Prelude.Maybe Prelude.Double,
    -- | A cost anomaly subscription Amazon Resource Name (ARN).
    subscriptionArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateAnomalySubscription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'monitorArnList', 'updateAnomalySubscription_monitorArnList' - A list of cost anomaly monitor ARNs.
--
-- 'frequency', 'updateAnomalySubscription_frequency' - The update to the frequency value that subscribers receive
-- notifications.
--
-- 'subscriptionName', 'updateAnomalySubscription_subscriptionName' - The new name of the subscription.
--
-- 'subscribers', 'updateAnomalySubscription_subscribers' - The update to the subscriber list.
--
-- 'threshold', 'updateAnomalySubscription_threshold' - The update to the threshold value for receiving notifications.
--
-- 'subscriptionArn', 'updateAnomalySubscription_subscriptionArn' - A cost anomaly subscription Amazon Resource Name (ARN).
newUpdateAnomalySubscription ::
  -- | 'subscriptionArn'
  Prelude.Text ->
  UpdateAnomalySubscription
newUpdateAnomalySubscription pSubscriptionArn_ =
  UpdateAnomalySubscription'
    { monitorArnList =
        Prelude.Nothing,
      frequency = Prelude.Nothing,
      subscriptionName = Prelude.Nothing,
      subscribers = Prelude.Nothing,
      threshold = Prelude.Nothing,
      subscriptionArn = pSubscriptionArn_
    }

-- | A list of cost anomaly monitor ARNs.
updateAnomalySubscription_monitorArnList :: Lens.Lens' UpdateAnomalySubscription (Prelude.Maybe [Prelude.Text])
updateAnomalySubscription_monitorArnList = Lens.lens (\UpdateAnomalySubscription' {monitorArnList} -> monitorArnList) (\s@UpdateAnomalySubscription' {} a -> s {monitorArnList = a} :: UpdateAnomalySubscription) Prelude.. Lens.mapping Lens.coerced

-- | The update to the frequency value that subscribers receive
-- notifications.
updateAnomalySubscription_frequency :: Lens.Lens' UpdateAnomalySubscription (Prelude.Maybe AnomalySubscriptionFrequency)
updateAnomalySubscription_frequency = Lens.lens (\UpdateAnomalySubscription' {frequency} -> frequency) (\s@UpdateAnomalySubscription' {} a -> s {frequency = a} :: UpdateAnomalySubscription)

-- | The new name of the subscription.
updateAnomalySubscription_subscriptionName :: Lens.Lens' UpdateAnomalySubscription (Prelude.Maybe Prelude.Text)
updateAnomalySubscription_subscriptionName = Lens.lens (\UpdateAnomalySubscription' {subscriptionName} -> subscriptionName) (\s@UpdateAnomalySubscription' {} a -> s {subscriptionName = a} :: UpdateAnomalySubscription)

-- | The update to the subscriber list.
updateAnomalySubscription_subscribers :: Lens.Lens' UpdateAnomalySubscription (Prelude.Maybe [Subscriber])
updateAnomalySubscription_subscribers = Lens.lens (\UpdateAnomalySubscription' {subscribers} -> subscribers) (\s@UpdateAnomalySubscription' {} a -> s {subscribers = a} :: UpdateAnomalySubscription) Prelude.. Lens.mapping Lens.coerced

-- | The update to the threshold value for receiving notifications.
updateAnomalySubscription_threshold :: Lens.Lens' UpdateAnomalySubscription (Prelude.Maybe Prelude.Double)
updateAnomalySubscription_threshold = Lens.lens (\UpdateAnomalySubscription' {threshold} -> threshold) (\s@UpdateAnomalySubscription' {} a -> s {threshold = a} :: UpdateAnomalySubscription)

-- | A cost anomaly subscription Amazon Resource Name (ARN).
updateAnomalySubscription_subscriptionArn :: Lens.Lens' UpdateAnomalySubscription Prelude.Text
updateAnomalySubscription_subscriptionArn = Lens.lens (\UpdateAnomalySubscription' {subscriptionArn} -> subscriptionArn) (\s@UpdateAnomalySubscription' {} a -> s {subscriptionArn = a} :: UpdateAnomalySubscription)

instance Core.AWSRequest UpdateAnomalySubscription where
  type
    AWSResponse UpdateAnomalySubscription =
      UpdateAnomalySubscriptionResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateAnomalySubscriptionResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "SubscriptionArn")
      )

instance Prelude.Hashable UpdateAnomalySubscription where
  hashWithSalt _salt UpdateAnomalySubscription' {..} =
    _salt `Prelude.hashWithSalt` monitorArnList
      `Prelude.hashWithSalt` frequency
      `Prelude.hashWithSalt` subscriptionName
      `Prelude.hashWithSalt` subscribers
      `Prelude.hashWithSalt` threshold
      `Prelude.hashWithSalt` subscriptionArn

instance Prelude.NFData UpdateAnomalySubscription where
  rnf UpdateAnomalySubscription' {..} =
    Prelude.rnf monitorArnList
      `Prelude.seq` Prelude.rnf frequency
      `Prelude.seq` Prelude.rnf subscriptionName
      `Prelude.seq` Prelude.rnf subscribers
      `Prelude.seq` Prelude.rnf threshold
      `Prelude.seq` Prelude.rnf subscriptionArn

instance Core.ToHeaders UpdateAnomalySubscription where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSInsightsIndexService.UpdateAnomalySubscription" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateAnomalySubscription where
  toJSON UpdateAnomalySubscription' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("MonitorArnList" Core..=)
              Prelude.<$> monitorArnList,
            ("Frequency" Core..=) Prelude.<$> frequency,
            ("SubscriptionName" Core..=)
              Prelude.<$> subscriptionName,
            ("Subscribers" Core..=) Prelude.<$> subscribers,
            ("Threshold" Core..=) Prelude.<$> threshold,
            Prelude.Just
              ("SubscriptionArn" Core..= subscriptionArn)
          ]
      )

instance Core.ToPath UpdateAnomalySubscription where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateAnomalySubscription where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateAnomalySubscriptionResponse' smart constructor.
data UpdateAnomalySubscriptionResponse = UpdateAnomalySubscriptionResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | A cost anomaly subscription ARN.
    subscriptionArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateAnomalySubscriptionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateAnomalySubscriptionResponse_httpStatus' - The response's http status code.
--
-- 'subscriptionArn', 'updateAnomalySubscriptionResponse_subscriptionArn' - A cost anomaly subscription ARN.
newUpdateAnomalySubscriptionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'subscriptionArn'
  Prelude.Text ->
  UpdateAnomalySubscriptionResponse
newUpdateAnomalySubscriptionResponse
  pHttpStatus_
  pSubscriptionArn_ =
    UpdateAnomalySubscriptionResponse'
      { httpStatus =
          pHttpStatus_,
        subscriptionArn = pSubscriptionArn_
      }

-- | The response's http status code.
updateAnomalySubscriptionResponse_httpStatus :: Lens.Lens' UpdateAnomalySubscriptionResponse Prelude.Int
updateAnomalySubscriptionResponse_httpStatus = Lens.lens (\UpdateAnomalySubscriptionResponse' {httpStatus} -> httpStatus) (\s@UpdateAnomalySubscriptionResponse' {} a -> s {httpStatus = a} :: UpdateAnomalySubscriptionResponse)

-- | A cost anomaly subscription ARN.
updateAnomalySubscriptionResponse_subscriptionArn :: Lens.Lens' UpdateAnomalySubscriptionResponse Prelude.Text
updateAnomalySubscriptionResponse_subscriptionArn = Lens.lens (\UpdateAnomalySubscriptionResponse' {subscriptionArn} -> subscriptionArn) (\s@UpdateAnomalySubscriptionResponse' {} a -> s {subscriptionArn = a} :: UpdateAnomalySubscriptionResponse)

instance
  Prelude.NFData
    UpdateAnomalySubscriptionResponse
  where
  rnf UpdateAnomalySubscriptionResponse' {..} =
    Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf subscriptionArn
