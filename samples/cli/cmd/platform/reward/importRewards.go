// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package reward

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/reward"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
	"os"
)

// ImportRewardsCmd represents the ImportRewards command
var ImportRewardsCmd = &cobra.Command{
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
	ImportRewardsCmd.Flags().StringP("file", "", " ", "File")
	ImportRewardsCmd.Flags().StringP("namespace", "", " ", "Namespace")
	_ = ImportRewardsCmd.MarkFlagRequired("namespace")
	ImportRewardsCmd.Flags().BoolP("replaceExisting", "", false, "Replace existing")
	_ = ImportRewardsCmd.MarkFlagRequired("replaceExisting")
}
