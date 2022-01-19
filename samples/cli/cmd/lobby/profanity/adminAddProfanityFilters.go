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

// adminAddProfanityFiltersCmd represents the adminAddProfanityFilters command
var adminAddProfanityFiltersCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := profanityService.AdminAddProfanityFilters(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminAddProfanityFiltersCmd)
	adminAddProfanityFiltersCmd.Flags().StringP("body", "b", " ", "Body")
	_ = adminAddProfanityFiltersCmd.MarkFlagRequired("body")
	adminAddProfanityFiltersCmd.Flags().StringP("list", "l", " ", "List")
	_ = adminAddProfanityFiltersCmd.MarkFlagRequired("list")
	adminAddProfanityFiltersCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminAddProfanityFiltersCmd.MarkFlagRequired("namespace")
}
