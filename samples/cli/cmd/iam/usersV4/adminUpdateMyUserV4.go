// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package usersV4

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users_v4"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminUpdateMyUserV4Cmd represents the adminUpdateMyUserV4 command
var adminUpdateMyUserV4Cmd = &cobra.Command{
	Use:   "adminUpdateMyUserV4",
	Short: "Admin update my user V4",
	Long:  `Admin update my user V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersV4Service := &iam.UsersV4Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelUserUpdateRequestV3
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &users_v4.AdminUpdateMyUserV4Params{
			Body: body,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := usersV4Service.AdminUpdateMyUserV4(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminUpdateMyUserV4Cmd)
	adminUpdateMyUserV4Cmd.Flags().StringP("body", "by", " ", "Body")
	_ = adminUpdateMyUserV4Cmd.MarkFlagRequired("body")
}
