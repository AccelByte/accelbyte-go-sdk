// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package users

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// listCrossNamespaceAccountLinkCmd represents the listCrossNamespaceAccountLink command
var listCrossNamespaceAccountLinkCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := usersService.ListCrossNamespaceAccountLink(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(listCrossNamespaceAccountLinkCmd)
	listCrossNamespaceAccountLinkCmd.Flags().StringP("platformId", "pd", " ", "Platform id")
	listCrossNamespaceAccountLinkCmd.Flags().StringP("linkingToken", "ln", " ", "Linking token")
	_ = listCrossNamespaceAccountLinkCmd.MarkFlagRequired("linkingToken")
	listCrossNamespaceAccountLinkCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = listCrossNamespaceAccountLinkCmd.MarkFlagRequired("namespace")
	listCrossNamespaceAccountLinkCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = listCrossNamespaceAccountLinkCmd.MarkFlagRequired("userId")
}
