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

// QueryEntitlementsCmd represents the QueryEntitlements command
var QueryEntitlementsCmd = &cobra.Command{
	Use:   "queryEntitlements",
	Short: "Query entitlements",
	Long:  `Query entitlements`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		activeOnly, _ := cmd.Flags().GetBool("activeOnly")
		appType, _ := cmd.Flags().GetString("appType")
		entitlementClazz, _ := cmd.Flags().GetString("entitlementClazz")
		entitlementName, _ := cmd.Flags().GetString("entitlementName")
		itemIdString := cmd.Flag("itemId").Value.String()
		var itemId []string
		errItemId := json.Unmarshal([]byte(itemIdString), &itemId)
		if errItemId != nil {
			return errItemId
		}
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		origin, _ := cmd.Flags().GetString("origin")
		userId, _ := cmd.Flags().GetString("userId")
		input := &entitlement.QueryEntitlementsParams{
			Namespace:        namespace,
			ActiveOnly:       &activeOnly,
			AppType:          &appType,
			EntitlementClazz: &entitlementClazz,
			EntitlementName:  &entitlementName,
			ItemID:           itemId,
			Limit:            &limit,
			Offset:           &offset,
			Origin:           &origin,
			UserID:           &userId,
		}
		ok, errOK := entitlementService.QueryEntitlementsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	QueryEntitlementsCmd.Flags().String("namespace", "", "Namespace")
	_ = QueryEntitlementsCmd.MarkFlagRequired("namespace")
	QueryEntitlementsCmd.Flags().Bool("activeOnly", false, "Active only")
	QueryEntitlementsCmd.Flags().String("appType", "", "App type")
	QueryEntitlementsCmd.Flags().String("entitlementClazz", "", "Entitlement clazz")
	QueryEntitlementsCmd.Flags().String("entitlementName", "", "Entitlement name")
	QueryEntitlementsCmd.Flags().String("itemId", "", "Item id")
	QueryEntitlementsCmd.Flags().Int32("limit", 20, "Limit")
	QueryEntitlementsCmd.Flags().Int32("offset", 0, "Offset")
	QueryEntitlementsCmd.Flags().String("origin", "", "Origin")
	QueryEntitlementsCmd.Flags().String("userId", "", "User id")
}
