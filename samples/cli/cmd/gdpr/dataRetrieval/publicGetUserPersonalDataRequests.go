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

// publicGetUserPersonalDataRequestsCmd represents the publicGetUserPersonalDataRequests command
var publicGetUserPersonalDataRequestsCmd = &cobra.Command{
	Use:   "publicGetUserPersonalDataRequests",
	Short: "Public get user personal data requests",
	Long:  `Public get user personal data requests`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dataRetrievalService := &gdpr.DataRetrievalService{
			Client:          factory.NewGdprClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &data_retrieval.PublicGetUserPersonalDataRequestsParams{
			Namespace: namespace,
			UserID:    userId,
			Limit:     &limit,
			Offset:    &offset,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := dataRetrievalService.PublicGetUserPersonalDataRequests(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicGetUserPersonalDataRequestsCmd)
	publicGetUserPersonalDataRequestsCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = publicGetUserPersonalDataRequestsCmd.MarkFlagRequired("namespace")
	publicGetUserPersonalDataRequestsCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = publicGetUserPersonalDataRequestsCmd.MarkFlagRequired("userId")
	publicGetUserPersonalDataRequestsCmd.Flags().Int64P("limit", "l", 20, "Limit")
	publicGetUserPersonalDataRequestsCmd.Flags().Int64P("offset", "o", 0, "Offset")
}
