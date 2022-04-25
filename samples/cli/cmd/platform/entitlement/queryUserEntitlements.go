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

// QueryUserEntitlementsCmd represents the QueryUserEntitlements command
var QueryUserEntitlementsCmd = &cobra.Command{
	Use:   "queryUserEntitlements",
	Short: "Query user entitlements",
	Long:  `Query user entitlements`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
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
		input := &entitlement.QueryUserEntitlementsParams{
			Namespace:        namespace,
			UserID:           userId,
			ActiveOnly:       &activeOnly,
			AppType:          &appType,
			EntitlementClazz: &entitlementClazz,
			EntitlementName:  &entitlementName,
			ItemID:           itemId,
			Limit:            &limit,
			Offset:           &offset,
		}
		ok, err := entitlementService.QueryUserEntitlementsShort(input, nil)
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
	QueryUserEntitlementsCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = QueryUserEntitlementsCmd.MarkFlagRequired("namespace")
	QueryUserEntitlementsCmd.Flags().StringP("userId", "", "", "User id")
	_ = QueryUserEntitlementsCmd.MarkFlagRequired("userId")
	QueryUserEntitlementsCmd.Flags().BoolP("activeOnly", "", false, "Active only")
	QueryUserEntitlementsCmd.Flags().StringP("appType", "", "", "App type")
	QueryUserEntitlementsCmd.Flags().StringP("entitlementClazz", "", "", "Entitlement clazz")
	QueryUserEntitlementsCmd.Flags().StringP("entitlementName", "", "", "Entitlement name")
	QueryUserEntitlementsCmd.Flags().StringP("itemId", "", "", "Item id")
	QueryUserEntitlementsCmd.Flags().Int32P("limit", "", 20, "Limit")
	QueryUserEntitlementsCmd.Flags().Int32P("offset", "", 0, "Offset")
}
