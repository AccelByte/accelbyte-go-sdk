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

// AdminLinkPlatformAccountCmd represents the AdminLinkPlatformAccount command
var AdminLinkPlatformAccountCmd = &cobra.Command{
	Use:   "adminLinkPlatformAccount",
	Short: "Admin link platform account",
	Long:  `Admin link platform account`,
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
		input := &users.AdminLinkPlatformAccountParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		errInput := usersService.AdminLinkPlatformAccountShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	AdminLinkPlatformAccountCmd.Flags().StringP("body", "", "", "Body")
	_ = AdminLinkPlatformAccountCmd.MarkFlagRequired("body")
	AdminLinkPlatformAccountCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminLinkPlatformAccountCmd.MarkFlagRequired("namespace")
	AdminLinkPlatformAccountCmd.Flags().StringP("userId", "", "", "User id")
	_ = AdminLinkPlatformAccountCmd.MarkFlagRequired("userId")
}
