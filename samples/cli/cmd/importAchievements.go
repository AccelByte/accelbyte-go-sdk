// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package cmd

import (
	"fmt"
	achievement_ "github.com/AccelByte/accelbyte-go-sdk/achievement-sdk/pkg/achievementclient/achievements"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/achievement"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"os"

	"github.com/spf13/cobra"
)

// importAchievementsCmd represents the importAchievements command
var importAchievementsCmd = &cobra.Command{
	Use:   "importAchievements",
	Short: "Import achievements",
	Long:  `Import achievements`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fmt.Println("importAchievements called")
		achievementService := &achievement.AchievementsService{
			Client:          factory.NewAchievementClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace := cmd.Flag("namespace").Value.String()
		filePath := cmd.Flag("filePath").Value.String()
		file, err := os.Open(filePath)
		if err != nil {
			return err
		}
		input := &achievement_.ImportAchievementsParams{
			File:      file,
			Namespace: namespace,
			Strategy:  nil,
		}
		//nolint:staticcheck // SA1019 To be deprecated later
		//lint:ignore SA1019 Ignore the deprecation warnings
		_, err = achievementService.ImportAchievements(input)
		if err != nil {
			return err
		}
		logrus.Info("Achievement imported")
		return nil
	},
}

func init() {
	RootCmd.AddCommand(importAchievementsCmd)
	importAchievementsCmd.Flags().StringP("namespace", "n", "", "User namespace")
	_ = importAchievementsCmd.MarkFlagRequired("namespace")
	importAchievementsCmd.Flags().StringP("filePath", "f", "", "Uploaded file absolute path. example: /home/user/file.jpg")
	_ = importAchievementsCmd.MarkFlagRequired("filePath")
}
