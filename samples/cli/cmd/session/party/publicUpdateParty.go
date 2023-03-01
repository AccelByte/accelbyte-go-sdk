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

// PublicUpdatePartyCmd represents the PublicUpdateParty command
var PublicUpdatePartyCmd = &cobra.Command{
	Use:   "publicUpdateParty",
	Short: "Public update party",
	Long:  `Public update party`,
	RunE: func(cmd *cobra.Command, args []string) error {
		partyService := &session.PartyService{
			Client:          factory.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *sessionclientmodels.ApimodelsUpdatePartyRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		partyId, _ := cmd.Flags().GetString("partyId")
		input := &party.PublicUpdatePartyParams{
			Body:      body,
			Namespace: namespace,
			PartyID:   partyId,
		}
		ok, errOK := partyService.PublicUpdatePartyShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicUpdatePartyCmd.Flags().String("body", "", "Body")
	_ = PublicUpdatePartyCmd.MarkFlagRequired("body")
	PublicUpdatePartyCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicUpdatePartyCmd.MarkFlagRequired("namespace")
	PublicUpdatePartyCmd.Flags().String("partyId", "", "Party id")
	_ = PublicUpdatePartyCmd.MarkFlagRequired("partyId")
}
