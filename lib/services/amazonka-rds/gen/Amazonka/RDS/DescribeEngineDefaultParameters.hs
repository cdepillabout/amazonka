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
-- Module      : Amazonka.RDS.DescribeEngineDefaultParameters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the default engine and system parameter information for the
-- specified database engine.
--
-- This operation returns paginated results.
module Amazonka.RDS.DescribeEngineDefaultParameters
  ( -- * Creating a Request
    DescribeEngineDefaultParameters (..),
    newDescribeEngineDefaultParameters,

    -- * Request Lenses
    describeEngineDefaultParameters_marker,
    describeEngineDefaultParameters_filters,
    describeEngineDefaultParameters_maxRecords,
    describeEngineDefaultParameters_dbParameterGroupFamily,

    -- * Destructuring the Response
    DescribeEngineDefaultParametersResponse (..),
    newDescribeEngineDefaultParametersResponse,

    -- * Response Lenses
    describeEngineDefaultParametersResponse_httpStatus,
    describeEngineDefaultParametersResponse_engineDefaults,
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
-- /See:/ 'newDescribeEngineDefaultParameters' smart constructor.
data DescribeEngineDefaultParameters = DescribeEngineDefaultParameters'
  { -- | An optional pagination token provided by a previous
    -- @DescribeEngineDefaultParameters@ request. If this parameter is
    -- specified, the response includes only records beyond the marker, up to
    -- the value specified by @MaxRecords@.
    marker :: Prelude.Maybe Prelude.Text,
    -- | This parameter isn\'t currently supported.
    filters :: Prelude.Maybe [Filter],
    -- | The maximum number of records to include in the response. If more
    -- records exist than the specified @MaxRecords@ value, a pagination token
    -- called a marker is included in the response so you can retrieve the
    -- remaining results.
    --
    -- Default: 100
    --
    -- Constraints: Minimum 20, maximum 100.
    maxRecords :: Prelude.Maybe Prelude.Int,
    -- | The name of the DB parameter group family.
    --
    -- Valid Values:
    --
    -- -   @aurora5.6@
    --
    -- -   @aurora-mysql5.7@
    --
    -- -   @aurora-mysql8.0@
    --
    -- -   @aurora-postgresql10@
    --
    -- -   @aurora-postgresql11@
    --
    -- -   @aurora-postgresql12@
    --
    -- -   @aurora-postgresql13@
    --
    -- -   @mariadb10.2@
    --
    -- -   @mariadb10.3@
    --
    -- -   @mariadb10.4@
    --
    -- -   @mariadb10.5@
    --
    -- -   @mariadb10.6@
    --
    -- -   @mysql5.7@
    --
    -- -   @mysql8.0@
    --
    -- -   @postgres10@
    --
    -- -   @postgres11@
    --
    -- -   @postgres12@
    --
    -- -   @postgres13@
    --
    -- -   @postgres14@
    --
    -- -   @sqlserver-ee-11.0@
    --
    -- -   @sqlserver-ee-12.0@
    --
    -- -   @sqlserver-ee-13.0@
    --
    -- -   @sqlserver-ee-14.0@
    --
    -- -   @sqlserver-ee-15.0@
    --
    -- -   @sqlserver-ex-11.0@
    --
    -- -   @sqlserver-ex-12.0@
    --
    -- -   @sqlserver-ex-13.0@
    --
    -- -   @sqlserver-ex-14.0@
    --
    -- -   @sqlserver-ex-15.0@
    --
    -- -   @sqlserver-se-11.0@
    --
    -- -   @sqlserver-se-12.0@
    --
    -- -   @sqlserver-se-13.0@
    --
    -- -   @sqlserver-se-14.0@
    --
    -- -   @sqlserver-se-15.0@
    --
    -- -   @sqlserver-web-11.0@
    --
    -- -   @sqlserver-web-12.0@
    --
    -- -   @sqlserver-web-13.0@
    --
    -- -   @sqlserver-web-14.0@
    --
    -- -   @sqlserver-web-15.0@
    dbParameterGroupFamily :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeEngineDefaultParameters' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'marker', 'describeEngineDefaultParameters_marker' - An optional pagination token provided by a previous
-- @DescribeEngineDefaultParameters@ request. If this parameter is
-- specified, the response includes only records beyond the marker, up to
-- the value specified by @MaxRecords@.
--
-- 'filters', 'describeEngineDefaultParameters_filters' - This parameter isn\'t currently supported.
--
-- 'maxRecords', 'describeEngineDefaultParameters_maxRecords' - The maximum number of records to include in the response. If more
-- records exist than the specified @MaxRecords@ value, a pagination token
-- called a marker is included in the response so you can retrieve the
-- remaining results.
--
-- Default: 100
--
-- Constraints: Minimum 20, maximum 100.
--
-- 'dbParameterGroupFamily', 'describeEngineDefaultParameters_dbParameterGroupFamily' - The name of the DB parameter group family.
--
-- Valid Values:
--
-- -   @aurora5.6@
--
-- -   @aurora-mysql5.7@
--
-- -   @aurora-mysql8.0@
--
-- -   @aurora-postgresql10@
--
-- -   @aurora-postgresql11@
--
-- -   @aurora-postgresql12@
--
-- -   @aurora-postgresql13@
--
-- -   @mariadb10.2@
--
-- -   @mariadb10.3@
--
-- -   @mariadb10.4@
--
-- -   @mariadb10.5@
--
-- -   @mariadb10.6@
--
-- -   @mysql5.7@
--
-- -   @mysql8.0@
--
-- -   @postgres10@
--
-- -   @postgres11@
--
-- -   @postgres12@
--
-- -   @postgres13@
--
-- -   @postgres14@
--
-- -   @sqlserver-ee-11.0@
--
-- -   @sqlserver-ee-12.0@
--
-- -   @sqlserver-ee-13.0@
--
-- -   @sqlserver-ee-14.0@
--
-- -   @sqlserver-ee-15.0@
--
-- -   @sqlserver-ex-11.0@
--
-- -   @sqlserver-ex-12.0@
--
-- -   @sqlserver-ex-13.0@
--
-- -   @sqlserver-ex-14.0@
--
-- -   @sqlserver-ex-15.0@
--
-- -   @sqlserver-se-11.0@
--
-- -   @sqlserver-se-12.0@
--
-- -   @sqlserver-se-13.0@
--
-- -   @sqlserver-se-14.0@
--
-- -   @sqlserver-se-15.0@
--
-- -   @sqlserver-web-11.0@
--
-- -   @sqlserver-web-12.0@
--
-- -   @sqlserver-web-13.0@
--
-- -   @sqlserver-web-14.0@
--
-- -   @sqlserver-web-15.0@
newDescribeEngineDefaultParameters ::
  -- | 'dbParameterGroupFamily'
  Prelude.Text ->
  DescribeEngineDefaultParameters
newDescribeEngineDefaultParameters
  pDBParameterGroupFamily_ =
    DescribeEngineDefaultParameters'
      { marker =
          Prelude.Nothing,
        filters = Prelude.Nothing,
        maxRecords = Prelude.Nothing,
        dbParameterGroupFamily =
          pDBParameterGroupFamily_
      }

-- | An optional pagination token provided by a previous
-- @DescribeEngineDefaultParameters@ request. If this parameter is
-- specified, the response includes only records beyond the marker, up to
-- the value specified by @MaxRecords@.
describeEngineDefaultParameters_marker :: Lens.Lens' DescribeEngineDefaultParameters (Prelude.Maybe Prelude.Text)
describeEngineDefaultParameters_marker = Lens.lens (\DescribeEngineDefaultParameters' {marker} -> marker) (\s@DescribeEngineDefaultParameters' {} a -> s {marker = a} :: DescribeEngineDefaultParameters)

-- | This parameter isn\'t currently supported.
describeEngineDefaultParameters_filters :: Lens.Lens' DescribeEngineDefaultParameters (Prelude.Maybe [Filter])
describeEngineDefaultParameters_filters = Lens.lens (\DescribeEngineDefaultParameters' {filters} -> filters) (\s@DescribeEngineDefaultParameters' {} a -> s {filters = a} :: DescribeEngineDefaultParameters) Prelude.. Lens.mapping Lens.coerced

-- | The maximum number of records to include in the response. If more
-- records exist than the specified @MaxRecords@ value, a pagination token
-- called a marker is included in the response so you can retrieve the
-- remaining results.
--
-- Default: 100
--
-- Constraints: Minimum 20, maximum 100.
describeEngineDefaultParameters_maxRecords :: Lens.Lens' DescribeEngineDefaultParameters (Prelude.Maybe Prelude.Int)
describeEngineDefaultParameters_maxRecords = Lens.lens (\DescribeEngineDefaultParameters' {maxRecords} -> maxRecords) (\s@DescribeEngineDefaultParameters' {} a -> s {maxRecords = a} :: DescribeEngineDefaultParameters)

-- | The name of the DB parameter group family.
--
-- Valid Values:
--
-- -   @aurora5.6@
--
-- -   @aurora-mysql5.7@
--
-- -   @aurora-mysql8.0@
--
-- -   @aurora-postgresql10@
--
-- -   @aurora-postgresql11@
--
-- -   @aurora-postgresql12@
--
-- -   @aurora-postgresql13@
--
-- -   @mariadb10.2@
--
-- -   @mariadb10.3@
--
-- -   @mariadb10.4@
--
-- -   @mariadb10.5@
--
-- -   @mariadb10.6@
--
-- -   @mysql5.7@
--
-- -   @mysql8.0@
--
-- -   @postgres10@
--
-- -   @postgres11@
--
-- -   @postgres12@
--
-- -   @postgres13@
--
-- -   @postgres14@
--
-- -   @sqlserver-ee-11.0@
--
-- -   @sqlserver-ee-12.0@
--
-- -   @sqlserver-ee-13.0@
--
-- -   @sqlserver-ee-14.0@
--
-- -   @sqlserver-ee-15.0@
--
-- -   @sqlserver-ex-11.0@
--
-- -   @sqlserver-ex-12.0@
--
-- -   @sqlserver-ex-13.0@
--
-- -   @sqlserver-ex-14.0@
--
-- -   @sqlserver-ex-15.0@
--
-- -   @sqlserver-se-11.0@
--
-- -   @sqlserver-se-12.0@
--
-- -   @sqlserver-se-13.0@
--
-- -   @sqlserver-se-14.0@
--
-- -   @sqlserver-se-15.0@
--
-- -   @sqlserver-web-11.0@
--
-- -   @sqlserver-web-12.0@
--
-- -   @sqlserver-web-13.0@
--
-- -   @sqlserver-web-14.0@
--
-- -   @sqlserver-web-15.0@
describeEngineDefaultParameters_dbParameterGroupFamily :: Lens.Lens' DescribeEngineDefaultParameters Prelude.Text
describeEngineDefaultParameters_dbParameterGroupFamily = Lens.lens (\DescribeEngineDefaultParameters' {dbParameterGroupFamily} -> dbParameterGroupFamily) (\s@DescribeEngineDefaultParameters' {} a -> s {dbParameterGroupFamily = a} :: DescribeEngineDefaultParameters)

instance
  Core.AWSPager
    DescribeEngineDefaultParameters
  where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeEngineDefaultParametersResponse_engineDefaults
              Prelude.. engineDefaults_marker
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? describeEngineDefaultParametersResponse_engineDefaults
              Prelude.. engineDefaults_parameters
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& describeEngineDefaultParameters_marker
          Lens..~ rs
          Lens.^? describeEngineDefaultParametersResponse_engineDefaults
            Prelude.. engineDefaults_marker
            Prelude.. Lens._Just

instance
  Core.AWSRequest
    DescribeEngineDefaultParameters
  where
  type
    AWSResponse DescribeEngineDefaultParameters =
      DescribeEngineDefaultParametersResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "DescribeEngineDefaultParametersResult"
      ( \s h x ->
          DescribeEngineDefaultParametersResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..@ "EngineDefaults")
      )

instance
  Prelude.Hashable
    DescribeEngineDefaultParameters
  where
  hashWithSalt
    _salt
    DescribeEngineDefaultParameters' {..} =
      _salt `Prelude.hashWithSalt` marker
        `Prelude.hashWithSalt` filters
        `Prelude.hashWithSalt` maxRecords
        `Prelude.hashWithSalt` dbParameterGroupFamily

instance
  Prelude.NFData
    DescribeEngineDefaultParameters
  where
  rnf DescribeEngineDefaultParameters' {..} =
    Prelude.rnf marker
      `Prelude.seq` Prelude.rnf filters
      `Prelude.seq` Prelude.rnf maxRecords
      `Prelude.seq` Prelude.rnf dbParameterGroupFamily

instance
  Core.ToHeaders
    DescribeEngineDefaultParameters
  where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DescribeEngineDefaultParameters where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeEngineDefaultParameters where
  toQuery DescribeEngineDefaultParameters' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ( "DescribeEngineDefaultParameters" ::
                      Prelude.ByteString
                  ),
        "Version"
          Core.=: ("2014-10-31" :: Prelude.ByteString),
        "Marker" Core.=: marker,
        "Filters"
          Core.=: Core.toQuery
            (Core.toQueryList "Filter" Prelude.<$> filters),
        "MaxRecords" Core.=: maxRecords,
        "DBParameterGroupFamily"
          Core.=: dbParameterGroupFamily
      ]

