// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package lobbyOperations

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/lobby_operations"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminUpdatePartyAttributesV1Cmd represents the AdminUpdatePartyAttributesV1 command
var AdminUpdatePartyAttributesV1Cmd = &cobra.Command{
	Use:   "adminUpdatePartyAttributesV1",
	Short: "Admin update party attributes V1",
	Long:  `Admin update party attributes V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		lobbyOperationsService := &lobby.LobbyOperationsService{
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
		input := &lobby_operations.AdminUpdatePartyAttributesV1Params{
			Body:      body,
			Namespace: namespace,
			PartyID:   partyId,
		}
		ok, err := lobbyOperationsService.AdminUpdatePartyAttributesV1Short(input)
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
	AdminUpdatePartyAttributesV1Cmd.Flags().StringP("body", "", "", "Body")
	_ = AdminUpdatePartyAttributesV1Cmd.MarkFlagRequired("body")
	AdminUpdatePartyAttributesV1Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminUpdatePartyAttributesV1Cmd.MarkFlagRequired("namespace")
	AdminUpdatePartyAttributesV1Cmd.Flags().StringP("partyId", "", "", "Party id")
	_ = AdminUpdatePartyAttributesV1Cmd.MarkFlagRequired("partyId")
}
