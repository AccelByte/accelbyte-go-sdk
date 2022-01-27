// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package usersV4

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users_v4"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminUpdateUserEmailAddressV4Cmd represents the adminUpdateUserEmailAddressV4 command
var adminUpdateUserEmailAddressV4Cmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := usersV4Service.AdminUpdateUserEmailAddressV4(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminUpdateUserEmailAddressV4Cmd)
	adminUpdateUserEmailAddressV4Cmd.Flags().StringP("body", "by", " ", "Body")
	_ = adminUpdateUserEmailAddressV4Cmd.MarkFlagRequired("body")
	adminUpdateUserEmailAddressV4Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = adminUpdateUserEmailAddressV4Cmd.MarkFlagRequired("namespace")
	adminUpdateUserEmailAddressV4Cmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = adminUpdateUserEmailAddressV4Cmd.MarkFlagRequired("userId")
}
