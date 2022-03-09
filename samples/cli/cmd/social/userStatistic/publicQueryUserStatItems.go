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

// PublicQueryUserStatItemsCmd represents the PublicQueryUserStatItems command
var PublicQueryUserStatItemsCmd = &cobra.Command{
	Use:   "publicQueryUserStatItems",
	Short: "Public query user stat items",
	Long:  `Public query user stat items`,
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
		input := &user_statistic.PublicQueryUserStatItemsParams{
			Namespace: namespace,
			UserID:    userId,
			Limit:     &limit,
			Offset:    &offset,
			StatCodes: &statCodes,
			Tags:      &tags,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := userStatisticService.PublicQueryUserStatItems(input)
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
	PublicQueryUserStatItemsCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicQueryUserStatItemsCmd.MarkFlagRequired("namespace")
	PublicQueryUserStatItemsCmd.Flags().StringP("userId", "", "", "User id")
	_ = PublicQueryUserStatItemsCmd.MarkFlagRequired("userId")
	PublicQueryUserStatItemsCmd.Flags().Int32P("limit", "", 20, "Limit")
	PublicQueryUserStatItemsCmd.Flags().Int32P("offset", "", 0, "Offset")
	PublicQueryUserStatItemsCmd.Flags().StringP("statCodes", "", "", "Stat codes")
	PublicQueryUserStatItemsCmd.Flags().StringP("tags", "", "", "Tags")
}
