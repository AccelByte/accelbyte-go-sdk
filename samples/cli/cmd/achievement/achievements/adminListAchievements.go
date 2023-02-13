// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package achievements

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/achievement-sdk/pkg/achievementclient/achievements"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/achievement"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminListAchievementsCmd represents the AdminListAchievements command
var AdminListAchievementsCmd = &cobra.Command{
	Use:   "adminListAchievements",
	Short: "Admin list achievements",
	Long:  `Admin list achievements`,
	RunE: func(cmd *cobra.Command, args []string) error {
		achievementsService := &achievement.AchievementsService{
			Client:          factory.NewAchievementClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		global, _ := cmd.Flags().GetBool("global")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		sortBy, _ := cmd.Flags().GetString("sortBy")
		tagsString := cmd.Flag("tags").Value.String()
		var tags []string
		errTags := json.Unmarshal([]byte(tagsString), &tags)
		if errTags != nil {
			return errTags
		}
		input := &achievements.AdminListAchievementsParams{
			Namespace: namespace,
			Global:    &global,
			Limit:     &limit,
			Offset:    &offset,
			SortBy:    &sortBy,
			Tags:      tags,
		}
		ok, err := achievementsService.AdminListAchievementsShort(input)
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
	AdminListAchievementsCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminListAchievementsCmd.MarkFlagRequired("namespace")
	AdminListAchievementsCmd.Flags().Bool("global", false, "Global")
	AdminListAchievementsCmd.Flags().Int64("limit", 20, "Limit")
	AdminListAchievementsCmd.Flags().Int64("offset", 0, "Offset")
	AdminListAchievementsCmd.Flags().String("sortBy", "", "Sort by")
	AdminListAchievementsCmd.Flags().String("tags", "", "Tags")
}
