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

// deleteImageCmd represents the deleteImage command
var deleteImageCmd = &cobra.Command{
	Use:   "deleteImage",
	Short: "Delete image",
	Long:  `Delete image`,
	RunE: func(cmd *cobra.Command, args []string) error {
		imageConfigService := &dsmc.ImageConfigService{
			Client:          factory.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		imageURI, _ := cmd.Flags().GetString("imageURI")
		version, _ := cmd.Flags().GetString("version")
		input := &image_config.DeleteImageParams{
			Namespace: namespace,
			ImageURI:  imageURI,
			Version:   version,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := imageConfigService.DeleteImage(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(deleteImageCmd)
	deleteImageCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = deleteImageCmd.MarkFlagRequired("namespace")
	deleteImageCmd.Flags().StringP("imageURI", "i", " ", "Image URI")
	_ = deleteImageCmd.MarkFlagRequired("imageURI")
	deleteImageCmd.Flags().StringP("version", "v", " ", "Version")
	_ = deleteImageCmd.MarkFlagRequired("version")
}
