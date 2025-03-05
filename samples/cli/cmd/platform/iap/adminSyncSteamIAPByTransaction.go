// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iap

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/iap"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminSyncSteamIAPByTransactionCmd represents the AdminSyncSteamIAPByTransaction command
var AdminSyncSteamIAPByTransactionCmd = &cobra.Command{
	Use:   "adminSyncSteamIAPByTransaction",
	Short: "Admin sync steam IAP by transaction",
	Long:  `Admin sync steam IAP by transaction`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapService := &platform.IAPService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.SteamSyncByTransactionRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &iap.AdminSyncSteamIAPByTransactionParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := iapService.AdminSyncSteamIAPByTransactionShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminSyncSteamIAPByTransactionCmd.Flags().String("body", "", "Body")
	_ = AdminSyncSteamIAPByTransactionCmd.MarkFlagRequired("body")
	AdminSyncSteamIAPByTransactionCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminSyncSteamIAPByTransactionCmd.MarkFlagRequired("namespace")
	AdminSyncSteamIAPByTransactionCmd.Flags().String("userId", "", "User id")
	_ = AdminSyncSteamIAPByTransactionCmd.MarkFlagRequired("userId")
}
