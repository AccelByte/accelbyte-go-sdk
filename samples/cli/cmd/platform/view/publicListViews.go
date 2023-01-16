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

// PublicListViewsCmd represents the PublicListViews command
var PublicListViewsCmd = &cobra.Command{
	Use:   "publicListViews",
	Short: "Public list views",
	Long:  `Public list views`,
	RunE: func(cmd *cobra.Command, args []string) error {
		viewService := &platform.ViewService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		language, _ := cmd.Flags().GetString("language")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &view.PublicListViewsParams{
			Namespace: namespace,
			UserID:    userId,
			Language:  &language,
			StoreID:   &storeId,
		}
		ok, err := viewService.PublicListViewsShort(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	PublicListViewsCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicListViewsCmd.MarkFlagRequired("namespace")
	PublicListViewsCmd.Flags().String("userId", "", "User id")
	_ = PublicListViewsCmd.MarkFlagRequired("userId")
	PublicListViewsCmd.Flags().String("language", "", "Language")
	PublicListViewsCmd.Flags().String("storeId", "", "Store id")
}
