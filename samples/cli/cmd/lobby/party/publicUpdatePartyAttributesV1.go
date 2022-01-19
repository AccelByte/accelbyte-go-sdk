// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/party"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// publicUpdatePartyAttributesV1Cmd represents the publicUpdatePartyAttributesV1 command
var publicUpdatePartyAttributesV1Cmd = &cobra.Command{
	Use:   "publicUpdatePartyAttributesV1",
	Short: "Public update party attributes V1",
	Long:  `Public update party attributes V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		partyService := &lobby.PartyService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *lobbyclientmodels.ModelsPartyPUTCustomAttributesRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		partyId, _ := cmd.Flags().GetString("partyId")
		input := &party.PublicUpdatePartyAttributesV1Params{
			Body:      body,
			Namespace: namespace,
			PartyID:   partyId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := partyService.PublicUpdatePartyAttributesV1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicUpdatePartyAttributesV1Cmd)
	publicUpdatePartyAttributesV1Cmd.Flags().StringP("body", "b", " ", "Body")
	_ = publicUpdatePartyAttributesV1Cmd.MarkFlagRequired("body")
	publicUpdatePartyAttributesV1Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = publicUpdatePartyAttributesV1Cmd.MarkFlagRequired("namespace")
	publicUpdatePartyAttributesV1Cmd.Flags().StringP("partyId", "p", " ", "Party id")
	_ = publicUpdatePartyAttributesV1Cmd.MarkFlagRequired("partyId")
}
