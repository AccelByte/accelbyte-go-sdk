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

// AdminGetPartyDataV1Cmd represents the AdminGetPartyDataV1 command
var AdminGetPartyDataV1Cmd = &cobra.Command{
	Use:   "adminGetPartyDataV1",
	Short: "Admin get party data V1",
	Long:  `Admin get party data V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		partyService := &lobby.PartyService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		partyId, _ := cmd.Flags().GetString("partyId")
		input := &party.AdminGetPartyDataV1Params{
			Namespace: namespace,
			PartyID:   partyId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := partyService.AdminGetPartyDataV1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	AdminGetPartyDataV1Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminGetPartyDataV1Cmd.MarkFlagRequired("namespace")
	AdminGetPartyDataV1Cmd.Flags().StringP("partyId", "", "", "Party id")
	_ = AdminGetPartyDataV1Cmd.MarkFlagRequired("partyId")
}
