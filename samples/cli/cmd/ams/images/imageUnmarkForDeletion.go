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

// ImageUnmarkForDeletionCmd represents the ImageUnmarkForDeletion command
var ImageUnmarkForDeletionCmd = &cobra.Command{
	Use:   "imageUnmarkForDeletion",
	Short: "Image unmark for deletion",
	Long:  `Image unmark for deletion`,
	RunE: func(cmd *cobra.Command, args []string) error {
		imagesService := &ams.ImagesService{
			Client:          factory.NewAmsClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		imageID, _ := cmd.Flags().GetString("imageID")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &images.ImageUnmarkForDeletionParams{
			ImageID:   imageID,
			Namespace: namespace,
		}
		errAccepted := imagesService.ImageUnmarkForDeletionShort(input)
		if errAccepted != nil {
			logrus.Error(errAccepted)

			return errAccepted
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	ImageUnmarkForDeletionCmd.Flags().String("imageID", "", "Image ID")
	_ = ImageUnmarkForDeletionCmd.MarkFlagRequired("imageID")
	ImageUnmarkForDeletionCmd.Flags().String("namespace", "", "Namespace")
	_ = ImageUnmarkForDeletionCmd.MarkFlagRequired("namespace")
}
