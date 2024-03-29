// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package usersV4

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users_v4"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminUpdateUserEmailAddressV4Cmd represents the AdminUpdateUserEmailAddressV4 command
var AdminUpdateUserEmailAddressV4Cmd = &cobra.Command{
	Use:   "adminUpdateUserEmailAddressV4",
	Short: "Admin update user email address V4",
	Long:  `Admin update user email address V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersV4Service := &iam.UsersV4Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelEmailUpdateRequestV4
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users_v4.AdminUpdateUserEmailAddressV4Params{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		errNoContent := usersV4Service.AdminUpdateUserEmailAddressV4Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminUpdateUserEmailAddressV4Cmd.Flags().String("body", "", "Body")
	_ = AdminUpdateUserEmailAddressV4Cmd.MarkFlagRequired("body")
	AdminUpdateUserEmailAddressV4Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUpdateUserEmailAddressV4Cmd.MarkFlagRequired("namespace")
	AdminUpdateUserEmailAddressV4Cmd.Flags().String("userId", "", "User id")
	_ = AdminUpdateUserEmailAddressV4Cmd.MarkFlagRequired("userId")
}
