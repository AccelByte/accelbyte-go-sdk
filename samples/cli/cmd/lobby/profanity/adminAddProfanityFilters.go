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

// AdminAddProfanityFiltersCmd represents the AdminAddProfanityFilters command
var AdminAddProfanityFiltersCmd = &cobra.Command{
	Use:   "adminAddProfanityFilters",
	Short: "Admin add profanity filters",
	Long:  `Admin add profanity filters`,
	RunE: func(cmd *cobra.Command, args []string) error {
		profanityService := &lobby.ProfanityService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *lobbyclientmodels.ModelsAdminAddProfanityFiltersRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		list_, _ := cmd.Flags().GetString("list")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &profanity.AdminAddProfanityFiltersParams{
			Body:      body,
			List:      list_,
			Namespace: namespace,
		}
		errOK := profanityService.AdminAddProfanityFiltersShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminAddProfanityFiltersCmd.Flags().String("body", "", "Body")
	_ = AdminAddProfanityFiltersCmd.MarkFlagRequired("body")
	AdminAddProfanityFiltersCmd.Flags().String("list", "", "List")
	_ = AdminAddProfanityFiltersCmd.MarkFlagRequired("list")
	AdminAddProfanityFiltersCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminAddProfanityFiltersCmd.MarkFlagRequired("namespace")
}
