// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// verifyAdminAccountTokenCmd represents the verifyAdminAccountToken command
var verifyAdminAccountTokenCmd = &cobra.Command{
	Use:   "verifyAdminAccountToken",
	Short: "Verify admin account token",
	Long:  `Verify account by validating verification code`,
	RunE: func(cmd *cobra.Command, args []string) error {
		namespace := cmd.Flag("namespace").Value.String()
		userId := cmd.Flag("userId").Value.String()
		code := cmd.Flag("code").Value.String()
		contactType := cmd.Flag("contactType").Value.String()
		languageTag := cmd.Flag("languageTag").Value.String()
		input := &users.AdminVerifyAccountV3Params{
			Body: &iamclientmodels.ModelUserVerificationRequest{
				Code:        &code,
				ContactType: &contactType,
				LanguageTag: &languageTag,
			},
			Namespace: namespace,
			UserID:    userId,
		}
		userService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		//nolint:staticcheck // SA1019 To be deprecated later
		//lint:ignore SA1019 Ignore the deprecation warnings
		err := userService.AdminVerifyAccountV3(input)
		if err != nil {
			return err
		}
		logrus.Info("Operation succeed")
		return nil
	},
}

func init() {
	RootCmd.AddCommand(verifyAdminAccountTokenCmd)
	verifyAdminAccountTokenCmd.Flags().StringP("namespace", "", "", "User namespace")
	_ = verifyAdminAccountTokenCmd.MarkFlagRequired("namespace")
	verifyAdminAccountTokenCmd.Flags().StringP("userId", "u", "", "User ID")
	verifyAdminAccountTokenCmd.Flags().StringP("code", "c", "", "Code verification received by email")
	_ = verifyAdminAccountTokenCmd.MarkFlagRequired("code")
	verifyAdminAccountTokenCmd.Flags().StringP("contactType", "", "email", "Contact type")
	verifyAdminAccountTokenCmd.Flags().StringP("languageTag", "l", "", "Language Tag")
}
