// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/profanity"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminVerifyMessageProfanityResponseCmd represents the adminVerifyMessageProfanityResponse command
var adminVerifyMessageProfanityResponseCmd = &cobra.Command{
	Use:   "adminVerifyMessageProfanityResponse",
	Short: "Admin verify message profanity response",
	Long:  `Admin verify message profanity response`,
	RunE: func(cmd *cobra.Command, args []string) error {
		profanityService := &lobby.ProfanityService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *lobbyclientmodels.ModelsAdminVerifyMessageProfanityRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &profanity.AdminVerifyMessageProfanityResponseParams{
			Body:      body,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := profanityService.AdminVerifyMessageProfanityResponse(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminVerifyMessageProfanityResponseCmd)
	adminVerifyMessageProfanityResponseCmd.Flags().StringP("body", "b", " ", "Body")
	_ = adminVerifyMessageProfanityResponseCmd.MarkFlagRequired("body")
	adminVerifyMessageProfanityResponseCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminVerifyMessageProfanityResponseCmd.MarkFlagRequired("namespace")
}
