// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package item

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/item"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// listBasicItemsByFeaturesCmd represents the listBasicItemsByFeatures command
var listBasicItemsByFeaturesCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := itemService.ListBasicItemsByFeatures(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(listBasicItemsByFeaturesCmd)
	listBasicItemsByFeaturesCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = listBasicItemsByFeaturesCmd.MarkFlagRequired("namespace")
	listBasicItemsByFeaturesCmd.Flags().BoolP("activeOnly", "ay", false, "Active only")
	listBasicItemsByFeaturesCmd.Flags().StringP("features", "fs", " ", "Features")
}
