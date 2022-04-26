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

// SendPartyTemplatedNotificationV1AdminCmd represents the SendPartyTemplatedNotificationV1Admin command
var SendPartyTemplatedNotificationV1AdminCmd = &cobra.Command{
	Use:   "sendPartyTemplatedNotificationV1Admin",
	Short: "Send party templated notification V1 admin",
	Long:  `Send party templated notification V1 admin`,
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
		partyId, _ := cmd.Flags().GetString("partyId")
		input := &notification.SendPartyTemplatedNotificationV1AdminParams{
			Body:      body,
			Namespace: namespace,
			PartyID:   partyId,
		}
		errInput := notificationService.SendPartyTemplatedNotificationV1AdminShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	SendPartyTemplatedNotificationV1AdminCmd.Flags().StringP("body", "", "", "Body")
	_ = SendPartyTemplatedNotificationV1AdminCmd.MarkFlagRequired("body")
	SendPartyTemplatedNotificationV1AdminCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = SendPartyTemplatedNotificationV1AdminCmd.MarkFlagRequired("namespace")
	SendPartyTemplatedNotificationV1AdminCmd.Flags().StringP("partyId", "", "", "Party id")
	_ = SendPartyTemplatedNotificationV1AdminCmd.MarkFlagRequired("partyId")
}
