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

// PublicUserVerificationV3Cmd represents the PublicUserVerificationV3 command
var PublicUserVerificationV3Cmd = &cobra.Command{
	Use:   "publicUserVerificationV3",
	Short: "Public user verification V3",
	Long:  `Public user verification V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelUserVerificationRequestV3
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &users.PublicUserVerificationV3Params{
			Body:      body,
			Namespace: namespace,
		}
		errInput := usersService.PublicUserVerificationV3Short(input, nil)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	PublicUserVerificationV3Cmd.Flags().StringP("body", "", "", "Body")
	_ = PublicUserVerificationV3Cmd.MarkFlagRequired("body")
	PublicUserVerificationV3Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicUserVerificationV3Cmd.MarkFlagRequired("namespace")
}
