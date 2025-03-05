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

// PublicQueryUserStatItems1Cmd represents the PublicQueryUserStatItems1 command
var PublicQueryUserStatItems1Cmd = &cobra.Command{
	Use:   "publicQueryUserStatItems1",
	Short: "Public query user stat items 1",
	Long:  `Public query user stat items 1`,
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
		input := &user_statistic.PublicQueryUserStatItems1Params{
			Namespace: namespace,
			UserID:    userId,
			Limit:     &limit,
			Offset:    &offset,
			SortBy:    &sortBy,
			StatCodes: &statCodes,
			Tags:      &tags,
		}
		ok, errOK := userStatisticService.PublicQueryUserStatItems1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicQueryUserStatItems1Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicQueryUserStatItems1Cmd.MarkFlagRequired("namespace")
	PublicQueryUserStatItems1Cmd.Flags().String("userId", "", "User id")
	_ = PublicQueryUserStatItems1Cmd.MarkFlagRequired("userId")
	PublicQueryUserStatItems1Cmd.Flags().Int32("limit", 20, "Limit")
	PublicQueryUserStatItems1Cmd.Flags().Int32("offset", 0, "Offset")
	PublicQueryUserStatItems1Cmd.Flags().String("sortBy", "", "Sort by")
	PublicQueryUserStatItems1Cmd.Flags().String("statCodes", "", "Stat codes")
	PublicQueryUserStatItems1Cmd.Flags().String("tags", "", "Tags")
}
