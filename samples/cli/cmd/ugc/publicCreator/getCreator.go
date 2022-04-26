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

// GetCreatorCmd represents the GetCreator command
var GetCreatorCmd = &cobra.Command{
	Use:   "getCreator",
	Short: "Get creator",
	Long:  `Get creator`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicCreatorService := &ugc.PublicCreatorService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &public_creator.GetCreatorParams{
			Namespace: namespace,
			UserID:    userId,
		}
		ok, err := publicCreatorService.GetCreatorShort(input)
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
	GetCreatorCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetCreatorCmd.MarkFlagRequired("namespace")
	GetCreatorCmd.Flags().StringP("userId", "", "", "User id")
	_ = GetCreatorCmd.MarkFlagRequired("userId")
}
