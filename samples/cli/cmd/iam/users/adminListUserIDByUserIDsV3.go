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

// adminListUserIDByUserIDsV3Cmd represents the adminListUserIDByUserIDsV3 command
var adminListUserIDByUserIDsV3Cmd = &cobra.Command{
	Use:   "adminListUserIDByUserIDsV3",
	Short: "Admin list user ID by user I ds V3",
	Long:  `Admin list user ID by user I ds V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelUserIDsRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &users.AdminListUserIDByUserIDsV3Params{
			Body:      body,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := usersService.AdminListUserIDByUserIDsV3(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminListUserIDByUserIDsV3Cmd)
	adminListUserIDByUserIDsV3Cmd.Flags().StringP("body", "b", " ", "Body")
	_ = adminListUserIDByUserIDsV3Cmd.MarkFlagRequired("body")
	adminListUserIDByUserIDsV3Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminListUserIDByUserIDsV3Cmd.MarkFlagRequired("namespace")
}