-- | /See:/ 'newDescribeEngineDefaultParametersResponse' smart constructor.
data DescribeEngineDefaultParametersResponse = DescribeEngineDefaultParametersResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    engineDefaults :: EngineDefaults
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeEngineDefaultParametersResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'describeEngineDefaultParametersResponse_httpStatus' - The response's http status code.
--
-- 'engineDefaults', 'describeEngineDefaultParametersResponse_engineDefaults' - Undocumented member.
newDescribeEngineDefaultParametersResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'engineDefaults'
  EngineDefaults ->
  DescribeEngineDefaultParametersResponse
newDescribeEngineDefaultParametersResponse
  pHttpStatus_
  pEngineDefaults_ =
    DescribeEngineDefaultParametersResponse'
      { httpStatus =
          pHttpStatus_,
        engineDefaults = pEngineDefaults_
      }

-- | The response's http status code.
describeEngineDefaultParametersResponse_httpStatus :: Lens.Lens' DescribeEngineDefaultParametersResponse Prelude.Int
describeEngineDefaultParametersResponse_httpStatus = Lens.lens (\DescribeEngineDefaultParametersResponse' {httpStatus} -> httpStatus) (\s@DescribeEngineDefaultParametersResponse' {} a -> s {httpStatus = a} :: DescribeEngineDefaultParametersResponse)

-- | Undocumented member.
describeEngineDefaultParametersResponse_engineDefaults :: Lens.Lens' DescribeEngineDefaultParametersResponse EngineDefaults
describeEngineDefaultParametersResponse_engineDefaults = Lens.lens (\DescribeEngineDefaultParametersResponse' {engineDefaults} -> engineDefaults) (\s@DescribeEngineDefaultParametersResponse' {} a -> s {engineDefaults = a} :: DescribeEngineDefaultParametersResponse)

instance
  Prelude.NFData
    DescribeEngineDefaultParametersResponse
  where
  rnf DescribeEngineDefaultParametersResponse' {..} =
    Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf engineDefaults
