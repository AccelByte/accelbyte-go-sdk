// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package dataRetrieval

import (
	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclient/data_retrieval"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/gdpr"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminRequestDataRetrievalCmd represents the adminRequestDataRetrieval command
var adminRequestDataRetrievalCmd = &cobra.Command{
	Use:   "adminRequestDataRetrieval",
	Short: "Admin request data retrieval",
	Long:  `Admin request data retrieval`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dataRetrievalService := &gdpr.DataRetrievalService{
			Client:          factory.NewGdprClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		password, _ := cmd.Flags().GetString("password")
		input := &data_retrieval.AdminRequestDataRetrievalParams{
			Password:  &password,
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := dataRetrievalService.AdminRequestDataRetrieval(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminRequestDataRetrievalCmd)
	adminRequestDataRetrievalCmd.Flags().StringP("password", "pd", " ", "Password")
	adminRequestDataRetrievalCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = adminRequestDataRetrievalCmd.MarkFlagRequired("namespace")
	adminRequestDataRetrievalCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = adminRequestDataRetrievalCmd.MarkFlagRequired("userId")
}
