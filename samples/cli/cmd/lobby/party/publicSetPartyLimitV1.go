// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package party

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/party"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicSetPartyLimitV1Cmd represents the PublicSetPartyLimitV1 command
var PublicSetPartyLimitV1Cmd = &cobra.Command{
	Use:   "publicSetPartyLimitV1",
	Short: "Public set party limit V1",
	Long:  `Public set party limit V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		partyService := &lobby.PartyService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *lobbyclientmodels.ModelsPartyPUTLimitSizeRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		partyId, _ := cmd.Flags().GetString("partyId")
		input := &party.PublicSetPartyLimitV1Params{
			Body:      body,
			Namespace: namespace,
			PartyID:   partyId,
		}
		errOK := partyService.PublicSetPartyLimitV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	PublicSetPartyLimitV1Cmd.Flags().String("body", "", "Body")
	_ = PublicSetPartyLimitV1Cmd.MarkFlagRequired("body")
	PublicSetPartyLimitV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicSetPartyLimitV1Cmd.MarkFlagRequired("namespace")
	PublicSetPartyLimitV1Cmd.Flags().String("partyId", "", "Party id")
	_ = PublicSetPartyLimitV1Cmd.MarkFlagRequired("partyId")
}
