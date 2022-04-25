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

// FeatureItemCmd represents the FeatureItem command
var FeatureItemCmd = &cobra.Command{
	Use:   "featureItem",
	Short: "Feature item",
	Long:  `Feature item`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		feature, _ := cmd.Flags().GetString("feature")
		itemId, _ := cmd.Flags().GetString("itemId")
		namespace, _ := cmd.Flags().GetString("namespace")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &item.FeatureItemParams{
			Feature:   feature,
			ItemID:    itemId,
			Namespace: namespace,
			StoreID:   storeId,
		}
		ok, err := itemService.FeatureItemShort(input, nil)
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
	FeatureItemCmd.Flags().StringP("feature", "", "", "Feature")
	_ = FeatureItemCmd.MarkFlagRequired("feature")
	FeatureItemCmd.Flags().StringP("itemId", "", "", "Item id")
	_ = FeatureItemCmd.MarkFlagRequired("itemId")
	FeatureItemCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = FeatureItemCmd.MarkFlagRequired("namespace")
	FeatureItemCmd.Flags().StringP("storeId", "", "", "Store id")
	_ = FeatureItemCmd.MarkFlagRequired("storeId")
}
