// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package managedResourcesKeyValue

import (
	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclient/managed_resources_key_value"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/csm"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetIntegrationAppKeyValueClusterV2Cmd represents the GetIntegrationAppKeyValueClusterV2 command
var GetIntegrationAppKeyValueClusterV2Cmd = &cobra.Command{
	Use:   "getIntegrationAppKeyValueClusterV2",
	Short: "Get integration app key value cluster V2",
	Long:  `Get integration app key value cluster V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		managedResourcesKeyValueService := &csm.ManagedResourcesKeyValueService{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		app, _ := cmd.Flags().GetString("app")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &managed_resources_key_value.GetIntegrationAppKeyValueClusterV2Params{
			App:       app,
			Namespace: namespace,
		}
		ok, errOK := managedResourcesKeyValueService.GetIntegrationAppKeyValueClusterV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetIntegrationAppKeyValueClusterV2Cmd.Flags().String("app", "", "App")
	_ = GetIntegrationAppKeyValueClusterV2Cmd.MarkFlagRequired("app")
	GetIntegrationAppKeyValueClusterV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetIntegrationAppKeyValueClusterV2Cmd.MarkFlagRequired("namespace")
}
