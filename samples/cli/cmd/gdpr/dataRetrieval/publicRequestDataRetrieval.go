// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclient/data_retrieval"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/gdpr"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// publicRequestDataRetrievalCmd represents the publicRequestDataRetrieval command
var publicRequestDataRetrievalCmd = &cobra.Command{
	Use:   "publicRequestDataRetrieval",
	Short: "Public request data retrieval",
	Long:  `Public request data retrieval`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dataRetrievalService := &gdpr.DataRetrievalService{
			Client:          factory.NewGdprClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		password, _ := cmd.Flags().GetString("password")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &data_retrieval.PublicRequestDataRetrievalParams{
			Password:  password,
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := dataRetrievalService.PublicRequestDataRetrieval(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicRequestDataRetrievalCmd)
	publicRequestDataRetrievalCmd.Flags().StringP("password", "p", " ", "Password")
	_ = publicRequestDataRetrievalCmd.MarkFlagRequired("password")
	publicRequestDataRetrievalCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = publicRequestDataRetrievalCmd.MarkFlagRequired("namespace")
	publicRequestDataRetrievalCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = publicRequestDataRetrievalCmd.MarkFlagRequired("userId")
}
