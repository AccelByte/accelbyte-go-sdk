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

// QueryEntitlements1Cmd represents the QueryEntitlements1 command
var QueryEntitlements1Cmd = &cobra.Command{
	Use:   "queryEntitlements1",
	Short: "Query entitlements 1",
	Long:  `Query entitlements 1`,
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
		input := &entitlement.QueryEntitlements1Params{
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
		ok, errOK := entitlementService.QueryEntitlements1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	QueryEntitlements1Cmd.Flags().String("namespace", "", "Namespace")
	_ = QueryEntitlements1Cmd.MarkFlagRequired("namespace")
	QueryEntitlements1Cmd.Flags().Bool("activeOnly", false, "Active only")
	QueryEntitlements1Cmd.Flags().String("appType", "", "App type")
	QueryEntitlements1Cmd.Flags().String("entitlementClazz", "", "Entitlement clazz")
	QueryEntitlements1Cmd.Flags().String("entitlementName", "", "Entitlement name")
	QueryEntitlements1Cmd.Flags().String("itemId", "", "Item id")
	QueryEntitlements1Cmd.Flags().Int32("limit", 20, "Limit")
	QueryEntitlements1Cmd.Flags().Int32("offset", 0, "Offset")
	QueryEntitlements1Cmd.Flags().String("origin", "", "Origin")
	QueryEntitlements1Cmd.Flags().String("userId", "", "User id")
}
