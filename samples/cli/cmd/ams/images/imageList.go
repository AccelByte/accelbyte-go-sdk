// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package images

import (
	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclient/images"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ams"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ImageListCmd represents the ImageList command
var ImageListCmd = &cobra.Command{
	Use:   "imageList",
	Short: "Image list",
	Long:  `Image list`,
	RunE: func(cmd *cobra.Command, args []string) error {
		imagesService := &ams.ImagesService{
			Client:          factory.NewAmsClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &images.ImageListParams{
			Namespace: namespace,
		}
		ok, errOK := imagesService.ImageListShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	ImageListCmd.Flags().String("namespace", "", "Namespace")
	_ = ImageListCmd.MarkFlagRequired("namespace")
}
