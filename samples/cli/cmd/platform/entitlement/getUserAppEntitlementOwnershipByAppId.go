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

// GetUserAppEntitlementOwnershipByAppIdCmd represents the GetUserAppEntitlementOwnershipByAppId command
var GetUserAppEntitlementOwnershipByAppIdCmd = &cobra.Command{
	Use:   "getUserAppEntitlementOwnershipByAppId",
	Short: "Get user app entitlement ownership by app id",
	Long:  `Get user app entitlement ownership by app id`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		appId, _ := cmd.Flags().GetString("appId")
		input := &entitlement.GetUserAppEntitlementOwnershipByAppIDParams{
			Namespace: namespace,
			UserID:    userId,
			AppID:     appId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := entitlementService.GetUserAppEntitlementOwnershipByAppID(input)
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
	GetUserAppEntitlementOwnershipByAppIdCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetUserAppEntitlementOwnershipByAppIdCmd.MarkFlagRequired("namespace")
	GetUserAppEntitlementOwnershipByAppIdCmd.Flags().StringP("userId", "", "", "User id")
	_ = GetUserAppEntitlementOwnershipByAppIdCmd.MarkFlagRequired("userId")
	GetUserAppEntitlementOwnershipByAppIdCmd.Flags().StringP("appId", "", "", "App id")
	_ = GetUserAppEntitlementOwnershipByAppIdCmd.MarkFlagRequired("appId")
}
