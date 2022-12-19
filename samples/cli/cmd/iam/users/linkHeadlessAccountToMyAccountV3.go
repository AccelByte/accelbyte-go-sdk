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

// LinkHeadlessAccountToMyAccountV3Cmd represents the LinkHeadlessAccountToMyAccountV3 command
var LinkHeadlessAccountToMyAccountV3Cmd = &cobra.Command{
	Use:   "linkHeadlessAccountToMyAccountV3",
	Short: "Link headless account to my account V3",
	Long:  `Link headless account to my account V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelLinkHeadlessAccountRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &users.LinkHeadlessAccountToMyAccountV3Params{
			Body: body,
		}
		errInput := usersService.LinkHeadlessAccountToMyAccountV3Short(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	LinkHeadlessAccountToMyAccountV3Cmd.Flags().String("body", "", "Body")
	_ = LinkHeadlessAccountToMyAccountV3Cmd.MarkFlagRequired("body")
}
