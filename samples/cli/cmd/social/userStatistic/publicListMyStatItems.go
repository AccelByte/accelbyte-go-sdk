// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package userStatistic

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/user_statistic"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicListMyStatItemsCmd represents the PublicListMyStatItems command
var PublicListMyStatItemsCmd = &cobra.Command{
	Use:   "publicListMyStatItems",
	Short: "Public list my stat items",
	Long:  `Public list my stat items`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userStatisticService := &social.UserStatisticService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		sortBy, _ := cmd.Flags().GetString("sortBy")
		statCodesString := cmd.Flag("statCodes").Value.String()
		var statCodes []string
		errStatCodes := json.Unmarshal([]byte(statCodesString), &statCodes)
		if errStatCodes != nil {
			return errStatCodes
		}
		tagsString := cmd.Flag("tags").Value.String()
		var tags []string
		errTags := json.Unmarshal([]byte(tagsString), &tags)
		if errTags != nil {
			return errTags
		}
		input := &user_statistic.PublicListMyStatItemsParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
			SortBy:    &sortBy,
			StatCodes: statCodes,
			Tags:      tags,
		}
		ok, errOK := userStatisticService.PublicListMyStatItemsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicListMyStatItemsCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicListMyStatItemsCmd.MarkFlagRequired("namespace")
	PublicListMyStatItemsCmd.Flags().Int32("limit", 20, "Limit")
	PublicListMyStatItemsCmd.Flags().Int32("offset", 0, "Offset")
	PublicListMyStatItemsCmd.Flags().String("sortBy", "", "Sort by")
	PublicListMyStatItemsCmd.Flags().String("statCodes", "", "Stat codes")
	PublicListMyStatItemsCmd.Flags().String("tags", "", "Tags")
}
