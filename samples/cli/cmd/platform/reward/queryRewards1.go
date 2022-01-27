// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package reward

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/reward"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// queryRewards1Cmd represents the queryRewards1 command
var queryRewards1Cmd = &cobra.Command{
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
		sortBy, _ := cmd.Flags().GetString("sortBy")
		input := &reward.QueryRewards1Params{
			Namespace:  namespace,
			EventTopic: &eventTopic,
			Limit:      &limit,
			Offset:     &offset,
			SortBy:     &sortBy,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := rewardService.QueryRewards1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(queryRewards1Cmd)
	queryRewards1Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = queryRewards1Cmd.MarkFlagRequired("namespace")
	queryRewards1Cmd.Flags().StringP("eventTopic", "ec", " ", "Event topic")
	queryRewards1Cmd.Flags().Int32P("limit", "lt", 20, "Limit")
	queryRewards1Cmd.Flags().Int32P("offset", "ot", 0, "Offset")
	queryRewards1Cmd.Flags().StringP("sortBy", "sy", " ", "Sort by")
}
