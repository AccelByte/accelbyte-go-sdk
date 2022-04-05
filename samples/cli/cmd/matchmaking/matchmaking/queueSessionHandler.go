// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package matchmaking

import (
	"encoding/json"

	matchmaking_ "github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclient/matchmaking"
	"github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/matchmaking"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// QueueSessionHandlerCmd represents the QueueSessionHandler command
var QueueSessionHandlerCmd = &cobra.Command{
	Use:   "queueSessionHandler",
	Short: "Queue session handler",
	Long:  `Queue session handler`,
	RunE: func(cmd *cobra.Command, args []string) error {
		matchmakingService := &matchmaking.MatchmakingService{
			Client:          factory.NewMatchmakingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *matchmakingclientmodels.ModelsMatchmakingResult
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &matchmaking_.QueueSessionHandlerParams{
			Body:      body,
			Namespace: namespace,
		}
		errInput := matchmakingService.QueueSessionHandlerShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	QueueSessionHandlerCmd.Flags().StringP("body", "", "", "Body")
	_ = QueueSessionHandlerCmd.MarkFlagRequired("body")
	QueueSessionHandlerCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = QueueSessionHandlerCmd.MarkFlagRequired("namespace")
}
