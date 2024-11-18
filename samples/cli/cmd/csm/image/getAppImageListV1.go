// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package image

import (
	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclient/image"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/csm"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetAppImageListV1Cmd represents the GetAppImageListV1 command
var GetAppImageListV1Cmd = &cobra.Command{
	Use:   "getAppImageListV1",
	Short: "Get app image list V1",
	Long:  `Get app image list V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		imageService := &csm.ImageService{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		app, _ := cmd.Flags().GetString("app")
		namespace, _ := cmd.Flags().GetString("namespace")
		cached, _ := cmd.Flags().GetString("cached")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &image.GetAppImageListV1Params{
			App:       app,
			Namespace: namespace,
			Cached:    &cached,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, errOK := imageService.GetAppImageListV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetAppImageListV1Cmd.Flags().String("app", "", "App")
	_ = GetAppImageListV1Cmd.MarkFlagRequired("app")
	GetAppImageListV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetAppImageListV1Cmd.MarkFlagRequired("namespace")
	GetAppImageListV1Cmd.Flags().String("cached", "", "Cached")
	GetAppImageListV1Cmd.Flags().Int64("limit", 20, "Limit")
	GetAppImageListV1Cmd.Flags().Int64("offset", 0, "Offset")
}
