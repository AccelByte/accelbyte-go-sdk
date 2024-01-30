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

// PublicGetUserEntitlementsByIdsCmd represents the PublicGetUserEntitlementsByIds command
var PublicGetUserEntitlementsByIdsCmd = &cobra.Command{
	Use:   "publicGetUserEntitlementsByIds",
	Short: "Public get user entitlements by ids",
	Long:  `Public get user entitlements by ids`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		availablePlatformOnly, _ := cmd.Flags().GetBool("availablePlatformOnly")
		idsString := cmd.Flag("ids").Value.String()
		var ids []string
		errIds := json.Unmarshal([]byte(idsString), &ids)
		if errIds != nil {
			return errIds
		}
		input := &entitlement.PublicGetUserEntitlementsByIdsParams{
			Namespace:             namespace,
			UserID:                userId,
			AvailablePlatformOnly: &availablePlatformOnly,
			Ids:                   ids,
		}
		ok, errOK := entitlementService.PublicGetUserEntitlementsByIdsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGetUserEntitlementsByIdsCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetUserEntitlementsByIdsCmd.MarkFlagRequired("namespace")
	PublicGetUserEntitlementsByIdsCmd.Flags().String("userId", "", "User id")
	_ = PublicGetUserEntitlementsByIdsCmd.MarkFlagRequired("userId")
	PublicGetUserEntitlementsByIdsCmd.Flags().Bool("availablePlatformOnly", false, "Available platform only")
	PublicGetUserEntitlementsByIdsCmd.Flags().String("ids", "", "Ids")
}
