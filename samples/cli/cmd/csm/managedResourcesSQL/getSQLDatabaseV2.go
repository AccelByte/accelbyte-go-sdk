// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package managedResourcesSQL

import (
	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclient/managed_resources_sql"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/csm"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetSQLDatabaseV2Cmd represents the GetSQLDatabaseV2 command
var GetSQLDatabaseV2Cmd = &cobra.Command{
	Use:   "getSQLDatabaseV2",
	Short: "Get SQL database V2",
	Long:  `Get SQL database V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		managedResourcesSQLService := &csm.ManagedResourcesSQLService{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		app, _ := cmd.Flags().GetString("app")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &managed_resources_sql.GetSQLDatabaseV2Params{
			App:       app,
			Namespace: namespace,
		}
		ok, errOK := managedResourcesSQLService.GetSQLDatabaseV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetSQLDatabaseV2Cmd.Flags().String("app", "", "App")
	_ = GetSQLDatabaseV2Cmd.MarkFlagRequired("app")
	GetSQLDatabaseV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetSQLDatabaseV2Cmd.MarkFlagRequired("namespace")
}
