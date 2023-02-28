// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package thirdParty

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/third_party"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminCreateThirdPartyConfigCmd represents the AdminCreateThirdPartyConfig command
var AdminCreateThirdPartyConfigCmd = &cobra.Command{
	Use:   "adminCreateThirdPartyConfig",
	Short: "Admin create third party config",
	Long:  `Admin create third party config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		thirdPartyService := &lobby.ThirdPartyService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *lobbyclientmodels.ModelsCreateConfigRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &third_party.AdminCreateThirdPartyConfigParams{
			Body:      body,
			Namespace: namespace,
		}
		created, errCreated := thirdPartyService.AdminCreateThirdPartyConfigShort(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	AdminCreateThirdPartyConfigCmd.Flags().String("body", "", "Body")
	_ = AdminCreateThirdPartyConfigCmd.MarkFlagRequired("body")
	AdminCreateThirdPartyConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminCreateThirdPartyConfigCmd.MarkFlagRequired("namespace")
}
