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

// PublicGetPartyCmd represents the PublicGetParty command
var PublicGetPartyCmd = &cobra.Command{
	Use:   "publicGetParty",
	Short: "Public get party",
	Long:  `Public get party`,
	RunE: func(cmd *cobra.Command, args []string) error {
		partyService := &session.PartyService{
			Client:          factory.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		partyId, _ := cmd.Flags().GetString("partyId")
		input := &party.PublicGetPartyParams{
			Namespace: namespace,
			PartyID:   partyId,
		}
		ok, err := partyService.PublicGetPartyShort(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	PublicGetPartyCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetPartyCmd.MarkFlagRequired("namespace")
	PublicGetPartyCmd.Flags().String("partyId", "", "Party id")
	_ = PublicGetPartyCmd.MarkFlagRequired("partyId")
}
