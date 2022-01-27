// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package imageConfig

import (
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/image_config"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/dsmc"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetImageDetailCmd represents the GetImageDetail command
var GetImageDetailCmd = &cobra.Command{
	Use:   "GetImageDetail",
	Short: "Get image detail",
	Long:  `Get image detail`,
	RunE: func(cmd *cobra.Command, args []string) error {
		imageConfigService := &dsmc.ImageConfigService{
			Client:          factory.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		version, _ := cmd.Flags().GetString("version")
		input := &image_config.GetImageDetailParams{
			Namespace: namespace,
			Version:   version,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := imageConfigService.GetImageDetail(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	GetImageDetailCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = GetImageDetailCmd.MarkFlagRequired("namespace")
	GetImageDetailCmd.Flags().StringP("version", "vn", " ", "Version")
	_ = GetImageDetailCmd.MarkFlagRequired("version")
}
