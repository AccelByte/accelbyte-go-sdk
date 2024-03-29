// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package tier

import (
	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclient/tier"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/seasonpass"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteTierCmd represents the DeleteTier command
var DeleteTierCmd = &cobra.Command{
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
		errNoContent := tierService.DeleteTierShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteTierCmd.Flags().String("id", "", "Id")
	_ = DeleteTierCmd.MarkFlagRequired("id")
	DeleteTierCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteTierCmd.MarkFlagRequired("namespace")
	DeleteTierCmd.Flags().String("seasonId", "", "Season id")
	_ = DeleteTierCmd.MarkFlagRequired("seasonId")
}
