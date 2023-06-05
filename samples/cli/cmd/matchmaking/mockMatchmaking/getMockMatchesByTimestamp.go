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

// GetMockMatchesByTimestampCmd represents the GetMockMatchesByTimestamp command
var GetMockMatchesByTimestampCmd = &cobra.Command{
	Use:   "getMockMatchesByTimestamp",
	Short: "Get mock matches by timestamp",
	Long:  `Get mock matches by timestamp`,
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
		input := &mock_matchmaking.GetMockMatchesByTimestampParams{
			Body:        body,
			ChannelName: channelName,
			Namespace:   namespace,
		}
		ok, errOK := mockMatchmakingService.GetMockMatchesByTimestampShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetMockMatchesByTimestampCmd.Flags().String("body", "", "Body")
	_ = GetMockMatchesByTimestampCmd.MarkFlagRequired("body")
	GetMockMatchesByTimestampCmd.Flags().String("channelName", "", "Channel name")
	_ = GetMockMatchesByTimestampCmd.MarkFlagRequired("channelName")
	GetMockMatchesByTimestampCmd.Flags().String("namespace", "", "Namespace")
	_ = GetMockMatchesByTimestampCmd.MarkFlagRequired("namespace")
}
