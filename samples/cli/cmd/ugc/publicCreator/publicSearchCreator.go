// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicCreator

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_creator"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicSearchCreatorCmd represents the PublicSearchCreator command
var PublicSearchCreatorCmd = &cobra.Command{
	Use:   "publicSearchCreator",
	Short: "Public search creator",
	Long:  `Public search creator`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicCreatorService := &ugc.PublicCreatorService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		orderby, _ := cmd.Flags().GetString("orderby")
		sortby, _ := cmd.Flags().GetString("sortby")
		input := &public_creator.PublicSearchCreatorParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
			Orderby:   &orderby,
			Sortby:    &sortby,
		}
		ok, errOK := publicCreatorService.PublicSearchCreatorShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicSearchCreatorCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicSearchCreatorCmd.MarkFlagRequired("namespace")
	PublicSearchCreatorCmd.Flags().Int64("limit", 20, "Limit")
	PublicSearchCreatorCmd.Flags().Int64("offset", 0, "Offset")
	PublicSearchCreatorCmd.Flags().String("orderby", "", "Orderby")
	PublicSearchCreatorCmd.Flags().String("sortby", "", "Sortby")
}
