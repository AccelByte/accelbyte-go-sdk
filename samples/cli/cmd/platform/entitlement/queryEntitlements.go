// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

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

// queryEntitlementsCmd represents the queryEntitlements command
var queryEntitlementsCmd = &cobra.Command{
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
			UserID:           &userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := entitlementService.QueryEntitlements(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(queryEntitlementsCmd)
	queryEntitlementsCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = queryEntitlementsCmd.MarkFlagRequired("namespace")
	queryEntitlementsCmd.Flags().BoolP("activeOnly", "a", false, "Active only")
	queryEntitlementsCmd.Flags().StringP("appType", "a", " ", "App type")
	queryEntitlementsCmd.Flags().StringP("entitlementClazz", "e", " ", "Entitlement clazz")
	queryEntitlementsCmd.Flags().StringP("entitlementName", "e", " ", "Entitlement name")
	queryEntitlementsCmd.Flags().StringP("itemId", "i", " ", "Item id")
	queryEntitlementsCmd.Flags().Int32P("limit", "l", 20, "Limit")
	queryEntitlementsCmd.Flags().Int32P("offset", "o", 0, "Offset")
	queryEntitlementsCmd.Flags().StringP("userId", "u", " ", "User id")
}
