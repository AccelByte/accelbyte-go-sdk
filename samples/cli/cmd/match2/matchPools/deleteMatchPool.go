// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package matchPools

import (
	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2client/match_pools"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/match2"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteMatchPoolCmd represents the DeleteMatchPool command
var DeleteMatchPoolCmd = &cobra.Command{
	Use:   "deleteMatchPool",
	Short: "Delete match pool",
	Long:  `Delete match pool`,
	RunE: func(cmd *cobra.Command, args []string) error {
		matchPoolsService := &match2.MatchPoolsService{
			Client:          factory.NewMatch2Client(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		pool, _ := cmd.Flags().GetString("pool")
		input := &match_pools.DeleteMatchPoolParams{
			Namespace: namespace,
			Pool:      pool,
		}
		errInput := matchPoolsService.DeleteMatchPoolShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	DeleteMatchPoolCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteMatchPoolCmd.MarkFlagRequired("namespace")
	DeleteMatchPoolCmd.Flags().String("pool", "", "Pool")
	_ = DeleteMatchPoolCmd.MarkFlagRequired("pool")
}
