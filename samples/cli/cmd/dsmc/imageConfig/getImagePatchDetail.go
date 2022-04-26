// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package imageConfig

import (
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/image_config"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/dsmc"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetImagePatchDetailCmd represents the GetImagePatchDetail command
var GetImagePatchDetailCmd = &cobra.Command{
	Use:   "getImagePatchDetail",
	Short: "Get image patch detail",
	Long:  `Get image patch detail`,
	RunE: func(cmd *cobra.Command, args []string) error {
		imageConfigService := &dsmc.ImageConfigService{
			Client:          factory.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		version, _ := cmd.Flags().GetString("version")
		versionPatch, _ := cmd.Flags().GetString("versionPatch")
		input := &image_config.GetImagePatchDetailParams{
			Namespace:    namespace,
			Version:      version,
			VersionPatch: versionPatch,
		}
		ok, err := imageConfigService.GetImagePatchDetailShort(input)
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
	GetImagePatchDetailCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetImagePatchDetailCmd.MarkFlagRequired("namespace")
	GetImagePatchDetailCmd.Flags().StringP("version", "", "", "Version")
	_ = GetImagePatchDetailCmd.MarkFlagRequired("version")
	GetImagePatchDetailCmd.Flags().StringP("versionPatch", "", "", "Version patch")
	_ = GetImagePatchDetailCmd.MarkFlagRequired("versionPatch")
}
