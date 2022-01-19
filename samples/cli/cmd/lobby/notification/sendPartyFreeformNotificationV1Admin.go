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

// sendPartyFreeformNotificationV1AdminCmd represents the sendPartyFreeformNotificationV1Admin command
var sendPartyFreeformNotificationV1AdminCmd = &cobra.Command{
	Use:   "sendPartyFreeformNotificationV1Admin",
	Short: "Send party freeform notification V1 admin",
	Long:  `Send party freeform notification V1 admin`,
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
		partyId, _ := cmd.Flags().GetString("partyId")
		input := &notification.SendPartyFreeformNotificationV1AdminParams{
			Body:      body,
			Namespace: namespace,
			PartyID:   partyId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := notificationService.SendPartyFreeformNotificationV1Admin(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(sendPartyFreeformNotificationV1AdminCmd)
	sendPartyFreeformNotificationV1AdminCmd.Flags().StringP("body", "b", " ", "Body")
	_ = sendPartyFreeformNotificationV1AdminCmd.MarkFlagRequired("body")
	sendPartyFreeformNotificationV1AdminCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = sendPartyFreeformNotificationV1AdminCmd.MarkFlagRequired("namespace")
	sendPartyFreeformNotificationV1AdminCmd.Flags().StringP("partyId", "p", " ", "Party id")
	_ = sendPartyFreeformNotificationV1AdminCmd.MarkFlagRequired("partyId")
}
