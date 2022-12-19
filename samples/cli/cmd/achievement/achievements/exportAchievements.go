// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package achievements

import (
	"bytes"
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/achievement-sdk/pkg/achievementclient/achievements"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/achievement"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ExportAchievementsCmd represents the ExportAchievements command
var ExportAchievementsCmd = &cobra.Command{
	Use:   "exportAchievements",
	Short: "Export achievements",
	Long:  `Export achievements`,
	RunE: func(cmd *cobra.Command, args []string) error {
		achievementsService := &achievement.AchievementsService{
			Client:          factory.NewAchievementClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		tagsString := cmd.Flag("tags").Value.String()
		var tags []string
		errTags := json.Unmarshal([]byte(tagsString), &tags)
		if errTags != nil {
			return errTags
		}
		input := &achievements.ExportAchievementsParams{
			Namespace: namespace,
			Tags:      tags,
		}
		writer := bytes.NewBuffer(nil)
		ok, err := achievementsService.ExportAchievementsShort(input, writer)
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
	ExportAchievementsCmd.Flags().String("namespace", "", "Namespace")
	_ = ExportAchievementsCmd.MarkFlagRequired("namespace")
	ExportAchievementsCmd.Flags().String("tags", "", "Tags")
}
