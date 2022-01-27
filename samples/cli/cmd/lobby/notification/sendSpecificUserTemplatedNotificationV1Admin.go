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
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// sendSpecificUserTemplatedNotificationV1AdminCmd represents the sendSpecificUserTemplatedNotificationV1Admin command
var sendSpecificUserTemplatedNotificationV1AdminCmd = &cobra.Command{
	Use:   "sendSpecificUserTemplatedNotificationV1Admin",
	Short: "Send specific user templated notification V1 admin",
	Long:  `Send specific user templated notification V1 admin`,
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
		userId, _ := cmd.Flags().GetString("userId")
		input := &notification.SendSpecificUserTemplatedNotificationV1AdminParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := notificationService.SendSpecificUserTemplatedNotificationV1Admin(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(sendSpecificUserTemplatedNotificationV1AdminCmd)
	sendSpecificUserTemplatedNotificationV1AdminCmd.Flags().StringP("body", "by", " ", "Body")
	_ = sendSpecificUserTemplatedNotificationV1AdminCmd.MarkFlagRequired("body")
	sendSpecificUserTemplatedNotificationV1AdminCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = sendSpecificUserTemplatedNotificationV1AdminCmd.MarkFlagRequired("namespace")
	sendSpecificUserTemplatedNotificationV1AdminCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = sendSpecificUserTemplatedNotificationV1AdminCmd.MarkFlagRequired("userId")
}
