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

// getEntitlementCmd represents the getEntitlement command
var getEntitlementCmd = &cobra.Command{
	Use:   "getEntitlement",
	Short: "Get entitlement",
	Long:  `Get entitlement`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		entitlementId, _ := cmd.Flags().GetString("entitlementId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &entitlement.GetEntitlementParams{
			EntitlementID: entitlementId,
			Namespace:     namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := entitlementService.GetEntitlement(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getEntitlementCmd)
	getEntitlementCmd.Flags().StringP("entitlementId", "e", " ", "Entitlement id")
	_ = getEntitlementCmd.MarkFlagRequired("entitlementId")
	getEntitlementCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getEntitlementCmd.MarkFlagRequired("namespace")
}
