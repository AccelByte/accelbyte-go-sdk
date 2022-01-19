// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_content"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminSearchContentCmd represents the adminSearchContent command
var adminSearchContentCmd = &cobra.Command{
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
		limit, _ := cmd.Flags().GetString("limit")
		name, _ := cmd.Flags().GetString("name")
		offset, _ := cmd.Flags().GetString("offset")
		orderby, _ := cmd.Flags().GetString("orderby")
		sortby, _ := cmd.Flags().GetString("sortby")
		subtype, _ := cmd.Flags().GetString("subtype")
		tags, _ := cmd.Flags().GetString("tags")
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
			Tags:       &tags,
			Type:       &type_,
			UserID:     &userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := adminContentService.AdminSearchContent(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminSearchContentCmd)
	adminSearchContentCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminSearchContentCmd.MarkFlagRequired("namespace")
	adminSearchContentCmd.Flags().StringP("creator", "c", " ", "Creator")
	adminSearchContentCmd.Flags().StringP("isofficial", "i", " ", "Isofficial")
	adminSearchContentCmd.Flags().StringP("limit", "l", "20", "Limit")
	adminSearchContentCmd.Flags().StringP("name", "n", " ", "Name")
	adminSearchContentCmd.Flags().StringP("offset", "o", "0", "Offset")
	adminSearchContentCmd.Flags().StringP("orderby", "o", " ", "Orderby")
	adminSearchContentCmd.Flags().StringP("sortby", "s", " ", "Sortby")
	adminSearchContentCmd.Flags().StringP("subtype", "s", " ", "Subtype")
	adminSearchContentCmd.Flags().StringP("tags", "t", " ", "Tags")
	adminSearchContentCmd.Flags().StringP("type", "t", " ", "Type")
	adminSearchContentCmd.Flags().StringP("userId", "u", " ", "User id")
}
