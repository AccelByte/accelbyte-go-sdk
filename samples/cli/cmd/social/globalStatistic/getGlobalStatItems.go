// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package globalStatistic

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/global_statistic"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetGlobalStatItemsCmd represents the GetGlobalStatItems command
var GetGlobalStatItemsCmd = &cobra.Command{
	Use:   "getGlobalStatItems",
	Short: "Get global stat items",
	Long:  `Get global stat items`,
	RunE: func(cmd *cobra.Command, args []string) error {
		globalStatisticService := &social.GlobalStatisticService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		input := &global_statistic.GetGlobalStatItemsParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, err := globalStatisticService.GetGlobalStatItemsShort(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	GetGlobalStatItemsCmd.Flags().String("namespace", "", "Namespace")
	_ = GetGlobalStatItemsCmd.MarkFlagRequired("namespace")
	GetGlobalStatItemsCmd.Flags().Int32("limit", 20, "Limit")
	GetGlobalStatItemsCmd.Flags().Int32("offset", 0, "Offset")
}
