// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package imageConfig

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/image_config"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/dsmc"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetImagePatchesCmd represents the GetImagePatches command
var GetImagePatchesCmd = &cobra.Command{
	Use:   "getImagePatches",
	Short: "Get image patches",
	Long:  `Get image patches`,
	RunE: func(cmd *cobra.Command, args []string) error {
		imageConfigService := &dsmc.ImageConfigService{
			Client:          factory.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		version, _ := cmd.Flags().GetString("version")
		input := &image_config.GetImagePatchesParams{
			Namespace: namespace,
			Version:   version,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := imageConfigService.GetImagePatches(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			response, errIndent := json.MarshalIndent(ok, "", "    ")
			if errIndent != nil {
				return errIndent
			} else {
				logrus.Infof("Response %s", string(response))
			}
		}
		return nil
	},
}

func init() {
	GetImagePatchesCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetImagePatchesCmd.MarkFlagRequired("namespace")
	GetImagePatchesCmd.Flags().StringP("version", "", "", "Version")
	_ = GetImagePatchesCmd.MarkFlagRequired("version")
}
