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

// ImageMarkForDeletionCmd represents the ImageMarkForDeletion command
var ImageMarkForDeletionCmd = &cobra.Command{
	Use:   "imageMarkForDeletion",
	Short: "Image mark for deletion",
	Long:  `Image mark for deletion`,
	RunE: func(cmd *cobra.Command, args []string) error {
		imagesService := &ams.ImagesService{
			Client:          factory.NewAmsClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		imageID, _ := cmd.Flags().GetString("imageID")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &images.ImageMarkForDeletionParams{
			ImageID:   imageID,
			Namespace: namespace,
		}
		errAccepted := imagesService.ImageMarkForDeletionShort(input)
		if errAccepted != nil {
			logrus.Error(errAccepted)

			return errAccepted
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	ImageMarkForDeletionCmd.Flags().String("imageID", "", "Image ID")
	_ = ImageMarkForDeletionCmd.MarkFlagRequired("imageID")
	ImageMarkForDeletionCmd.Flags().String("namespace", "", "Namespace")
	_ = ImageMarkForDeletionCmd.MarkFlagRequired("namespace")
}
