// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service"
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
		gdprService := &service.DataRetrievalService{
			GdprServiceClient: factory.NewGdprClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository:   &repository.TokenRepositoryImpl{},
		}
		namespace := cmd.Flag("namespace").Value.String()
		listEmail, err := gdprService.GetAdminEmailConfiguration(namespace)
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
