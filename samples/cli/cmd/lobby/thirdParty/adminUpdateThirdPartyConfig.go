// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

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

// AdminUpdateThirdPartyConfigCmd represents the AdminUpdateThirdPartyConfig command
var AdminUpdateThirdPartyConfigCmd = &cobra.Command{
	Use:   "adminUpdateThirdPartyConfig",
	Short: "Admin update third party config",
	Long:  `Admin update third party config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		thirdPartyService := &lobby.ThirdPartyService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *lobbyclientmodels.ModelsUpdateConfigRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &third_party.AdminUpdateThirdPartyConfigParams{
			Body:      body,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := thirdPartyService.AdminUpdateThirdPartyConfig(input)
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
	AdminUpdateThirdPartyConfigCmd.Flags().StringP("body", "", "", "Body")
	_ = AdminUpdateThirdPartyConfigCmd.MarkFlagRequired("body")
	AdminUpdateThirdPartyConfigCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminUpdateThirdPartyConfigCmd.MarkFlagRequired("namespace")
}
