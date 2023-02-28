// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package dlc

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/dlc"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicSyncPsnDlcInventoryCmd represents the PublicSyncPsnDlcInventory command
var PublicSyncPsnDlcInventoryCmd = &cobra.Command{
	Use:   "publicSyncPsnDlcInventory",
	Short: "Public sync psn dlc inventory",
	Long:  `Public sync psn dlc inventory`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dlcService := &platform.DLCService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.PlayStationDLCSyncRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &dlc.PublicSyncPsnDLCInventoryParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		errNoContent := dlcService.PublicSyncPsnDLCInventoryShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	PublicSyncPsnDlcInventoryCmd.Flags().String("body", "", "Body")
	PublicSyncPsnDlcInventoryCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicSyncPsnDlcInventoryCmd.MarkFlagRequired("namespace")
	PublicSyncPsnDlcInventoryCmd.Flags().String("userId", "", "User id")
	_ = PublicSyncPsnDlcInventoryCmd.MarkFlagRequired("userId")
}
