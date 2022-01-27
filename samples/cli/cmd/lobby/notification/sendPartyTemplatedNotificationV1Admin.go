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

// sendPartyTemplatedNotificationV1AdminCmd represents the sendPartyTemplatedNotificationV1Admin command
var sendPartyTemplatedNotificationV1AdminCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := notificationService.SendPartyTemplatedNotificationV1Admin(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(sendPartyTemplatedNotificationV1AdminCmd)
	sendPartyTemplatedNotificationV1AdminCmd.Flags().StringP("body", "by", " ", "Body")
	_ = sendPartyTemplatedNotificationV1AdminCmd.MarkFlagRequired("body")
	sendPartyTemplatedNotificationV1AdminCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = sendPartyTemplatedNotificationV1AdminCmd.MarkFlagRequired("namespace")
	sendPartyTemplatedNotificationV1AdminCmd.Flags().StringP("partyId", "pd", " ", "Party id")
	_ = sendPartyTemplatedNotificationV1AdminCmd.MarkFlagRequired("partyId")
}
