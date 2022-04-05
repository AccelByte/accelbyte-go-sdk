// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package party

import (
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/party"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicGetPartyDataV1Cmd represents the PublicGetPartyDataV1 command
var PublicGetPartyDataV1Cmd = &cobra.Command{
	Use:   "publicGetPartyDataV1",
	Short: "Public get party data V1",
	Long:  `Public get party data V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		partyService := &lobby.PartyService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		partyId, _ := cmd.Flags().GetString("partyId")
		input := &party.PublicGetPartyDataV1Params{
			Namespace: namespace,
			PartyID:   partyId,
		}
		ok, err := partyService.PublicGetPartyDataV1Short(input)
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
	PublicGetPartyDataV1Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicGetPartyDataV1Cmd.MarkFlagRequired("namespace")
	PublicGetPartyDataV1Cmd.Flags().StringP("partyId", "", "", "Party id")
	_ = PublicGetPartyDataV1Cmd.MarkFlagRequired("partyId")
}
