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
-- Module      : Amazonka.OpsWorks.Types.Source
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.OpsWorks.Types.Source where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.OpsWorks.Types.SourceType
import qualified Amazonka.Prelude as Prelude

-- | Contains the information required to retrieve an app or cookbook from a
-- repository. For more information, see
-- <https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html Creating Apps>
-- or
-- <https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html Custom Recipes and Cookbooks>.
--
-- /See:/ 'newSource' smart constructor.
data Source = Source'
  { -- | The repository type.
    type' :: Prelude.Maybe SourceType,
    -- | When included in a request, the parameter depends on the repository
    -- type.
    --
    -- -   For Amazon S3 bundles, set @Password@ to the appropriate IAM secret
    --     access key.
    --
    -- -   For HTTP bundles and Subversion repositories, set @Password@ to the
    --     password.
    --
    -- For more information on how to safely handle IAM credentials, see
    -- <https://docs.aws.amazon.com/general/latest/gr/aws-access-keys-best-practices.html>.
    --
    -- In responses, AWS OpsWorks Stacks returns @*****FILTERED*****@ instead
    -- of the actual value.
    password :: Prelude.Maybe Prelude.Text,
    -- | This parameter depends on the repository type.
    --
    -- -   For Amazon S3 bundles, set @Username@ to the appropriate IAM access
    --     key ID.
    --
    -- -   For HTTP bundles, Git repositories, and Subversion repositories, set
    --     @Username@ to the user name.
    username :: Prelude.Maybe Prelude.Text,
    -- | The application\'s version. AWS OpsWorks Stacks enables you to easily
    -- deploy new versions of an application. One of the simplest approaches is
    -- to have branches or revisions in your repository that represent
    -- different versions that can potentially be deployed.
    revision :: Prelude.Maybe Prelude.Text,
    -- | The source URL. The following is an example of an Amazon S3 source URL:
    -- @https:\/\/s3.amazonaws.com\/opsworks-demo-bucket\/opsworks_cookbook_demo.tar.gz@.
    url :: Prelude.Maybe Prelude.Text,
    -- | In requests, the repository\'s SSH key.
    --
    -- In responses, AWS OpsWorks Stacks returns @*****FILTERED*****@ instead
    -- of the actual value.
    sshKey :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Source' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'type'', 'source_type' - The repository type.
--
-- 'password', 'source_password' - When included in a request, the parameter depends on the repository
-- type.
--
-- -   For Amazon S3 bundles, set @Password@ to the appropriate IAM secret
--     access key.
--
-- -   For HTTP bundles and Subversion repositories, set @Password@ to the
--     password.
--
-- For more information on how to safely handle IAM credentials, see
-- <https://docs.aws.amazon.com/general/latest/gr/aws-access-keys-best-practices.html>.
--
-- In responses, AWS OpsWorks Stacks returns @*****FILTERED*****@ instead
-- of the actual value.
--
-- 'username', 'source_username' - This parameter depends on the repository type.
--
-- -   For Amazon S3 bundles, set @Username@ to the appropriate IAM access
--     key ID.
--
-- -   For HTTP bundles, Git repositories, and Subversion repositories, set
--     @Username@ to the user name.
--
-- 'revision', 'source_revision' - The application\'s version. AWS OpsWorks Stacks enables you to easily
-- deploy new versions of an application. One of the simplest approaches is
-- to have branches or revisions in your repository that represent
-- different versions that can potentially be deployed.
--
-- 'url', 'source_url' - The source URL. The following is an example of an Amazon S3 source URL:
-- @https:\/\/s3.amazonaws.com\/opsworks-demo-bucket\/opsworks_cookbook_demo.tar.gz@.
--
-- 'sshKey', 'source_sshKey' - In requests, the repository\'s SSH key.
--
-- In responses, AWS OpsWorks Stacks returns @*****FILTERED*****@ instead
-- of the actual value.
newSource ::
  Source
newSource =
  Source'
    { type' = Prelude.Nothing,
      password = Prelude.Nothing,
      username = Prelude.Nothing,
      revision = Prelude.Nothing,
      url = Prelude.Nothing,
      sshKey = Prelude.Nothing
    }

-- | The repository type.
source_type :: Lens.Lens' Source (Prelude.Maybe SourceType)
source_type = Lens.lens (\Source' {type'} -> type') (\s@Source' {} a -> s {type' = a} :: Source)

-- | When included in a request, the parameter depends on the repository
-- type.
--
-- -   For Amazon S3 bundles, set @Password@ to the appropriate IAM secret
--     access key.
--
-- -   For HTTP bundles and Subversion repositories, set @Password@ to the
--     password.
--
-- For more information on how to safely handle IAM credentials, see
-- <https://docs.aws.amazon.com/general/latest/gr/aws-access-keys-best-practices.html>.
--
-- In responses, AWS OpsWorks Stacks returns @*****FILTERED*****@ instead
-- of the actual value.
source_password :: Lens.Lens' Source (Prelude.Maybe Prelude.Text)
source_password = Lens.lens (\Source' {password} -> password) (\s@Source' {} a -> s {password = a} :: Source)

-- | This parameter depends on the repository type.
--
-- -   For Amazon S3 bundles, set @Username@ to the appropriate IAM access
--     key ID.
--
-- -   For HTTP bundles, Git repositories, and Subversion repositories, set
--     @Username@ to the user name.
source_username :: Lens.Lens' Source (Prelude.Maybe Prelude.Text)
source_username = Lens.lens (\Source' {username} -> username) (\s@Source' {} a -> s {username = a} :: Source)

-- | The application\'s version. AWS OpsWorks Stacks enables you to easily
-- deploy new versions of an application. One of the simplest approaches is
-- to have branches or revisions in your repository that represent
-- different versions that can potentially be deployed.
source_revision :: Lens.Lens' Source (Prelude.Maybe Prelude.Text)
source_revision = Lens.lens (\Source' {revision} -> revision) (\s@Source' {} a -> s {revision = a} :: Source)

-- | The source URL. The following is an example of an Amazon S3 source URL:
-- @https:\/\/s3.amazonaws.com\/opsworks-demo-bucket\/opsworks_cookbook_demo.tar.gz@.
source_url :: Lens.Lens' Source (Prelude.Maybe Prelude.Text)
source_url = Lens.lens (\Source' {url} -> url) (\s@Source' {} a -> s {url = a} :: Source)

-- | In requests, the repository\'s SSH key.
--
-- In responses, AWS OpsWorks Stacks returns @*****FILTERED*****@ instead
-- of the actual value.
source_sshKey :: Lens.Lens' Source (Prelude.Maybe Prelude.Text)
source_sshKey = Lens.lens (\Source' {sshKey} -> sshKey) (\s@Source' {} a -> s {sshKey = a} :: Source)

instance Core.FromJSON Source where
  parseJSON =
    Core.withObject
      "Source"
      ( \x ->
          Source'
            Prelude.<$> (x Core..:? "Type")
            Prelude.<*> (x Core..:? "Password")
            Prelude.<*> (x Core..:? "Username")
            Prelude.<*> (x Core..:? "Revision")
            Prelude.<*> (x Core..:? "Url")
            Prelude.<*> (x Core..:? "SshKey")
      )

instance Prelude.Hashable Source where
  hashWithSalt _salt Source' {..} =
    _salt `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` password
      `Prelude.hashWithSalt` username
      `Prelude.hashWithSalt` revision
      `Prelude.hashWithSalt` url
      `Prelude.hashWithSalt` sshKey

instance Prelude.NFData Source where
  rnf Source' {..} =
    Prelude.rnf type'
      `Prelude.seq` Prelude.rnf password
      `Prelude.seq` Prelude.rnf username
      `Prelude.seq` Prelude.rnf revision
      `Prelude.seq` Prelude.rnf url
      `Prelude.seq` Prelude.rnf sshKey

instance Core.ToJSON Source where
  toJSON Source' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Type" Core..=) Prelude.<$> type',
            ("Password" Core..=) Prelude.<$> password,
            ("Username" Core..=) Prelude.<$> username,
            ("Revision" Core..=) Prelude.<$> revision,
            ("Url" Core..=) Prelude.<$> url,
            ("SshKey" Core..=) Prelude.<$> sshKey
          ]
      )
