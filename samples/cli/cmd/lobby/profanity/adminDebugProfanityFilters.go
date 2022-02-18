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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := profanityService.AdminDebugProfanityFilters(input)
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
	AdminDebugProfanityFiltersCmd.Flags().StringP("body", "", "", "Body")
	_ = AdminDebugProfanityFiltersCmd.MarkFlagRequired("body")
	AdminDebugProfanityFiltersCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminDebugProfanityFiltersCmd.MarkFlagRequired("namespace")
}
