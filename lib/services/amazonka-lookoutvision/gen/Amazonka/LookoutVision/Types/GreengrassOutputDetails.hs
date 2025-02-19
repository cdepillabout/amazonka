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
-- Module      : Amazonka.LookoutVision.Types.GreengrassOutputDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.LookoutVision.Types.GreengrassOutputDetails where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Information about the AWS IoT Greengrass component created by a model
-- packaging job.
--
-- /See:/ 'newGreengrassOutputDetails' smart constructor.
data GreengrassOutputDetails = GreengrassOutputDetails'
  { -- | The version of the component.
    componentVersion :: Prelude.Maybe Prelude.Text,
    -- | The name of the component.
    componentName :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the component.
    componentVersionArn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GreengrassOutputDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'componentVersion', 'greengrassOutputDetails_componentVersion' - The version of the component.
--
-- 'componentName', 'greengrassOutputDetails_componentName' - The name of the component.
--
-- 'componentVersionArn', 'greengrassOutputDetails_componentVersionArn' - The Amazon Resource Name (ARN) of the component.
newGreengrassOutputDetails ::
  GreengrassOutputDetails
newGreengrassOutputDetails =
  GreengrassOutputDetails'
    { componentVersion =
        Prelude.Nothing,
      componentName = Prelude.Nothing,
      componentVersionArn = Prelude.Nothing
    }

-- | The version of the component.
greengrassOutputDetails_componentVersion :: Lens.Lens' GreengrassOutputDetails (Prelude.Maybe Prelude.Text)
greengrassOutputDetails_componentVersion = Lens.lens (\GreengrassOutputDetails' {componentVersion} -> componentVersion) (\s@GreengrassOutputDetails' {} a -> s {componentVersion = a} :: GreengrassOutputDetails)

-- | The name of the component.
greengrassOutputDetails_componentName :: Lens.Lens' GreengrassOutputDetails (Prelude.Maybe Prelude.Text)
greengrassOutputDetails_componentName = Lens.lens (\GreengrassOutputDetails' {componentName} -> componentName) (\s@GreengrassOutputDetails' {} a -> s {componentName = a} :: GreengrassOutputDetails)

-- | The Amazon Resource Name (ARN) of the component.
greengrassOutputDetails_componentVersionArn :: Lens.Lens' GreengrassOutputDetails (Prelude.Maybe Prelude.Text)
greengrassOutputDetails_componentVersionArn = Lens.lens (\GreengrassOutputDetails' {componentVersionArn} -> componentVersionArn) (\s@GreengrassOutputDetails' {} a -> s {componentVersionArn = a} :: GreengrassOutputDetails)

instance Core.FromJSON GreengrassOutputDetails where
  parseJSON =
    Core.withObject
      "GreengrassOutputDetails"
      ( \x ->
          GreengrassOutputDetails'
            Prelude.<$> (x Core..:? "ComponentVersion")
            Prelude.<*> (x Core..:? "ComponentName")
            Prelude.<*> (x Core..:? "ComponentVersionArn")
      )

instance Prelude.Hashable GreengrassOutputDetails where
  hashWithSalt _salt GreengrassOutputDetails' {..} =
    _salt `Prelude.hashWithSalt` componentVersion
      `Prelude.hashWithSalt` componentName
      `Prelude.hashWithSalt` componentVersionArn

instance Prelude.NFData GreengrassOutputDetails where
  rnf GreengrassOutputDetails' {..} =
    Prelude.rnf componentVersion
      `Prelude.seq` Prelude.rnf componentName
      `Prelude.seq` Prelude.rnf componentVersionArn
