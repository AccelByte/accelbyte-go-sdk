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

// SendSpecificUserFreeformNotificationV1AdminCmd represents the SendSpecificUserFreeformNotificationV1Admin command
var SendSpecificUserFreeformNotificationV1AdminCmd = &cobra.Command{
	Use:   "sendSpecificUserFreeformNotificationV1Admin",
	Short: "Send specific user freeform notification V1 admin",
	Long:  `Send specific user freeform notification V1 admin`,
	RunE: func(cmd *cobra.Command, args []string) error {
		notificationService := &lobby.NotificationService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *lobbyclientmodels.ModelFreeFormNotificationRequestV1
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &notification.SendSpecificUserFreeformNotificationV1AdminParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		errInput := notificationService.SendSpecificUserFreeformNotificationV1AdminShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	SendSpecificUserFreeformNotificationV1AdminCmd.Flags().StringP("body", "", "", "Body")
	_ = SendSpecificUserFreeformNotificationV1AdminCmd.MarkFlagRequired("body")
	SendSpecificUserFreeformNotificationV1AdminCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = SendSpecificUserFreeformNotificationV1AdminCmd.MarkFlagRequired("namespace")
	SendSpecificUserFreeformNotificationV1AdminCmd.Flags().StringP("userId", "", "", "User id")
	_ = SendSpecificUserFreeformNotificationV1AdminCmd.MarkFlagRequired("userId")
}
