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

// verifyAdminSendCodeCmd represents the verifyAdminSendCode command
var verifyAdminSendCodeCmd = &cobra.Command{
	Use:   "verifyAdminSendCode",
	Short: "Verify admin send code",
	Long:  `Verify account by send verification code to user`,
	RunE: func(cmd *cobra.Command, args []string) error {
		namespace := cmd.Flag("namespace").Value.String()
		userId := cmd.Flag("userId").Value.String()
		context := cmd.Flag("context").Value.String()
		emailAddress := cmd.Flag("emailAddress").Value.String()
		languageTag := cmd.Flag("languageTag").Value.String()
		input := &users.AdminSendVerificationCodeV3Params{
			Body: &iamclientmodels.ModelSendVerificationCodeRequestV3{
				Context:      context,
				EmailAddress: &emailAddress,
				LanguageTag:  languageTag,
			},
			Namespace: namespace,
			UserID:    userId,
		}
		userService := &iam.UserService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		err := userService.AdminSendVerificationCodeV3(input)
		if err != nil {
			return err
		}
		logrus.Info("Operation succeed")
		return nil
	},
}

func init() {
	rootCmd.AddCommand(verifyAdminSendCodeCmd)
	verifyAdminSendCodeCmd.Flags().StringP("namespace", "", "", "User namespace")
	verifyAdminSendCodeCmd.MarkFlagRequired("namespace")
	verifyAdminSendCodeCmd.Flags().StringP("userId", "u", "", "User ID")
	verifyAdminSendCodeCmd.Flags().StringP("context", "c", "", "Context can be \"UserAccountRegistration\" or \"UpdateEmailAddress\" or \"upgradeHeadlessAccount\"")
	verifyAdminSendCodeCmd.MarkFlagRequired("context")
	verifyAdminSendCodeCmd.Flags().StringP("emailAddress", "e", "", "Email Address")
	verifyAdminSendCodeCmd.Flags().StringP("languageTag", "l", "", "Language Tag")
}
