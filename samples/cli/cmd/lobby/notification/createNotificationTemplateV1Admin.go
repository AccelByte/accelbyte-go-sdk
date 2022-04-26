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

// CreateNotificationTemplateV1AdminCmd represents the CreateNotificationTemplateV1Admin command
var CreateNotificationTemplateV1AdminCmd = &cobra.Command{
	Use:   "createNotificationTemplateV1Admin",
	Short: "Create notification template V1 admin",
	Long:  `Create notification template V1 admin`,
	RunE: func(cmd *cobra.Command, args []string) error {
		notificationService := &lobby.NotificationService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *lobbyclientmodels.ModelCreateTemplateRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &notification.CreateNotificationTemplateV1AdminParams{
			Body:      body,
			Namespace: namespace,
		}
		errInput := notificationService.CreateNotificationTemplateV1AdminShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	CreateNotificationTemplateV1AdminCmd.Flags().StringP("body", "", "", "Body")
	_ = CreateNotificationTemplateV1AdminCmd.MarkFlagRequired("body")
	CreateNotificationTemplateV1AdminCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = CreateNotificationTemplateV1AdminCmd.MarkFlagRequired("namespace")
}
