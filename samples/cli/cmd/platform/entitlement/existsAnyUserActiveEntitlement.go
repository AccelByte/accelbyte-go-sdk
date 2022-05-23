// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

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

// ExistsAnyUserActiveEntitlementCmd represents the ExistsAnyUserActiveEntitlement command
var ExistsAnyUserActiveEntitlementCmd = &cobra.Command{
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
		ok, err := entitlementService.ExistsAnyUserActiveEntitlementShort(input)
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
	ExistsAnyUserActiveEntitlementCmd.Flags().String("namespace", "", "Namespace")
	_ = ExistsAnyUserActiveEntitlementCmd.MarkFlagRequired("namespace")
	ExistsAnyUserActiveEntitlementCmd.Flags().String("userId", "", "User id")
	_ = ExistsAnyUserActiveEntitlementCmd.MarkFlagRequired("userId")
	ExistsAnyUserActiveEntitlementCmd.Flags().String("appIds", "", "App ids")
	ExistsAnyUserActiveEntitlementCmd.Flags().String("itemIds", "", "Item ids")
	ExistsAnyUserActiveEntitlementCmd.Flags().String("skus", "", "Skus")
}
