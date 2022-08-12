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

// PublicQueryUserEntitlementsCmd represents the PublicQueryUserEntitlements command
var PublicQueryUserEntitlementsCmd = &cobra.Command{
	Use:   "publicQueryUserEntitlements",
	Short: "Public query user entitlements",
	Long:  `Public query user entitlements`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		appType, _ := cmd.Flags().GetString("appType")
		entitlementClazz, _ := cmd.Flags().GetString("entitlementClazz")
		entitlementName, _ := cmd.Flags().GetString("entitlementName")
		featuresString := cmd.Flag("features").Value.String()
		var features []string
		errFeatures := json.Unmarshal([]byte(featuresString), &features)
		if errFeatures != nil {
			return errFeatures
		}
		itemIdString := cmd.Flag("itemId").Value.String()
		var itemId []string
		errItemId := json.Unmarshal([]byte(itemIdString), &itemId)
		if errItemId != nil {
			return errItemId
		}
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		input := &entitlement.PublicQueryUserEntitlementsParams{
			Namespace:        namespace,
			UserID:           userId,
			AppType:          &appType,
			EntitlementClazz: &entitlementClazz,
			EntitlementName:  &entitlementName,
			Features:         features,
			ItemID:           itemId,
			Limit:            &limit,
			Offset:           &offset,
		}
		ok, err := entitlementService.PublicQueryUserEntitlementsShort(input)
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
	PublicQueryUserEntitlementsCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicQueryUserEntitlementsCmd.MarkFlagRequired("namespace")
	PublicQueryUserEntitlementsCmd.Flags().String("userId", "", "User id")
	_ = PublicQueryUserEntitlementsCmd.MarkFlagRequired("userId")
	PublicQueryUserEntitlementsCmd.Flags().String("appType", "", "App type")
	PublicQueryUserEntitlementsCmd.Flags().String("entitlementClazz", "", "Entitlement clazz")
	PublicQueryUserEntitlementsCmd.Flags().String("entitlementName", "", "Entitlement name")
	PublicQueryUserEntitlementsCmd.Flags().String("features", "", "Features")
	PublicQueryUserEntitlementsCmd.Flags().String("itemId", "", "Item id")
	PublicQueryUserEntitlementsCmd.Flags().Int32("limit", 20, "Limit")
	PublicQueryUserEntitlementsCmd.Flags().Int32("offset", 0, "Offset")
}
