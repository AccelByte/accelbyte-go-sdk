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

// PublicExistsAnyUserActiveEntitlementCmd represents the PublicExistsAnyUserActiveEntitlement command
var PublicExistsAnyUserActiveEntitlementCmd = &cobra.Command{
	Use:   "publicExistsAnyUserActiveEntitlement",
	Short: "Public exists any user active entitlement",
	Long:  `Public exists any user active entitlement`,
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
		input := &entitlement.PublicExistsAnyUserActiveEntitlementParams{
			Namespace: namespace,
			UserID:    userId,
			AppIds:    appIds,
			ItemIds:   itemIds,
			Skus:      skus,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := entitlementService.PublicExistsAnyUserActiveEntitlement(input)
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
	PublicExistsAnyUserActiveEntitlementCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicExistsAnyUserActiveEntitlementCmd.MarkFlagRequired("namespace")
	PublicExistsAnyUserActiveEntitlementCmd.Flags().StringP("userId", "", "", "User id")
	_ = PublicExistsAnyUserActiveEntitlementCmd.MarkFlagRequired("userId")
	PublicExistsAnyUserActiveEntitlementCmd.Flags().StringP("appIds", "", "", "App ids")
	PublicExistsAnyUserActiveEntitlementCmd.Flags().StringP("itemIds", "", "", "Item ids")
	PublicExistsAnyUserActiveEntitlementCmd.Flags().StringP("skus", "", "", "Skus")
}
