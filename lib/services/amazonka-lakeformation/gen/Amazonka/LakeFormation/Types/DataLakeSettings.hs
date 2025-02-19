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
-- Module      : Amazonka.LakeFormation.Types.DataLakeSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.LakeFormation.Types.DataLakeSettings where

import qualified Amazonka.Core as Core
import Amazonka.LakeFormation.Types.DataLakePrincipal
import Amazonka.LakeFormation.Types.PrincipalPermissions
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A structure representing a list of Lake Formation principals designated
-- as data lake administrators and lists of principal permission entries
-- for default create database and default create table permissions.
--
-- /See:/ 'newDataLakeSettings' smart constructor.
data DataLakeSettings = DataLakeSettings'
  { -- | A list of Lake Formation principals. Supported principals are IAM users
    -- or IAM roles.
    dataLakeAdmins :: Prelude.Maybe [DataLakePrincipal],
    -- | Specifies whether access control on newly created database is managed by
    -- Lake Formation permissions or exclusively by IAM permissions. You can
    -- override this default setting when you create a database.
    --
    -- A null value indicates access control by Lake Formation permissions. A
    -- value that assigns ALL to IAM_ALLOWED_PRINCIPALS indicates access
    -- control by IAM permissions. This is referred to as the setting \"Use
    -- only IAM access control,\" and is for backward compatibility with the
    -- Glue permission model implemented by IAM permissions.
    --
    -- The only permitted values are an empty array or an array that contains a
    -- single JSON object that grants ALL to IAM_ALLOWED_PRINCIPALS.
    --
    -- For more information, see
    -- <https://docs.aws.amazon.com/lake-formation/latest/dg/change-settings.html Changing the Default Security Settings for Your Data Lake>.
    createDatabaseDefaultPermissions :: Prelude.Maybe [PrincipalPermissions],
    -- | Whether to allow Amazon EMR clusters to access data managed by Lake
    -- Formation.
    --
    -- If true, you allow Amazon EMR clusters to access data in Amazon S3
    -- locations that are registered with Lake Formation.
    --
    -- If false or null, no Amazon EMR clusters will be able to access data in
    -- Amazon S3 locations that are registered with Lake Formation.
    --
    -- For more information, see
    -- <https://docs-aws.amazon.com/lake-formation/latest/dg/getting-started-setup.html#emr-switch (Optional) Allow Data Filtering on Amazon EMR>.
    allowExternalDataFiltering :: Prelude.Maybe Prelude.Bool,
    -- | A list of the resource-owning account IDs that the caller\'s account can
    -- use to share their user access details (user ARNs). The user ARNs can be
    -- logged in the resource owner\'s CloudTrail log.
    --
    -- You may want to specify this property when you are in a high-trust
    -- boundary, such as the same team or company.
    trustedResourceOwners :: Prelude.Maybe [Prelude.Text],
    -- | Lake Formation relies on a privileged process secured by Amazon EMR or
    -- the third party integrator to tag the user\'s role while assuming it.
    -- Lake Formation will publish the acceptable key-value pair, for example
    -- key = \"LakeFormationTrustedCaller\" and value = \"TRUE\" and the third
    -- party integrator must properly tag the temporary security credentials
    -- that will be used to call Lake Formation\'s administrative APIs.
    authorizedSessionTagValueList :: Prelude.Maybe [Prelude.Text],
    -- | Specifies whether access control on newly created table is managed by
    -- Lake Formation permissions or exclusively by IAM permissions.
    --
    -- A null value indicates access control by Lake Formation permissions. A
    -- value that assigns ALL to IAM_ALLOWED_PRINCIPALS indicates access
    -- control by IAM permissions. This is referred to as the setting \"Use
    -- only IAM access control,\" and is for backward compatibility with the
    -- Glue permission model implemented by IAM permissions.
    --
    -- The only permitted values are an empty array or an array that contains a
    -- single JSON object that grants ALL to IAM_ALLOWED_PRINCIPALS.
    --
    -- For more information, see
    -- <https://docs.aws.amazon.com/lake-formation/latest/dg/change-settings.html Changing the Default Security Settings for Your Data Lake>.
    createTableDefaultPermissions :: Prelude.Maybe [PrincipalPermissions],
    -- | A list of the account IDs of Amazon Web Services accounts with Amazon
    -- EMR clusters that are to perform data filtering.>
    externalDataFilteringAllowList :: Prelude.Maybe [DataLakePrincipal]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DataLakeSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dataLakeAdmins', 'dataLakeSettings_dataLakeAdmins' - A list of Lake Formation principals. Supported principals are IAM users
-- or IAM roles.
--
-- 'createDatabaseDefaultPermissions', 'dataLakeSettings_createDatabaseDefaultPermissions' - Specifies whether access control on newly created database is managed by
-- Lake Formation permissions or exclusively by IAM permissions. You can
-- override this default setting when you create a database.
--
-- A null value indicates access control by Lake Formation permissions. A
-- value that assigns ALL to IAM_ALLOWED_PRINCIPALS indicates access
-- control by IAM permissions. This is referred to as the setting \"Use
-- only IAM access control,\" and is for backward compatibility with the
-- Glue permission model implemented by IAM permissions.
--
-- The only permitted values are an empty array or an array that contains a
-- single JSON object that grants ALL to IAM_ALLOWED_PRINCIPALS.
--
-- For more information, see
-- <https://docs.aws.amazon.com/lake-formation/latest/dg/change-settings.html Changing the Default Security Settings for Your Data Lake>.
--
-- 'allowExternalDataFiltering', 'dataLakeSettings_allowExternalDataFiltering' - Whether to allow Amazon EMR clusters to access data managed by Lake
-- Formation.
--
-- If true, you allow Amazon EMR clusters to access data in Amazon S3
-- locations that are registered with Lake Formation.
--
-- If false or null, no Amazon EMR clusters will be able to access data in
-- Amazon S3 locations that are registered with Lake Formation.
--
-- For more information, see
-- <https://docs-aws.amazon.com/lake-formation/latest/dg/getting-started-setup.html#emr-switch (Optional) Allow Data Filtering on Amazon EMR>.
--
-- 'trustedResourceOwners', 'dataLakeSettings_trustedResourceOwners' - A list of the resource-owning account IDs that the caller\'s account can
-- use to share their user access details (user ARNs). The user ARNs can be
-- logged in the resource owner\'s CloudTrail log.
--
-- You may want to specify this property when you are in a high-trust
-- boundary, such as the same team or company.
--
-- 'authorizedSessionTagValueList', 'dataLakeSettings_authorizedSessionTagValueList' - Lake Formation relies on a privileged process secured by Amazon EMR or
-- the third party integrator to tag the user\'s role while assuming it.
-- Lake Formation will publish the acceptable key-value pair, for example
-- key = \"LakeFormationTrustedCaller\" and value = \"TRUE\" and the third
-- party integrator must properly tag the temporary security credentials
-- that will be used to call Lake Formation\'s administrative APIs.
--
-- 'createTableDefaultPermissions', 'dataLakeSettings_createTableDefaultPermissions' - Specifies whether access control on newly created table is managed by
-- Lake Formation permissions or exclusively by IAM permissions.
--
-- A null value indicates access control by Lake Formation permissions. A
-- value that assigns ALL to IAM_ALLOWED_PRINCIPALS indicates access
-- control by IAM permissions. This is referred to as the setting \"Use
-- only IAM access control,\" and is for backward compatibility with the
-- Glue permission model implemented by IAM permissions.
--
-- The only permitted values are an empty array or an array that contains a
-- single JSON object that grants ALL to IAM_ALLOWED_PRINCIPALS.
--
-- For more information, see
-- <https://docs.aws.amazon.com/lake-formation/latest/dg/change-settings.html Changing the Default Security Settings for Your Data Lake>.
--
-- 'externalDataFilteringAllowList', 'dataLakeSettings_externalDataFilteringAllowList' - A list of the account IDs of Amazon Web Services accounts with Amazon
-- EMR clusters that are to perform data filtering.>
newDataLakeSettings ::
  DataLakeSettings
newDataLakeSettings =
  DataLakeSettings'
    { dataLakeAdmins = Prelude.Nothing,
      createDatabaseDefaultPermissions = Prelude.Nothing,
      allowExternalDataFiltering = Prelude.Nothing,
      trustedResourceOwners = Prelude.Nothing,
      authorizedSessionTagValueList = Prelude.Nothing,
      createTableDefaultPermissions = Prelude.Nothing,
      externalDataFilteringAllowList = Prelude.Nothing
    }

-- | A list of Lake Formation principals. Supported principals are IAM users
-- or IAM roles.
dataLakeSettings_dataLakeAdmins :: Lens.Lens' DataLakeSettings (Prelude.Maybe [DataLakePrincipal])
dataLakeSettings_dataLakeAdmins = Lens.lens (\DataLakeSettings' {dataLakeAdmins} -> dataLakeAdmins) (\s@DataLakeSettings' {} a -> s {dataLakeAdmins = a} :: DataLakeSettings) Prelude.. Lens.mapping Lens.coerced

-- | Specifies whether access control on newly created database is managed by
-- Lake Formation permissions or exclusively by IAM permissions. You can
-- override this default setting when you create a database.
--
-- A null value indicates access control by Lake Formation permissions. A
-- value that assigns ALL to IAM_ALLOWED_PRINCIPALS indicates access
-- control by IAM permissions. This is referred to as the setting \"Use
-- only IAM access control,\" and is for backward compatibility with the
-- Glue permission model implemented by IAM permissions.
--
-- The only permitted values are an empty array or an array that contains a
-- single JSON object that grants ALL to IAM_ALLOWED_PRINCIPALS.
--
-- For more information, see
-- <https://docs.aws.amazon.com/lake-formation/latest/dg/change-settings.html Changing the Default Security Settings for Your Data Lake>.
dataLakeSettings_createDatabaseDefaultPermissions :: Lens.Lens' DataLakeSettings (Prelude.Maybe [PrincipalPermissions])
dataLakeSettings_createDatabaseDefaultPermissions = Lens.lens (\DataLakeSettings' {createDatabaseDefaultPermissions} -> createDatabaseDefaultPermissions) (\s@DataLakeSettings' {} a -> s {createDatabaseDefaultPermissions = a} :: DataLakeSettings) Prelude.. Lens.mapping Lens.coerced

-- | Whether to allow Amazon EMR clusters to access data managed by Lake
-- Formation.
--
-- If true, you allow Amazon EMR clusters to access data in Amazon S3
-- locations that are registered with Lake Formation.
--
-- If false or null, no Amazon EMR clusters will be able to access data in
-- Amazon S3 locations that are registered with Lake Formation.
--
-- For more information, see
-- <https://docs-aws.amazon.com/lake-formation/latest/dg/getting-started-setup.html#emr-switch (Optional) Allow Data Filtering on Amazon EMR>.
dataLakeSettings_allowExternalDataFiltering :: Lens.Lens' DataLakeSettings (Prelude.Maybe Prelude.Bool)
dataLakeSettings_allowExternalDataFiltering = Lens.lens (\DataLakeSettings' {allowExternalDataFiltering} -> allowExternalDataFiltering) (\s@DataLakeSettings' {} a -> s {allowExternalDataFiltering = a} :: DataLakeSettings)

-- | A list of the resource-owning account IDs that the caller\'s account can
-- use to share their user access details (user ARNs). The user ARNs can be
-- logged in the resource owner\'s CloudTrail log.
--
-- You may want to specify this property when you are in a high-trust
-- boundary, such as the same team or company.
dataLakeSettings_trustedResourceOwners :: Lens.Lens' DataLakeSettings (Prelude.Maybe [Prelude.Text])
dataLakeSettings_trustedResourceOwners = Lens.lens (\DataLakeSettings' {trustedResourceOwners} -> trustedResourceOwners) (\s@DataLakeSettings' {} a -> s {trustedResourceOwners = a} :: DataLakeSettings) Prelude.. Lens.mapping Lens.coerced

-- | Lake Formation relies on a privileged process secured by Amazon EMR or
-- the third party integrator to tag the user\'s role while assuming it.
-- Lake Formation will publish the acceptable key-value pair, for example
-- key = \"LakeFormationTrustedCaller\" and value = \"TRUE\" and the third
-- party integrator must properly tag the temporary security credentials
-- that will be used to call Lake Formation\'s administrative APIs.
dataLakeSettings_authorizedSessionTagValueList :: Lens.Lens' DataLakeSettings (Prelude.Maybe [Prelude.Text])
dataLakeSettings_authorizedSessionTagValueList = Lens.lens (\DataLakeSettings' {authorizedSessionTagValueList} -> authorizedSessionTagValueList) (\s@DataLakeSettings' {} a -> s {authorizedSessionTagValueList = a} :: DataLakeSettings) Prelude.. Lens.mapping Lens.coerced

-- | Specifies whether access control on newly created table is managed by
-- Lake Formation permissions or exclusively by IAM permissions.
--
-- A null value indicates access control by Lake Formation permissions. A
-- value that assigns ALL to IAM_ALLOWED_PRINCIPALS indicates access
-- control by IAM permissions. This is referred to as the setting \"Use
-- only IAM access control,\" and is for backward compatibility with the
-- Glue permission model implemented by IAM permissions.
--
-- The only permitted values are an empty array or an array that contains a
-- single JSON object that grants ALL to IAM_ALLOWED_PRINCIPALS.
--
-- For more information, see
-- <https://docs.aws.amazon.com/lake-formation/latest/dg/change-settings.html Changing the Default Security Settings for Your Data Lake>.
dataLakeSettings_createTableDefaultPermissions :: Lens.Lens' DataLakeSettings (Prelude.Maybe [PrincipalPermissions])
dataLakeSettings_createTableDefaultPermissions = Lens.lens (\DataLakeSettings' {createTableDefaultPermissions} -> createTableDefaultPermissions) (\s@DataLakeSettings' {} a -> s {createTableDefaultPermissions = a} :: DataLakeSettings) Prelude.. Lens.mapping Lens.coerced

-- | A list of the account IDs of Amazon Web Services accounts with Amazon
-- EMR clusters that are to perform data filtering.>
dataLakeSettings_externalDataFilteringAllowList :: Lens.Lens' DataLakeSettings (Prelude.Maybe [DataLakePrincipal])
dataLakeSettings_externalDataFilteringAllowList = Lens.lens (\DataLakeSettings' {externalDataFilteringAllowList} -> externalDataFilteringAllowList) (\s@DataLakeSettings' {} a -> s {externalDataFilteringAllowList = a} :: DataLakeSettings) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON DataLakeSettings where
  parseJSON =
    Core.withObject
      "DataLakeSettings"
      ( \x ->
          DataLakeSettings'
            Prelude.<$> (x Core..:? "DataLakeAdmins" Core..!= Prelude.mempty)
            Prelude.<*> ( x Core..:? "CreateDatabaseDefaultPermissions"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "AllowExternalDataFiltering")
            Prelude.<*> ( x Core..:? "TrustedResourceOwners"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> ( x Core..:? "AuthorizedSessionTagValueList"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> ( x Core..:? "CreateTableDefaultPermissions"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> ( x Core..:? "ExternalDataFilteringAllowList"
                            Core..!= Prelude.mempty
                        )
      )

instance Prelude.Hashable DataLakeSettings where
  hashWithSalt _salt DataLakeSettings' {..} =
    _salt `Prelude.hashWithSalt` dataLakeAdmins
      `Prelude.hashWithSalt` createDatabaseDefaultPermissions
      `Prelude.hashWithSalt` allowExternalDataFiltering
      `Prelude.hashWithSalt` trustedResourceOwners
      `Prelude.hashWithSalt` authorizedSessionTagValueList
      `Prelude.hashWithSalt` createTableDefaultPermissions
      `Prelude.hashWithSalt` externalDataFilteringAllowList

instance Prelude.NFData DataLakeSettings where
  rnf DataLakeSettings' {..} =
    Prelude.rnf dataLakeAdmins
      `Prelude.seq` Prelude.rnf createDatabaseDefaultPermissions
      `Prelude.seq` Prelude.rnf allowExternalDataFiltering
      `Prelude.seq` Prelude.rnf trustedResourceOwners
      `Prelude.seq` Prelude.rnf authorizedSessionTagValueList
      `Prelude.seq` Prelude.rnf createTableDefaultPermissions
      `Prelude.seq` Prelude.rnf externalDataFilteringAllowList

instance Core.ToJSON DataLakeSettings where
  toJSON DataLakeSettings' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("DataLakeAdmins" Core..=)
              Prelude.<$> dataLakeAdmins,
            ("CreateDatabaseDefaultPermissions" Core..=)
              Prelude.<$> createDatabaseDefaultPermissions,
            ("AllowExternalDataFiltering" Core..=)
              Prelude.<$> allowExternalDataFiltering,
            ("TrustedResourceOwners" Core..=)
              Prelude.<$> trustedResourceOwners,
            ("AuthorizedSessionTagValueList" Core..=)
              Prelude.<$> authorizedSessionTagValueList,
            ("CreateTableDefaultPermissions" Core..=)
              Prelude.<$> createTableDefaultPermissions,
            ("ExternalDataFilteringAllowList" Core..=)
              Prelude.<$> externalDataFilteringAllowList
          ]
      )
