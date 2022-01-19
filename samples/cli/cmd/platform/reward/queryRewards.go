// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/reward"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// queryRewardsCmd represents the queryRewards command
var queryRewardsCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := rewardService.QueryRewards(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(queryRewardsCmd)
	queryRewardsCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = queryRewardsCmd.MarkFlagRequired("namespace")
	queryRewardsCmd.Flags().StringP("eventTopic", "e", " ", "Event topic")
	queryRewardsCmd.Flags().Int32P("limit", "l", 20, "Limit")
	queryRewardsCmd.Flags().Int32P("offset", "o", 0, "Offset")
	queryRewardsCmd.Flags().StringP("sortBy", "s", " ", "Sort by")
}
