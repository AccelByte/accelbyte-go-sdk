// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package statConfiguration

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/stat_configuration"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetStatCmd represents the GetStat command
var GetStatCmd = &cobra.Command{
	Use:   "getStat",
	Short: "Get stat",
	Long:  `Get stat`,
	RunE: func(cmd *cobra.Command, args []string) error {
		statConfigurationService := &social.StatConfigurationService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		statCode, _ := cmd.Flags().GetString("statCode")
		input := &stat_configuration.GetStatParams{
			Namespace: namespace,
			StatCode:  statCode,
		}
		ok, err := statConfigurationService.GetStatShort(input)
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
	GetStatCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetStatCmd.MarkFlagRequired("namespace")
	GetStatCmd.Flags().StringP("statCode", "", "", "Stat code")
	_ = GetStatCmd.MarkFlagRequired("statCode")
}
