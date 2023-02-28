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

// PublicPromotePartyLeaderCmd represents the PublicPromotePartyLeader command
var PublicPromotePartyLeaderCmd = &cobra.Command{
	Use:   "publicPromotePartyLeader",
	Short: "Public promote party leader",
	Long:  `Public promote party leader`,
	RunE: func(cmd *cobra.Command, args []string) error {
		partyService := &session.PartyService{
			Client:          factory.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *sessionclientmodels.ApimodelsPromoteLeaderRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		partyId, _ := cmd.Flags().GetString("partyId")
		input := &party.PublicPromotePartyLeaderParams{
			Body:      body,
			Namespace: namespace,
			PartyID:   partyId,
		}
		ok, errOK := partyService.PublicPromotePartyLeaderShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicPromotePartyLeaderCmd.Flags().String("body", "", "Body")
	_ = PublicPromotePartyLeaderCmd.MarkFlagRequired("body")
	PublicPromotePartyLeaderCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicPromotePartyLeaderCmd.MarkFlagRequired("namespace")
	PublicPromotePartyLeaderCmd.Flags().String("partyId", "", "Party id")
	_ = PublicPromotePartyLeaderCmd.MarkFlagRequired("partyId")
}
