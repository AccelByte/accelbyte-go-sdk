// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package entitlement

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/entitlement"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PreCheckRevokeUserEntitlementByUseCountCmd represents the PreCheckRevokeUserEntitlementByUseCount command
var PreCheckRevokeUserEntitlementByUseCountCmd = &cobra.Command{
	Use:   "preCheckRevokeUserEntitlementByUseCount",
	Short: "Pre check revoke user entitlement by use count",
	Long:  `Pre check revoke user entitlement by use count`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		entitlementId, _ := cmd.Flags().GetString("entitlementId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		quantity, _ := cmd.Flags().GetInt32("quantity")
		input := &entitlement.PreCheckRevokeUserEntitlementByUseCountParams{
			EntitlementID: entitlementId,
			Namespace:     namespace,
			UserID:        userId,
			Quantity:      quantity,
		}
		ok, errOK := entitlementService.PreCheckRevokeUserEntitlementByUseCountShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PreCheckRevokeUserEntitlementByUseCountCmd.Flags().String("entitlementId", "", "Entitlement id")
	_ = PreCheckRevokeUserEntitlementByUseCountCmd.MarkFlagRequired("entitlementId")
	PreCheckRevokeUserEntitlementByUseCountCmd.Flags().String("namespace", "", "Namespace")
	_ = PreCheckRevokeUserEntitlementByUseCountCmd.MarkFlagRequired("namespace")
	PreCheckRevokeUserEntitlementByUseCountCmd.Flags().String("userId", "", "User id")
	_ = PreCheckRevokeUserEntitlementByUseCountCmd.MarkFlagRequired("userId")
	PreCheckRevokeUserEntitlementByUseCountCmd.Flags().Int32("quantity", 1, "Quantity")
	_ = PreCheckRevokeUserEntitlementByUseCountCmd.MarkFlagRequired("quantity")
}
