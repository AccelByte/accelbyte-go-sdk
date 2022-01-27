// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package dataRetrieval

import (
	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclient/data_retrieval"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/gdpr"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicRequestDataRetrievalCmd represents the PublicRequestDataRetrieval command
var PublicRequestDataRetrievalCmd = &cobra.Command{
	Use:   "PublicRequestDataRetrieval",
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
	PublicRequestDataRetrievalCmd.Flags().StringP("password", "pd", " ", "Password")
	_ = PublicRequestDataRetrievalCmd.MarkFlagRequired("password")
	PublicRequestDataRetrievalCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = PublicRequestDataRetrievalCmd.MarkFlagRequired("namespace")
	PublicRequestDataRetrievalCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = PublicRequestDataRetrievalCmd.MarkFlagRequired("userId")
}
