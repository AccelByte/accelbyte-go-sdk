// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package view

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/view"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetViewCmd represents the GetView command
var GetViewCmd = &cobra.Command{
	Use:   "getView",
	Short: "Get view",
	Long:  `Get view`,
	RunE: func(cmd *cobra.Command, args []string) error {
		viewService := &platform.ViewService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		viewId, _ := cmd.Flags().GetString("viewId")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &view.GetViewParams{
			Namespace: namespace,
			ViewID:    viewId,
			StoreID:   &storeId,
		}
		ok, errOK := viewService.GetViewShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetViewCmd.Flags().String("namespace", "", "Namespace")
	_ = GetViewCmd.MarkFlagRequired("namespace")
	GetViewCmd.Flags().String("viewId", "", "View id")
	_ = GetViewCmd.MarkFlagRequired("viewId")
	GetViewCmd.Flags().String("storeId", "", "Store id")
}
