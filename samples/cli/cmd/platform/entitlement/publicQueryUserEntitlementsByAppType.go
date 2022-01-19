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

// publicQueryUserEntitlementsByAppTypeCmd represents the publicQueryUserEntitlementsByAppType command
var publicQueryUserEntitlementsByAppTypeCmd = &cobra.Command{
	Use:   "publicQueryUserEntitlementsByAppType",
	Short: "Public query user entitlements by app type",
	Long:  `Public query user entitlements by app type`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		appType, _ := cmd.Flags().GetString("appType")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		input := &entitlement.PublicQueryUserEntitlementsByAppTypeParams{
			Namespace: namespace,
			UserID:    userId,
			Limit:     &limit,
			Offset:    &offset,
			AppType:   appType,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := entitlementService.PublicQueryUserEntitlementsByAppType(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicQueryUserEntitlementsByAppTypeCmd)
	publicQueryUserEntitlementsByAppTypeCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = publicQueryUserEntitlementsByAppTypeCmd.MarkFlagRequired("namespace")
	publicQueryUserEntitlementsByAppTypeCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = publicQueryUserEntitlementsByAppTypeCmd.MarkFlagRequired("userId")
	publicQueryUserEntitlementsByAppTypeCmd.Flags().Int32P("limit", "l", 20, "Limit")
	publicQueryUserEntitlementsByAppTypeCmd.Flags().Int32P("offset", "o", 0, "Offset")
	publicQueryUserEntitlementsByAppTypeCmd.Flags().StringP("appType", "a", " ", "App type")
	_ = publicQueryUserEntitlementsByAppTypeCmd.MarkFlagRequired("appType")
}
