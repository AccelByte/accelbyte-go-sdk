// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/user_statistic"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// publicQueryUserStatItemsCmd represents the publicQueryUserStatItems command
var publicQueryUserStatItemsCmd = &cobra.Command{
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
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicQueryUserStatItemsCmd)
	publicQueryUserStatItemsCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = publicQueryUserStatItemsCmd.MarkFlagRequired("namespace")
	publicQueryUserStatItemsCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = publicQueryUserStatItemsCmd.MarkFlagRequired("userId")
	publicQueryUserStatItemsCmd.Flags().Int32P("limit", "l", 20, "Limit")
	publicQueryUserStatItemsCmd.Flags().Int32P("offset", "o", 0, "Offset")
	publicQueryUserStatItemsCmd.Flags().StringP("statCodes", "s", " ", "Stat codes")
	publicQueryUserStatItemsCmd.Flags().StringP("tags", "t", " ", "Tags")
}
