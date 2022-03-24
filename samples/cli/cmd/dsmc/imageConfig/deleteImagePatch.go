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

// DeleteImagePatchCmd represents the DeleteImagePatch command
var DeleteImagePatchCmd = &cobra.Command{
	Use:   "deleteImagePatch",
	Short: "Delete image patch",
	Long:  `Delete image patch`,
	RunE: func(cmd *cobra.Command, args []string) error {
		imageConfigService := &dsmc.ImageConfigService{
			Client:          factory.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		imageURI, _ := cmd.Flags().GetString("imageURI")
		version, _ := cmd.Flags().GetString("version")
		versionPatch, _ := cmd.Flags().GetString("versionPatch")
		input := &image_config.DeleteImagePatchParams{
			Namespace:    namespace,
			ImageURI:     imageURI,
			Version:      version,
			VersionPatch: versionPatch,
		}
		errInput := imageConfigService.DeleteImagePatchShort(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	DeleteImagePatchCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = DeleteImagePatchCmd.MarkFlagRequired("namespace")
	DeleteImagePatchCmd.Flags().StringP("imageURI", "", "", "Image URI")
	_ = DeleteImagePatchCmd.MarkFlagRequired("imageURI")
	DeleteImagePatchCmd.Flags().StringP("version", "", "", "Version")
	_ = DeleteImagePatchCmd.MarkFlagRequired("version")
	DeleteImagePatchCmd.Flags().StringP("versionPatch", "", "", "Version patch")
	_ = DeleteImagePatchCmd.MarkFlagRequired("versionPatch")
}
