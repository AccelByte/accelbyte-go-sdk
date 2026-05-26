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

// GetSQLAppListV2Cmd represents the GetSQLAppListV2 command
var GetSQLAppListV2Cmd = &cobra.Command{
	Use:   "getSQLAppListV2",
	Short: "Get SQL app list V2",
	Long:  `Get SQL app list V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		managedResourcesSQLService := &csm.ManagedResourcesSQLService{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		resourceId, _ := cmd.Flags().GetString("resourceId")
		appName, _ := cmd.Flags().GetString("appName")
		gameNamespace, _ := cmd.Flags().GetString("gameNamespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &managed_resources_sql.GetSQLAppListV2Params{
			Namespace:     namespace,
			ResourceID:    resourceId,
			AppName:       &appName,
			GameNamespace: &gameNamespace,
			Limit:         &limit,
			Offset:        &offset,
		}
		ok, errOK := managedResourcesSQLService.GetSQLAppListV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetSQLAppListV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetSQLAppListV2Cmd.MarkFlagRequired("namespace")
	GetSQLAppListV2Cmd.Flags().String("resourceId", "", "Resource id")
	_ = GetSQLAppListV2Cmd.MarkFlagRequired("resourceId")
	GetSQLAppListV2Cmd.Flags().String("appName", "", "App name")
	GetSQLAppListV2Cmd.Flags().String("gameNamespace", "", "Game namespace")
	GetSQLAppListV2Cmd.Flags().Int64("limit", 20, "Limit")
	GetSQLAppListV2Cmd.Flags().Int64("offset", 0, "Offset")
}
