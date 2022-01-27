// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package publicGroup

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_group"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetGroupContentCmd represents the GetGroupContent command
var GetGroupContentCmd = &cobra.Command{
	Use:   "GetGroupContent",
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
	GetGroupContentCmd.Flags().StringP("groupId", "gd", " ", "Group id")
	_ = GetGroupContentCmd.MarkFlagRequired("groupId")
	GetGroupContentCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = GetGroupContentCmd.MarkFlagRequired("namespace")
	GetGroupContentCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = GetGroupContentCmd.MarkFlagRequired("userId")
	GetGroupContentCmd.Flags().StringP("limit", "lt", "20", "Limit")
	GetGroupContentCmd.Flags().StringP("offset", "ot", "0", "Offset")
}
