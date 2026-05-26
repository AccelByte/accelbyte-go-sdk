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

// RemoveIntegrationAppKeyValueClusterV2Cmd represents the RemoveIntegrationAppKeyValueClusterV2 command
var RemoveIntegrationAppKeyValueClusterV2Cmd = &cobra.Command{
	Use:   "removeIntegrationAppKeyValueClusterV2",
	Short: "Remove integration app key value cluster V2",
	Long:  `Remove integration app key value cluster V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		managedResourcesKeyValueService := &csm.ManagedResourcesKeyValueService{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		app, _ := cmd.Flags().GetString("app")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &managed_resources_key_value.RemoveIntegrationAppKeyValueClusterV2Params{
			App:       app,
			Namespace: namespace,
		}
		errNoContent := managedResourcesKeyValueService.RemoveIntegrationAppKeyValueClusterV2Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	RemoveIntegrationAppKeyValueClusterV2Cmd.Flags().String("app", "", "App")
	_ = RemoveIntegrationAppKeyValueClusterV2Cmd.MarkFlagRequired("app")
	RemoveIntegrationAppKeyValueClusterV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = RemoveIntegrationAppKeyValueClusterV2Cmd.MarkFlagRequired("namespace")
}
