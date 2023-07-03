// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package servicePluginConfig

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/service_plugin_config"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetLootBoxGrpcInfoCmd represents the GetLootBoxGrpcInfo command
var GetLootBoxGrpcInfoCmd = &cobra.Command{
	Use:   "getLootBoxGrpcInfo",
	Short: "Get loot box grpc info",
	Long:  `Get loot box grpc info`,
	RunE: func(cmd *cobra.Command, args []string) error {
		servicePluginConfigService := &platform.ServicePluginConfigService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		force, _ := cmd.Flags().GetBool("force")
		input := &service_plugin_config.GetLootBoxGrpcInfoParams{
			Namespace: namespace,
			Force:     &force,
		}
		ok, errOK := servicePluginConfigService.GetLootBoxGrpcInfoShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetLootBoxGrpcInfoCmd.Flags().String("namespace", "", "Namespace")
	_ = GetLootBoxGrpcInfoCmd.MarkFlagRequired("namespace")
	GetLootBoxGrpcInfoCmd.Flags().Bool("force", false, "Force")
}
