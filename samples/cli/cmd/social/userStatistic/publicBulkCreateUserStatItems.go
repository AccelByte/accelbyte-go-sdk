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
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicBulkCreateUserStatItemsCmd represents the PublicBulkCreateUserStatItems command
var PublicBulkCreateUserStatItemsCmd = &cobra.Command{
	Use:   "publicBulkCreateUserStatItems",
	Short: "Public bulk create user stat items",
	Long:  `Public bulk create user stat items`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userStatisticService := &social.UserStatisticService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body []*socialclientmodels.BulkStatItemCreate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &user_statistic.PublicBulkCreateUserStatItemsParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := userStatisticService.PublicBulkCreateUserStatItemsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicBulkCreateUserStatItemsCmd.Flags().String("body", "", "Body")
	_ = PublicBulkCreateUserStatItemsCmd.MarkFlagRequired("body")
	PublicBulkCreateUserStatItemsCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicBulkCreateUserStatItemsCmd.MarkFlagRequired("namespace")
	PublicBulkCreateUserStatItemsCmd.Flags().String("userId", "", "User id")
	_ = PublicBulkCreateUserStatItemsCmd.MarkFlagRequired("userId")
}
