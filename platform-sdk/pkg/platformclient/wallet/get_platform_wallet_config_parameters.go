// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package wallet

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// Get the enum in GetPlatformWalletConfigParams
const (
	GetPlatformWalletConfigEpicConstant        = "Epic"
	GetPlatformWalletConfigGooglePlayConstant  = "GooglePlay"
	GetPlatformWalletConfigIOSConstant         = "IOS"
	GetPlatformWalletConfigNintendoConstant    = "Nintendo"
	GetPlatformWalletConfigOculusConstant      = "Oculus"
	GetPlatformWalletConfigOtherConstant       = "Other"
	GetPlatformWalletConfigPlaystationConstant = "Playstation"
	GetPlatformWalletConfigSteamConstant       = "Steam"
	GetPlatformWalletConfigXboxConstant        = "Xbox"
)

// NewGetPlatformWalletConfigParams creates a new GetPlatformWalletConfigParams object
// with the default values initialized.
func NewGetPlatformWalletConfigParams() *GetPlatformWalletConfigParams {
	var ()
	return &GetPlatformWalletConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetPlatformWalletConfigParamsWithTimeout creates a new GetPlatformWalletConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetPlatformWalletConfigParamsWithTimeout(timeout time.Duration) *GetPlatformWalletConfigParams {
	var ()
	return &GetPlatformWalletConfigParams{

		timeout: timeout,
	}
}

// NewGetPlatformWalletConfigParamsWithContext creates a new GetPlatformWalletConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetPlatformWalletConfigParamsWithContext(ctx context.Context) *GetPlatformWalletConfigParams {
	var ()
	return &GetPlatformWalletConfigParams{

		Context: ctx,
	}
}

// NewGetPlatformWalletConfigParamsWithHTTPClient creates a new GetPlatformWalletConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetPlatformWalletConfigParamsWithHTTPClient(client *http.Client) *GetPlatformWalletConfigParams {
	var ()
	return &GetPlatformWalletConfigParams{
		HTTPClient: client,
	}
}

/*GetPlatformWalletConfigParams contains all the parameters to send to the API endpoint
for the get platform wallet config operation typically these are written to a http.Request
*/
type GetPlatformWalletConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*Platform*/
	Platform string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get platform wallet config params
func (o *GetPlatformWalletConfigParams) WithTimeout(timeout time.Duration) *GetPlatformWalletConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get platform wallet config params
func (o *GetPlatformWalletConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get platform wallet config params
func (o *GetPlatformWalletConfigParams) WithContext(ctx context.Context) *GetPlatformWalletConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get platform wallet config params
func (o *GetPlatformWalletConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get platform wallet config params
func (o *GetPlatformWalletConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get platform wallet config params
func (o *GetPlatformWalletConfigParams) WithHTTPClient(client *http.Client) *GetPlatformWalletConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get platform wallet config params
func (o *GetPlatformWalletConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get platform wallet config params
func (o *GetPlatformWalletConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the get platform wallet config params
func (o *GetPlatformWalletConfigParams) WithNamespace(namespace string) *GetPlatformWalletConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get platform wallet config params
func (o *GetPlatformWalletConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPlatform adds the platform to the get platform wallet config params
func (o *GetPlatformWalletConfigParams) WithPlatform(platform string) *GetPlatformWalletConfigParams {
	o.SetPlatform(platform)
	return o
}

// SetPlatform adds the platform to the get platform wallet config params
func (o *GetPlatformWalletConfigParams) SetPlatform(platform string) {
	o.Platform = platform
}

// WriteToRequest writes these params to a swagger request
func (o *GetPlatformWalletConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param platform
	if err := r.SetPathParam("platform", o.Platform); err != nil {
		return err
	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
