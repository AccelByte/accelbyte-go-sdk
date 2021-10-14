// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	deletion "github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclient/data_deletion"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/gdpr"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getDeletion represents the getDeletion command
var getDeletionCmd = &cobra.Command{
	Use:   "getDeletion",
	Short: "Get deletion",
	Long:  `Get user account deletion`,
	RunE: func(cmd *cobra.Command, args []string) error {
		gdprService := &gdpr.DataDeletionService{
			Client:          factory.NewGdprClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace := cmd.Flag("namespace").Value.String()
		requestDate := cmd.Flag("requestDate").Value.String()
		after := cmd.Flag("after").Value.String()
		before := cmd.Flag("before").Value.String()
		limit, err := cmd.Flags().GetInt64("limit")
		if err != nil {
			return err
		}
		offset, err := cmd.Flags().GetInt64("offset")
		if err != nil {
			return err
		}
		input := &deletion.AdminGetListDeletionDataRequestParams{
			After:       &after,
			Before:      &before,
			Limit:       &limit,
			Namespace:   namespace,
			Offset:      &offset,
			RequestDate: &requestDate,
		}
		deletionList, err := gdprService.AdminGetListDeletionDataRequest(input)
		if err != nil {
			return err
		}
		response, err := json.Marshal(deletionList)
		if err != nil {
			return err
		}
		logrus.Infof("Response: %s", string(response))
		return nil
	},
}

func init() {
	rootCmd.AddCommand(getDeletionCmd)
	getDeletionCmd.Flags().StringP("namespace", "n", "", "User namespace")
	getDeletionCmd.MarkFlagRequired("namespace")
	getDeletionCmd.Flags().StringP("requestDate", "d", "", "YYYY-MM-DD")
	getDeletionCmd.MarkFlagRequired("requestDate")
	getDeletionCmd.Flags().StringP("after", "a", "", "after")
	getDeletionCmd.MarkFlagRequired("after")
	getDeletionCmd.Flags().StringP("before", "b", "", "before")
	getDeletionCmd.MarkFlagRequired("before")
	getDeletionCmd.Flags().Int64P("limit", "l", -1, "limit")
	getDeletionCmd.MarkFlagRequired("limit")
	getDeletionCmd.Flags().Int64P("offset", "o", -1, "offset")
	getDeletionCmd.MarkFlagRequired("offset")
}
