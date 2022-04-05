// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"fmt"
	"os"

	"github.com/spf13/cobra"

	"github.com/AccelByte/sample-apps/cmd/achievement"
	"github.com/AccelByte/sample-apps/cmd/basic"
	"github.com/AccelByte/sample-apps/cmd/cloudsave"
	"github.com/AccelByte/sample-apps/cmd/dslogmanager"
	"github.com/AccelByte/sample-apps/cmd/dsmc"
	"github.com/AccelByte/sample-apps/cmd/eventlog"
	"github.com/AccelByte/sample-apps/cmd/gametelemetry"
	"github.com/AccelByte/sample-apps/cmd/gdpr"
	"github.com/AccelByte/sample-apps/cmd/group"
	"github.com/AccelByte/sample-apps/cmd/iam"
	"github.com/AccelByte/sample-apps/cmd/leaderboard"
	"github.com/AccelByte/sample-apps/cmd/legal"
	"github.com/AccelByte/sample-apps/cmd/lobby"
	"github.com/AccelByte/sample-apps/cmd/matchmaking"
	"github.com/AccelByte/sample-apps/cmd/platform"
	"github.com/AccelByte/sample-apps/cmd/qosm"
	"github.com/AccelByte/sample-apps/cmd/seasonpass"
	"github.com/AccelByte/sample-apps/cmd/sessionbrowser"
	"github.com/AccelByte/sample-apps/cmd/social"
	"github.com/AccelByte/sample-apps/cmd/ugc"

	"github.com/mitchellh/go-homedir"
	"github.com/spf13/viper"
)

var cfgFile string

// RootCmd represents the base command when called without any subcommands
var RootCmd = &cobra.Command{
	Use:   "sample-apps",
	Short: "A brief description of your application",
	Long: `A longer description that spans multiple lines and likely contains
examples and usage of using your application. For example:

Cobra is a CLI library for Go that empowers applications.
This application is a tool to generate the needed files
to quickly create a Cobra application.`,
	// Uncomment the following line if your bare application
	// has an action associated with it:
	Run: func(cmd *cobra.Command, args []string) {
		fmt.Println("Hello CLI")
	},
}

// Execute adds all child commands to the root command and sets flags appropriately.
// This is called by main.main(). It only needs to happen once to the rootCmd.
func Execute() {
	cobra.CheckErr(RootCmd.Execute())
}

func init() {
	cobra.OnInitialize(initConfig)

	// Here you will define your flags and configuration settings.
	// Cobra supports persistent flags, which, if defined here,
	// will be global for your application.

	RootCmd.PersistentFlags().StringVar(&cfgFile, "config", "", "config file (default is $HOME/.sample-apps.yaml)")

	// Cobra also supports local flags, which will only run
	// when this action is called directly.
	RootCmd.Flags().BoolP("toggle", "t", false, "Help message for toggle")

	// Parent Commands
	RootCmd.AddCommand(achievement.AchievementCmd)
	RootCmd.AddCommand(basic.BasicCmd)
	RootCmd.AddCommand(cloudsave.CloudsaveCmd)
	RootCmd.AddCommand(dsmc.DsmcCmd)
	RootCmd.AddCommand(dslogmanager.DslogmanagerCmd)
	RootCmd.AddCommand(eventlog.EventlogCmd)
	RootCmd.AddCommand(gametelemetry.GametelemetryCmd)
	RootCmd.AddCommand(gdpr.GdprCmd)
	RootCmd.AddCommand(group.GroupCmd)
	RootCmd.AddCommand(iam.IamCmd)
	RootCmd.AddCommand(leaderboard.LeaderboardCmd)
	RootCmd.AddCommand(legal.LegalCmd)
	RootCmd.AddCommand(lobby.LobbyCmd)
	RootCmd.AddCommand(matchmaking.MatchmakingCmd)
	RootCmd.AddCommand(platform.PlatformCmd)
	RootCmd.AddCommand(qosm.QosmCmd)
	RootCmd.AddCommand(seasonpass.SeasonpassCmd)
	RootCmd.AddCommand(sessionbrowser.SessionbrowserCmd)
	RootCmd.AddCommand(social.SocialCmd)
	RootCmd.AddCommand(ugc.UgcCmd)
}

// initConfig reads in config file and ENV variables if set.
func initConfig() {
	if cfgFile != "" {
		// Use config file from the flag.
		viper.SetConfigFile(cfgFile)
	} else {
		// Find home directory.
		home, err := homedir.Dir()
		cobra.CheckErr(err)

		// Search config in home directory with name ".sample-apps" (without extension).
		viper.AddConfigPath(home)
		viper.SetConfigName(".sample-apps")
	}

	viper.AutomaticEnv() // read in environment variables that match

	// If a config file is found, read it in.
	if err := viper.ReadInConfig(); err == nil {
		_, _ = fmt.Fprintln(os.Stderr, "Using config file:", viper.ConfigFileUsed())
	}
}
