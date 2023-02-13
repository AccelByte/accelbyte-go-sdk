// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

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
		sortBy, _ := cmd.Flags().GetString("sortBy")
		statCodes, _ := cmd.Flags().GetString("statCodes")
		tags, _ := cmd.Flags().GetString("tags")
		input := &user_statistic.PublicQueryUserStatItemsParams{
			Namespace: namespace,
			UserID:    userId,
			Limit:     &limit,
			Offset:    &offset,
			SortBy:    &sortBy,
			StatCodes: &statCodes,
			Tags:      &tags,
		}
		ok, err := userStatisticService.PublicQueryUserStatItemsShort(input)
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
	PublicQueryUserStatItemsCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicQueryUserStatItemsCmd.MarkFlagRequired("namespace")
	PublicQueryUserStatItemsCmd.Flags().String("userId", "", "User id")
	_ = PublicQueryUserStatItemsCmd.MarkFlagRequired("userId")
	PublicQueryUserStatItemsCmd.Flags().Int32("limit", 20, "Limit")
	PublicQueryUserStatItemsCmd.Flags().Int32("offset", 0, "Offset")
	PublicQueryUserStatItemsCmd.Flags().String("sortBy", "", "Sort by")
	PublicQueryUserStatItemsCmd.Flags().String("statCodes", "", "Stat codes")
	PublicQueryUserStatItemsCmd.Flags().String("tags", "", "Tags")
}
