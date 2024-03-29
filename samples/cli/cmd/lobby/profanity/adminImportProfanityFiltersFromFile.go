// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package profanity

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/profanity"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminImportProfanityFiltersFromFileCmd represents the AdminImportProfanityFiltersFromFile command
var AdminImportProfanityFiltersFromFileCmd = &cobra.Command{
	Use:   "adminImportProfanityFiltersFromFile",
	Short: "Admin import profanity filters from file",
	Long:  `Admin import profanity filters from file`,
	RunE: func(cmd *cobra.Command, args []string) error {
		profanityService := &lobby.ProfanityService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body []int64
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		list_, _ := cmd.Flags().GetString("list")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &profanity.AdminImportProfanityFiltersFromFileParams{
			Body:      body,
			List:      list_,
			Namespace: namespace,
		}
		errOK := profanityService.AdminImportProfanityFiltersFromFileShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminImportProfanityFiltersFromFileCmd.Flags().String("body", "", "Body")
	_ = AdminImportProfanityFiltersFromFileCmd.MarkFlagRequired("body")
	AdminImportProfanityFiltersFromFileCmd.Flags().String("list", "", "List")
	_ = AdminImportProfanityFiltersFromFileCmd.MarkFlagRequired("list")
	AdminImportProfanityFiltersFromFileCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminImportProfanityFiltersFromFileCmd.MarkFlagRequired("namespace")
}
