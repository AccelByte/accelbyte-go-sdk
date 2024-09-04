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

// SyncSteamDLCCmd represents the SyncSteamDLC command
var SyncSteamDLCCmd = &cobra.Command{
	Use:   "syncSteamDLC",
	Short: "Sync steam DLC",
	Long:  `Sync steam DLC`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dlcService := &platform.DLCService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.SteamDLCSyncRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &dlc.SyncSteamDLCParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		errNoContent := dlcService.SyncSteamDLCShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	SyncSteamDLCCmd.Flags().String("body", "", "Body")
	_ = SyncSteamDLCCmd.MarkFlagRequired("body")
	SyncSteamDLCCmd.Flags().String("namespace", "", "Namespace")
	_ = SyncSteamDLCCmd.MarkFlagRequired("namespace")
	SyncSteamDLCCmd.Flags().String("userId", "", "User id")
	_ = SyncSteamDLCCmd.MarkFlagRequired("userId")
}
