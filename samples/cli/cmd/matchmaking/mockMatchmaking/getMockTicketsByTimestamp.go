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

// GetMockTicketsByTimestampCmd represents the GetMockTicketsByTimestamp command
var GetMockTicketsByTimestampCmd = &cobra.Command{
	Use:   "getMockTicketsByTimestamp",
	Short: "Get mock tickets by timestamp",
	Long:  `Get mock tickets by timestamp`,
	RunE: func(cmd *cobra.Command, args []string) error {
		mockMatchmakingService := &matchmaking.MockMatchmakingService{
			Client:          factory.NewMatchmakingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *matchmakingclientmodels.ModelsQueryMockBy
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		channelName, _ := cmd.Flags().GetString("channelName")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &mock_matchmaking.GetMockTicketsByTimestampParams{
			Body:        body,
			ChannelName: channelName,
			Namespace:   namespace,
		}
		ok, errOK := mockMatchmakingService.GetMockTicketsByTimestampShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetMockTicketsByTimestampCmd.Flags().String("body", "", "Body")
	_ = GetMockTicketsByTimestampCmd.MarkFlagRequired("body")
	GetMockTicketsByTimestampCmd.Flags().String("channelName", "", "Channel name")
	_ = GetMockTicketsByTimestampCmd.MarkFlagRequired("channelName")
	GetMockTicketsByTimestampCmd.Flags().String("namespace", "", "Namespace")
	_ = GetMockTicketsByTimestampCmd.MarkFlagRequired("namespace")
}
