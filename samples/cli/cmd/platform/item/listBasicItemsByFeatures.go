// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package item

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/item"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ListBasicItemsByFeaturesCmd represents the ListBasicItemsByFeatures command
var ListBasicItemsByFeaturesCmd = &cobra.Command{
	Use:   "listBasicItemsByFeatures",
	Short: "List basic items by features",
	Long:  `List basic items by features`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		activeOnly, _ := cmd.Flags().GetBool("activeOnly")
		featuresString := cmd.Flag("features").Value.String()
		var features []string
		errFeatures := json.Unmarshal([]byte(featuresString), &features)
		if errFeatures != nil {
			return errFeatures
		}
		input := &item.ListBasicItemsByFeaturesParams{
			Namespace:  namespace,
			ActiveOnly: &activeOnly,
			Features:   features,
		}
		ok, err := itemService.ListBasicItemsByFeaturesShort(input, nil)
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
	ListBasicItemsByFeaturesCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = ListBasicItemsByFeaturesCmd.MarkFlagRequired("namespace")
	ListBasicItemsByFeaturesCmd.Flags().BoolP("activeOnly", "", false, "Active only")
	ListBasicItemsByFeaturesCmd.Flags().StringP("features", "", "", "Features")
}
