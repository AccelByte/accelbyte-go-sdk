// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package dlc

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/d_l_c"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetPlatformDLCConfigCmd represents the GetPlatformDLCConfig command
var GetPlatformDLCConfigCmd = &cobra.Command{
	Use:   "getPlatformDLCConfig",
	Short: "Get platform DLC config",
	Long:  `Get platform DLC config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dlcService := &platform.DLCService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &d_l_c.GetPlatformDLCConfigParams{
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := dlcService.GetPlatformDLCConfig(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}
		return nil
	},
}

func init() {
	GetPlatformDLCConfigCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetPlatformDLCConfigCmd.MarkFlagRequired("namespace")
}
