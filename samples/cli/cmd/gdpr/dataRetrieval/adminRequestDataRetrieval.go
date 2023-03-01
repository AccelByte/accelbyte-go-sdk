// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package dataRetrieval

import (
	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclient/data_retrieval"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/gdpr"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminRequestDataRetrievalCmd represents the AdminRequestDataRetrieval command
var AdminRequestDataRetrievalCmd = &cobra.Command{
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
		created, errCreated := dataRetrievalService.AdminRequestDataRetrievalShort(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	AdminRequestDataRetrievalCmd.Flags().String("password", "", "Password")
	AdminRequestDataRetrievalCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminRequestDataRetrievalCmd.MarkFlagRequired("namespace")
	AdminRequestDataRetrievalCmd.Flags().String("userId", "", "User id")
	_ = AdminRequestDataRetrievalCmd.MarkFlagRequired("userId")
}
