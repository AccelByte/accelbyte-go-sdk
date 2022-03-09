// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package userStatistic

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/user_statistic"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetUserStatItemsCmd represents the GetUserStatItems command
var GetUserStatItemsCmd = &cobra.Command{
	Use:   "getUserStatItems",
	Short: "Get user stat items",
	Long:  `Get user stat items`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userStatisticService := &social.UserStatisticService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		statCodes, _ := cmd.Flags().GetString("statCodes")
		tags, _ := cmd.Flags().GetString("tags")
		input := &user_statistic.GetUserStatItemsParams{
			Namespace: namespace,
			UserID:    userId,
			Limit:     &limit,
			Offset:    &offset,
			StatCodes: &statCodes,
			Tags:      &tags,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := userStatisticService.GetUserStatItems(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			logrus.Infof("Response CLI success", ok)
		}
		return nil
	},
}

func init() {
	GetUserStatItemsCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetUserStatItemsCmd.MarkFlagRequired("namespace")
	GetUserStatItemsCmd.Flags().StringP("userId", "", "", "User id")
	_ = GetUserStatItemsCmd.MarkFlagRequired("userId")
	GetUserStatItemsCmd.Flags().Int32P("limit", "", 20, "Limit")
	GetUserStatItemsCmd.Flags().Int32P("offset", "", 0, "Offset")
	GetUserStatItemsCmd.Flags().StringP("statCodes", "", "", "Stat codes")
	GetUserStatItemsCmd.Flags().StringP("tags", "", "", "Tags")
}
