// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
	"io/ioutil"
	"net/http"
)

var (
	BaseUrl = "https://demo.accelbyte.io/social"
)

// createMatchmaking represents the addRoleManagers command
var createMatchmaking = &cobra.Command{
	Use:   "createMatchmaking",
	Short: "create matchmaking",
	Long:  `create matchmaking`,
	RunE: func(cmd *cobra.Command, args []string) error {
		contentType := "application/json"
		resp, err := http.Post(BaseUrl+"/v1/admin/namespaces/{namespace}/stats", contentType, nil)
		var body []byte
		var token repository.TokenRepositoryImpl
		t, _ := token.GetToken()
		userID := t.UserID
		logrus.Infof("UserID: %s", *userID)
		if resp != nil {
			body, err = ioutil.ReadAll(resp.Body)
		}
		if err != nil {
			logrus.Error("http call error")
			return err
		} else {
			logrus.Infof("Code: %s", resp.Status)
			logrus.Infof("Body: %s", body)
		}
		return nil
	},
}

func init() {
	rootCmd.AddCommand(createMatchmaking)
}
