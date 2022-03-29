// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package adminContent

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_content"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminSearchChannelSpecificContentCmd represents the AdminSearchChannelSpecificContent command
var AdminSearchChannelSpecificContentCmd = &cobra.Command{
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
		limit, _ := cmd.Flags().GetInt64("limit")
		name, _ := cmd.Flags().GetString("name")
		offset, _ := cmd.Flags().GetInt64("offset")
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
		ok, err := adminContentService.AdminSearchChannelSpecificContentShort(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}
		return nil
	},
}

func init() {
	AdminSearchChannelSpecificContentCmd.Flags().StringP("channelId", "", "", "Channel id")
	_ = AdminSearchChannelSpecificContentCmd.MarkFlagRequired("channelId")
	AdminSearchChannelSpecificContentCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminSearchChannelSpecificContentCmd.MarkFlagRequired("namespace")
	AdminSearchChannelSpecificContentCmd.Flags().StringP("creator", "", "", "Creator")
	AdminSearchChannelSpecificContentCmd.Flags().StringP("isofficial", "", "", "Isofficial")
	AdminSearchChannelSpecificContentCmd.Flags().Int64P("limit", "", 20, "Limit")
	AdminSearchChannelSpecificContentCmd.Flags().StringP("name", "", "", "Name")
	AdminSearchChannelSpecificContentCmd.Flags().Int64P("offset", "", 0, "Offset")
	AdminSearchChannelSpecificContentCmd.Flags().StringP("orderby", "", "", "Orderby")
	AdminSearchChannelSpecificContentCmd.Flags().StringP("sortby", "", "", "Sortby")
	AdminSearchChannelSpecificContentCmd.Flags().StringP("subtype", "", "", "Subtype")
	AdminSearchChannelSpecificContentCmd.Flags().StringP("tags", "", "", "Tags")
	AdminSearchChannelSpecificContentCmd.Flags().StringP("type", "", "", "Type")
	AdminSearchChannelSpecificContentCmd.Flags().StringP("userId", "", "", "User id")
}
