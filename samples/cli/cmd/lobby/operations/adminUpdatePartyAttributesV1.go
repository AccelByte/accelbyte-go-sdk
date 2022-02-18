// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package operations

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/operations"
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
		operationsService := &lobby.OperationsService{
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
		input := &operations.AdminUpdatePartyAttributesV1Params{
			Body:      body,
			Namespace: namespace,
			PartyID:   partyId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := operationsService.AdminUpdatePartyAttributesV1(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			response, errIndent := json.MarshalIndent(ok, "", "    ")
			if errIndent != nil {
				return errIndent
			} else {
				logrus.Infof("Response %s", string(response))
			}
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
