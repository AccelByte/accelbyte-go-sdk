// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package season

import (
	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclient/season"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/seasonpass"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteSeasonCmd represents the DeleteSeason command
var DeleteSeasonCmd = &cobra.Command{
	Use:   "deleteSeason",
	Short: "Delete season",
	Long:  `Delete season`,
	RunE: func(cmd *cobra.Command, args []string) error {
		seasonService := &seasonpass.SeasonService{
			Client:          factory.NewSeasonpassClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		seasonId, _ := cmd.Flags().GetString("seasonId")
		input := &season.DeleteSeasonParams{
			Namespace: namespace,
			SeasonID:  seasonId,
		}
		errInput := seasonService.DeleteSeasonShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	DeleteSeasonCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteSeasonCmd.MarkFlagRequired("namespace")
	DeleteSeasonCmd.Flags().String("seasonId", "", "Season id")
	_ = DeleteSeasonCmd.MarkFlagRequired("seasonId")
}
