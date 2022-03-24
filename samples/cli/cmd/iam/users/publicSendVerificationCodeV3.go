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

// PublicSendVerificationCodeV3Cmd represents the PublicSendVerificationCodeV3 command
var PublicSendVerificationCodeV3Cmd = &cobra.Command{
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
		errInput := usersService.PublicSendVerificationCodeV3Short(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	PublicSendVerificationCodeV3Cmd.Flags().StringP("body", "", "", "Body")
	_ = PublicSendVerificationCodeV3Cmd.MarkFlagRequired("body")
	PublicSendVerificationCodeV3Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicSendVerificationCodeV3Cmd.MarkFlagRequired("namespace")
}
