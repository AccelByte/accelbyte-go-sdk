// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/notification"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// sendUsersTemplatedNotificationV1AdminCmd represents the sendUsersTemplatedNotificationV1Admin command
var sendUsersTemplatedNotificationV1AdminCmd = &cobra.Command{
	Use:   "sendUsersTemplatedNotificationV1Admin",
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
	cmd.RootCmd.AddCommand(sendUsersTemplatedNotificationV1AdminCmd)
	sendUsersTemplatedNotificationV1AdminCmd.Flags().StringP("body", "b", " ", "Body")
	_ = sendUsersTemplatedNotificationV1AdminCmd.MarkFlagRequired("body")
	sendUsersTemplatedNotificationV1AdminCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = sendUsersTemplatedNotificationV1AdminCmd.MarkFlagRequired("namespace")
}
