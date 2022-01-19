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

// publicQueryUserEntitlementsCmd represents the publicQueryUserEntitlements command
var publicQueryUserEntitlementsCmd = &cobra.Command{
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
			ItemID:           itemId,
			Limit:            &limit,
			Offset:           &offset,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := entitlementService.PublicQueryUserEntitlements(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicQueryUserEntitlementsCmd)
	publicQueryUserEntitlementsCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = publicQueryUserEntitlementsCmd.MarkFlagRequired("namespace")
	publicQueryUserEntitlementsCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = publicQueryUserEntitlementsCmd.MarkFlagRequired("userId")
	publicQueryUserEntitlementsCmd.Flags().StringP("appType", "a", " ", "App type")
	publicQueryUserEntitlementsCmd.Flags().StringP("entitlementClazz", "e", " ", "Entitlement clazz")
	publicQueryUserEntitlementsCmd.Flags().StringP("entitlementName", "e", " ", "Entitlement name")
	publicQueryUserEntitlementsCmd.Flags().StringP("itemId", "i", " ", "Item id")
	publicQueryUserEntitlementsCmd.Flags().Int32P("limit", "l", 20, "Limit")
	publicQueryUserEntitlementsCmd.Flags().Int32P("offset", "o", 0, "Offset")
}
