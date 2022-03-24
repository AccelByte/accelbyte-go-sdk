// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package pass

import (
	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclient/pass"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/seasonpass"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetPassCmd represents the GetPass command
var GetPassCmd = &cobra.Command{
	Use:   "getPass",
	Short: "Get pass",
	Long:  `Get pass`,
	RunE: func(cmd *cobra.Command, args []string) error {
		passService := &seasonpass.PassService{
			Client:          factory.NewSeasonpassClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		code, _ := cmd.Flags().GetString("code")
		namespace, _ := cmd.Flags().GetString("namespace")
		seasonId, _ := cmd.Flags().GetString("seasonId")
		input := &pass.GetPassParams{
			Code:      code,
			Namespace: namespace,
			SeasonID:  seasonId,
		}
		ok, err := passService.GetPassShort(input)
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
	GetPassCmd.Flags().StringP("code", "", "", "Code")
	_ = GetPassCmd.MarkFlagRequired("code")
	GetPassCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetPassCmd.MarkFlagRequired("namespace")
	GetPassCmd.Flags().StringP("seasonId", "", "", "Season id")
	_ = GetPassCmd.MarkFlagRequired("seasonId")
}
