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

// DeleteViewCmd represents the DeleteView command
var DeleteViewCmd = &cobra.Command{
	Use:   "deleteView",
	Short: "Delete view",
	Long:  `Delete view`,
	RunE: func(cmd *cobra.Command, args []string) error {
		viewService := &platform.ViewService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		viewId, _ := cmd.Flags().GetString("viewId")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &view.DeleteViewParams{
			Namespace: namespace,
			ViewID:    viewId,
			StoreID:   storeId,
		}
		errInput := viewService.DeleteViewShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	DeleteViewCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteViewCmd.MarkFlagRequired("namespace")
	DeleteViewCmd.Flags().String("viewId", "", "View id")
	_ = DeleteViewCmd.MarkFlagRequired("viewId")
	DeleteViewCmd.Flags().String("storeId", "", "Store id")
	_ = DeleteViewCmd.MarkFlagRequired("storeId")
}
