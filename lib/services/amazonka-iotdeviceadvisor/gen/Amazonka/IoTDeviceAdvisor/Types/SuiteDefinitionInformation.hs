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
-- Module      : Amazonka.IoTDeviceAdvisor.Types.SuiteDefinitionInformation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IoTDeviceAdvisor.Types.SuiteDefinitionInformation where

import qualified Amazonka.Core as Core
import Amazonka.IoTDeviceAdvisor.Types.DeviceUnderTest
import Amazonka.IoTDeviceAdvisor.Types.Protocol
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Information about the suite definition.
--
-- /See:/ 'newSuiteDefinitionInformation' smart constructor.
data SuiteDefinitionInformation = SuiteDefinitionInformation'
  { -- | Suite name of the test suite.
    suiteDefinitionName :: Prelude.Maybe Prelude.Text,
    -- | Specifies the devices that are under test for the test suite.
    defaultDevices :: Prelude.Maybe [DeviceUnderTest],
    -- | Specifies if the test suite is intended for qualification.
    intendedForQualification :: Prelude.Maybe Prelude.Bool,
    -- | Gets the MQTT protocol that is configured in the suite definition.
    protocol :: Prelude.Maybe Protocol,
    -- | Suite definition ID of the test suite.
    suiteDefinitionId :: Prelude.Maybe Prelude.Text,
    -- | Verifies if the test suite is a long duration test.
    isLongDurationTest :: Prelude.Maybe Prelude.Bool,
    -- | Date (in Unix epoch time) when the test suite was created.
    createdAt :: Prelude.Maybe Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SuiteDefinitionInformation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'suiteDefinitionName', 'suiteDefinitionInformation_suiteDefinitionName' - Suite name of the test suite.
--
-- 'defaultDevices', 'suiteDefinitionInformation_defaultDevices' - Specifies the devices that are under test for the test suite.
--
-- 'intendedForQualification', 'suiteDefinitionInformation_intendedForQualification' - Specifies if the test suite is intended for qualification.
--
-- 'protocol', 'suiteDefinitionInformation_protocol' - Gets the MQTT protocol that is configured in the suite definition.
--
-- 'suiteDefinitionId', 'suiteDefinitionInformation_suiteDefinitionId' - Suite definition ID of the test suite.
--
-- 'isLongDurationTest', 'suiteDefinitionInformation_isLongDurationTest' - Verifies if the test suite is a long duration test.
--
-- 'createdAt', 'suiteDefinitionInformation_createdAt' - Date (in Unix epoch time) when the test suite was created.
newSuiteDefinitionInformation ::
  SuiteDefinitionInformation
newSuiteDefinitionInformation =
  SuiteDefinitionInformation'
    { suiteDefinitionName =
        Prelude.Nothing,
      defaultDevices = Prelude.Nothing,
      intendedForQualification = Prelude.Nothing,
      protocol = Prelude.Nothing,
      suiteDefinitionId = Prelude.Nothing,
      isLongDurationTest = Prelude.Nothing,
      createdAt = Prelude.Nothing
    }

-- | Suite name of the test suite.
suiteDefinitionInformation_suiteDefinitionName :: Lens.Lens' SuiteDefinitionInformation (Prelude.Maybe Prelude.Text)
suiteDefinitionInformation_suiteDefinitionName = Lens.lens (\SuiteDefinitionInformation' {suiteDefinitionName} -> suiteDefinitionName) (\s@SuiteDefinitionInformation' {} a -> s {suiteDefinitionName = a} :: SuiteDefinitionInformation)

-- | Specifies the devices that are under test for the test suite.
suiteDefinitionInformation_defaultDevices :: Lens.Lens' SuiteDefinitionInformation (Prelude.Maybe [DeviceUnderTest])
suiteDefinitionInformation_defaultDevices = Lens.lens (\SuiteDefinitionInformation' {defaultDevices} -> defaultDevices) (\s@SuiteDefinitionInformation' {} a -> s {defaultDevices = a} :: SuiteDefinitionInformation) Prelude.. Lens.mapping Lens.coerced

-- | Specifies if the test suite is intended for qualification.
suiteDefinitionInformation_intendedForQualification :: Lens.Lens' SuiteDefinitionInformation (Prelude.Maybe Prelude.Bool)
suiteDefinitionInformation_intendedForQualification = Lens.lens (\SuiteDefinitionInformation' {intendedForQualification} -> intendedForQualification) (\s@SuiteDefinitionInformation' {} a -> s {intendedForQualification = a} :: SuiteDefinitionInformation)

-- | Gets the MQTT protocol that is configured in the suite definition.
suiteDefinitionInformation_protocol :: Lens.Lens' SuiteDefinitionInformation (Prelude.Maybe Protocol)
suiteDefinitionInformation_protocol = Lens.lens (\SuiteDefinitionInformation' {protocol} -> protocol) (\s@SuiteDefinitionInformation' {} a -> s {protocol = a} :: SuiteDefinitionInformation)

-- | Suite definition ID of the test suite.
suiteDefinitionInformation_suiteDefinitionId :: Lens.Lens' SuiteDefinitionInformation (Prelude.Maybe Prelude.Text)
suiteDefinitionInformation_suiteDefinitionId = Lens.lens (\SuiteDefinitionInformation' {suiteDefinitionId} -> suiteDefinitionId) (\s@SuiteDefinitionInformation' {} a -> s {suiteDefinitionId = a} :: SuiteDefinitionInformation)

-- | Verifies if the test suite is a long duration test.
suiteDefinitionInformation_isLongDurationTest :: Lens.Lens' SuiteDefinitionInformation (Prelude.Maybe Prelude.Bool)
suiteDefinitionInformation_isLongDurationTest = Lens.lens (\SuiteDefinitionInformation' {isLongDurationTest} -> isLongDurationTest) (\s@SuiteDefinitionInformation' {} a -> s {isLongDurationTest = a} :: SuiteDefinitionInformation)

-- | Date (in Unix epoch time) when the test suite was created.
suiteDefinitionInformation_createdAt :: Lens.Lens' SuiteDefinitionInformation (Prelude.Maybe Prelude.UTCTime)
suiteDefinitionInformation_createdAt = Lens.lens (\SuiteDefinitionInformation' {createdAt} -> createdAt) (\s@SuiteDefinitionInformation' {} a -> s {createdAt = a} :: SuiteDefinitionInformation) Prelude.. Lens.mapping Core._Time

instance Core.FromJSON SuiteDefinitionInformation where
  parseJSON =
    Core.withObject
      "SuiteDefinitionInformation"
      ( \x ->
          SuiteDefinitionInformation'
            Prelude.<$> (x Core..:? "suiteDefinitionName")
            Prelude.<*> (x Core..:? "defaultDevices" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "intendedForQualification")
            Prelude.<*> (x Core..:? "protocol")
            Prelude.<*> (x Core..:? "suiteDefinitionId")
            Prelude.<*> (x Core..:? "isLongDurationTest")
            Prelude.<*> (x Core..:? "createdAt")
      )

instance Prelude.Hashable SuiteDefinitionInformation where
  hashWithSalt _salt SuiteDefinitionInformation' {..} =
    _salt `Prelude.hashWithSalt` suiteDefinitionName
      `Prelude.hashWithSalt` defaultDevices
      `Prelude.hashWithSalt` intendedForQualification
      `Prelude.hashWithSalt` protocol
      `Prelude.hashWithSalt` suiteDefinitionId
      `Prelude.hashWithSalt` isLongDurationTest
      `Prelude.hashWithSalt` createdAt

instance Prelude.NFData SuiteDefinitionInformation where
  rnf SuiteDefinitionInformation' {..} =
    Prelude.rnf suiteDefinitionName
      `Prelude.seq` Prelude.rnf defaultDevices
      `Prelude.seq` Prelude.rnf intendedForQualification
      `Prelude.seq` Prelude.rnf protocol
      `Prelude.seq` Prelude.rnf suiteDefinitionId
      `Prelude.seq` Prelude.rnf isLongDurationTest
      `Prelude.seq` Prelude.rnf createdAt
