// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package reward

import (
	"net/http"
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
		output := cmd.Flag("file").Value.String()
		logrus.Infof("file %v", output)
		file, err := os.Open(output)
		if err != nil {
			return err
		}
		httpClient := &http.Client{
			CheckRedirect: func(req *http.Request, via []*http.Request) error {
				return http.ErrUseLastResponse
			},
		}
		input := &reward.ImportRewardsParams{
			File:            file,
			Namespace:       namespace,
			ReplaceExisting: replaceExisting,
			HTTPClient:      httpClient,
		}
		errInput := rewardService.ImportRewardsShort(input, nil)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	ImportRewardsCmd.Flags().StringP("file", "", "", "File")
	ImportRewardsCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = ImportRewardsCmd.MarkFlagRequired("namespace")
	ImportRewardsCmd.Flags().BoolP("replaceExisting", "", false, "Replace existing")
	_ = ImportRewardsCmd.MarkFlagRequired("replaceExisting")
}
