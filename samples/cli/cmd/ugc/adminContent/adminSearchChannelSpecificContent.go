// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package adminContent

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_content"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminSearchChannelSpecificContentCmd represents the adminSearchChannelSpecificContent command
var adminSearchChannelSpecificContentCmd = &cobra.Command{
	Use:   "adminSearchChannelSpecificContent",
	Short: "Admin search channel specific content",
	Long:  `Admin search channel specific content`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminContentService := &ugc.AdminContentService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		channelId, _ := cmd.Flags().GetString("channelId")
		namespace, _ := cmd.Flags().GetString("namespace")
		creator, _ := cmd.Flags().GetString("creator")
		isofficial, _ := cmd.Flags().GetString("isofficial")
		limit, _ := cmd.Flags().GetString("limit")
		name, _ := cmd.Flags().GetString("name")
		offset, _ := cmd.Flags().GetString("offset")
		orderby, _ := cmd.Flags().GetString("orderby")
		sortby, _ := cmd.Flags().GetString("sortby")
		subtype, _ := cmd.Flags().GetString("subtype")
		tags, _ := cmd.Flags().GetString("tags")
		type_, _ := cmd.Flags().GetString("type")
		userId, _ := cmd.Flags().GetString("userId")
		input := &admin_content.AdminSearchChannelSpecificContentParams{
			ChannelID:  channelId,
			Namespace:  namespace,
			Creator:    &creator,
			Isofficial: &isofficial,
			Limit:      &limit,
			Name:       &name,
			Offset:     &offset,
			Orderby:    &orderby,
			Sortby:     &sortby,
			Subtype:    &subtype,
			Tags:       &tags,
			Type:       &type_,
			UserID:     &userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := adminContentService.AdminSearchChannelSpecificContent(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminSearchChannelSpecificContentCmd)
	adminSearchChannelSpecificContentCmd.Flags().StringP("channelId", "cd", " ", "Channel id")
	_ = adminSearchChannelSpecificContentCmd.MarkFlagRequired("channelId")
	adminSearchChannelSpecificContentCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = adminSearchChannelSpecificContentCmd.MarkFlagRequired("namespace")
	adminSearchChannelSpecificContentCmd.Flags().StringP("creator", "cr", " ", "Creator")
	adminSearchChannelSpecificContentCmd.Flags().StringP("isofficial", "il", " ", "Isofficial")
	adminSearchChannelSpecificContentCmd.Flags().StringP("limit", "lt", "20", "Limit")
	adminSearchChannelSpecificContentCmd.Flags().StringP("name", "ne", " ", "Name")
	adminSearchChannelSpecificContentCmd.Flags().StringP("offset", "ot", "0", "Offset")
	adminSearchChannelSpecificContentCmd.Flags().StringP("orderby", "oy", " ", "Orderby")
	adminSearchChannelSpecificContentCmd.Flags().StringP("sortby", "sy", " ", "Sortby")
	adminSearchChannelSpecificContentCmd.Flags().StringP("subtype", "se", " ", "Subtype")
	adminSearchChannelSpecificContentCmd.Flags().StringP("tags", "ts", " ", "Tags")
	adminSearchChannelSpecificContentCmd.Flags().StringP("type", "te", " ", "Type")
	adminSearchChannelSpecificContentCmd.Flags().StringP("userId", "ud", " ", "User id")
}
