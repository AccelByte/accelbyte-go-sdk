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

// FreeFormNotificationByUserIDCmd represents the FreeFormNotificationByUserID command
var FreeFormNotificationByUserIDCmd = &cobra.Command{
	Use:   "freeFormNotificationByUserID",
	Short: "Free form notification by user ID",
	Long:  `Free form notification by user ID`,
	RunE: func(cmd *cobra.Command, args []string) error {
		notificationService := &lobby.NotificationService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *lobbyclientmodels.ModelFreeFormNotificationRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &notification.FreeFormNotificationByUserIDParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		errInput := notificationService.FreeFormNotificationByUserIDShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	FreeFormNotificationByUserIDCmd.Flags().StringP("body", "", "", "Body")
	_ = FreeFormNotificationByUserIDCmd.MarkFlagRequired("body")
	FreeFormNotificationByUserIDCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = FreeFormNotificationByUserIDCmd.MarkFlagRequired("namespace")
	FreeFormNotificationByUserIDCmd.Flags().StringP("userId", "", "", "User id")
	_ = FreeFormNotificationByUserIDCmd.MarkFlagRequired("userId")
}
