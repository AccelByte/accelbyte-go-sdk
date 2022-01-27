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

// SendUsersTemplatedNotificationV1AdminCmd represents the SendUsersTemplatedNotificationV1Admin command
var SendUsersTemplatedNotificationV1AdminCmd = &cobra.Command{
	Use:   "SendUsersTemplatedNotificationV1Admin",
	Short: "Send users templated notification V1 admin",
	Long:  `Send users templated notification V1 admin`,
	RunE: func(cmd *cobra.Command, args []string) error {
		notificationService := &lobby.NotificationService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *lobbyclientmodels.ModelNotificationWithTemplateRequestV1
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &notification.SendUsersTemplatedNotificationV1AdminParams{
			Body:      body,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := notificationService.SendUsersTemplatedNotificationV1Admin(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	SendUsersTemplatedNotificationV1AdminCmd.Flags().StringP("body", "by", " ", "Body")
	_ = SendUsersTemplatedNotificationV1AdminCmd.MarkFlagRequired("body")
	SendUsersTemplatedNotificationV1AdminCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = SendUsersTemplatedNotificationV1AdminCmd.MarkFlagRequired("namespace")
}
