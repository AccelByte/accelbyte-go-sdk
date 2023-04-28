// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iap

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

// NewGetSteamIAPConfigParams creates a new GetSteamIAPConfigParams object
// with the default values initialized.
func NewGetSteamIAPConfigParams() *GetSteamIAPConfigParams {
	var ()
	return &GetSteamIAPConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetSteamIAPConfigParamsWithTimeout creates a new GetSteamIAPConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetSteamIAPConfigParamsWithTimeout(timeout time.Duration) *GetSteamIAPConfigParams {
	var ()
	return &GetSteamIAPConfigParams{

		timeout: timeout,
	}
}

// NewGetSteamIAPConfigParamsWithContext creates a new GetSteamIAPConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetSteamIAPConfigParamsWithContext(ctx context.Context) *GetSteamIAPConfigParams {
	var ()
	return &GetSteamIAPConfigParams{

		Context: ctx,
	}
}

// NewGetSteamIAPConfigParamsWithHTTPClient creates a new GetSteamIAPConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetSteamIAPConfigParamsWithHTTPClient(client *http.Client) *GetSteamIAPConfigParams {
	var ()
	return &GetSteamIAPConfigParams{
		HTTPClient: client,
	}
}

/*GetSteamIAPConfigParams contains all the parameters to send to the API endpoint
for the get steam iap config operation typically these are written to a http.Request
*/
type GetSteamIAPConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get steam iap config params
func (o *GetSteamIAPConfigParams) WithTimeout(timeout time.Duration) *GetSteamIAPConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get steam iap config params
func (o *GetSteamIAPConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get steam iap config params
func (o *GetSteamIAPConfigParams) WithContext(ctx context.Context) *GetSteamIAPConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get steam iap config params
func (o *GetSteamIAPConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get steam iap config params
func (o *GetSteamIAPConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get steam iap config params
func (o *GetSteamIAPConfigParams) WithHTTPClient(client *http.Client) *GetSteamIAPConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get steam iap config params
func (o *GetSteamIAPConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get steam iap config params
func (o *GetSteamIAPConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the get steam iap config params
func (o *GetSteamIAPConfigParams) WithNamespace(namespace string) *GetSteamIAPConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get steam iap config params
func (o *GetSteamIAPConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetSteamIAPConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
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
