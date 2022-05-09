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

// AdminSearchContentCmd represents the AdminSearchContent command
var AdminSearchContentCmd = &cobra.Command{
	Use:   "adminSearchContent",
	Short: "Admin search content",
	Long:  `Admin search content`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminContentService := &ugc.AdminContentService{
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
		input := &admin_content.AdminSearchContentParams{
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
		ok, err := adminContentService.AdminSearchContentShort(input)
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
	AdminSearchContentCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminSearchContentCmd.MarkFlagRequired("namespace")
	AdminSearchContentCmd.Flags().StringP("creator", "", "", "Creator")
	AdminSearchContentCmd.Flags().StringP("isofficial", "", "", "Isofficial")
	AdminSearchContentCmd.Flags().Int64P("limit", "", 20, "Limit")
	AdminSearchContentCmd.Flags().StringP("name", "", "", "Name")
	AdminSearchContentCmd.Flags().Int64P("offset", "", 0, "Offset")
	AdminSearchContentCmd.Flags().StringP("orderby", "", "", "Orderby")
	AdminSearchContentCmd.Flags().StringP("sortby", "", "", "Sortby")
	AdminSearchContentCmd.Flags().StringP("subtype", "", "", "Subtype")
	AdminSearchContentCmd.Flags().StringP("tags", "", "", "Tags")
	AdminSearchContentCmd.Flags().StringP("type", "", "", "Type")
	AdminSearchContentCmd.Flags().StringP("userId", "", "", "User id")
}
