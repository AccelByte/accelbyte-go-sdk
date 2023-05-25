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

// ImageGetCmd represents the ImageGet command
var ImageGetCmd = &cobra.Command{
	Use:   "imageGet",
	Short: "Image get",
	Long:  `Image get`,
	RunE: func(cmd *cobra.Command, args []string) error {
		imagesService := &ams.ImagesService{
			Client:          factory.NewAmsClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		imageID, _ := cmd.Flags().GetString("imageID")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &images.ImageGetParams{
			ImageID:   imageID,
			Namespace: namespace,
		}
		ok, errOK := imagesService.ImageGetShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	ImageGetCmd.Flags().String("imageID", "", "Image ID")
	_ = ImageGetCmd.MarkFlagRequired("imageID")
	ImageGetCmd.Flags().String("namespace", "", "Namespace")
	_ = ImageGetCmd.MarkFlagRequired("namespace")
}
