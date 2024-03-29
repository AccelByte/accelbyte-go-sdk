// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package profanity

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/profanity"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminSetProfanityRuleForNamespaceCmd represents the AdminSetProfanityRuleForNamespace command
var AdminSetProfanityRuleForNamespaceCmd = &cobra.Command{
	Use:   "adminSetProfanityRuleForNamespace",
	Short: "Admin set profanity rule for namespace",
	Long:  `Admin set profanity rule for namespace`,
	RunE: func(cmd *cobra.Command, args []string) error {
		profanityService := &lobby.ProfanityService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *lobbyclientmodels.ModelsAdminSetProfanityRuleForNamespaceRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &profanity.AdminSetProfanityRuleForNamespaceParams{
			Body:      body,
			Namespace: namespace,
		}
		errOK := profanityService.AdminSetProfanityRuleForNamespaceShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminSetProfanityRuleForNamespaceCmd.Flags().String("body", "", "Body")
	_ = AdminSetProfanityRuleForNamespaceCmd.MarkFlagRequired("body")
	AdminSetProfanityRuleForNamespaceCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminSetProfanityRuleForNamespaceCmd.MarkFlagRequired("namespace")
}
