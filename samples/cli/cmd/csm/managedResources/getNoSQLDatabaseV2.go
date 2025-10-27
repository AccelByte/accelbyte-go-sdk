// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package managedResources

import (
	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclient/managed_resources"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/csm"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetNoSQLDatabaseV2Cmd represents the GetNoSQLDatabaseV2 command
var GetNoSQLDatabaseV2Cmd = &cobra.Command{
	Use:   "getNoSQLDatabaseV2",
	Short: "Get no SQL database V2",
	Long:  `Get no SQL database V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		managedResourcesService := &csm.ManagedResourcesService{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		app, _ := cmd.Flags().GetString("app")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &managed_resources.GetNoSQLDatabaseV2Params{
			App:       app,
			Namespace: namespace,
		}
		ok, errOK := managedResourcesService.GetNoSQLDatabaseV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetNoSQLDatabaseV2Cmd.Flags().String("app", "", "App")
	_ = GetNoSQLDatabaseV2Cmd.MarkFlagRequired("app")
	GetNoSQLDatabaseV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetNoSQLDatabaseV2Cmd.MarkFlagRequired("namespace")
}
