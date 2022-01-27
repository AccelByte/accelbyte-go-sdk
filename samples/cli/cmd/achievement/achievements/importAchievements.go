// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package achievements

import (
	"github.com/AccelByte/accelbyte-go-sdk/achievement-sdk/pkg/achievementclient/achievements"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/achievement"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
	"os"
)

// importAchievementsCmd represents the importAchievements command
var importAchievementsCmd = &cobra.Command{
	Use:   "importAchievements",
	Short: "Import achievements",
	Long:  `Import achievements`,
	RunE: func(cmd *cobra.Command, args []string) error {
		achievementsService := &achievement.AchievementsService{
			Client:          factory.NewAchievementClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		output := cmd.Flag("outputFilePath").Value.String()
		logrus.Infof("Output %v", output)
		file, err := os.Create(output)
		if err != nil {
			return err
		}
		strategy, _ := cmd.Flags().GetString("strategy")
		input := &achievements.ImportAchievementsParams{
			File:      file,
			Strategy:  &strategy,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := achievementsService.ImportAchievements(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(importAchievementsCmd)
	importAchievementsCmd.Flags().StringP("file", "fe", " ", "File")
	importAchievementsCmd.Flags().StringP("strategy", "sy", " ", "Strategy")
	importAchievementsCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = importAchievementsCmd.MarkFlagRequired("namespace")
}
