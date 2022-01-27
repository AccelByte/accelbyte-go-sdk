// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package profanity

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

// adminDebugProfanityFiltersCmd represents the adminDebugProfanityFilters command
var adminDebugProfanityFiltersCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := profanityService.AdminDebugProfanityFilters(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminDebugProfanityFiltersCmd)
	adminDebugProfanityFiltersCmd.Flags().StringP("body", "by", " ", "Body")
	_ = adminDebugProfanityFiltersCmd.MarkFlagRequired("body")
	adminDebugProfanityFiltersCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = adminDebugProfanityFiltersCmd.MarkFlagRequired("namespace")
}
