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

// PublicSearchContentCmd represents the PublicSearchContent command
var PublicSearchContentCmd = &cobra.Command{
	Use:   "publicSearchContent",
	Short: "Public search content",
	Long:  `Public search content`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicContentService := &ugc.PublicContentService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		creator, _ := cmd.Flags().GetString("creator")
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
		input := &public_content.PublicSearchContentParams{
			Namespace:  namespace,
			Creator:    &creator,
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
		ok, err := publicContentService.PublicSearchContentShort(input)
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
	PublicSearchContentCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicSearchContentCmd.MarkFlagRequired("namespace")
	PublicSearchContentCmd.Flags().StringP("creator", "", "", "Creator")
	PublicSearchContentCmd.Flags().StringP("isofficial", "", "", "Isofficial")
	PublicSearchContentCmd.Flags().Int64P("limit", "", 20, "Limit")
	PublicSearchContentCmd.Flags().StringP("name", "", "", "Name")
	PublicSearchContentCmd.Flags().Int64P("offset", "", 0, "Offset")
	PublicSearchContentCmd.Flags().StringP("orderby", "", "", "Orderby")
	PublicSearchContentCmd.Flags().StringP("sortby", "", "", "Sortby")
	PublicSearchContentCmd.Flags().StringP("subtype", "", "", "Subtype")
	PublicSearchContentCmd.Flags().StringP("tags", "", "", "Tags")
	PublicSearchContentCmd.Flags().StringP("type", "", "", "Type")
	PublicSearchContentCmd.Flags().StringP("userId", "", "", "User id")
}
