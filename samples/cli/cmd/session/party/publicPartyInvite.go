// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package party

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/session"
	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclient/party"
	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicPartyInviteCmd represents the PublicPartyInvite command
var PublicPartyInviteCmd = &cobra.Command{
	Use:   "publicPartyInvite",
	Short: "Public party invite",
	Long:  `Public party invite`,
	RunE: func(cmd *cobra.Command, args []string) error {
		partyService := &session.PartyService{
			Client:          factory.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *sessionclientmodels.ApimodelsSessionInviteRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		partyId, _ := cmd.Flags().GetString("partyId")
		input := &party.PublicPartyInviteParams{
			Body:      body,
			Namespace: namespace,
			PartyID:   partyId,
		}
		errCreated := partyService.PublicPartyInviteShort(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	PublicPartyInviteCmd.Flags().String("body", "", "Body")
	_ = PublicPartyInviteCmd.MarkFlagRequired("body")
	PublicPartyInviteCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicPartyInviteCmd.MarkFlagRequired("namespace")
	PublicPartyInviteCmd.Flags().String("partyId", "", "Party id")
	_ = PublicPartyInviteCmd.MarkFlagRequired("partyId")
}
