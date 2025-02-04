// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package matchPools

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2client/match_pools"
	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2clientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/match2"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PostMatchErrorMetricCmd represents the PostMatchErrorMetric command
var PostMatchErrorMetricCmd = &cobra.Command{
	Use:   "postMatchErrorMetric",
	Short: "Post match error metric",
	Long:  `Post match error metric`,
	RunE: func(cmd *cobra.Command, args []string) error {
		matchPoolsService := &match2.MatchPoolsService{
			Client:          factory.NewMatch2Client(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *match2clientmodels.APIExternalFailureMetricRecord
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		pool, _ := cmd.Flags().GetString("pool")
		input := &match_pools.PostMatchErrorMetricParams{
			Body:      body,
			Namespace: namespace,
			Pool:      pool,
		}
		errNoContent := matchPoolsService.PostMatchErrorMetricShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	PostMatchErrorMetricCmd.Flags().String("body", "", "Body")
	_ = PostMatchErrorMetricCmd.MarkFlagRequired("body")
	PostMatchErrorMetricCmd.Flags().String("namespace", "", "Namespace")
	_ = PostMatchErrorMetricCmd.MarkFlagRequired("namespace")
	PostMatchErrorMetricCmd.Flags().String("pool", "", "Pool")
	_ = PostMatchErrorMetricCmd.MarkFlagRequired("pool")
}
