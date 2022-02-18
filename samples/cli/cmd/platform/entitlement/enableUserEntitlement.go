// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

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

// EnableUserEntitlementCmd represents the EnableUserEntitlement command
var EnableUserEntitlementCmd = &cobra.Command{
	Use:   "enableUserEntitlement",
	Short: "Enable user entitlement",
	Long:  `Enable user entitlement`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		entitlementId, _ := cmd.Flags().GetString("entitlementId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &entitlement.EnableUserEntitlementParams{
			EntitlementID: entitlementId,
			Namespace:     namespace,
			UserID:        userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := entitlementService.EnableUserEntitlement(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			response, errIndent := json.MarshalIndent(ok, "", "    ")
			if errIndent != nil {
				return errIndent
			} else {
				logrus.Infof("Response %s", string(response))
			}
		}
		return nil
	},
}

func init() {
	EnableUserEntitlementCmd.Flags().StringP("entitlementId", "", "", "Entitlement id")
	_ = EnableUserEntitlementCmd.MarkFlagRequired("entitlementId")
	EnableUserEntitlementCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = EnableUserEntitlementCmd.MarkFlagRequired("namespace")
	EnableUserEntitlementCmd.Flags().StringP("userId", "", "", "User id")
	_ = EnableUserEntitlementCmd.MarkFlagRequired("userId")
}
