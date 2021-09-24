// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package cmd

import (
	"encoding/json"
	"errors"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
	"strings"
)

// checkEntitlementCmd represents the checkEntitlement command
var checkEntitlementCmd = &cobra.Command{
	Use:   "checkEntitlement",
	Short: "Check user entitlements",
	Long:  `Check user entitlement`,
	RunE: func(cmd *cobra.Command, args []string) error {
		appIdsString, err := cmd.Flags().GetString("appIds")
		if err != nil {
			logrus.Error(err)
			return err
		}

		itemIdsString, err := cmd.Flags().GetString("itemIds")
		if err != nil {
			logrus.Error(err)
			return err
		}

		skusString, err := cmd.Flags().GetString("skus")
		if err != nil {
			logrus.Error(err)
			return err
		}
		if len(itemIdsString) == 0 && len(appIdsString) == 0 {
			return errors.New("itemIds and appsIds cannot be empty")
		}
		var appIds []string
		if len(appIdsString) > 0 {
			appIds = strings.Split(appIdsString, ",")
		}
		var itemIds []string
		if len(itemIdsString) > 0 {
			itemIds = strings.Split(itemIdsString, ",")
		}

		var skus []string
		if len(skusString) > 0 {
			skus = strings.Split(skusString, ",")
		}

		namespace, err := cmd.Flags().GetString("namespace")
		if err != nil {
			logrus.Error(err)
			return err
		}
		userId, err := cmd.Flags().GetString("userId")
		if err != nil {
			logrus.Error(err)
			return err
		}

		entitlementService := &service.EntitlementService{
			PlatformService: factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		userEntitlement, err := entitlementService.ExistsAnyUserActiveEntitlement(namespace, userId, appIds, itemIds, skus)
		if err != nil {
			logrus.Error(err)
			return err
		}
		response, err := json.Marshal(userEntitlement)
		if err != nil {
			logrus.Error(err)
			return err
		}
		logrus.Infof("Response: %s", string(response))
		return nil
	},
}

func init() {
	rootCmd.AddCommand(checkEntitlementCmd)
	checkEntitlementCmd.Flags().StringP("namespace", "", "", "User namespace")
	checkEntitlementCmd.MarkFlagRequired("namespace")
	checkEntitlementCmd.Flags().StringP("userId", "u", "", "User ID")
	checkEntitlementCmd.MarkFlagRequired("userId")
	checkEntitlementCmd.Flags().StringP("itemIds", "i", "", "Item ID")
	checkEntitlementCmd.Flags().StringP("appIds", "a", "", "App ID")
	checkEntitlementCmd.Flags().StringP("skus", "s", "", "SKU")
}
