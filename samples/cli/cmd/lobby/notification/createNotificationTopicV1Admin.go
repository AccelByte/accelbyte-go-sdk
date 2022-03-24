// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package notification

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/notification"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// CreateNotificationTopicV1AdminCmd represents the CreateNotificationTopicV1Admin command
var CreateNotificationTopicV1AdminCmd = &cobra.Command{
	Use:   "createNotificationTopicV1Admin",
	Short: "Create notification topic V1 admin",
	Long:  `Create notification topic V1 admin`,
	RunE: func(cmd *cobra.Command, args []string) error {
		notificationService := &lobby.NotificationService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *lobbyclientmodels.ModelCreateTopicRequestV1
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &notification.CreateNotificationTopicV1AdminParams{
			Body:      body,
			Namespace: namespace,
		}
		errInput := notificationService.CreateNotificationTopicV1AdminShort(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	CreateNotificationTopicV1AdminCmd.Flags().StringP("body", "", "", "Body")
	_ = CreateNotificationTopicV1AdminCmd.MarkFlagRequired("body")
	CreateNotificationTopicV1AdminCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = CreateNotificationTopicV1AdminCmd.MarkFlagRequired("namespace")
}
