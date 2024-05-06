// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package blocks

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/blocks"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// SyncNativeBlockedUserCmd represents the SyncNativeBlockedUser command
var SyncNativeBlockedUserCmd = &cobra.Command{
	Use:   "syncNativeBlockedUser",
	Short: "Sync native blocked user",
	Long:  `Sync native blocked user`,
	RunE: func(cmd *cobra.Command, args []string) error {
		blocksService := &lobby.BlocksService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body []*lobbyclientmodels.ModelNativeUserBlockRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &blocks.SyncNativeBlockedUserParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := blocksService.SyncNativeBlockedUserShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	SyncNativeBlockedUserCmd.Flags().String("body", "", "Body")
	_ = SyncNativeBlockedUserCmd.MarkFlagRequired("body")
	SyncNativeBlockedUserCmd.Flags().String("namespace", "", "Namespace")
	_ = SyncNativeBlockedUserCmd.MarkFlagRequired("namespace")
}
