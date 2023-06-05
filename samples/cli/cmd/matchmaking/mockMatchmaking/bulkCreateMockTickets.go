// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package mockMatchmaking

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclient/mock_matchmaking"
	"github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/matchmaking"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// BulkCreateMockTicketsCmd represents the BulkCreateMockTickets command
var BulkCreateMockTicketsCmd = &cobra.Command{
	Use:   "bulkCreateMockTickets",
	Short: "Bulk create mock tickets",
	Long:  `Bulk create mock tickets`,
	RunE: func(cmd *cobra.Command, args []string) error {
		mockMatchmakingService := &matchmaking.MockMatchmakingService{
			Client:          factory.NewMatchmakingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body []*matchmakingclientmodels.ModelsMatchingParty
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		channelName, _ := cmd.Flags().GetString("channelName")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &mock_matchmaking.BulkCreateMockTicketsParams{
			Body:        body,
			ChannelName: channelName,
			Namespace:   namespace,
		}
		errCreated := mockMatchmakingService.BulkCreateMockTicketsShort(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	BulkCreateMockTicketsCmd.Flags().String("body", "", "Body")
	_ = BulkCreateMockTicketsCmd.MarkFlagRequired("body")
	BulkCreateMockTicketsCmd.Flags().String("channelName", "", "Channel name")
	_ = BulkCreateMockTicketsCmd.MarkFlagRequired("channelName")
	BulkCreateMockTicketsCmd.Flags().String("namespace", "", "Namespace")
	_ = BulkCreateMockTicketsCmd.MarkFlagRequired("namespace")
}
