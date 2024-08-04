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

// ImagesStorageCmd represents the ImagesStorage command
var ImagesStorageCmd = &cobra.Command{
	Use:   "imagesStorage",
	Short: "Images storage",
	Long:  `Images storage`,
	RunE: func(cmd *cobra.Command, args []string) error {
		imagesService := &ams.ImagesService{
			Client:          factory.NewAmsClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &images.ImagesStorageParams{
			Namespace: namespace,
		}
		ok, errOK := imagesService.ImagesStorageShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	ImagesStorageCmd.Flags().String("namespace", "", "Namespace")
	_ = ImagesStorageCmd.MarkFlagRequired("namespace")
}
