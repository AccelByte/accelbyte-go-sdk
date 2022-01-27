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
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// publicSendVerificationCodeV3Cmd represents the publicSendVerificationCodeV3 command
var publicSendVerificationCodeV3Cmd = &cobra.Command{
	Use:   "publicSendVerificationCodeV3",
	Short: "Public send verification code V3",
	Long:  `Public send verification code V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelSendVerificationCodeRequestV3
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &users.PublicSendVerificationCodeV3Params{
			Body:      body,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := usersService.PublicSendVerificationCodeV3(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicSendVerificationCodeV3Cmd)
	publicSendVerificationCodeV3Cmd.Flags().StringP("body", "by", " ", "Body")
	_ = publicSendVerificationCodeV3Cmd.MarkFlagRequired("body")
	publicSendVerificationCodeV3Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = publicSendVerificationCodeV3Cmd.MarkFlagRequired("namespace")
}
