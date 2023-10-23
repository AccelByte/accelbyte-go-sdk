// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminContent

import (
	"encoding/json"

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
		ishidden, _ := cmd.Flags().GetString("ishidden")
		isofficial, _ := cmd.Flags().GetString("isofficial")
		limit, _ := cmd.Flags().GetInt64("limit")
		name, _ := cmd.Flags().GetString("name")
		offset, _ := cmd.Flags().GetInt64("offset")
		orderby, _ := cmd.Flags().GetString("orderby")
		sortby, _ := cmd.Flags().GetString("sortby")
		subtype, _ := cmd.Flags().GetString("subtype")
		tagsString := cmd.Flag("tags").Value.String()
		var tags []string
		errTags := json.Unmarshal([]byte(tagsString), &tags)
		if errTags != nil {
			return errTags
		}
		type_, _ := cmd.Flags().GetString("type")
		userId, _ := cmd.Flags().GetString("userId")
		input := &admin_content.AdminSearchChannelSpecificContentParams{
			ChannelID:  channelId,
			Namespace:  namespace,
			Creator:    &creator,
			Ishidden:   &ishidden,
			Isofficial: &isofficial,
			Limit:      &limit,
			Name:       &name,
			Offset:     &offset,
			Orderby:    &orderby,
			Sortby:     &sortby,
			Subtype:    &subtype,
			Tags:       tags,
			Type:       &type_,
			UserID:     &userId,
		}
		ok, errOK := adminContentService.AdminSearchChannelSpecificContentShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminSearchChannelSpecificContentCmd.Flags().String("channelId", "", "Channel id")
	_ = AdminSearchChannelSpecificContentCmd.MarkFlagRequired("channelId")
	AdminSearchChannelSpecificContentCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminSearchChannelSpecificContentCmd.MarkFlagRequired("namespace")
	AdminSearchChannelSpecificContentCmd.Flags().String("creator", "", "Creator")
	AdminSearchChannelSpecificContentCmd.Flags().String("ishidden", "", "Ishidden")
	AdminSearchChannelSpecificContentCmd.Flags().String("isofficial", "", "Isofficial")
	AdminSearchChannelSpecificContentCmd.Flags().Int64("limit", 20, "Limit")
	AdminSearchChannelSpecificContentCmd.Flags().String("name", "", "Name")
	AdminSearchChannelSpecificContentCmd.Flags().Int64("offset", 0, "Offset")
	AdminSearchChannelSpecificContentCmd.Flags().String("orderby", "", "Orderby")
	AdminSearchChannelSpecificContentCmd.Flags().String("sortby", "", "Sortby")
	AdminSearchChannelSpecificContentCmd.Flags().String("subtype", "", "Subtype")
	AdminSearchChannelSpecificContentCmd.Flags().String("tags", "", "Tags")
	AdminSearchChannelSpecificContentCmd.Flags().String("type", "", "Type")
	AdminSearchChannelSpecificContentCmd.Flags().String("userId", "", "User id")
}
