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

// adminDeleteProfanityFilterCmd represents the adminDeleteProfanityFilter command
var adminDeleteProfanityFilterCmd = &cobra.Command{
	Use:   "adminDeleteProfanityFilter",
	Short: "Admin delete profanity filter",
	Long:  `Admin delete profanity filter`,
	RunE: func(cmd *cobra.Command, args []string) error {
		profanityService := &lobby.ProfanityService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *lobbyclientmodels.ModelsAdminDeleteProfanityFilterRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		list_, _ := cmd.Flags().GetString("list")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &profanity.AdminDeleteProfanityFilterParams{
			Body:      body,
			List:      list_,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := profanityService.AdminDeleteProfanityFilter(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminDeleteProfanityFilterCmd)
	adminDeleteProfanityFilterCmd.Flags().StringP("body", "b", " ", "Body")
	_ = adminDeleteProfanityFilterCmd.MarkFlagRequired("body")
	adminDeleteProfanityFilterCmd.Flags().StringP("list", "l", " ", "List")
	_ = adminDeleteProfanityFilterCmd.MarkFlagRequired("list")
	adminDeleteProfanityFilterCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminDeleteProfanityFilterCmd.MarkFlagRequired("namespace")
}
