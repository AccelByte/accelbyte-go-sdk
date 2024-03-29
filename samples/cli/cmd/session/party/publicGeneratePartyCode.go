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

// PublicGeneratePartyCodeCmd represents the PublicGeneratePartyCode command
var PublicGeneratePartyCodeCmd = &cobra.Command{
	Use:   "publicGeneratePartyCode",
	Short: "Public generate party code",
	Long:  `Public generate party code`,
	RunE: func(cmd *cobra.Command, args []string) error {
		partyService := &session.PartyService{
			Client:          factory.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		partyId, _ := cmd.Flags().GetString("partyId")
		input := &party.PublicGeneratePartyCodeParams{
			Namespace: namespace,
			PartyID:   partyId,
		}
		ok, errOK := partyService.PublicGeneratePartyCodeShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGeneratePartyCodeCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGeneratePartyCodeCmd.MarkFlagRequired("namespace")
	PublicGeneratePartyCodeCmd.Flags().String("partyId", "", "Party id")
	_ = PublicGeneratePartyCodeCmd.MarkFlagRequired("partyId")
}
