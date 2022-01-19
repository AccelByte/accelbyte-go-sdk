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

// sendMultipleUsersFreeformNotificationV1AdminCmd represents the sendMultipleUsersFreeformNotificationV1Admin command
var sendMultipleUsersFreeformNotificationV1AdminCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := notificationService.SendMultipleUsersFreeformNotificationV1Admin(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(sendMultipleUsersFreeformNotificationV1AdminCmd)
	sendMultipleUsersFreeformNotificationV1AdminCmd.Flags().StringP("body", "b", " ", "Body")
	_ = sendMultipleUsersFreeformNotificationV1AdminCmd.MarkFlagRequired("body")
	sendMultipleUsersFreeformNotificationV1AdminCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = sendMultipleUsersFreeformNotificationV1AdminCmd.MarkFlagRequired("namespace")
}
