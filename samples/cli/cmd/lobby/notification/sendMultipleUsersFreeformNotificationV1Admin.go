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

// SendMultipleUsersFreeformNotificationV1AdminCmd represents the SendMultipleUsersFreeformNotificationV1Admin command
var SendMultipleUsersFreeformNotificationV1AdminCmd = &cobra.Command{
	Use:   "sendMultipleUsersFreeformNotificationV1Admin",
	Short: "Send multiple users freeform notification V1 admin",
	Long:  `Send multiple users freeform notification V1 admin`,
	RunE: func(cmd *cobra.Command, args []string) error {
		notificationService := &lobby.NotificationService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *lobbyclientmodels.ModelBulkUsersFreeFormNotificationRequestV1
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &notification.SendMultipleUsersFreeformNotificationV1AdminParams{
			Body:      body,
			Namespace: namespace,
		}
		errNoContent := notificationService.SendMultipleUsersFreeformNotificationV1AdminShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	SendMultipleUsersFreeformNotificationV1AdminCmd.Flags().String("body", "", "Body")
	_ = SendMultipleUsersFreeformNotificationV1AdminCmd.MarkFlagRequired("body")
	SendMultipleUsersFreeformNotificationV1AdminCmd.Flags().String("namespace", "", "Namespace")
	_ = SendMultipleUsersFreeformNotificationV1AdminCmd.MarkFlagRequired("namespace")
}
