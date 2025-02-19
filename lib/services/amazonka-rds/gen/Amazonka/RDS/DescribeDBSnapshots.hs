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
-- Module      : Amazonka.RDS.DescribeDBSnapshots
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about DB snapshots. This API action supports
-- pagination.
--
-- This operation returns paginated results.
module Amazonka.RDS.DescribeDBSnapshots
  ( -- * Creating a Request
    DescribeDBSnapshots (..),
    newDescribeDBSnapshots,

    -- * Request Lenses
    describeDBSnapshots_includeShared,
    describeDBSnapshots_marker,
    describeDBSnapshots_dbInstanceIdentifier,
    describeDBSnapshots_dbSnapshotIdentifier,
    describeDBSnapshots_filters,
    describeDBSnapshots_maxRecords,
    describeDBSnapshots_includePublic,
    describeDBSnapshots_dbiResourceId,
    describeDBSnapshots_snapshotType,

    -- * Destructuring the Response
    DescribeDBSnapshotsResponse (..),
    newDescribeDBSnapshotsResponse,

    -- * Response Lenses
    describeDBSnapshotsResponse_marker,
    describeDBSnapshotsResponse_dbSnapshots,
    describeDBSnapshotsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.RDS.Types
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- |
--
-- /See:/ 'newDescribeDBSnapshots' smart constructor.
data DescribeDBSnapshots = DescribeDBSnapshots'
  { -- | A value that indicates whether to include shared manual DB cluster
    -- snapshots from other Amazon Web Services accounts that this Amazon Web
    -- Services account has been given permission to copy or restore. By
    -- default, these snapshots are not included.
    --
    -- You can give an Amazon Web Services account permission to restore a
    -- manual DB snapshot from another Amazon Web Services account by using the
    -- @ModifyDBSnapshotAttribute@ API action.
    --
    -- This setting doesn\'t apply to RDS Custom.
    includeShared :: Prelude.Maybe Prelude.Bool,
    -- | An optional pagination token provided by a previous
    -- @DescribeDBSnapshots@ request. If this parameter is specified, the
    -- response includes only records beyond the marker, up to the value
    -- specified by @MaxRecords@.
    marker :: Prelude.Maybe Prelude.Text,
    -- | The ID of the DB instance to retrieve the list of DB snapshots for. This
    -- parameter isn\'t case-sensitive.
    --
    -- Constraints:
    --
    -- -   If supplied, must match the identifier of an existing DBInstance.
    dbInstanceIdentifier :: Prelude.Maybe Prelude.Text,
    -- | A specific DB snapshot identifier to describe. This value is stored as a
    -- lowercase string.
    --
    -- Constraints:
    --
    -- -   If supplied, must match the identifier of an existing DBSnapshot.
    --
    -- -   If this identifier is for an automated snapshot, the @SnapshotType@
    --     parameter must also be specified.
    dbSnapshotIdentifier :: Prelude.Maybe Prelude.Text,
    -- | A filter that specifies one or more DB snapshots to describe.
    --
    -- Supported filters:
    --
    -- -   @db-instance-id@ - Accepts DB instance identifiers and DB instance
    --     Amazon Resource Names (ARNs).
    --
    -- -   @db-snapshot-id@ - Accepts DB snapshot identifiers.
    --
    -- -   @dbi-resource-id@ - Accepts identifiers of source DB instances.
    --
    -- -   @snapshot-type@ - Accepts types of DB snapshots.
    --
    -- -   @engine@ - Accepts names of database engines.
    filters :: Prelude.Maybe [Filter],
    -- | The maximum number of records to include in the response. If more
    -- records exist than the specified @MaxRecords@ value, a pagination token
    -- called a marker is included in the response so that you can retrieve the
    -- remaining results.
    --
    -- Default: 100
    --
    -- Constraints: Minimum 20, maximum 100.
    maxRecords :: Prelude.Maybe Prelude.Int,
    -- | A value that indicates whether to include manual DB cluster snapshots
    -- that are public and can be copied or restored by any Amazon Web Services
    -- account. By default, the public snapshots are not included.
    --
    -- You can share a manual DB snapshot as public by using the
    -- ModifyDBSnapshotAttribute API.
    --
    -- This setting doesn\'t apply to RDS Custom.
    includePublic :: Prelude.Maybe Prelude.Bool,
    -- | A specific DB resource ID to describe.
    dbiResourceId :: Prelude.Maybe Prelude.Text,
    -- | The type of snapshots to be returned. You can specify one of the
    -- following values:
    --
    -- -   @automated@ - Return all DB snapshots that have been automatically
    --     taken by Amazon RDS for my Amazon Web Services account.
    --
    -- -   @manual@ - Return all DB snapshots that have been taken by my Amazon
    --     Web Services account.
    --
    -- -   @shared@ - Return all manual DB snapshots that have been shared to
    --     my Amazon Web Services account.
    --
    -- -   @public@ - Return all DB snapshots that have been marked as public.
    --
    -- -   @awsbackup@ - Return the DB snapshots managed by the Amazon Web
    --     Services Backup service.
    --
    --     For information about Amazon Web Services Backup, see the
    --     <https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html Amazon Web Services Backup Developer Guide.>
    --
    --     The @awsbackup@ type does not apply to Aurora.
    --
    -- If you don\'t specify a @SnapshotType@ value, then both automated and
    -- manual snapshots are returned. Shared and public DB snapshots are not
    -- included in the returned results by default. You can include shared
    -- snapshots with these results by enabling the @IncludeShared@ parameter.
    -- You can include public snapshots with these results by enabling the
    -- @IncludePublic@ parameter.
    --
    -- The @IncludeShared@ and @IncludePublic@ parameters don\'t apply for
    -- @SnapshotType@ values of @manual@ or @automated@. The @IncludePublic@
    -- parameter doesn\'t apply when @SnapshotType@ is set to @shared@. The
    -- @IncludeShared@ parameter doesn\'t apply when @SnapshotType@ is set to
    -- @public@.
    snapshotType :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeDBSnapshots' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'includeShared', 'describeDBSnapshots_includeShared' - A value that indicates whether to include shared manual DB cluster
-- snapshots from other Amazon Web Services accounts that this Amazon Web
-- Services account has been given permission to copy or restore. By
-- default, these snapshots are not included.
--
-- You can give an Amazon Web Services account permission to restore a
-- manual DB snapshot from another Amazon Web Services account by using the
-- @ModifyDBSnapshotAttribute@ API action.
--
-- This setting doesn\'t apply to RDS Custom.
--
-- 'marker', 'describeDBSnapshots_marker' - An optional pagination token provided by a previous
-- @DescribeDBSnapshots@ request. If this parameter is specified, the
-- response includes only records beyond the marker, up to the value
-- specified by @MaxRecords@.
--
-- 'dbInstanceIdentifier', 'describeDBSnapshots_dbInstanceIdentifier' - The ID of the DB instance to retrieve the list of DB snapshots for. This
-- parameter isn\'t case-sensitive.
--
-- Constraints:
--
-- -   If supplied, must match the identifier of an existing DBInstance.
--
-- 'dbSnapshotIdentifier', 'describeDBSnapshots_dbSnapshotIdentifier' - A specific DB snapshot identifier to describe. This value is stored as a
-- lowercase string.
--
-- Constraints:
--
-- -   If supplied, must match the identifier of an existing DBSnapshot.
--
-- -   If this identifier is for an automated snapshot, the @SnapshotType@
--     parameter must also be specified.
--
-- 'filters', 'describeDBSnapshots_filters' - A filter that specifies one or more DB snapshots to describe.
--
-- Supported filters:
--
-- -   @db-instance-id@ - Accepts DB instance identifiers and DB instance
--     Amazon Resource Names (ARNs).
--
-- -   @db-snapshot-id@ - Accepts DB snapshot identifiers.
--
-- -   @dbi-resource-id@ - Accepts identifiers of source DB instances.
--
-- -   @snapshot-type@ - Accepts types of DB snapshots.
--
-- -   @engine@ - Accepts names of database engines.
--
-- 'maxRecords', 'describeDBSnapshots_maxRecords' - The maximum number of records to include in the response. If more
-- records exist than the specified @MaxRecords@ value, a pagination token
-- called a marker is included in the response so that you can retrieve the
-- remaining results.
--
-- Default: 100
--
-- Constraints: Minimum 20, maximum 100.
--
-- 'includePublic', 'describeDBSnapshots_includePublic' - A value that indicates whether to include manual DB cluster snapshots
-- that are public and can be copied or restored by any Amazon Web Services
-- account. By default, the public snapshots are not included.
--
-- You can share a manual DB snapshot as public by using the
-- ModifyDBSnapshotAttribute API.
--
-- This setting doesn\'t apply to RDS Custom.
--
-- 'dbiResourceId', 'describeDBSnapshots_dbiResourceId' - A specific DB resource ID to describe.
--
-- 'snapshotType', 'describeDBSnapshots_snapshotType' - The type of snapshots to be returned. You can specify one of the
-- following values:
--
-- -   @automated@ - Return all DB snapshots that have been automatically
--     taken by Amazon RDS for my Amazon Web Services account.
--
-- -   @manual@ - Return all DB snapshots that have been taken by my Amazon
--     Web Services account.
--
-- -   @shared@ - Return all manual DB snapshots that have been shared to
--     my Amazon Web Services account.
--
-- -   @public@ - Return all DB snapshots that have been marked as public.
--
-- -   @awsbackup@ - Return the DB snapshots managed by the Amazon Web
--     Services Backup service.
--
--     For information about Amazon Web Services Backup, see the
--     <https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html Amazon Web Services Backup Developer Guide.>
--
--     The @awsbackup@ type does not apply to Aurora.
--
-- If you don\'t specify a @SnapshotType@ value, then both automated and
-- manual snapshots are returned. Shared and public DB snapshots are not
-- included in the returned results by default. You can include shared
-- snapshots with these results by enabling the @IncludeShared@ parameter.
-- You can include public snapshots with these results by enabling the
-- @IncludePublic@ parameter.
--
-- The @IncludeShared@ and @IncludePublic@ parameters don\'t apply for
-- @SnapshotType@ values of @manual@ or @automated@. The @IncludePublic@
-- parameter doesn\'t apply when @SnapshotType@ is set to @shared@. The
-- @IncludeShared@ parameter doesn\'t apply when @SnapshotType@ is set to
-- @public@.
newDescribeDBSnapshots ::
  DescribeDBSnapshots
newDescribeDBSnapshots =
  DescribeDBSnapshots'
    { includeShared =
        Prelude.Nothing,
      marker = Prelude.Nothing,
      dbInstanceIdentifier = Prelude.Nothing,
      dbSnapshotIdentifier = Prelude.Nothing,
      filters = Prelude.Nothing,
      maxRecords = Prelude.Nothing,
      includePublic = Prelude.Nothing,
      dbiResourceId = Prelude.Nothing,
      snapshotType = Prelude.Nothing
    }

-- | A value that indicates whether to include shared manual DB cluster
-- snapshots from other Amazon Web Services accounts that this Amazon Web
-- Services account has been given permission to copy or restore. By
-- default, these snapshots are not included.
--
-- You can give an Amazon Web Services account permission to restore a
-- manual DB snapshot from another Amazon Web Services account by using the
-- @ModifyDBSnapshotAttribute@ API action.
--
-- This setting doesn\'t apply to RDS Custom.
describeDBSnapshots_includeShared :: Lens.Lens' DescribeDBSnapshots (Prelude.Maybe Prelude.Bool)
describeDBSnapshots_includeShared = Lens.lens (\DescribeDBSnapshots' {includeShared} -> includeShared) (\s@DescribeDBSnapshots' {} a -> s {includeShared = a} :: DescribeDBSnapshots)

-- | An optional pagination token provided by a previous
-- @DescribeDBSnapshots@ request. If this parameter is specified, the
-- response includes only records beyond the marker, up to the value
-- specified by @MaxRecords@.
describeDBSnapshots_marker :: Lens.Lens' DescribeDBSnapshots (Prelude.Maybe Prelude.Text)
describeDBSnapshots_marker = Lens.lens (\DescribeDBSnapshots' {marker} -> marker) (\s@DescribeDBSnapshots' {} a -> s {marker = a} :: DescribeDBSnapshots)

-- | The ID of the DB instance to retrieve the list of DB snapshots for. This
-- parameter isn\'t case-sensitive.
--
-- Constraints:
--
-- -   If supplied, must match the identifier of an existing DBInstance.
describeDBSnapshots_dbInstanceIdentifier :: Lens.Lens' DescribeDBSnapshots (Prelude.Maybe Prelude.Text)
describeDBSnapshots_dbInstanceIdentifier = Lens.lens (\DescribeDBSnapshots' {dbInstanceIdentifier} -> dbInstanceIdentifier) (\s@DescribeDBSnapshots' {} a -> s {dbInstanceIdentifier = a} :: DescribeDBSnapshots)

-- | A specific DB snapshot identifier to describe. This value is stored as a
-- lowercase string.
--
-- Constraints:
--
-- -   If supplied, must match the identifier of an existing DBSnapshot.
--
-- -   If this identifier is for an automated snapshot, the @SnapshotType@
--     parameter must also be specified.
describeDBSnapshots_dbSnapshotIdentifier :: Lens.Lens' DescribeDBSnapshots (Prelude.Maybe Prelude.Text)
describeDBSnapshots_dbSnapshotIdentifier = Lens.lens (\DescribeDBSnapshots' {dbSnapshotIdentifier} -> dbSnapshotIdentifier) (\s@DescribeDBSnapshots' {} a -> s {dbSnapshotIdentifier = a} :: DescribeDBSnapshots)

-- | A filter that specifies one or more DB snapshots to describe.
--
-- Supported filters:
--
-- -   @db-instance-id@ - Accepts DB instance identifiers and DB instance
--     Amazon Resource Names (ARNs).
--
-- -   @db-snapshot-id@ - Accepts DB snapshot identifiers.
--
-- -   @dbi-resource-id@ - Accepts identifiers of source DB instances.
--
-- -   @snapshot-type@ - Accepts types of DB snapshots.
--
-- -   @engine@ - Accepts names of database engines.
describeDBSnapshots_filters :: Lens.Lens' DescribeDBSnapshots (Prelude.Maybe [Filter])
describeDBSnapshots_filters = Lens.lens (\DescribeDBSnapshots' {filters} -> filters) (\s@DescribeDBSnapshots' {} a -> s {filters = a} :: DescribeDBSnapshots) Prelude.. Lens.mapping Lens.coerced

-- | The maximum number of records to include in the response. If more
-- records exist than the specified @MaxRecords@ value, a pagination token
-- called a marker is included in the response so that you can retrieve the
-- remaining results.
--
-- Default: 100
--
-- Constraints: Minimum 20, maximum 100.
describeDBSnapshots_maxRecords :: Lens.Lens' DescribeDBSnapshots (Prelude.Maybe Prelude.Int)
describeDBSnapshots_maxRecords = Lens.lens (\DescribeDBSnapshots' {maxRecords} -> maxRecords) (\s@DescribeDBSnapshots' {} a -> s {maxRecords = a} :: DescribeDBSnapshots)

-- | A value that indicates whether to include manual DB cluster snapshots
-- that are public and can be copied or restored by any Amazon Web Services
-- account. By default, the public snapshots are not included.
--
-- You can share a manual DB snapshot as public by using the
-- ModifyDBSnapshotAttribute API.
--
-- This setting doesn\'t apply to RDS Custom.
describeDBSnapshots_includePublic :: Lens.Lens' DescribeDBSnapshots (Prelude.Maybe Prelude.Bool)
describeDBSnapshots_includePublic = Lens.lens (\DescribeDBSnapshots' {includePublic} -> includePublic) (\s@DescribeDBSnapshots' {} a -> s {includePublic = a} :: DescribeDBSnapshots)

-- | A specific DB resource ID to describe.
describeDBSnapshots_dbiResourceId :: Lens.Lens' DescribeDBSnapshots (Prelude.Maybe Prelude.Text)
describeDBSnapshots_dbiResourceId = Lens.lens (\DescribeDBSnapshots' {dbiResourceId} -> dbiResourceId) (\s@DescribeDBSnapshots' {} a -> s {dbiResourceId = a} :: DescribeDBSnapshots)

-- | The type of snapshots to be returned. You can specify one of the
-- following values:
--
-- -   @automated@ - Return all DB snapshots that have been automatically
--     taken by Amazon RDS for my Amazon Web Services account.
--
-- -   @manual@ - Return all DB snapshots that have been taken by my Amazon
--     Web Services account.
--
-- -   @shared@ - Return all manual DB snapshots that have been shared to
--     my Amazon Web Services account.
--
-- -   @public@ - Return all DB snapshots that have been marked as public.
--
-- -   @awsbackup@ - Return the DB snapshots managed by the Amazon Web
--     Services Backup service.
--
--     For information about Amazon Web Services Backup, see the
--     <https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html Amazon Web Services Backup Developer Guide.>
--
--     The @awsbackup@ type does not apply to Aurora.
--
-- If you don\'t specify a @SnapshotType@ value, then both automated and
-- manual snapshots are returned. Shared and public DB snapshots are not
-- included in the returned results by default. You can include shared
-- snapshots with these results by enabling the @IncludeShared@ parameter.
-- You can include public snapshots with these results by enabling the
-- @IncludePublic@ parameter.
--
-- The @IncludeShared@ and @IncludePublic@ parameters don\'t apply for
-- @SnapshotType@ values of @manual@ or @automated@. The @IncludePublic@
-- parameter doesn\'t apply when @SnapshotType@ is set to @shared@. The
-- @IncludeShared@ parameter doesn\'t apply when @SnapshotType@ is set to
-- @public@.
describeDBSnapshots_snapshotType :: Lens.Lens' DescribeDBSnapshots (Prelude.Maybe Prelude.Text)
describeDBSnapshots_snapshotType = Lens.lens (\DescribeDBSnapshots' {snapshotType} -> snapshotType) (\s@DescribeDBSnapshots' {} a -> s {snapshotType = a} :: DescribeDBSnapshots)

instance Core.AWSPager DescribeDBSnapshots where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeDBSnapshotsResponse_marker
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? describeDBSnapshotsResponse_dbSnapshots
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& describeDBSnapshots_marker
          Lens..~ rs
          Lens.^? describeDBSnapshotsResponse_marker
            Prelude.. Lens._Just

instance Core.AWSRequest DescribeDBSnapshots where
  type
    AWSResponse DescribeDBSnapshots =
      DescribeDBSnapshotsResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "DescribeDBSnapshotsResult"
      ( \s h x ->
          DescribeDBSnapshotsResponse'
            Prelude.<$> (x Core..@? "Marker")
            Prelude.<*> ( x Core..@? "DBSnapshots" Core..!@ Prelude.mempty
                            Prelude.>>= Core.may (Core.parseXMLList "DBSnapshot")
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeDBSnapshots where
  hashWithSalt _salt DescribeDBSnapshots' {..} =
    _salt `Prelude.hashWithSalt` includeShared
      `Prelude.hashWithSalt` marker
      `Prelude.hashWithSalt` dbInstanceIdentifier
      `Prelude.hashWithSalt` dbSnapshotIdentifier
      `Prelude.hashWithSalt` filters
      `Prelude.hashWithSalt` maxRecords
      `Prelude.hashWithSalt` includePublic
      `Prelude.hashWithSalt` dbiResourceId
      `Prelude.hashWithSalt` snapshotType

instance Prelude.NFData DescribeDBSnapshots where
  rnf DescribeDBSnapshots' {..} =
    Prelude.rnf includeShared
      `Prelude.seq` Prelude.rnf marker
      `Prelude.seq` Prelude.rnf dbInstanceIdentifier
      `Prelude.seq` Prelude.rnf dbSnapshotIdentifier
      `Prelude.seq` Prelude.rnf filters
      `Prelude.seq` Prelude.rnf maxRecords
      `Prelude.seq` Prelude.rnf includePublic
      `Prelude.seq` Prelude.rnf dbiResourceId
      `Prelude.seq` Prelude.rnf snapshotType

instance Core.ToHeaders DescribeDBSnapshots where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DescribeDBSnapshots where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeDBSnapshots where
  toQuery DescribeDBSnapshots' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("DescribeDBSnapshots" :: Prelude.ByteString),
        "Version"
          Core.=: ("2014-10-31" :: Prelude.ByteString),
        "IncludeShared" Core.=: includeShared,
        "Marker" Core.=: marker,
        "DBInstanceIdentifier" Core.=: dbInstanceIdentifier,
        "DBSnapshotIdentifier" Core.=: dbSnapshotIdentifier,
        "Filters"
          Core.=: Core.toQuery
            (Core.toQueryList "Filter" Prelude.<$> filters),
        "MaxRecords" Core.=: maxRecords,
        "IncludePublic" Core.=: includePublic,
        "DbiResourceId" Core.=: dbiResourceId,
        "SnapshotType" Core.=: snapshotType
      ]

-- | Contains the result of a successful invocation of the
-- @DescribeDBSnapshots@ action.
--
-- /See:/ 'newDescribeDBSnapshotsResponse' smart constructor.
data DescribeDBSnapshotsResponse = DescribeDBSnapshotsResponse'
  { -- | An optional pagination token provided by a previous request. If this
    -- parameter is specified, the response includes only records beyond the
    -- marker, up to the value specified by @MaxRecords@.
    marker :: Prelude.Maybe Prelude.Text,
    -- | A list of @DBSnapshot@ instances.
    dbSnapshots :: Prelude.Maybe [DBSnapshot],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeDBSnapshotsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'marker', 'describeDBSnapshotsResponse_marker' - An optional pagination token provided by a previous request. If this
-- parameter is specified, the response includes only records beyond the
-- marker, up to the value specified by @MaxRecords@.
--
-- 'dbSnapshots', 'describeDBSnapshotsResponse_dbSnapshots' - A list of @DBSnapshot@ instances.
--
-- 'httpStatus', 'describeDBSnapshotsResponse_httpStatus' - The response's http status code.
newDescribeDBSnapshotsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeDBSnapshotsResponse
newDescribeDBSnapshotsResponse pHttpStatus_ =
  DescribeDBSnapshotsResponse'
    { marker =
        Prelude.Nothing,
      dbSnapshots = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An optional pagination token provided by a previous request. If this
-- parameter is specified, the response includes only records beyond the
-- marker, up to the value specified by @MaxRecords@.
describeDBSnapshotsResponse_marker :: Lens.Lens' DescribeDBSnapshotsResponse (Prelude.Maybe Prelude.Text)
describeDBSnapshotsResponse_marker = Lens.lens (\DescribeDBSnapshotsResponse' {marker} -> marker) (\s@DescribeDBSnapshotsResponse' {} a -> s {marker = a} :: DescribeDBSnapshotsResponse)

-- | A list of @DBSnapshot@ instances.
describeDBSnapshotsResponse_dbSnapshots :: Lens.Lens' DescribeDBSnapshotsResponse (Prelude.Maybe [DBSnapshot])
describeDBSnapshotsResponse_dbSnapshots = Lens.lens (\DescribeDBSnapshotsResponse' {dbSnapshots} -> dbSnapshots) (\s@DescribeDBSnapshotsResponse' {} a -> s {dbSnapshots = a} :: DescribeDBSnapshotsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeDBSnapshotsResponse_httpStatus :: Lens.Lens' DescribeDBSnapshotsResponse Prelude.Int
describeDBSnapshotsResponse_httpStatus = Lens.lens (\DescribeDBSnapshotsResponse' {httpStatus} -> httpStatus) (\s@DescribeDBSnapshotsResponse' {} a -> s {httpStatus = a} :: DescribeDBSnapshotsResponse)

instance Prelude.NFData DescribeDBSnapshotsResponse where
  rnf DescribeDBSnapshotsResponse' {..} =
    Prelude.rnf marker
      `Prelude.seq` Prelude.rnf dbSnapshots
      `Prelude.seq` Prelude.rnf httpStatus
