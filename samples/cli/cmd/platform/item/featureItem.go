// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/item"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// featureItemCmd represents the featureItem command
var featureItemCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := itemService.FeatureItem(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(featureItemCmd)
	featureItemCmd.Flags().StringP("feature", "f", " ", "Feature")
	_ = featureItemCmd.MarkFlagRequired("feature")
	featureItemCmd.Flags().StringP("itemId", "i", " ", "Item id")
	_ = featureItemCmd.MarkFlagRequired("itemId")
	featureItemCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = featureItemCmd.MarkFlagRequired("namespace")
	featureItemCmd.Flags().StringP("storeId", "s", " ", "Store id")
	_ = featureItemCmd.MarkFlagRequired("storeId")
}
