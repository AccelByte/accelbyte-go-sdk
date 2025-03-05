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
		additionalKey, _ := cmd.Flags().GetString("additionalKey")
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
		input := &user_statistic.PublicQueryUserStatItemsParams{
			Namespace:     namespace,
			UserID:        userId,
			AdditionalKey: &additionalKey,
			StatCodes:     statCodes,
			Tags:          tags,
		}
		ok, errOK := userStatisticService.PublicQueryUserStatItemsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicQueryUserStatItemsCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicQueryUserStatItemsCmd.MarkFlagRequired("namespace")
	PublicQueryUserStatItemsCmd.Flags().String("userId", "", "User id")
	_ = PublicQueryUserStatItemsCmd.MarkFlagRequired("userId")
	PublicQueryUserStatItemsCmd.Flags().String("additionalKey", "", "Additional key")
	PublicQueryUserStatItemsCmd.Flags().String("statCodes", "", "Stat codes")
	PublicQueryUserStatItemsCmd.Flags().String("tags", "", "Tags")
}
