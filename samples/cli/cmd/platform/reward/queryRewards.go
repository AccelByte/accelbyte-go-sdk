// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package reward

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/reward"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// QueryRewardsCmd represents the QueryRewards command
var QueryRewardsCmd = &cobra.Command{
	Use:   "queryRewards",
	Short: "Query rewards",
	Long:  `Query rewards`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rewardService := &platform.RewardService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		eventTopic, _ := cmd.Flags().GetString("eventTopic")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		sortBy, _ := cmd.Flags().GetString("sortBy")
		input := &reward.QueryRewardsParams{
			Namespace:  namespace,
			EventTopic: &eventTopic,
			Limit:      &limit,
			Offset:     &offset,
			SortBy:     &sortBy,
		}
		ok, err := rewardService.QueryRewardsShort(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	QueryRewardsCmd.Flags().String("namespace", "", "Namespace")
	_ = QueryRewardsCmd.MarkFlagRequired("namespace")
	QueryRewardsCmd.Flags().String("eventTopic", "", "Event topic")
	QueryRewardsCmd.Flags().Int32("limit", 20, "Limit")
	QueryRewardsCmd.Flags().Int32("offset", 0, "Offset")
	QueryRewardsCmd.Flags().String("sortBy", "", "Sort by")
}
