// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

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

// SendSpecificUserTemplatedNotificationV1AdminCmd represents the SendSpecificUserTemplatedNotificationV1Admin command
var SendSpecificUserTemplatedNotificationV1AdminCmd = &cobra.Command{
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
		errInput := notificationService.SendSpecificUserTemplatedNotificationV1AdminShort(input, nil)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	SendSpecificUserTemplatedNotificationV1AdminCmd.Flags().StringP("body", "", "", "Body")
	_ = SendSpecificUserTemplatedNotificationV1AdminCmd.MarkFlagRequired("body")
	SendSpecificUserTemplatedNotificationV1AdminCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = SendSpecificUserTemplatedNotificationV1AdminCmd.MarkFlagRequired("namespace")
	SendSpecificUserTemplatedNotificationV1AdminCmd.Flags().StringP("userId", "", "", "User id")
	_ = SendSpecificUserTemplatedNotificationV1AdminCmd.MarkFlagRequired("userId")
}
