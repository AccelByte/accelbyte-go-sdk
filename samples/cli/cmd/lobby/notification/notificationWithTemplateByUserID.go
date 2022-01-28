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

// NotificationWithTemplateByUserIDCmd represents the NotificationWithTemplateByUserID command
var NotificationWithTemplateByUserIDCmd = &cobra.Command{
	Use:   "notificationWithTemplateByUserID",
	Short: "Notification with template by user ID",
	Long:  `Notification with template by user ID`,
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
		userId, _ := cmd.Flags().GetString("userId")
		input := &notification.NotificationWithTemplateByUserIDParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := notificationService.NotificationWithTemplateByUserID(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	NotificationWithTemplateByUserIDCmd.Flags().StringP("body", "", " ", "Body")
	_ = NotificationWithTemplateByUserIDCmd.MarkFlagRequired("body")
	NotificationWithTemplateByUserIDCmd.Flags().StringP("namespace", "", " ", "Namespace")
	_ = NotificationWithTemplateByUserIDCmd.MarkFlagRequired("namespace")
	NotificationWithTemplateByUserIDCmd.Flags().StringP("userId", "", " ", "User id")
	_ = NotificationWithTemplateByUserIDCmd.MarkFlagRequired("userId")
}
