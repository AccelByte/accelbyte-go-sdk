// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicContent

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_content"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// SearchChannelSpecificContentCmd represents the SearchChannelSpecificContent command
var SearchChannelSpecificContentCmd = &cobra.Command{
	Use:   "searchChannelSpecificContent",
	Short: "Search channel specific content",
	Long:  `Search channel specific content`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicContentService := &ugc.PublicContentService{
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
		input := &public_content.SearchChannelSpecificContentParams{
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
		ok, errOK := publicContentService.SearchChannelSpecificContentShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	SearchChannelSpecificContentCmd.Flags().String("channelId", "", "Channel id")
	_ = SearchChannelSpecificContentCmd.MarkFlagRequired("channelId")
	SearchChannelSpecificContentCmd.Flags().String("namespace", "", "Namespace")
	_ = SearchChannelSpecificContentCmd.MarkFlagRequired("namespace")
	SearchChannelSpecificContentCmd.Flags().String("creator", "", "Creator")
	SearchChannelSpecificContentCmd.Flags().String("ishidden", "", "Ishidden")
	SearchChannelSpecificContentCmd.Flags().String("isofficial", "", "Isofficial")
	SearchChannelSpecificContentCmd.Flags().Int64("limit", 20, "Limit")
	SearchChannelSpecificContentCmd.Flags().String("name", "", "Name")
	SearchChannelSpecificContentCmd.Flags().Int64("offset", 0, "Offset")
	SearchChannelSpecificContentCmd.Flags().String("orderby", "", "Orderby")
	SearchChannelSpecificContentCmd.Flags().String("sortby", "", "Sortby")
	SearchChannelSpecificContentCmd.Flags().String("subtype", "", "Subtype")
	SearchChannelSpecificContentCmd.Flags().String("tags", "", "Tags")
	SearchChannelSpecificContentCmd.Flags().String("type", "", "Type")
	SearchChannelSpecificContentCmd.Flags().String("userId", "", "User id")
}
