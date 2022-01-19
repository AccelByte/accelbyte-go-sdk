// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_group"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getGroupContentCmd represents the getGroupContent command
var getGroupContentCmd = &cobra.Command{
	Use:   "getGroupContent",
	Short: "Get group content",
	Long:  `Get group content`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicGroupService := &ugc.PublicGroupService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		groupId, _ := cmd.Flags().GetString("groupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		limit, _ := cmd.Flags().GetString("limit")
		offset, _ := cmd.Flags().GetString("offset")
		input := &public_group.GetGroupContentParams{
			GroupID:   groupId,
			Namespace: namespace,
			UserID:    userId,
			Limit:     &limit,
			Offset:    &offset,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := publicGroupService.GetGroupContent(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getGroupContentCmd)
	getGroupContentCmd.Flags().StringP("groupId", "g", " ", "Group id")
	_ = getGroupContentCmd.MarkFlagRequired("groupId")
	getGroupContentCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getGroupContentCmd.MarkFlagRequired("namespace")
	getGroupContentCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = getGroupContentCmd.MarkFlagRequired("userId")
	getGroupContentCmd.Flags().StringP("limit", "l", "20", "Limit")
	getGroupContentCmd.Flags().StringP("offset", "o", "0", "Offset")
}
