// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

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

// GetUserEntitlementsByIdsCmd represents the GetUserEntitlementsByIds command
var GetUserEntitlementsByIdsCmd = &cobra.Command{
	Use:   "getUserEntitlementsByIds",
	Short: "Get user entitlements by ids",
	Long:  `Get user entitlements by ids`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		idsString := cmd.Flag("ids").Value.String()
		var ids []string
		errIds := json.Unmarshal([]byte(idsString), &ids)
		if errIds != nil {
			return errIds
		}
		input := &entitlement.GetUserEntitlementsByIdsParams{
			Namespace: namespace,
			UserID:    userId,
			Ids:       ids,
		}
		ok, errOK := entitlementService.GetUserEntitlementsByIdsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetUserEntitlementsByIdsCmd.Flags().String("namespace", "", "Namespace")
	_ = GetUserEntitlementsByIdsCmd.MarkFlagRequired("namespace")
	GetUserEntitlementsByIdsCmd.Flags().String("userId", "", "User id")
	_ = GetUserEntitlementsByIdsCmd.MarkFlagRequired("userId")
	GetUserEntitlementsByIdsCmd.Flags().String("ids", "", "Ids")
}
