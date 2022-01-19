// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/image_config"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/dsmc"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// imageDetailClientCmd represents the imageDetailClient command
var imageDetailClientCmd = &cobra.Command{
	Use:   "imageDetailClient",
	Short: "Image detail client",
	Long:  `Image detail client`,
	RunE: func(cmd *cobra.Command, args []string) error {
		imageConfigService := &dsmc.ImageConfigService{
			Client:          factory.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		version, _ := cmd.Flags().GetString("version")
		input := &image_config.ImageDetailClientParams{
			Namespace: namespace,
			Version:   version,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := imageConfigService.ImageDetailClient(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(imageDetailClientCmd)
	imageDetailClientCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = imageDetailClientCmd.MarkFlagRequired("namespace")
	imageDetailClientCmd.Flags().StringP("version", "v", " ", "Version")
	_ = imageDetailClientCmd.MarkFlagRequired("version")
}
