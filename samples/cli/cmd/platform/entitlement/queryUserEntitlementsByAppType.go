// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/entitlement"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// queryUserEntitlementsByAppTypeCmd represents the queryUserEntitlementsByAppType command
var queryUserEntitlementsByAppTypeCmd = &cobra.Command{
	Use:   "queryUserEntitlementsByAppType",
	Short: "Query user entitlements by app type",
	Long:  `Query user entitlements by app type`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		appType, _ := cmd.Flags().GetString("appType")
		activeOnly, _ := cmd.Flags().GetBool("activeOnly")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		input := &entitlement.QueryUserEntitlementsByAppTypeParams{
			Namespace:  namespace,
			UserID:     userId,
			ActiveOnly: &activeOnly,
			Limit:      &limit,
			Offset:     &offset,
			AppType:    appType,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := entitlementService.QueryUserEntitlementsByAppType(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(queryUserEntitlementsByAppTypeCmd)
	queryUserEntitlementsByAppTypeCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = queryUserEntitlementsByAppTypeCmd.MarkFlagRequired("namespace")
	queryUserEntitlementsByAppTypeCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = queryUserEntitlementsByAppTypeCmd.MarkFlagRequired("userId")
	queryUserEntitlementsByAppTypeCmd.Flags().BoolP("activeOnly", "a", false, "Active only")
	queryUserEntitlementsByAppTypeCmd.Flags().Int32P("limit", "l", 20, "Limit")
	queryUserEntitlementsByAppTypeCmd.Flags().Int32P("offset", "o", 0, "Offset")
	queryUserEntitlementsByAppTypeCmd.Flags().StringP("appType", "a", " ", "App type")
	_ = queryUserEntitlementsByAppTypeCmd.MarkFlagRequired("appType")
}
