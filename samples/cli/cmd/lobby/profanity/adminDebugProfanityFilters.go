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

// AdminDebugProfanityFiltersCmd represents the AdminDebugProfanityFilters command
var AdminDebugProfanityFiltersCmd = &cobra.Command{
	Use:   "adminDebugProfanityFilters",
	Short: "Admin debug profanity filters",
	Long:  `Admin debug profanity filters`,
	RunE: func(cmd *cobra.Command, args []string) error {
		profanityService := &lobby.ProfanityService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *lobbyclientmodels.ModelsDebugProfanityFilterRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &profanity.AdminDebugProfanityFiltersParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := profanityService.AdminDebugProfanityFiltersShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminDebugProfanityFiltersCmd.Flags().String("body", "", "Body")
	_ = AdminDebugProfanityFiltersCmd.MarkFlagRequired("body")
	AdminDebugProfanityFiltersCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminDebugProfanityFiltersCmd.MarkFlagRequired("namespace")
}
