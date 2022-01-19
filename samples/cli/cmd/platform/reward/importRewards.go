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
	"os"
)

// importRewardsCmd represents the importRewards command
var importRewardsCmd = &cobra.Command{
	Use:   "importRewards",
	Short: "Import rewards",
	Long:  `Import rewards`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rewardService := &platform.RewardService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		replaceExisting, _ := cmd.Flags().GetBool("replaceExisting")
		output := cmd.Flag("outputFilePath").Value.String()
		logrus.Infof("Output %v", output)
		file, err := os.Create(output)
		if err != nil {
			return err
		}
		input := &reward.ImportRewardsParams{
			File:            file,
			Namespace:       namespace,
			ReplaceExisting: replaceExisting,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := rewardService.ImportRewards(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(importRewardsCmd)
	importRewardsCmd.Flags().StringP("file", "f", " ", "File")
	importRewardsCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = importRewardsCmd.MarkFlagRequired("namespace")
	importRewardsCmd.Flags().BoolP("replaceExisting", "r", false, "Replace existing")
	_ = importRewardsCmd.MarkFlagRequired("replaceExisting")
}
