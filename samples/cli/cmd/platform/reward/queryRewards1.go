// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package reward

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/reward"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// QueryRewards1Cmd represents the QueryRewards1 command
var QueryRewards1Cmd = &cobra.Command{
	Use:   "queryRewards1",
	Short: "Query rewards 1",
	Long:  `Query rewards 1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rewardService := &platform.RewardService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		eventTopic, _ := cmd.Flags().GetString("eventTopic")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		sortByString := cmd.Flag("sortBy").Value.String()
		var sortBy []string
		errSortBy := json.Unmarshal([]byte(sortByString), &sortBy)
		if errSortBy != nil {
			return errSortBy
		}
		input := &reward.QueryRewards1Params{
			Namespace:  namespace,
			EventTopic: &eventTopic,
			Limit:      &limit,
			Offset:     &offset,
			SortBy:     sortBy,
		}
		ok, errOK := rewardService.QueryRewards1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	QueryRewards1Cmd.Flags().String("namespace", "", "Namespace")
	_ = QueryRewards1Cmd.MarkFlagRequired("namespace")
	QueryRewards1Cmd.Flags().String("eventTopic", "", "Event topic")
	QueryRewards1Cmd.Flags().Int32("limit", 20, "Limit")
	QueryRewards1Cmd.Flags().Int32("offset", 0, "Offset")
	QueryRewards1Cmd.Flags().String("sortBy", "", "Sort by")
}
