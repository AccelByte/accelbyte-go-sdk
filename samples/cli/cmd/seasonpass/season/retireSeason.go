// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclient/season"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/seasonpass"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// retireSeasonCmd represents the retireSeason command
var retireSeasonCmd = &cobra.Command{
	Use:   "retireSeason",
	Short: "Retire season",
	Long:  `Retire season`,
	RunE: func(cmd *cobra.Command, args []string) error {
		seasonService := &seasonpass.SeasonService{
			Client:          factory.NewSeasonpassClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		seasonId, _ := cmd.Flags().GetString("seasonId")
		force, _ := cmd.Flags().GetBool("force")
		input := &season.RetireSeasonParams{
			Namespace: namespace,
			SeasonID:  seasonId,
			Force:     &force,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := seasonService.RetireSeason(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(retireSeasonCmd)
	retireSeasonCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = retireSeasonCmd.MarkFlagRequired("namespace")
	retireSeasonCmd.Flags().StringP("seasonId", "s", " ", "Season id")
	_ = retireSeasonCmd.MarkFlagRequired("seasonId")
	retireSeasonCmd.Flags().BoolP("force", "f", false, "Force")
}
