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

// NotificationWithTemplateCmd represents the NotificationWithTemplate command
var NotificationWithTemplateCmd = &cobra.Command{
	Use:   "notificationWithTemplate",
	Short: "Notification with template",
	Long:  `Notification with template`,
	RunE: func(cmd *cobra.Command, args []string) error {
		notificationService := &lobby.NotificationService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *lobbyclientmodels.ModelNotificationWithTemplateRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &notification.NotificationWithTemplateParams{
			Body:      body,
			Namespace: namespace,
		}
		errInput := notificationService.NotificationWithTemplateShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	NotificationWithTemplateCmd.Flags().StringP("body", "", "", "Body")
	_ = NotificationWithTemplateCmd.MarkFlagRequired("body")
	NotificationWithTemplateCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = NotificationWithTemplateCmd.MarkFlagRequired("namespace")
}
