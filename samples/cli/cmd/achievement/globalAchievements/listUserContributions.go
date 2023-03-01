// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package globalAchievements

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/achievement-sdk/pkg/achievementclient/global_achievements"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/achievement"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ListUserContributionsCmd represents the ListUserContributions command
var ListUserContributionsCmd = &cobra.Command{
	Use:   "listUserContributions",
	Short: "List user contributions",
	Long:  `List user contributions`,
	RunE: func(cmd *cobra.Command, args []string) error {
		globalAchievementsService := &achievement.GlobalAchievementsService{
			Client:          factory.NewAchievementClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		achievementCodes, _ := cmd.Flags().GetString("achievementCodes")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		sortBy, _ := cmd.Flags().GetString("sortBy")
		tagsString := cmd.Flag("tags").Value.String()
		var tags []string
		errTags := json.Unmarshal([]byte(tagsString), &tags)
		if errTags != nil {
			return errTags
		}
		input := &global_achievements.ListUserContributionsParams{
			Namespace:        namespace,
			UserID:           userId,
			AchievementCodes: &achievementCodes,
			Limit:            &limit,
			Offset:           &offset,
			SortBy:           &sortBy,
			Tags:             tags,
		}
		ok, errOK := globalAchievementsService.ListUserContributionsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	ListUserContributionsCmd.Flags().String("namespace", "", "Namespace")
	_ = ListUserContributionsCmd.MarkFlagRequired("namespace")
	ListUserContributionsCmd.Flags().String("userId", "", "User id")
	_ = ListUserContributionsCmd.MarkFlagRequired("userId")
	ListUserContributionsCmd.Flags().String("achievementCodes", "", "Achievement codes")
	ListUserContributionsCmd.Flags().Int64("limit", 20, "Limit")
	ListUserContributionsCmd.Flags().Int64("offset", 0, "Offset")
	ListUserContributionsCmd.Flags().String("sortBy", "", "Sort by")
	ListUserContributionsCmd.Flags().String("tags", "", "Tags")
}
