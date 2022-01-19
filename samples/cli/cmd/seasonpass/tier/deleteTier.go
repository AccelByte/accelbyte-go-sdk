// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclient/tier"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/seasonpass"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// deleteTierCmd represents the deleteTier command
var deleteTierCmd = &cobra.Command{
	Use:   "deleteTier",
	Short: "Delete tier",
	Long:  `Delete tier`,
	RunE: func(cmd *cobra.Command, args []string) error {
		tierService := &seasonpass.TierService{
			Client:          factory.NewSeasonpassClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		id_, _ := cmd.Flags().GetString("id")
		namespace, _ := cmd.Flags().GetString("namespace")
		seasonId, _ := cmd.Flags().GetString("seasonId")
		input := &tier.DeleteTierParams{
			ID:        id_,
			Namespace: namespace,
			SeasonID:  seasonId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := tierService.DeleteTier(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(deleteTierCmd)
	deleteTierCmd.Flags().StringP("id", "i", " ", "Id")
	_ = deleteTierCmd.MarkFlagRequired("id")
	deleteTierCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = deleteTierCmd.MarkFlagRequired("namespace")
	deleteTierCmd.Flags().StringP("seasonId", "s", " ", "Season id")
	_ = deleteTierCmd.MarkFlagRequired("seasonId")
}
