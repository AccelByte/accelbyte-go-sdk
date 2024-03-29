// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicLinkPlatformAccountCmd represents the PublicLinkPlatformAccount command
var PublicLinkPlatformAccountCmd = &cobra.Command{
	Use:   "publicLinkPlatformAccount",
	Short: "Public link platform account",
	Long:  `Public link platform account`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelLinkPlatformAccountRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.PublicLinkPlatformAccountParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		errNoContent := usersService.PublicLinkPlatformAccountShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	PublicLinkPlatformAccountCmd.Flags().String("body", "", "Body")
	_ = PublicLinkPlatformAccountCmd.MarkFlagRequired("body")
	PublicLinkPlatformAccountCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicLinkPlatformAccountCmd.MarkFlagRequired("namespace")
	PublicLinkPlatformAccountCmd.Flags().String("userId", "", "User id")
	_ = PublicLinkPlatformAccountCmd.MarkFlagRequired("userId")
}
