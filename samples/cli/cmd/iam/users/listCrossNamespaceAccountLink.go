// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ListCrossNamespaceAccountLinkCmd represents the ListCrossNamespaceAccountLink command
var ListCrossNamespaceAccountLinkCmd = &cobra.Command{
	Use:   "listCrossNamespaceAccountLink",
	Short: "List cross namespace account link",
	Long:  `List cross namespace account link`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		linkingToken, _ := cmd.Flags().GetString("linkingToken")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		platformId, _ := cmd.Flags().GetString("platformId")
		input := &users.ListCrossNamespaceAccountLinkParams{
			PlatformID:   &platformId,
			LinkingToken: linkingToken,
			Namespace:    namespace,
			UserID:       userId,
		}
		errOK := usersService.ListCrossNamespaceAccountLinkShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	ListCrossNamespaceAccountLinkCmd.Flags().String("platformId", "", "Platform id")
	ListCrossNamespaceAccountLinkCmd.Flags().String("linkingToken", "", "Linking token")
	_ = ListCrossNamespaceAccountLinkCmd.MarkFlagRequired("linkingToken")
	ListCrossNamespaceAccountLinkCmd.Flags().String("namespace", "", "Namespace")
	_ = ListCrossNamespaceAccountLinkCmd.MarkFlagRequired("namespace")
	ListCrossNamespaceAccountLinkCmd.Flags().String("userId", "", "User id")
	_ = ListCrossNamespaceAccountLinkCmd.MarkFlagRequired("userId")
}
