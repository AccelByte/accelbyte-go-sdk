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

// PublicPartyLeaveCmd represents the PublicPartyLeave command
var PublicPartyLeaveCmd = &cobra.Command{
	Use:   "publicPartyLeave",
	Short: "Public party leave",
	Long:  `Public party leave`,
	RunE: func(cmd *cobra.Command, args []string) error {
		partyService := &session.PartyService{
			Client:          factory.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		partyId, _ := cmd.Flags().GetString("partyId")
		input := &party.PublicPartyLeaveParams{
			Namespace: namespace,
			PartyID:   partyId,
		}
		errInput := partyService.PublicPartyLeaveShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	PublicPartyLeaveCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicPartyLeaveCmd.MarkFlagRequired("namespace")
	PublicPartyLeaveCmd.Flags().String("partyId", "", "Party id")
	_ = PublicPartyLeaveCmd.MarkFlagRequired("partyId")
}
