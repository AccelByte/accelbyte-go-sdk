// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

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

// DisableUserCmd represents the DisableUser command
var DisableUserCmd = &cobra.Command{
	Use:   "disableUser",
	Short: "Disable user",
	Long:  `Disable user`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelDisableUserRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.DisableUserParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		errInput := usersService.DisableUserShort(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	DisableUserCmd.Flags().StringP("body", "", "", "Body")
	_ = DisableUserCmd.MarkFlagRequired("body")
	DisableUserCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = DisableUserCmd.MarkFlagRequired("namespace")
	DisableUserCmd.Flags().StringP("userId", "", "", "User id")
	_ = DisableUserCmd.MarkFlagRequired("userId")
}
