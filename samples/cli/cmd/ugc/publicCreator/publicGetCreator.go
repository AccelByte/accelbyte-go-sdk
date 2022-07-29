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

// PublicGetCreatorCmd represents the PublicGetCreator command
var PublicGetCreatorCmd = &cobra.Command{
	Use:   "publicGetCreator",
	Short: "Public get creator",
	Long:  `Public get creator`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicCreatorService := &ugc.PublicCreatorService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &public_creator.PublicGetCreatorParams{
			Namespace: namespace,
			UserID:    userId,
		}
		ok, err := publicCreatorService.PublicGetCreatorShort(input)
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
	PublicGetCreatorCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetCreatorCmd.MarkFlagRequired("namespace")
	PublicGetCreatorCmd.Flags().String("userId", "", "User id")
	_ = PublicGetCreatorCmd.MarkFlagRequired("userId")
}
