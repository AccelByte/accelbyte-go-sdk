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

// SyncXboxInventoryCmd represents the SyncXboxInventory command
var SyncXboxInventoryCmd = &cobra.Command{
	Use:   "syncXboxInventory",
	Short: "Sync xbox inventory",
	Long:  `Sync xbox inventory`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapService := &platform.IAPService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.XblReconcileRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &iap.SyncXboxInventoryParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := iapService.SyncXboxInventoryShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	SyncXboxInventoryCmd.Flags().String("body", "", "Body")
	SyncXboxInventoryCmd.Flags().String("namespace", "", "Namespace")
	_ = SyncXboxInventoryCmd.MarkFlagRequired("namespace")
	SyncXboxInventoryCmd.Flags().String("userId", "", "User id")
	_ = SyncXboxInventoryCmd.MarkFlagRequired("userId")
}
