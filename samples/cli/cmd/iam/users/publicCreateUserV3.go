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

// PublicCreateUserV3Cmd represents the PublicCreateUserV3 command
var PublicCreateUserV3Cmd = &cobra.Command{
	Use:   "publicCreateUserV3",
	Short: "Public create user V3",
	Long:  `Public create user V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelUserCreateRequestV3
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &users.PublicCreateUserV3Params{
			Body:      body,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := usersService.PublicCreateUserV3(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	PublicCreateUserV3Cmd.Flags().StringP("body", "", "", "Body")
	_ = PublicCreateUserV3Cmd.MarkFlagRequired("body")
	PublicCreateUserV3Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicCreateUserV3Cmd.MarkFlagRequired("namespace")
}
