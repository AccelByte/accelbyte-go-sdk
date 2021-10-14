// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	retrieval "github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclient/data_retrieval"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/gdpr"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getEmailConfig represents the getEmailConfig command
var getEmailConfigCmd = &cobra.Command{
	Use:   "getEmailConfig",
	Short: "Get Email Config",
	Long:  `Get email configuration`,
	RunE: func(cmd *cobra.Command, args []string) error {
		gdprService := &gdpr.DataRetrievalService{
			Client:          factory.NewGdprClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace := cmd.Flag("namespace").Value.String()
		input := &retrieval.GetAdminEmailConfigurationParams{
			Namespace: namespace,
		}
		listEmail, err := gdprService.GetAdminEmailConfiguration(input)
		if err != nil {
			return err
		}
		response, err := json.Marshal(listEmail)
		if err != nil {
			return err
		}
		logrus.Infof("Response: %s", string(response))
		return nil
	},
}

func init() {
	rootCmd.AddCommand(getEmailConfigCmd)
	getEmailConfigCmd.Flags().StringP("namespace", "n", "", "namespace")
	getEmailConfigCmd.MarkFlagRequired("namespace")
}
