// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package item

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/item"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DefeatureItemCmd represents the DefeatureItem command
var DefeatureItemCmd = &cobra.Command{
	Use:   "defeatureItem",
	Short: "Defeature item",
	Long:  `Defeature item`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		feature, _ := cmd.Flags().GetString("feature")
		itemId, _ := cmd.Flags().GetString("itemId")
		namespace, _ := cmd.Flags().GetString("namespace")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &item.DefeatureItemParams{
			Feature:   feature,
			ItemID:    itemId,
			Namespace: namespace,
			StoreID:   storeId,
		}
		ok, err := itemService.DefeatureItemShort(input)
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
	DefeatureItemCmd.Flags().StringP("feature", "", "", "Feature")
	_ = DefeatureItemCmd.MarkFlagRequired("feature")
	DefeatureItemCmd.Flags().StringP("itemId", "", "", "Item id")
	_ = DefeatureItemCmd.MarkFlagRequired("itemId")
	DefeatureItemCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = DefeatureItemCmd.MarkFlagRequired("namespace")
	DefeatureItemCmd.Flags().StringP("storeId", "", "", "Store id")
	_ = DefeatureItemCmd.MarkFlagRequired("storeId")
}
