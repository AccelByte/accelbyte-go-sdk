// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// verifyUserCmd represents the verifyUser command
var verifyUserCmd = &cobra.Command{
	Use:   "verifyUser",
	Short: "Verify user id",
	Long:  `Verify user id without verification code`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userId := cmd.Flag("userId").Value.String()
		namespace := cmd.Flag("namespace").Value.String()
		input := &users.AdminVerifyUserWithoutVerificationCodeV3Params{
			Namespace: namespace,
			UserID:    userId,
		}
		userService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		//nolint:staticcheck // SA1019 To be deprecated later
		//lint:ignore SA1019 Ignore the deprecation warnings
		err := userService.AdminVerifyUserWithoutVerificationCodeV3(input)
		if err != nil {
			return err
		}
		return nil
	},
}

func init() {
	RootCmd.AddCommand(verifyUserCmd)
	verifyUserCmd.Flags().StringP("userId", "u", "", "User ID")
	_ = verifyUserCmd.MarkFlagRequired("userId")
	verifyUserCmd.Flags().StringP("namespace", "", "", "User namespace")
	_ = verifyUserCmd.MarkFlagRequired("namespace")
}
