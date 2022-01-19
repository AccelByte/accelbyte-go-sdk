// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

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

// adminUpdateUserBanV3Cmd represents the adminUpdateUserBanV3 command
var adminUpdateUserBanV3Cmd = &cobra.Command{
	Use:   "adminUpdateUserBanV3",
	Short: "Admin update user ban V3",
	Long:  `Admin update user ban V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelBanUpdateRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		banId, _ := cmd.Flags().GetString("banId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.AdminUpdateUserBanV3Params{
			Body:      body,
			BanID:     banId,
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := usersService.AdminUpdateUserBanV3(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminUpdateUserBanV3Cmd)
	adminUpdateUserBanV3Cmd.Flags().StringP("body", "b", " ", "Body")
	_ = adminUpdateUserBanV3Cmd.MarkFlagRequired("body")
	adminUpdateUserBanV3Cmd.Flags().StringP("banId", "b", " ", "Ban id")
	_ = adminUpdateUserBanV3Cmd.MarkFlagRequired("banId")
	adminUpdateUserBanV3Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminUpdateUserBanV3Cmd.MarkFlagRequired("namespace")
	adminUpdateUserBanV3Cmd.Flags().StringP("userId", "u", " ", "User id")
	_ = adminUpdateUserBanV3Cmd.MarkFlagRequired("userId")
}
