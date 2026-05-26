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

// PublicUpdatePartyPasswordCmd represents the PublicUpdatePartyPassword command
var PublicUpdatePartyPasswordCmd = &cobra.Command{
	Use:   "publicUpdatePartyPassword",
	Short: "Public update party password",
	Long:  `Public update party password`,
	RunE: func(cmd *cobra.Command, args []string) error {
		partyService := &session.PartyService{
			Client:          factory.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *sessionclientmodels.ApimodelsUpdatePasswordRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		partyId, _ := cmd.Flags().GetString("partyId")
		input := &party.PublicUpdatePartyPasswordParams{
			Body:      body,
			Namespace: namespace,
			PartyID:   partyId,
		}
		errNoContent := partyService.PublicUpdatePartyPasswordShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	PublicUpdatePartyPasswordCmd.Flags().String("body", "", "Body")
	_ = PublicUpdatePartyPasswordCmd.MarkFlagRequired("body")
	PublicUpdatePartyPasswordCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicUpdatePartyPasswordCmd.MarkFlagRequired("namespace")
	PublicUpdatePartyPasswordCmd.Flags().String("partyId", "", "Party id")
	_ = PublicUpdatePartyPasswordCmd.MarkFlagRequired("partyId")
}
