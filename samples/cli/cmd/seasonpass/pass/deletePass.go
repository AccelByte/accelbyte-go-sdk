// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package pass

import (
	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclient/pass"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/seasonpass"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeletePassCmd represents the DeletePass command
var DeletePassCmd = &cobra.Command{
	Use:   "deletePass",
	Short: "Delete pass",
	Long:  `Delete pass`,
	RunE: func(cmd *cobra.Command, args []string) error {
		passService := &seasonpass.PassService{
			Client:          factory.NewSeasonpassClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		code, _ := cmd.Flags().GetString("code")
		namespace, _ := cmd.Flags().GetString("namespace")
		seasonId, _ := cmd.Flags().GetString("seasonId")
		input := &pass.DeletePassParams{
			Code:      code,
			Namespace: namespace,
			SeasonID:  seasonId,
		}
		errNoContent := passService.DeletePassShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeletePassCmd.Flags().String("code", "", "Code")
	_ = DeletePassCmd.MarkFlagRequired("code")
	DeletePassCmd.Flags().String("namespace", "", "Namespace")
	_ = DeletePassCmd.MarkFlagRequired("namespace")
	DeletePassCmd.Flags().String("seasonId", "", "Season id")
	_ = DeletePassCmd.MarkFlagRequired("seasonId")
}
