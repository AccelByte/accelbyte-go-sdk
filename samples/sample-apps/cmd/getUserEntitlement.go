// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getUserEntitlementCmd represents the getUserEntitlement command
var getUserEntitlementCmd = &cobra.Command{
	Use:   "getUserEntitlement",
	Short: "Get users entitlement",
	Long:  `Get users entitlement`,
	RunE: func(cmd *cobra.Command, args []string) error {
		namespace := cmd.Flag("namespace").Value.String()
		userId := cmd.Flag("userId").Value.String()
		entitlementId := cmd.Flag("entitlementId").Value.String()
		entitlementService := &service.EntitlementService{
			PlatformService: factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		userEntitlement, err := entitlementService.GetUserEntitlement(namespace, userId, entitlementId)
		if err != nil {
			return err
		}
		response, err := json.Marshal(userEntitlement)
		if err != nil {
			return err
		}
		logrus.Infof("Response: %s", response)
		return nil
	},
}

func init() {
	rootCmd.AddCommand(getUserEntitlementCmd)
	getUserEntitlementCmd.Flags().StringP("namespace", "", "", "User namespace")
	getUserEntitlementCmd.MarkFlagRequired("namespace")
	getUserEntitlementCmd.Flags().StringP("userId", "u", "", "User ID")
	getUserEntitlementCmd.MarkFlagRequired("userId")
	getUserEntitlementCmd.Flags().StringP("entitlementId", "", "", "Entitlement ID")
	getUserEntitlementCmd.MarkFlagRequired("entitlementId")
}
