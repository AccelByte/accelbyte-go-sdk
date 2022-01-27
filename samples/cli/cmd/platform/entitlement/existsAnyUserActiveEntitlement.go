// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package entitlement

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/entitlement"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// existsAnyUserActiveEntitlementCmd represents the existsAnyUserActiveEntitlement command
var existsAnyUserActiveEntitlementCmd = &cobra.Command{
	Use:   "existsAnyUserActiveEntitlement",
	Short: "Exists any user active entitlement",
	Long:  `Exists any user active entitlement`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		appIdsString := cmd.Flag("appIds").Value.String()
		var appIds []string
		errAppIds := json.Unmarshal([]byte(appIdsString), &appIds)
		if errAppIds != nil {
			return errAppIds
		}
		itemIdsString := cmd.Flag("itemIds").Value.String()
		var itemIds []string
		errItemIds := json.Unmarshal([]byte(itemIdsString), &itemIds)
		if errItemIds != nil {
			return errItemIds
		}
		skusString := cmd.Flag("skus").Value.String()
		var skus []string
		errSkus := json.Unmarshal([]byte(skusString), &skus)
		if errSkus != nil {
			return errSkus
		}
		input := &entitlement.ExistsAnyUserActiveEntitlementParams{
			Namespace: namespace,
			UserID:    userId,
			AppIds:    appIds,
			ItemIds:   itemIds,
			Skus:      skus,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := entitlementService.ExistsAnyUserActiveEntitlement(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(existsAnyUserActiveEntitlementCmd)
	existsAnyUserActiveEntitlementCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = existsAnyUserActiveEntitlementCmd.MarkFlagRequired("namespace")
	existsAnyUserActiveEntitlementCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = existsAnyUserActiveEntitlementCmd.MarkFlagRequired("userId")
	existsAnyUserActiveEntitlementCmd.Flags().StringP("appIds", "as", " ", "App ids")
	existsAnyUserActiveEntitlementCmd.Flags().StringP("itemIds", "is", " ", "Item ids")
	existsAnyUserActiveEntitlementCmd.Flags().StringP("skus", "ss", " ", "Skus")
}
