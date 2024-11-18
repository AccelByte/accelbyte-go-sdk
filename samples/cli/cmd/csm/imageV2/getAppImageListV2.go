// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package imageV2

import (
	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclient/image_v2"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/csm"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetAppImageListV2Cmd represents the GetAppImageListV2 command
var GetAppImageListV2Cmd = &cobra.Command{
	Use:   "getAppImageListV2",
	Short: "Get app image list V2",
	Long:  `Get app image list V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		imageV2Service := &csm.ImageV2Service{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		app, _ := cmd.Flags().GetString("app")
		namespace, _ := cmd.Flags().GetString("namespace")
		cached, _ := cmd.Flags().GetString("cached")
		input := &image_v2.GetAppImageListV2Params{
			App:       app,
			Namespace: namespace,
			Cached:    &cached,
		}
		ok, errOK := imageV2Service.GetAppImageListV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetAppImageListV2Cmd.Flags().String("app", "", "App")
	_ = GetAppImageListV2Cmd.MarkFlagRequired("app")
	GetAppImageListV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetAppImageListV2Cmd.MarkFlagRequired("namespace")
	GetAppImageListV2Cmd.Flags().String("cached", "", "Cached")
}
