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

// AdminListGlobalAchievementsCmd represents the AdminListGlobalAchievements command
var AdminListGlobalAchievementsCmd = &cobra.Command{
	Use:   "adminListGlobalAchievements",
	Short: "Admin list global achievements",
	Long:  `Admin list global achievements`,
	RunE: func(cmd *cobra.Command, args []string) error {
		globalAchievementsService := &achievement.GlobalAchievementsService{
			Client:          factory.NewAchievementClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		achievementCodes, _ := cmd.Flags().GetString("achievementCodes")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		sortBy, _ := cmd.Flags().GetString("sortBy")
		status, _ := cmd.Flags().GetString("status")
		tagsString := cmd.Flag("tags").Value.String()
		var tags []string
		errTags := json.Unmarshal([]byte(tagsString), &tags)
		if errTags != nil {
			return errTags
		}
		input := &global_achievements.AdminListGlobalAchievementsParams{
			Namespace:        namespace,
			AchievementCodes: &achievementCodes,
			Limit:            &limit,
			Offset:           &offset,
			SortBy:           &sortBy,
			Status:           &status,
			Tags:             tags,
		}
		ok, err := globalAchievementsService.AdminListGlobalAchievementsShort(input)
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
	AdminListGlobalAchievementsCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminListGlobalAchievementsCmd.MarkFlagRequired("namespace")
	AdminListGlobalAchievementsCmd.Flags().String("achievementCodes", "", "Achievement codes")
	AdminListGlobalAchievementsCmd.Flags().Int64("limit", 20, "Limit")
	AdminListGlobalAchievementsCmd.Flags().Int64("offset", 0, "Offset")
	AdminListGlobalAchievementsCmd.Flags().String("sortBy", "", "Sort by")
	AdminListGlobalAchievementsCmd.Flags().String("status", "", "Status")
	AdminListGlobalAchievementsCmd.Flags().String("tags", "", "Tags")
}
