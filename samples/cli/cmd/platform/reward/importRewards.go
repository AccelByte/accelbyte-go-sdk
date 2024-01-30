// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package reward

import (
	"os"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/reward"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
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
		outputFile := cmd.Flag("file").Value.String()
		logrus.Infof("file %v", outputFile)
		file, err := os.Open(outputFile)
		if err != nil {
			return err
		}
		input := &reward.ImportRewardsParams{
			File:            file,
			Namespace:       namespace,
			ReplaceExisting: replaceExisting,
		}
		errOK := rewardService.ImportRewardsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	ImportRewardsCmd.Flags().String("file", "", "File")
	ImportRewardsCmd.Flags().String("namespace", "", "Namespace")
	_ = ImportRewardsCmd.MarkFlagRequired("namespace")
	ImportRewardsCmd.Flags().Bool("replaceExisting", false, "Replace existing")
	_ = ImportRewardsCmd.MarkFlagRequired("replaceExisting")
}
