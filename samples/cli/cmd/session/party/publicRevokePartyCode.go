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

// PublicRevokePartyCodeCmd represents the PublicRevokePartyCode command
var PublicRevokePartyCodeCmd = &cobra.Command{
	Use:   "publicRevokePartyCode",
	Short: "Public revoke party code",
	Long:  `Public revoke party code`,
	RunE: func(cmd *cobra.Command, args []string) error {
		partyService := &session.PartyService{
			Client:          factory.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		partyId, _ := cmd.Flags().GetString("partyId")
		input := &party.PublicRevokePartyCodeParams{
			Namespace: namespace,
			PartyID:   partyId,
		}
		ok, err := partyService.PublicRevokePartyCodeShort(input)
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
	PublicRevokePartyCodeCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicRevokePartyCodeCmd.MarkFlagRequired("namespace")
	PublicRevokePartyCodeCmd.Flags().String("partyId", "", "Party id")
	_ = PublicRevokePartyCodeCmd.MarkFlagRequired("partyId")
}
