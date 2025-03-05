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

// SyncSteamIAPByTransactionCmd represents the SyncSteamIAPByTransaction command
var SyncSteamIAPByTransactionCmd = &cobra.Command{
	Use:   "syncSteamIAPByTransaction",
	Short: "Sync steam IAP by transaction",
	Long:  `Sync steam IAP by transaction`,
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
		input := &iap.SyncSteamIAPByTransactionParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := iapService.SyncSteamIAPByTransactionShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	SyncSteamIAPByTransactionCmd.Flags().String("body", "", "Body")
	_ = SyncSteamIAPByTransactionCmd.MarkFlagRequired("body")
	SyncSteamIAPByTransactionCmd.Flags().String("namespace", "", "Namespace")
	_ = SyncSteamIAPByTransactionCmd.MarkFlagRequired("namespace")
	SyncSteamIAPByTransactionCmd.Flags().String("userId", "", "User id")
	_ = SyncSteamIAPByTransactionCmd.MarkFlagRequired("userId")
}
