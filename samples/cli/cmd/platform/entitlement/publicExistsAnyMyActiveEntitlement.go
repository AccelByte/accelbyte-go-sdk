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

// PublicExistsAnyMyActiveEntitlementCmd represents the PublicExistsAnyMyActiveEntitlement command
var PublicExistsAnyMyActiveEntitlementCmd = &cobra.Command{
	Use:   "publicExistsAnyMyActiveEntitlement",
	Short: "Public exists any my active entitlement",
	Long:  `Public exists any my active entitlement`,
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
		input := &entitlement.PublicExistsAnyMyActiveEntitlementParams{
			Namespace: namespace,
			AppIds:    appIds,
			ItemIds:   itemIds,
			Skus:      skus,
		}
		ok, errOK := entitlementService.PublicExistsAnyMyActiveEntitlementShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicExistsAnyMyActiveEntitlementCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicExistsAnyMyActiveEntitlementCmd.MarkFlagRequired("namespace")
	PublicExistsAnyMyActiveEntitlementCmd.Flags().String("appIds", "", "App ids")
	PublicExistsAnyMyActiveEntitlementCmd.Flags().String("itemIds", "", "Item ids")
	PublicExistsAnyMyActiveEntitlementCmd.Flags().String("skus", "", "Skus")
}
