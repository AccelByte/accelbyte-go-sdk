// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package userStatistic

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/user_statistic"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// publicBulkCreateUserStatItemsCmd represents the publicBulkCreateUserStatItems command
var publicBulkCreateUserStatItemsCmd = &cobra.Command{
	Use:   "publicBulkCreateUserStatItems",
	Short: "Public bulk create user stat items",
	Long:  `Public bulk create user stat items`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userStatisticService := &social.UserStatisticService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body []*socialclientmodels.BulkStatItemCreate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &user_statistic.PublicBulkCreateUserStatItemsParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := userStatisticService.PublicBulkCreateUserStatItems(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicBulkCreateUserStatItemsCmd)
	publicBulkCreateUserStatItemsCmd.Flags().StringP("body", "by", " ", "Body")
	publicBulkCreateUserStatItemsCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = publicBulkCreateUserStatItemsCmd.MarkFlagRequired("namespace")
	publicBulkCreateUserStatItemsCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = publicBulkCreateUserStatItemsCmd.MarkFlagRequired("userId")
}
