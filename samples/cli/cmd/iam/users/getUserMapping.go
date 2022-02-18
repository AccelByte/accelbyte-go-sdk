// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package users

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetUserMappingCmd represents the GetUserMapping command
var GetUserMappingCmd = &cobra.Command{
	Use:   "getUserMapping",
	Short: "Get user mapping",
	Long:  `Get user mapping`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		targetNamespace, _ := cmd.Flags().GetString("targetNamespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.GetUserMappingParams{
			Namespace:       namespace,
			TargetNamespace: targetNamespace,
			UserID:          userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := usersService.GetUserMapping(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			response, errIndent := json.MarshalIndent(ok, "", "    ")
			if errIndent != nil {
				return errIndent
			} else {
				logrus.Infof("Response %s", string(response))
			}
		}
		return nil
	},
}

func init() {
	GetUserMappingCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetUserMappingCmd.MarkFlagRequired("namespace")
	GetUserMappingCmd.Flags().StringP("targetNamespace", "", "", "Target namespace")
	_ = GetUserMappingCmd.MarkFlagRequired("targetNamespace")
	GetUserMappingCmd.Flags().StringP("userId", "", "", "User id")
	_ = GetUserMappingCmd.MarkFlagRequired("userId")
}
