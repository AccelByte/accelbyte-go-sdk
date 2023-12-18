// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package entitlement

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/entitlement"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// RevokeUserEntitlementByUseCountCmd represents the RevokeUserEntitlementByUseCount command
var RevokeUserEntitlementByUseCountCmd = &cobra.Command{
	Use:   "revokeUserEntitlementByUseCount",
	Short: "Revoke user entitlement by use count",
	Long:  `Revoke user entitlement by use count`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		entitlementId, _ := cmd.Flags().GetString("entitlementId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.RevokeUseCountRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &entitlement.RevokeUserEntitlementByUseCountParams{
			Body:          body,
			EntitlementID: entitlementId,
			Namespace:     namespace,
			UserID:        userId,
		}
		ok, errOK := entitlementService.RevokeUserEntitlementByUseCountShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	RevokeUserEntitlementByUseCountCmd.Flags().String("body", "", "Body")
	RevokeUserEntitlementByUseCountCmd.Flags().String("entitlementId", "", "Entitlement id")
	_ = RevokeUserEntitlementByUseCountCmd.MarkFlagRequired("entitlementId")
	RevokeUserEntitlementByUseCountCmd.Flags().String("namespace", "", "Namespace")
	_ = RevokeUserEntitlementByUseCountCmd.MarkFlagRequired("namespace")
	RevokeUserEntitlementByUseCountCmd.Flags().String("userId", "", "User id")
	_ = RevokeUserEntitlementByUseCountCmd.MarkFlagRequired("userId")
}
