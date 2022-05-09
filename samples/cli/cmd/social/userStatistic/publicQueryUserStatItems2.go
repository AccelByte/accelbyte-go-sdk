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

// PublicQueryUserStatItems2Cmd represents the PublicQueryUserStatItems2 command
var PublicQueryUserStatItems2Cmd = &cobra.Command{
	Use:   "publicQueryUserStatItems2",
	Short: "Public query user stat items 2",
	Long:  `Public query user stat items 2`,
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
		input := &user_statistic.PublicQueryUserStatItems2Params{
			Namespace:     namespace,
			UserID:        userId,
			AdditionalKey: &additionalKey,
			StatCodes:     statCodes,
			Tags:          tags,
		}
		ok, err := userStatisticService.PublicQueryUserStatItems2Short(input)
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
	PublicQueryUserStatItems2Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicQueryUserStatItems2Cmd.MarkFlagRequired("namespace")
	PublicQueryUserStatItems2Cmd.Flags().StringP("userId", "", "", "User id")
	_ = PublicQueryUserStatItems2Cmd.MarkFlagRequired("userId")
	PublicQueryUserStatItems2Cmd.Flags().StringP("additionalKey", "", "", "Additional key")
	PublicQueryUserStatItems2Cmd.Flags().StringP("statCodes", "", "", "Stat codes")
	PublicQueryUserStatItems2Cmd.Flags().StringP("tags", "", "", "Tags")
}
