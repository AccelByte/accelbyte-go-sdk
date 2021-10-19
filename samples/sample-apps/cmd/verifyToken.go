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
	"github.com/spf13/cobra"
)

// verifyTokenCmd represents the verifyToken command
var verifyTokenCmd = &cobra.Command{
	Use:   "verifyToken",
	Short: "Verify user registration token",
	Long:  `Verify user token for admin and non user admin.`,
	RunE: func(cmd *cobra.Command, args []string) error {
		code := cmd.Flag("code").Value.String()
		namespace := cmd.Flag("namespace").Value.String()
		contactType := cmd.Flag("contactType").Value.String()
		input := &users.PublicUserVerificationV3Params{
			Body: &iamclientmodels.ModelUserVerificationRequestV3{
				Code:        &code,
				ContactType: &contactType,
			},
			Namespace: namespace,
		}
		userService := &iam.UserService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		err := userService.PublicUserVerificationV3(input)
		if err != nil {
			return err
		}
		return nil
	},
}

func init() {
	rootCmd.AddCommand(verifyTokenCmd)
	verifyTokenCmd.Flags().StringP("token", "t", "", "Token received by email")
	_ = verifyTokenCmd.MarkFlagRequired("token")
	verifyTokenCmd.Flags().StringP("namespace", "", "", "User namespace")
	_ = verifyTokenCmd.MarkFlagRequired("namespace")
	verifyTokenCmd.Flags().StringP("contactType", "", "email", "Contact type")
}
