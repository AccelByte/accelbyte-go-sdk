// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package entitlement

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/entitlement"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicGetEntitlementOwnershipTokenCmd represents the PublicGetEntitlementOwnershipToken command
var PublicGetEntitlementOwnershipTokenCmd = &cobra.Command{
	Use:   "PublicGetEntitlementOwnershipToken",
	Short: "Public get entitlement ownership token",
	Long:  `Public get entitlement ownership token`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
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
		input := &entitlement.PublicGetEntitlementOwnershipTokenParams{
			Namespace: namespace,
			AppIds:    appIds,
			ItemIds:   itemIds,
			Skus:      skus,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := entitlementService.PublicGetEntitlementOwnershipToken(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	PublicGetEntitlementOwnershipTokenCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = PublicGetEntitlementOwnershipTokenCmd.MarkFlagRequired("namespace")
	PublicGetEntitlementOwnershipTokenCmd.Flags().StringP("appIds", "as", " ", "App ids")
	PublicGetEntitlementOwnershipTokenCmd.Flags().StringP("itemIds", "is", " ", "Item ids")
	PublicGetEntitlementOwnershipTokenCmd.Flags().StringP("skus", "ss", " ", "Skus")
}
