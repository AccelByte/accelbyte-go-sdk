// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package party

import (
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/party"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminGetPartyDataV1Cmd represents the adminGetPartyDataV1 command
var adminGetPartyDataV1Cmd = &cobra.Command{
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
	cmd.RootCmd.AddCommand(adminGetPartyDataV1Cmd)
	adminGetPartyDataV1Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = adminGetPartyDataV1Cmd.MarkFlagRequired("namespace")
	adminGetPartyDataV1Cmd.Flags().StringP("partyId", "pd", " ", "Party id")
	_ = adminGetPartyDataV1Cmd.MarkFlagRequired("partyId")
}
