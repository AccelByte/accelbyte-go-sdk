// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package party

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/session"
	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclient/party"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicPartyJoinCmd represents the PublicPartyJoin command
var PublicPartyJoinCmd = &cobra.Command{
	Use:   "publicPartyJoin",
	Short: "Public party join",
	Long:  `Public party join`,
	RunE: func(cmd *cobra.Command, args []string) error {
		partyService := &session.PartyService{
			Client:          factory.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		partyId, _ := cmd.Flags().GetString("partyId")
		input := &party.PublicPartyJoinParams{
			Namespace: namespace,
			PartyID:   partyId,
		}
		ok, errOK := partyService.PublicPartyJoinShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicPartyJoinCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicPartyJoinCmd.MarkFlagRequired("namespace")
	PublicPartyJoinCmd.Flags().String("partyId", "", "Party id")
	_ = PublicPartyJoinCmd.MarkFlagRequired("partyId")
}
